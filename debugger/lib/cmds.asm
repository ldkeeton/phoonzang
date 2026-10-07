; cmds.asm — GDB command handlers, main dispatch loop

; ─── GDB command loop ───────────────────────────────
; Called from interrupt handlers; returns when continue/step/detach
gdb_loop:
    call clr_ind                          ; remove serial-activity arrows while idle
    call pkt_read                         ; receive and checksum the next GDB command

    mov al, [rbuf]                        ; AL = first character of received command
    cmp al, '?'                            ; is GDB asking for current stop reason?
    je .c_h                               ; route '?' to stop-reason handler
    cmp al, 'g'                            ; read all registers?
    je .c_rr                              ; route 'g' to register-read handler
    cmp al, 'G'                            ; write all registers?
    je .c_wr                              ; route 'G' to register-write handler
    cmp al, 'm'                            ; read target memory?
    je .c_rm                              ; route 'm' to memory-read handler
    cmp al, 'M'                            ; write target memory?
    je .c_wm                              ; route 'M' to memory-write handler
    cmp al, 'c'                            ; resume target execution?
    je .c_c                               ; route 'c' to continue handler
    cmp al, 's'                            ; single-step target?
    je .c_s                               ; route 's' to step handler
    cmp al, 'Z'                            ; insert a GDB breakpoint?
    je .c_bi                              ; route 'Z' to breakpoint-insert handler
    cmp al, 'z'                            ; remove a GDB breakpoint?
    je .c_br                              ; route 'z' to breakpoint-remove handler
    cmp al, 'k'                            ; kill target request?
    je .c_k                               ; route 'k' to kill/detach handler
    cmp al, 'D'                            ; detach request?
    je .c_d                               ; route 'D' to detach handler
    cmp al, 'H'                            ; select thread request?
    je .c_H                               ; route 'H' to thread-selection handler
    cmp al, 'q'                            ; generic q* capability/thread query?
    je .c_q                               ; route 'q' to query handler
    cmp al, 'Q'                            ; generic Q* target setting?
    je .c_Q                               ; route 'Q' to setting handler
    cmp al, 'v'                            ; extended v* command?
    je .c_v                               ; route 'v' to extended-command handler
    cmp al, 'p'                            ; read one register by number?
    je .c_pr                              ; route 'p' to single-register handler
    mov si, s_emp                         ; unsupported command -> empty response
    call pkt_send                         ; tell GDB this command is not implemented
    jmp gdb_loop                          ; wait for the next RSP request

.c_h:  jmp cmd_halt                       ; report the current stopped state
.c_H:  jmp cmd_H                          ; accept the requested synthetic thread
.c_rr: jmp cmd_rreg                       ; serialize the complete register packet
.c_wr: jmp cmd_wreg                       ; decode and replace saved registers
.c_rm: jmp cmd_rmem                       ; read bytes from real-mode memory
.c_wm: jmp cmd_wmem                       ; write bytes to real-mode memory
.c_c:  jmp cmd_cont                       ; resume without single-step trap flag
.c_s:  jmp cmd_step                       ; resume with trap flag or INT workaround
.c_bi: jmp cmd_bins                       ; install software breakpoint
.c_br: jmp cmd_brem                       ; remove software breakpoint
.c_k:  jmp cmd_kill                       ; restore vectors and terminate TSR process
.c_d:  jmp cmd_det                        ; detach and leave DOS target running
.c_q:  jmp cmd_qry                        ; answer supported q* queries
.c_Q:  jmp cmd_set                        ; process target-specific Q* settings
.c_v:  jmp cmd_v                          ; answer supported v* queries
.c_pr: jmp cmd_preg                       ; serialize one requested register

; ─── Command handlers ───────────────────────────────

cmd_halt:
    cmp byte [st_entry_stop], 0           ; is this the launcher's initial entry stop?
    je .trap                              ; no special entry state -> report ordinary trap
    mov si, s_trap                        ; use standard S05 stop reply at program entry
    call pkt_send                         ; answer GDB's '?' query
    jmp gdb_loop                          ; remain stopped and serve more commands
.trap:
    mov si, s_trap                        ; ordinary software-breakpoint stop reply
    call pkt_send                         ; tell GDB the target is stopped with SIGTRAP
    jmp gdb_loop                          ; keep servicing GDB while target is halted

cmd_H:
    mov si, s_ok                          ; this stub exposes one synthetic thread only
    call pkt_send                         ; acknowledge GDB's thread-selection request
    jmp gdb_loop                          ; wait for the next command

cmd_rreg:
    mov si, sreg                          ; SI = saved CPU registers in GDB packet layout
    mov cx, RSP_REG_SIZE                  ; CX = number of register bytes GDB expects
    call bytes_pkt                        ; encode bytes as hex and send them to GDB
    jmp gdb_loop                          ; wait for another command

cmd_wreg:
    mov si, rbuf+1                        ; SI = first hex digit after 'G'
    mov di, sreg                          ; DI = offset of saved register packet for hex_mem
    mov cx, SAVE_L*2                      ; decode hex for the 64-byte local register area
    call hex_mem                          ; write decoded register bytes into sreg
    mov si, s_ok                          ; successful register-write response
    call pkt_send                         ; acknowledge updated register values
    jmp gdb_loop                          ; keep servicing requests while stopped

cmd_rmem:
    mov si, rbuf+1                        ; SI = address field in m<addr>,<length>
    call ph32                             ; parse address into DX:AX
    cmp byte [st_phys], 0                 ; did GDB request real-mode offset semantics?
    je .rm_np                             ; no -> treat address as already linear
    call phys_addr                        ; translate target offset using remembered CS
.rm_np:
    push dx                               ; preserve parsed address high word
    push ax                               ; preserve parsed address low word
    inc si                                ; skip comma before hexadecimal length
    xor bx, bx                            ; BX = decoded memory-read length
.rl:lodsb                                 ; read next length digit
    cmp al, '0'                           ; a delimiter ends the length field
    jb .rd                                ; finish parsing at first non-hex character
    cmp al, '9'                           ; decimal digit range ends at '9'
    ja .a1                                ; otherwise decode A..F
    sub al, '0'                           ; convert decimal ASCII to nibble
    jmp .sv                               ; append nibble to length
.a1:and al, ~0x20                         ; accept lowercase hex letters
    cmp al, 'A'                           ; reject characters before A
    jb .rd                                ; non-hex ends the length
    cmp al, 'F'                           ; reject characters after F
    ja .rd                                ; non-hex ends the length
    sub al, 'A' - 10                      ; map A..F to nibble 10..15
.sv:shl bx, 1                             ; make room for next length nibble
    shl bx, 1                             ; shift decoded length left for next nibble
    shl bx, 1                             ; continue four-bit multiply by sixteen
    shl bx, 1                             ; BX = previous length multiplied by 16
    or bl, al                             ; append new nibble to length value
    jmp .rl                               ; continue parsing requested length
.rd:mov si, bx                            ; save decoded length while restoring address
    pop ax                                ; recover low address word
    pop dx                                ; recover high address word
    mov bx, si                            ; BX = remaining byte count
    push bx                               ; preserve length for final cleanup
    mov di, stk                           ; DI = scratch buffer for raw memory bytes
.rrp:test bx, bx                          ; have all requested bytes been read?
    jz .rrd                               ; yes -> encode and return them
    push bx                               ; preserve remaining length
    push dx                               ; preserve address high word
    push ax                               ; preserve address low word
    mov bx, ax                            ; BX = low address word for segment:offset split
    mov ax, bx                            ; AX = low word for segment calculation
    shr ax, 4                             ; AX = segment portion of physical address
    mov cx, dx                            ; CX = high address word
    shl cx, 12                            ; place high bits into segment value
    or ax, cx                             ; AX = segment covering the physical address
    and bx, 0xF                           ; BX = offset within that segment
    mov es, ax                            ; ES:BX points at requested target byte
    mov al, [es:bx]                       ; read target memory byte
    mov [di], al                          ; append byte to raw scratch buffer
    inc di                                ; advance scratch destination
    pop ax                                ; recover address low word
    pop dx                                ; recover address high word
    pop bx                                ; recover remaining byte count
    inc ax                                ; advance physical address to next byte
    adc dx, 0                             ; carry into high word when low word wraps
    dec bx                                ; one fewer requested byte remains
    jmp .rrp                              ; continue reading target memory
.rrd:pop bx                               ; discard preserved original length
    sub di, stk                           ; DI distance = number of bytes read
    mov cx, di                            ; CX = raw byte count to encode
    mov si, stk                           ; SI = raw bytes gathered from target
    call bytes_pkt                        ; encode bytes and send memory response
    jmp gdb_loop                          ; wait for next RSP command

cmd_wmem:
    mov si, rbuf+1                        ; SI = address field in M<addr>,<len>:<data>
    call ph32                             ; parse destination address into DX:AX
    cmp byte [st_phys], 0                 ; use target segment for offset-mode requests?
    je .wm_np                             ; no -> address is already linear
    call phys_addr                        ; translate offset using remembered target CS
.wm_np:
    mov bx, ax                            ; BX = address low word, later used as offset
    shr ax, 4                             ; AX = segment part of linear address
    mov cx, dx                            ; CX = address high word
    shl cx, 12                            ; move high-address bits into segment word
    or ax, cx                             ; AX = real-mode segment covering address
    and bx, 0x000F                         ; BX = low four-bit offset within that segment
    mov es, ax                            ; ES = segment where requested memory lives
    mov di, bx                            ; ES:DI = destination byte address
    inc si                                ; skip comma before length
    xor bx, bx                            ; BX = decoded number of bytes to write
.wl:lodsb                                 ; read next requested-length character
    cmp al, '0'                           ; a non-hex delimiter begins data field
    jb .wd                                ; length parsed -> decode following data
    cmp al, '9'                           ; decimal digit range ends at '9'
    ja .a1w                               ; otherwise decode A..F
    sub al, '0'                           ; convert decimal ASCII digit to nibble
    jmp .svw                              ; append nibble to byte count
.a1w:and al, ~0x20                        ; accept lowercase hex letters
    cmp al, 'A'                           ; reject values below A
    jb .wd                                ; delimiter -> data field follows
    cmp al, 'F'                           ; reject values above F
    ja .wd                                ; delimiter -> data field follows
    sub al, 'A' - 10                      ; convert A..F to nibble 10..15
.svw:shl bx, 1                            ; make room for next length nibble
    shl bx, 1                             ; shift decoded length left for next nibble
    shl bx, 1                             ; continue four-bit multiply by sixteen
    shl bx, 1                             ; BX = previous length multiplied by 16
    or bl, al                             ; append current length nibble
    jmp .wl                               ; parse remaining length characters
.wd:mov cx, bx                            ; CX = byte count from RSP length field
    shl cx, 1                             ; hex_mem consumes two source chars per byte
    call hex_mem                          ; decode data and write bytes to ES:DI
    mov si, s_ok                          ; successful memory-write response
    call pkt_send                         ; acknowledge write to GDB
    jmp gdb_loop                          ; wait for another command

cmd_cont:
    mov byte [st_entry_stop], 0           ; the special initial entry stop is now passed
    cmp byte [rbuf+1], 0                  ; did GDB include a replacement start address?
    je .cn                                ; no -> continue from saved instruction pointer
    mov si, rbuf+1                        ; SI = optional address after 'c'
    call ph32                             ; parse replacement PC into DX:AX
    cmp byte [st_phys], 0                 ; is that PC an offset in target's code segment?
    je .cc_np                             ; no -> use parsed linear address directly
    call phys_addr                        ; convert code offset to physical address
.cc_np:
    mov [sreg+R_IP], ax                   ; replace saved PC low word
    mov [sreg+R_IP+2], dx                 ; replace saved PC high word
.cn:mov byte [st_rep], 0                  ; discard stale repeated-instruction step state
    mov ax, [bp_cur]                      ; AX = slot just hit, or -1 if not at a breakpoint
    cmp ax, -1                             ; is execution stopped on a managed INT 3?
    je .cn2                                ; no -> simple continue path
    mov [st_pi], ax                       ; temporarily omit hit slot while executing original byte
    mov byte [st_cont], 1                 ; next INT1 is internal; continue without GDB stop
    mov byte [st_usr], 0                  ; this is not a user-requested single-step
    mov ax, [bp_cur]                      ; AX = hit breakpoint slot
    call bp_rest                          ; restore original instruction before resuming
    call step_rep_prepare                 ; keep REP breakpoints omitted until all iterations finish
    mov word [bp_cur], -1                 ; clear current-hit marker
    call bp_patch                         ; keep all other breakpoints armed
    call clr_ind                          ; restore screen indicators before target runs
    or word [sreg+R_FL], 0x100            ; set trap flag to single-step original instruction
    mov byte [st_run], 1                  ; next reported stop should be asynchronous
    pop ax                                ; discard interrupt-handler's saved AX
    ret                                   ; return through IRET to resume target
.cn2:call bp_patch                        ; ensure active breakpoints are armed
    mov byte [st_usr], 0                  ; continue should not report a user step
    and word [sreg+R_FL], ~0x100           ; clear trap flag for unrestricted execution
    call clr_ind                          ; restore screen indicators before target runs
    mov byte [st_run], 1                  ; next stop must send an unsolicited reply
    pop ax                                ; discard interrupt-handler's saved AX
    ret                                   ; return through IRET to resume target

cmd_step:
    mov byte [st_entry_stop], 0           ; stepping advances beyond special entry-stop state
    cmp byte [rbuf+1], 0                  ; did GDB specify a new PC after 's'?
    je .sn                                ; no -> step from currently saved PC
    mov si, rbuf+1                        ; SI = optional replacement PC text
    call ph32                             ; parse replacement PC into DX:AX
    cmp byte [st_phys], 0                 ; should offset address use remembered target CS?
    je .cs_np                             ; no -> parsed address is already linear
    call phys_addr                        ; convert offset to real-mode physical address
.cs_np:
    mov [sreg+R_IP], ax                   ; update saved PC low word
    mov [sreg+R_IP+2], dx                 ; update saved PC high word
.sn:mov byte [st_rep], 0                  ; discard stale repeated-instruction step state
    mov ax, [bp_cur]                      ; AX = breakpoint slot just hit, or -1
    cmp ax, -1                             ; are we stepping from a software breakpoint?
    je .sn2                                ; no -> ordinary single-step setup
    mov [st_pi], ax                       ; leave hit breakpoint unpatched for one instruction
    mov byte [st_cont], 0                  ; this next step must be reported to GDB
    mov byte [st_usr], 1                  ; mark next INT1 as user's requested step
    mov ax, [bp_cur]                      ; AX = hit breakpoint slot
    call bp_rest                          ; restore original instruction before stepping
    call step_rep_prepare                 ; recognize REP as one debugger-visible step
    mov word [bp_cur], -1                 ; clear current breakpoint hit
    call bp_patch                         ; re-arm remaining software breakpoints
    call step_int_prepare                 ; if instruction is INT, use fall-through trap
    jc .int_step                          ; internal INT trap armed -> resume without TF
    call clr_ind                          ; restore serial activity indicators
    or word [sreg+R_FL], 0x100            ; set CPU trap flag for one instruction
    mov byte [st_run], 1                  ; next stop should notify GDB asynchronously
    pop ax                                ; discard saved AX from interrupt handler
    ret                                   ; return through IRET to execute one instruction
.sn2:call step_rep_prepare                ; recognize REP even when stepping without a BP
    call bp_patch                         ; keep all active breakpoints installed
    call step_int_prepare                 ; detect software INT needing special step logic
    jc .int_step                          ; temporary destination trap is ready
    mov byte [st_usr], 1                  ; request an ordinary single-step stop reply
    mov byte [st_cont], 0                  ; do not silently continue after INT1
    call clr_ind                          ; restore serial activity indicators
    or word [sreg+R_FL], 0x100            ; set TF to trap after one instruction
    mov byte [st_run], 1                  ; next stop should notify GDB asynchronously
    pop ax                                ; discard saved AX from interrupt handler
    ret                                   ; return through IRET to execute one instruction
.int_step:
    mov byte [st_usr], 0                  ; the temporary breakpoint, not TF, will stop us
    mov byte [st_cont], 0                  ; do not silently run through temporary INT trap
    call clr_ind                          ; restore serial activity indicators
    and word [sreg+R_FL], ~0x100           ; clear TF while DOS handles software interrupt
    mov byte [st_run], 1                  ; next breakpoint event must notify GDB
    pop ax                                ; discard saved AX from interrupt handler
    ret                                   ; resume target until INT-step destination trap

; Record REP prefixes so repeated INT1 traps remain internal to one GDB step.
step_rep_prepare:
    push ax                               ; preserve caller's AX
    push bx                               ; preserve caller's BX
    push cx                               ; preserve caller's CX
    push es                               ; preserve caller's ES
    mov ax, [sreg+R_CS]                   ; AX = target code segment
    mov es, ax                            ; ES:BX addresses the current instruction
    mov bx, [sreg+R_IP]                   ; BX = current target instruction offset
    mov cx, 15                            ; cap scan at the maximum x86 instruction length
.prefix:
    mov al, [es:bx]                       ; inspect this leading instruction byte
    cmp al, 0xF2                          ; REPNE/REPNZ prefix?
    je .rep                                ; yes -> track the repeated instruction
    cmp al, 0xF3                          ; REP/REPE/REPZ prefix?
    je .rep                                ; yes -> track the repeated instruction
    cmp al, 0x26                          ; ES segment override?
    je .next
    cmp al, 0x2E                          ; CS segment override?
    je .next
    cmp al, 0x36                          ; SS segment override?
    je .next
    cmp al, 0x3E                          ; DS segment override?
    je .next
    cmp al, 0xF0                          ; LOCK prefix?
    je .next
    cmp al, 0x66                          ; operand-size prefix on 386+?
    je .next
    cmp al, 0x67                          ; address-size prefix on 386+?
    jne .done                             ; first non-prefix byte: ordinary instruction
.next:
    inc bx                                ; inspect the next possible prefix
    loop .prefix                          ; continue through the bounded prefix sequence
    jmp .done                             ; prefix-only sequence: do not track it
.rep:
    mov ax, [sreg+R_IP]                   ; AX = beginning of the repeated instruction
    mov [st_rep_ip], ax                   ; remember IP reported by in-progress INT1 traps
    mov ax, [sreg+R_CS]                   ; AX = code segment containing REP
    mov [st_rep_cs], ax                   ; remember CS to avoid false same-IP matches
    mov byte [st_rep], 1                  ; matching INT1 traps are internal iterations
.done:
    pop es                                ; restore caller's ES
    pop cx                                ; restore caller's CX
    pop bx                                ; restore caller's BX
    pop ax                                ; restore caller's AX
    ret                                   ; return with REP state set only for a prefix

; For software INT instructions, TF may not be observed until after the first
; instruction following the interrupt returns. Plant a breakpoint at the
; fall-through address instead, so the step stops before that instruction runs.
step_int_prepare:
    push ax                               ; preserve caller's AX
    push bx                               ; preserve caller's BX
    push cx                               ; preserve caller's CX
    push dx                               ; preserve caller's DX
    push es                               ; preserve caller's ES
    mov ax, [sreg+R_CS]                   ; AX = saved target code segment
    mov es, ax                            ; ES:BX will inspect the current instruction
    mov bx, [sreg+R_IP]                   ; BX = saved target instruction offset
    cmp byte [es:bx], 0xCD                ; opcode CDh means software INT imm8
    jne .no                               ; ordinary instruction -> let CPU trap with TF

    ; Save the fall-through address after the INT opcode and vector number.
    mov cx, bx                            ; CX = current instruction offset
    add cx, 2                             ; skip INT opcode and its vector-number byte
    mov ax, [sreg+R_CS]                   ; AX = target code segment
    mov dx, 16                            ; convert segment to its physical base
    mul dx                                ; DX:AX = CS * 16
    add ax, cx                            ; add fall-through offset to physical base
    adc dx, 0                             ; carry into high word if address wrapped
    mov [st_int_addr], ax                 ; save linear destination low word
    mov [st_int_addr+2], dx               ; save linear destination high word

    ; Reuse an existing breakpoint at the destination, otherwise install an
    ; internal one and remember its slot so the INT3 handler can remove it.
    call bp_find                          ; is a user breakpoint already set at DX:AX destination?
    cmp ax, -1                             ; did lookup find an existing slot?
    jne .existing                         ; yes -> reuse it rather than duplicate it
    mov ax, [st_int_addr]                 ; AX = destination low address word
    mov dx, [st_int_addr+2]               ; DX = destination high address word
    call bp_add                           ; install an internal INT-step breakpoint
    cmp ax, -1                             ; was a breakpoint slot available?
    je .no                                ; no -> fall back to ordinary stepping
    mov [st_int_bp], ax                   ; remember slot so INT3 handler can remove it
    jmp .armed                            ; temporary trap is ready
.existing:
    mov word [st_int_bp], -1              ; destination uses user breakpoint; do not remove it
.armed:
    mov byte [st_int_mode], 1             ; tell INT3 handler this trap ends an INT-step
    stc                                   ; carry signals that TF stepping can be skipped
    jmp .done                             ; restore registers and return
.no:
    clc                                   ; carry clear means ordinary TF step is needed
.done:
    pop es                                ; restore caller's ES
    pop dx                                ; restore caller's DX
    pop cx                                ; restore caller's CX
    pop bx                                ; restore caller's BX
    pop ax                                ; restore caller's AX
    ret                                   ; return carry status to caller

cmd_bins:
    cmp byte [rbuf+1], '0'                 ; only software-breakpoint type Z0 is supported
    jne .unsupported                      ; reject hardware/other breakpoint kinds
    mov si, rbuf+3                         ; skip "Z0," to the address field
    call ph32                              ; parse address into DX:AX
    cmp byte [st_phys], 0                  ; are addresses target-segment offsets?
    je .bi_np                              ; no -> address is already linear
    call phys_addr                         ; translate offset using remembered target CS
.bi_np:
    push dx                                ; pass address high word to bp_add
    push ax                                ; pass address low word to bp_add
    call bp_add                            ; save original byte and write INT 3
    add sp, 4                              ; discard pushed address arguments
    cmp ax, -1                              ; did breakpoint allocation fail?
    je .bf                                 ; yes -> return RSP error
    ; If GDB asks for a breakpoint at the internal step destination while the
    ; target is running, promote that slot to a user breakpoint.
    cmp byte [st_int_mode], 0              ; is an internal INT-step breakpoint active?
    je .bp_added                           ; no -> normal user breakpoint
    cmp ax, [st_int_bp]                    ; did GDB request this internal slot's address?
    jne .bp_added                          ; no -> keep internal slot bookkeeping intact
    mov word [st_int_bp], -1               ; promote it so INT3 handler won't remove it
.bp_added:
    mov si, s_ok                           ; successful breakpoint-insert response
    call pkt_send                          ; acknowledge insertion to GDB
    cmp byte [st_async], 0                 ; did request arrive while target was running?
    jne .async                             ; yes -> return to running-target interrupt frame
    jmp gdb_loop                           ; no -> remain in normal debugger command loop
.async:
    mov byte [st_async], 0                 ; consume asynchronous-command state
    pop ax                                 ; discard saved AX from IRQ handler frame
    ret                                    ; return from IRQ handler to interrupted target
.bf:mov si, s_err                          ; no free breakpoint slot -> RSP error response
    call pkt_send                          ; tell GDB insertion failed
    cmp byte [st_async], 0                 ; was failed request processed asynchronously?
    jne .asyncf                            ; yes -> return to running target
    jmp gdb_loop                           ; otherwise keep serving stopped-target commands
.asyncf:
    mov byte [st_async], 0                 ; clear asynchronous request marker
    pop ax                                 ; discard saved AX from IRQ handler frame
    ret                                    ; return to interrupted target after response
.unsupported:
    mov si, s_emp                          ; unsupported breakpoint kind -> empty response
    call pkt_send                          ; report that this breakpoint type is unavailable
    jmp gdb_loop                           ; continue servicing GDB commands

cmd_brem:
    cmp byte [rbuf+1], '0'                 ; only software-breakpoint type z0 is supported
    jne .unsupported                      ; reject other breakpoint-removal types
    mov si, rbuf+3                         ; skip "z0," to the address field
    call ph32                              ; parse breakpoint address into DX:AX
    cmp byte [st_phys], 0                  ; should offset address use target CS?
    je .br_np                              ; no -> address is already linear
    call phys_addr                         ; translate offset using remembered target CS
.br_np:
    push dx                                ; pass address high word to bp_rem
    push ax                                ; pass address low word to bp_rem
    call bp_rem                            ; restore original byte and free its table slot
    add sp, 4                              ; discard pushed address arguments
    cmp ax, -1                              ; was a matching breakpoint found?
    je .missing                            ; no -> report failed removal
    mov si, s_ok                           ; successful breakpoint-removal response
    call pkt_send                          ; acknowledge removal to GDB
    cmp byte [st_async], 0                 ; did removal arrive asynchronously while running?
    jne .async                             ; yes -> return to interrupted target
    jmp gdb_loop                           ; no -> continue stopped-target command loop
.async:
    mov byte [st_async], 0                 ; consume asynchronous-command state
    pop ax                                 ; discard saved AX from IRQ handler frame
    ret                                    ; resume the interrupted target
.missing:
    mov si, s_err                          ; address was not in breakpoint table
    call pkt_send                          ; report failed removal to GDB
    cmp byte [st_async], 0                 ; did request arrive while target was running?
    jne .asyncf                            ; yes -> return to the interrupted target
    jmp gdb_loop                           ; no -> remain in normal command loop
.asyncf:
    mov byte [st_async], 0                 ; clear asynchronous request marker
    pop ax                                 ; discard saved AX from IRQ handler frame
    ret                                    ; return to target after sending failure reply
.unsupported:
    mov si, s_emp                          ; unsupported breakpoint kind -> empty response
    call pkt_send                          ; tell GDB this breakpoint type is not supported
    jmp gdb_loop                           ; continue processing requests

cmd_kill:
    call restore_vecs                     ; return hooked vectors/PIC mask to DOS
    mov si, s_ok                          ; prepare successful kill response
    call pkt_send                         ; acknowledge request before exiting
    mov ax, 0x4C00                        ; DOS terminate-process service, status 0
    int 0x21                              ; exit resident TSR process

cmd_det:
    mov si, s_ok                          ; prepare successful detach response
    call pkt_send                         ; tell GDB it may close the remote connection
    call clr_ind                          ; restore screen cells used as serial indicators
    pop ax                                ; discard interrupt-handler's saved AX
    ret                                   ; resume the target without removing the TSR

cmd_qry:
    mov si, rbuf+1                        ; SI = query name after leading 'q'
    cmp word [si], 'Su'                   ; is this qSupported?
    je .qs                                ; advertise the packet size we accept
    cmp word [si], 'C' | (0 << 8)         ; is this qC (current thread)?
    je .qC                                ; report the single synthetic thread ID
    cmp word [si], 'At'                   ; is this qAttached?
    je .qA                                ; report attachment status
    cmp word [si], 'TS'                   ; is this thread-alive query?
    je .qT                                ; no explicit thread liveness support
    cmp word [si], 'fT'                   ; is this qfThreadInfo?
    je .qfTh                              ; report the single synthetic thread
    cmp word [si], 'sT'                   ; is this qsThreadInfo?
    je .qsTh                              ; terminate thread-list enumeration
    cmp word [si], 'Xf'                   ; is this qXfer feature query?
    je .qX                                ; target XML transfer is unsupported
    mov si, s_emp                         ; unknown query -> empty response
    call pkt_send                         ; tell GDB no response is available
    jmp gdb_loop                          ; wait for another command
.qs:mov si, s_qsp                         ; qSupported -> advertise packet-size limit
    call pkt_send                         ; return supported-feature text
    jmp gdb_loop                          ; continue handling commands
.qC:mov si, s_qc                          ; current-thread query -> synthetic thread 1
    call pkt_send                         ; identify this single debugged task
    jmp gdb_loop                          ; continue handling commands
.qA:mov si, s_qa                          ; qAttached -> report target already exists
    call pkt_send                         ; return attachment-status response
    jmp gdb_loop                          ; continue handling commands
.qT:mov si, s_emp                         ; thread-alive query is not implemented
    call pkt_send                         ; return empty/unsupported response
    jmp gdb_loop                          ; continue handling commands
.qfTh:mov si, s_tids                      ; report thread 1 in the first list response
     call pkt_send                         ; return the one synthetic thread ID
     jmp gdb_loop                          ; continue processing commands
.qsTh:mov si, s_tln                       ; no more thread IDs are available
     call pkt_send                         ; terminate GDB's thread-list enumeration
     jmp gdb_loop                          ; continue handling commands
.qX:mov si, s_emp                         ; target-description transfer is unsupported
    call pkt_send                         ; return an empty response
    jmp gdb_loop                          ; continue handling commands

cmd_v:
    mov si, rbuf+1                        ; SI = extended-command text after leading 'v'
    cmp byte [si], 'C'                    ; is GDB asking for vCont support?
    je .vC                                ; advertise continue action
    mov si, s_emp                         ; unsupported v* request -> empty response
    call pkt_send                         ; tell GDB extension is unavailable
    jmp gdb_loop                          ; continue command loop
.vC:mov si, s_vC                          ; advertise vCont; continue-only support
    call pkt_send                         ; return supported action list
    jmp gdb_loop                          ; continue command loop

; ─── Physical address mode ──────────────────────────
; When st_phys != 0, translate offset addresses to physical
; by adding CS*16. Enabled via GDB: maint packet QPhys:1

; Convert offset in DX:AX to physical using the debugged program's CS. GDB can
; ask for a breakpoint while the saved registers point into a DOS interrupt
; handler, so sreg CS is not always the segment used by the program's ELF.
phys_addr:
    push bx                               ; preserve caller's BX
    push cx                               ; preserve caller's CX
    xor cx, cx                            ; CX collects high bits from CS * 16
    mov bx, [target_cs]                   ; BX = remembered code segment of debugged program
    shl bx, 1                             ; shift segment left one bit toward *16 value
    rcl cx, 1                             ; propagate carry into high word
    shl bx, 1                             ; continue multiplying target CS by two
    rcl cx, 1                             ; preserve overflow in high word
    shl bx, 1                             ; third doubling, total factor eight
    rcl cx, 1                             ; propagate another high bit
    shl bx, 1                             ; fourth doubling, total factor sixteen
    rcl cx, 1                             ; CX:BX = target CS shifted left four bits
    add ax, bx                            ; add offset low word to physical segment base
    adc dx, cx                            ; add upper segment-base bits and carry
    pop cx                                ; restore caller's CX
    pop bx                                ; restore caller's BX
    ret                                   ; return physical address in DX:AX

cmd_set:
    mov si, rbuf+1                        ; SI = setting name after leading 'Q'
    cmp word [si], 'Ph'                   ; is this our QPhys address-mode setting?
    jne .us                               ; other target settings are not supported
    add si, 5                             ; skip "Phys:" to the one-digit enable value
    lodsb                                 ; AL = requested physical-address mode (0/1)
    sub al, '0'                           ; convert ASCII digit to numeric flag
    mov [st_phys], al                     ; remember whether GDB sends offsets or linear PCs
    mov si, s_ok                          ; prepare successful setting response
    call pkt_send                         ; acknowledge address-mode selection
    jmp gdb_loop                          ; continue processing commands
.us:mov si, s_emp                         ; unknown target setting -> empty response
    call pkt_send                         ; report unsupported setting to GDB
    jmp gdb_loop                          ; continue processing commands

cmd_preg:
    mov si, rbuf+1                        ; SI = hexadecimal register number after 'p'
    call ph32                             ; parse register index into AX
    cmp ax, 15                             ; are indexes limited to the 16 x86 registers?
    ja .preg_unk                          ; unknown slot -> return a zero-filled value
    mov bx, ax                            ; BX = register index
    shl bx, 2                             ; each register occupies a four-byte RSP slot
    mov si, sreg                          ; SI = beginning of saved register packet
    add si, bx                            ; SI = requested register's byte offset
    mov cx, 4                             ; return one four-byte register slot
    call bytes_pkt                        ; encode slot and send it to GDB
    jmp gdb_loop                          ; wait for another command
.preg_unk:
    push di                               ; preserve caller's DI
    push cx                               ; preserve caller's CX
    mov di, stk                           ; DI = scratch response buffer
    mov cx, 64                            ; clear 64 bytes for an unknown register reply
    xor al, al                            ; AL = zero byte to fill response buffer
    rep stosb                             ; write zeroes to ES:DI
    pop cx                                ; restore caller's CX
    pop di                                ; restore caller's DI
    mov si, stk                           ; SI = zero-filled unsupported-register response
    mov cx, 64                            ; send a fixed-length zero response
    call bytes_pkt                        ; encode and send zero-filled value
    jmp gdb_loop                          ; wait for another command

; ─── Restore interrupt vectors ──────────────────────
restore_vecs:
    call ser_irq_disable                  ; stop COM1 interrupts before changing vectors
    push ds                               ; preserve caller's DS
    mov ax, [ov3+2]                       ; AX = saved INT 3 handler segment
    or ax, [ov3]                          ; combine segment and offset to test for zero vector
    jz .r1                                ; no saved INT 3 vector -> skip restoring it
    mov ds, [ov3+2]                       ; DS = original INT 3 handler segment
    mov dx, [ov3]                         ; DX = original INT 3 handler offset
    mov ax, 0x2503                        ; DOS set-vector service for INT 3
    int 0x21                              ; restore original breakpoint handler
.r1:mov ax, [ov1+2]                       ; AX = saved single-step handler segment
    or ax, [ov1]                          ; test whether original INT 1 vector was saved
    jz .r2                                ; no saved vector -> leave current INT 1 alone
    mov ds, [ov1+2]                       ; DS = original INT 1 handler segment
    mov dx, [ov1]                         ; DX = original INT 1 handler offset
    mov ax, 0x2501                        ; DOS set-vector service for INT 1
    int 0x21                              ; restore original single-step handler
.r2:mov ax, [ov2f+2]                      ; AX = saved DOS multiplex handler segment
    or ax, [ov2f]                         ; test whether original INT 2Fh vector was saved
    jz .r4                                ; no saved vector -> skip its restoration
    mov ds, [ov2f+2]                      ; DS = original INT 2Fh handler segment
    mov dx, [ov2f]                        ; DX = original INT 2Fh handler offset
    mov ax, 0x252F                        ; DOS set-vector service for INT 2Fh
    int 0x21                              ; restore original multiplex handler
.r4:mov ax, [ov4+2]                       ; AX = saved serial IRQ4 handler segment
    or ax, [ov4]                          ; test whether original IRQ4 vector was saved
    jz .mask                              ; no saved vector -> skip its restoration
    mov ds, [ov4+2]                       ; DS = original COM1 IRQ handler segment
    mov dx, [ov4]                         ; DX = original COM1 IRQ handler offset
    mov ax, 0x250C                        ; DOS set-vector service for interrupt 0Ch
    int 0x21                              ; restore original serial interrupt handler
.mask:
    mov al, [cs:pic_mask]                 ; AL = original master PIC interrupt mask
    out 0x21, al                          ; restore IRQ masking exactly as before TSR
.done:pop ds                              ; restore caller's DS
    ret                                   ; return after safely detaching interrupt hooks
