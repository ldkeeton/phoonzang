; int.asm — interrupt handlers for GDBSRV

; ─── INT 3 (breakpoint) ─────────────────────────────
int3:                                     ; CPU breakpoint/trap handler entry
    pusha                                 ; save all general-purpose registers
    push ds                               ; save interrupted DS
    push es                               ; save interrupted ES
    mov ax, cs                            ; AX = resident TSR segment
    mov ds, ax                            ; DS = TSR data for handler routines
    call ser_irq_disable                  ; prevent nested UART IRQ while servicing trap
    mov byte [in_dbg], 1                  ; mark CPU as inside debugger
    mov bp, sp                            ; BP = saved-register/interrupt-frame base

    push [bp+18]                          ; copy interrupted AX from saved PUSHA frame
    pop word [sreg+R_AX]                  ; save AX in GDB register packet
    push [bp+16]                          ; copy interrupted CX
    pop word [sreg+R_CX]                  ; save CX in GDB register packet
    push [bp+14]                          ; copy interrupted DX
    pop word [sreg+R_DX]                  ; save DX in GDB register packet
    push [bp+12]                          ; copy interrupted BX
    pop word [sreg+R_BX]                  ; save BX in GDB register packet
    mov ax, [bp+10]                       ; AX = PUSHA-saved SP value
    add ax, 6                             ; adjust past PUSHA and interrupt-frame words
    mov [sreg+R_SP], ax                   ; save interrupted program's effective SP
    push [bp+8]                           ; copy interrupted BP
    pop word [sreg+R_BP]                  ; save BP in GDB register packet
    push [bp+6]                           ; copy interrupted SI
    pop word [sreg+R_SI]                  ; save SI in GDB register packet
    push [bp+4]                           ; copy interrupted DI
    pop word [sreg+R_DI]                  ; save DI in GDB register packet

    ; Keep the post-INT3 IP until we know this was one of our breakpoints.
    ; A program-authored INT3 must resume after the INT3 instruction.
    push [bp+20]                          ; copy interrupt-frame IP after INT 3 instruction
    pop word [sreg+R_IP]                  ; save post-INT3 IP until trap is identified
    push [bp+22]                          ; copy interrupted CS
    pop word [sreg+R_CS]                  ; save CS in GDB register packet
    mov ax, [sreg+R_CS]                   ; AX = segment where trap occurred
    mov [target_cs], ax                   ; remember active target code segment for addresses
    push [bp+24]                          ; copy interrupted FLAGS
    pop word [sreg+R_FL]                  ; save FLAGS in GDB register packet
    mov ax, ss                            ; AX = current interrupted stack segment
    mov [sreg+R_SS], ax                   ; save SS in GDB register packet
    push [bp+2]                           ; copy interrupted DS from saved stack
    pop word [sreg+R_DS]                  ; save DS in GDB register packet
    push [bp]                             ; copy interrupted ES from saved stack
    pop word [sreg+R_ES]                  ; save ES in GDB register packet
    xor ax, ax                            ; FS/GS do not exist in real mode
    mov [sreg+R_FS], ax                   ; report FS as zero
    mov [sreg+R_GS], ax                   ; report GS as zero
    mov di, sreg+2                        ; DI = first upper halfword to clear
    mov cx, 15                            ; clear upper 16 bits of each 32-bit register slot
.z0:mov word [di], 0                      ; zero upper half of current GDB register value
    add di, 4                             ; advance to next register's upper halfword
    loop .z0                              ; clear padding for all 16 core registers

    mov [hk_ss], ss                       ; save interrupted program's stack segment
    mov [hk_sp], sp                       ; save handler stack pointer for eventual IRET

    ; A CPU fault (int0/int6 below) enters here too. Its frame IP already
    ; points at the faulting instruction, and it is no breakpoint of ours.
    cmp byte [fault_sig], 0               ; did a CPU fault bring us here?
    je .not_fault                         ; no -> ordinary INT 3 handling
    mov word [bp_cur], -1                 ; no breakpoint slot is involved
    mov byte [st_run], 1                  ; always report the fault asynchronously
    jmp .nb                               ; stop at the faulting instruction
.not_fault:
    mov ax, [sreg+R_CS]                   ; AX = code segment from saved trap context
    mov dx, 16                            ; multiply segment by sixteen for linear base
    mul dx                                ; DX:AX = CS * 16
    mov cx, [sreg+R_IP]                   ; CX = frame IP, which points after INT 3
    dec cx                                ; candidate breakpoint offset is IP - 1
    add ax, cx                            ; DX:AX = linear address of INT 3 opcode
    adc dx, 0                             ; carry into upper address word
    push dx                               ; pass candidate high word to bp_find
    push ax                               ; pass candidate low word to bp_find
    call bp_find                          ; check whether this was one of our patched bytes
    add sp, 4                             ; discard pushed candidate address
    mov [bp_cur], ax                      ; remember matching breakpoint slot or -1
    ; Report the INT3 instruction's address to GDB.
    dec word [sreg+R_IP]                  ; report INT3 opcode address rather than next byte
    ; A software-INT step uses a temporary breakpoint at the post-INT address.
    ; Remove our slot on arrival, but leave a pre-existing user breakpoint in
    ; place and process it through the ordinary breakpoint path.
    cmp byte [st_int_mode], 0              ; is a software-INT step waiting for fall-through?
    je .not_int_step                       ; no -> process this as an ordinary INT 3
    mov ax, [sreg+R_CS]                    ; AX = code segment at this trap
    mov dx, 16                             ; convert segment to its physical base
    mul dx                                 ; DX:AX = CS * 16
    mov cx, [sreg+R_IP]                    ; CX = restored instruction address offset
    add ax, cx                             ; DX:AX = current linear PC
    adc dx, 0                              ; include carry in high word
    cmp ax, [st_int_addr]                  ; did temporary INT-step address get hit?
    jne .not_int_step                      ; no -> this is an unrelated breakpoint
    cmp dx, [st_int_addr+2]                ; compare high half of linear address too
    jne .not_int_step                      ; not expected fall-through -> ordinary trap
    mov byte [st_int_mode], 0              ; consume software-INT-step state
    mov word [st_pi], -1                   ; no breakpoint slot needs to remain skipped
    mov byte [st_usr], 0                   ; clear step flags before reporting this stop
    mov ax, [st_int_bp]                    ; AX = slot of internally-added temporary trap
    cmp ax, -1                              ; was this a private step-over breakpoint?
    je .int_step_user_bp                   ; no -> preserve pre-existing user breakpoint
    cmp ax, [bp_cur]                       ; did the temporary slot cause this INT 3?
    jne .int_step_user_bp                  ; no -> do not remove a different user breakpoint
    mov ax, [st_int_addr]                  ; AX = temporary breakpoint address low word
    mov dx, [st_int_addr+2]                ; DX = temporary breakpoint address high word
    call bp_rem                            ; remove private trap and restore original byte
    mov word [st_int_bp], -1               ; clear temporary breakpoint slot marker
    dec word [bp+20]                       ; adjust IRET IP back to the INT3 address
    jmp .nb                                ; report the completed step as a stop
.int_step_user_bp:
    mov word [st_int_bp], -1               ; clear slot marker without removing user BP
.not_int_step:
    mov ax, [bp_cur]                       ; AX = slot of hit managed breakpoint, if any
    cmp ax, -1                              ; was INT 3 caused by our breakpoint table?
    jne .swbp                               ; yes -> restore original opcode before reporting
    ; GDBEXEC's DOS EXEC/01 handoff installed an in-memory entry INT3. Match
    ; its segment:offset, restore the saved instruction, and stop at entry.
    cmp byte [st_gate], 0                  ; did GDBEXEC plant a temporary entry trap?
    je .nb                                 ; no -> not our launch-entry breakpoint
    mov ax, [sreg+R_CS]                    ; AX = code segment from trap context
    cmp ax, [gate_cs]                      ; does it match the target entry segment?
    jne .nb                                ; no -> leave this unrelated INT 3 alone
    mov ax, [sreg+R_IP]                    ; AX = current offset after INT 3 adjustment
    cmp ax, [gate_ip]                      ; does it match DOS-provided entry offset?
    jne .nb                                ; no -> this is not the initial entry stop
    dec word [bp+20]                       ; report actual entry byte, not post-INT3 byte
    push es                                ; preserve ES used by interrupted program
    mov ax, [gate_cs]                      ; AX = target's runtime code segment
    mov es, ax                             ; ES:BX will point to entry byte
    mov bx, [gate_ip]                      ; BX = target's initial instruction offset
    mov al, [gate_opcode]                  ; AL = original first instruction byte
    mov [es:bx], al                        ; restore entry opcode into loaded image
    pop es                                 ; restore interrupted program's ES
    ; Report the DOS-provided entry PC directly. The IRET frame already points
    ; there; reporting entry-1 made remote connect stops appear outside the
    ; target's first source instruction.
    mov byte [st_gate], 0                  ; entry trap has fired; do not process it again
    mov byte [st_entry_stop], 1            ; remember this stop is exactly at program entry
    call mark_entry_ready                  ; signal host automation that entry is now stopped
    jmp .nb                                ; serve GDB at the initial program stop
.swbp:
    ; A GDB-inserted INT3 traps with the frame IP one byte past the CC. Restore
    ; the original instruction at its first byte before returning to the app.
    dec word [bp+20]                       ; correct IRET PC to point at patched opcode
    call bp_rest                           ; restore original instruction before GDB sees stop
.nb:
    cli                                   ; protect debugger's private stack switch
    mov ax, cs                            ; AX = resident TSR segment
    mov ss, ax                            ; SS = TSR segment for command-loop stack
    mov sp, stk_t                         ; SP = top of resident debugger stack
    sti                                   ; allow serial interrupts while waiting for GDB

    ; On the first stop GDB queries '?' after connecting. Once execution has
    ; resumed, report each subsequent INT3 as an asynchronous stop reply.
    cmp byte [st_run], 0                  ; did target run since last GDB stop?
    je .wait                              ; no -> initial stop is queried by GDB itself
    mov byte [st_run], 0                  ; consume resumed-state marker
    cmp word [bp_cur], -1                 ; did a managed software breakpoint cause this INT3?
    je .plain_trap                        ; no -> report a normal trap or step completion
    mov si, s_swbr                        ; identify the stop as a software breakpoint
    call pkt_send                         ; give GDB the cause needed for a breakpoint stop event
    jmp .wait                             ; continue servicing the stopped target
.plain_trap:
    mov al, [fault_sig]                   ; AL = fault signal number, or 0
    or al, al                             ; is this stop a CPU fault?
    jz .send_trap                         ; no -> ordinary S05 stop
    mov byte [fault_sig], 0               ; consume fault marker
    mov di, s_fault+1                     ; DI = two signal digits after 'S'
    push ax                               ; keep low nibble for second digit
    shr al, 4                             ; AL = high nibble
    call pnib_buf                         ; write high signal digit
    pop ax                                ; AL = signal again
    call pnib_buf                         ; write low signal digit
    mov si, s_fault                       ; SI = SIGFPE/SIGILL stop reply
    call pkt_send                         ; tell GDB the target faulted here
    jmp .wait                             ; serve GDB at the faulting instruction
.send_trap:
    call pkt_send_trap                    ; send asynchronous S05 stop notification
.wait:
    push .rt                              ; push return point for command-loop's RET
    call gdb_loop                         ; serve GDB until continue/step/detach returns
.rt:
    cli                                   ; protect restoring interrupted task's stack
    mov ss, [hk_ss]                       ; restore target's original stack segment
    mov sp, [hk_sp]                       ; restore target's original stack pointer
    call ser_irq_enable                   ; resume async serial request handling
    mov byte [in_dbg], 0                  ; mark debugger command loop inactive

    mov ax, [st_pi]                       ; AX = breakpoint slot being stepped over, or -1
    cmp ax, -1                             ; is a slot still temporarily unpatched?
    jne .nopii                             ; yes -> keep its original opcode for one step
    call bp_patch                         ; otherwise arm every active breakpoint again
.nopii:
    mov bp, sp                            ; BP = saved FLAGS location in target's IRET frame
    mov ax, [st_pi]                       ; AX = currently skipped breakpoint slot, if any
    cmp ax, -1                             ; are we returning for a breakpoint step-over?
    jne .stf                               ; yes -> set TF so breakpoint can be rearmed
    cmp byte [st_usr], 0                  ; did GDB request a user single-step?
    je .ntf                               ; no -> return without enabling TF
.stf:or word [bp+24], 0x100               ; set trap flag in target's saved FLAGS
    mov byte [st_usr], 0                  ; consume user-step marker
.ntf:
    call clr_ind                          ; restore screen cells used by RX/TX indicators
    pop es                                ; restore target ES
    pop ds                                ; restore target DS
    popa                                  ; restore target general-purpose registers
    iret                                  ; resume the target using edited interrupt frame

; Signal the host launcher only after the target has reached its entry gate.
; The marker prevents GDB from interrupting COMMAND.COM during DOS startup.
mark_entry_ready:
    push ax                               ; preserve target's AX
    push bx                               ; preserve target's BX
    push cx                               ; preserve target's CX
    push dx                               ; preserve target's DX
    push bp                               ; preserve target's BP
    push ds                               ; preserve target's DS
    mov dx, entry_ready_file              ; DS:DX = host-polled readiness filename
    xor cx, cx                            ; CX = normal file attributes
    mov ah, 0x3C                          ; DOS create/truncate-file service
    int 0x21                              ; create C:\GDBENTRY.OK and return handle in AX
    jc .done                              ; marker failure must not prevent debugger entry
    mov bx, ax                            ; BX = marker file handle
    mov cx, 1                             ; write exactly one byte
    mov dx, entry_ready_data              ; DS:DX = marker content "1"
    mov ah, 0x40                          ; DOS write-file service
    int 0x21                              ; write readiness byte for host launcher
    mov ah, 0x3E                          ; DOS close-file service
    int 0x21                              ; close marker file
.done:
    pop ds                                ; restore target's DS
    pop bp                                ; restore target's BP
    pop dx                                ; restore target's DX
    pop cx                                ; restore target's CX
    pop bx                                ; restore target's BX
    pop ax                                ; restore target's AX
    ret                                   ; resume entry-stop processing

; ─── INT 1 (single-step) ────────────────────────────
int1:                                     ; CPU trap handler raised by TF single-step
    pusha                                 ; save target's general-purpose registers
    push ds                               ; save target's DS
    push es                               ; save target's ES
    mov ax, cs                            ; AX = resident TSR segment
    mov ds, ax                            ; DS = TSR data/code for handler routines
    call ser_irq_disable                  ; prevent nested serial IRQ during trap handling
    mov byte [in_dbg], 1                  ; mark CPU as inside debugger
    mov bp, sp                            ; BP = saved registers and INT 1 frame

    push [bp+18]                          ; copy target AX from saved PUSHA frame
    pop word [sreg+R_AX]                  ; store AX in GDB register packet
    push [bp+16]                          ; copy target CX
    pop word [sreg+R_CX]                  ; store CX in GDB register packet
    push [bp+14]                          ; copy target DX
    pop word [sreg+R_DX]                  ; store DX in GDB register packet
    push [bp+12]                          ; copy target BX
    pop word [sreg+R_BX]                  ; store BX in GDB register packet
    mov ax, [bp+10]                       ; AX = PUSHA-saved SP value
    add ax, 6                             ; adjust past PUSHA and interrupt-frame words
    mov [sreg+R_SP], ax                   ; save target's effective SP
    push [bp+8]                           ; copy target BP
    pop word [sreg+R_BP]                  ; store BP in GDB register packet
    push [bp+6]                           ; copy target SI
    pop word [sreg+R_SI]                  ; store SI in GDB register packet
    push [bp+4]                           ; copy target DI
    pop word [sreg+R_DI]                  ; store DI in GDB register packet
    push [bp+20]                          ; copy post-step IP from INT 1 frame
    pop word [sreg+R_IP]                  ; store IP in GDB register packet
    push [bp+22]                          ; copy target CS
    pop word [sreg+R_CS]                  ; store CS in GDB register packet
    mov ax, [sreg+R_CS]                   ; AX = current target code segment
    mov [target_cs], ax                   ; remember target CS for GDB address translation
    push [bp+24]                          ; copy target FLAGS
    pop word [sreg+R_FL]                  ; store FLAGS in GDB register packet
    and word [sreg+R_FL], ~0x100           ; clear TF in reported flags after this step
    mov ax, ss                            ; AX = target stack segment
    mov [sreg+R_SS], ax                   ; store SS in GDB register packet
    push [bp+2]                           ; copy target DS from saved stack
    pop word [sreg+R_DS]                  ; store DS in GDB register packet
    push [bp]                             ; copy target ES from saved stack
    pop word [sreg+R_ES]                  ; store ES in GDB register packet
    xor ax, ax                            ; FS and GS are unavailable in real mode
    mov [sreg+R_FS], ax                   ; report FS as zero
    mov [sreg+R_GS], ax                   ; report GS as zero
    mov di, sreg+2                        ; DI = upper word of first register slot
    mov cx, 15                            ; clear high halves in all padded register slots
.z1:mov word [di], 0                      ; zero upper 16 bits of current register value
    add di, 4                             ; advance to next GDB register slot
    loop .z1                              ; clear remaining upper halves

    mov [hk_ss], ss                       ; save target stack segment for eventual return
    mov [hk_sp], sp                       ; save target stack pointer for eventual return

    ; REP string instructions can raise INT1 after each iteration while IP
    ; remains at the REP prefix. Keep the breakpoint omitted until IP advances.
    cmp byte [st_rep], 0                  ; is a repeated instruction being stepped?
    je .rep_done                          ; no -> process this as an ordinary INT1
    mov ax, [sreg+R_CS]                   ; AX = current target CS
    cmp ax, [st_rep_cs]                   ; are we still in the original code segment?
    jne .rep_done                         ; no -> the REP instruction has completed
    mov ax, [sreg+R_IP]                   ; AX = current target IP
    cmp ax, [st_rep_ip]                   ; is IP still at the repeated instruction?
    jne .rep_done                         ; no -> the REP instruction has completed

    cli                                   ; protect switch to resident debugger stack
    mov ax, cs                            ; AX = TSR segment
    mov ss, ax                            ; SS = debugger stack segment
    mov sp, stk_t                         ; SP = debugger's resident stack top
    sti                                   ; allow serial IRQs while preparing resume
    cli                                   ; protect restore of target stack
    mov ss, [hk_ss]                       ; restore target's stack segment
    mov sp, [hk_sp]                       ; restore target's stack pointer
    call ser_irq_enable                   ; accept asynchronous debugger requests
    mov byte [in_dbg], 0                  ; mark debugger inactive while REP continues
    mov bp, sp                            ; BP = target's saved FLAGS location
    or word [bp+24], 0x100                ; trap again after the next REP iteration
    call clr_ind                          ; restore screen cells used for serial markers
    pop es                                ; restore target ES
    pop ds                                ; restore target DS
    popa                                  ; restore target general-purpose registers
    iret                                  ; resume REP without reporting an intermediate stop

.rep_done:
    mov byte [st_rep], 0                  ; the repeated instruction has completed
    mov word [st_pi], -1                  ; no breakpoint slot remains temporarily skipped

    cli                                   ; protect switch to resident debugger stack
    mov ax, cs                            ; AX = TSR segment
    mov ss, ax                            ; SS = debugger stack segment
    mov sp, stk_t                         ; SP = top of debugger's resident stack
    sti                                   ; permit serial interrupt processing while stopped

    cmp byte [st_cont], 0                 ; was this INT1 just the hidden breakpoint step?
    je .eg                                 ; no -> report a normal single-step stop
    ; stepping past breakpoint: continue silently
    mov byte [st_cont], 0                 ; consume silent-continue state
    call bp_patch                         ; reinsert breakpoint skipped for one instruction
    cli                                   ; protect restoring target stack
    mov ss, [hk_ss]                       ; restore target's stack segment
    mov sp, [hk_sp]                       ; restore target's stack pointer
    call ser_irq_enable                   ; allow GDB to interrupt target over serial
    mov byte [in_dbg], 0                  ; mark debugger as inactive while target runs
    mov bp, sp                            ; BP = saved target FLAGS location
    and word [bp+24], ~0x100              ; clear TF before silently resuming target
    call clr_ind                          ; restore screen cells used for serial indicators
    pop es                                ; restore target ES
    pop ds                                ; restore target DS
    popa                                  ; restore target general-purpose registers
    iret                                  ; resume target without reporting this internal step

.eg:
    mov byte [st_run], 0                  ; INT1 itself is already the stop notification
    call pkt_send_trap                    ; report single-step stop as S05
    push .r1                              ; set return address for command loop's RET
    call gdb_loop                         ; accept GDB commands while target is stopped
.r1:
    call bp_patch                         ; rearm breakpoints before returning to target
    cli                                   ; protect restoring target stack
    mov ss, [hk_ss]                       ; restore target stack segment
    mov sp, [hk_sp]                       ; restore target stack pointer
    call ser_irq_enable                   ; reenable asynchronous GDB requests
    mov byte [in_dbg], 0                  ; mark debugger as inactive

    mov bp, sp                            ; BP = target interrupt-frame FLAGS location
    and word [bp+24], ~0x100              ; clear TF unless GDB requests another step
    cmp byte [st_usr], 0                  ; should one more user single-step be armed?
    je .nf                                ; no -> return with TF cleared
    or word [bp+24], 0x100                ; set TF in target's saved FLAGS
    mov byte [st_usr], 0                  ; consume user-step marker
.nf:
    call clr_ind                          ; restore screen cells used for RX/TX indicators
    pop es                                ; restore target ES
    pop ds                                ; restore target DS
    popa                                  ; restore target general-purpose registers
    iret                                  ; resume target with requested step/continue state

; ─── IRQ4 (COM1 receive / asynchronous GDB entry) ────
; A leading '$' lets GDB install/remove software breakpoints while the app is
; running. A raw 0x03 is the RSP interrupt request used by Pause/Stop.
int4:                                     ; COM1 receive IRQ; permits GDB requests during run
    pusha                                 ; save interrupted CPU registers
    push ds                               ; save interrupted DS
    push es                               ; save interrupted ES
    mov ax, cs                            ; AX = resident TSR segment
    mov ds, ax                            ; DS = TSR data for serial/debugger routines
    mov bp, sp                            ; BP = saved target state on interrupted stack

    mov dx, [com]                         ; DX = UART base port
    add dx, 5                             ; DX = line-status register
    in al, dx                             ; read UART receive status
    test al, 1                            ; bit 0 means input byte is waiting
    jz .spurious                          ; no byte despite IRQ -> acknowledge and return
    mov dx, [com]                         ; DX = UART receive-data register
    in al, dx                              ; AL = byte received from GDB
    cmp al, 0x03                          ; is this RSP's raw Ctrl-C interrupt byte?
    je .halt                              ; yes -> stop running target and report SIGINT
    cmp al, '$'                            ; does an RSP packet begin with '$'?
    jne .ignored                          ; ignore other bytes while target is running
    mov [rx_byte], al                     ; buffer '$' consumed by IRQ handler
    mov byte [rx_pending], 1              ; pkt_read must consume the buffered prefix
    mov byte [st_async], 1                ; mark packet as a live-target async request
    jmp .enter                            ; switch to debugger and finish receiving packet
.halt:
    mov byte [st_async], 0                ; this is a stop request, not a packet command
    mov byte [st_run], 0                  ; avoid duplicate asynchronous-stop reply
    jmp .enter                            ; snapshot target and enter command loop
.ignored:
.spurious:
    mov al, 0x20                          ; PIC end-of-interrupt command
    out 0x20, al                          ; acknowledge IRQ4 to master PIC
    pop es                                ; restore interrupted ES
    pop ds                                ; restore interrupted DS
    popa                                  ; restore interrupted general registers
    iret                                  ; return to target without entering debugger

.enter:
    call ser_irq_disable                  ; prevent nested receive IRQ while debugger runs
    mov al, 0x20                          ; PIC end-of-interrupt command
    out 0x20, al                          ; acknowledge IRQ4 before lengthy packet handling
    mov byte [in_dbg], 1                  ; mark CPU as inside debugger

    push [bp+18]                          ; copy interrupted AX from saved PUSHA frame
    pop word [sreg+R_AX]                  ; save AX in GDB register packet
    push [bp+16]                          ; copy interrupted CX
    pop word [sreg+R_CX]                  ; save CX in GDB register packet
    push [bp+14]                          ; copy interrupted DX
    pop word [sreg+R_DX]                  ; save DX in GDB register packet
    push [bp+12]                          ; copy interrupted BX
    pop word [sreg+R_BX]                  ; save BX in GDB register packet
    mov ax, [bp+10]                       ; AX = PUSHA-saved SP value
    add ax, 6                             ; adjust past PUSHA and interrupt-frame words
    mov [sreg+R_SP], ax                   ; save interrupted program's effective SP
    push [bp+8]                           ; copy interrupted BP
    pop word [sreg+R_BP]                  ; save BP in GDB register packet
    push [bp+6]                           ; copy interrupted SI
    pop word [sreg+R_SI]                  ; save SI in GDB register packet
    push [bp+4]                           ; copy interrupted DI
    pop word [sreg+R_DI]                  ; save DI in GDB register packet
    push [bp+20]                          ; copy interrupted IP from hardware frame
    pop word [sreg+R_IP]                  ; save PC snapshot for GDB register reads
    push [bp+22]                          ; copy interrupted CS from hardware frame
    pop word [sreg+R_CS]                  ; save snapshot; keep target_cs for code-address mapping
    push [bp+24]                          ; copy interrupted FLAGS
    pop word [sreg+R_FL]                  ; save FLAGS in GDB register packet
    mov ax, ss                            ; AX = interrupted stack segment
    mov [sreg+R_SS], ax                   ; save SS in GDB register packet
    push [bp+2]                           ; copy interrupted DS from saved stack
    pop word [sreg+R_DS]                  ; save DS in GDB register packet
    push [bp]                             ; copy interrupted ES from saved stack
    pop word [sreg+R_ES]                  ; save ES in GDB register packet
    xor ax, ax                            ; FS/GS are unavailable in 16-bit real mode
    mov [sreg+R_FS], ax                   ; report FS as zero
    mov [sreg+R_GS], ax                   ; report GS as zero
    mov di, sreg+2                        ; DI = upper word of first register slot
    mov cx, 15                            ; clear upper halves of remaining GDB register slots
.z4:mov word [di], 0                      ; zero upper 16 bits of current register slot
    add di, 4                             ; advance to next 32-bit GDB register slot
    loop .z4                              ; clear padding in all register values

    mov [hk_ss], ss                       ; save interrupted stack segment
    mov [hk_sp], sp                       ; save interrupted stack pointer
    mov word [st_pi], -1                  ; no breakpoint slot is currently skipped
    cli                                   ; protect switch to resident debugger stack
    mov ax, cs                            ; AX = TSR segment
    mov ss, ax                            ; SS = debugger stack segment
    mov sp, stk_t                         ; SP = top of resident debugger stack
    sti                                   ; allow command-packet reception
    cmp byte [st_async], 0                ; was a full command packet already starting?
    jne .wait                             ; yes -> packet reader consumes buffered '$'
    mov si, s_intr                        ; Ctrl-C requires an RSP S02 stop reply
    call pkt_send                         ; notify GDB that target was interrupted
.wait:
    push .rt                              ; return address for command loop's RET
    call gdb_loop                         ; receive commands until target resumes/detaches
.rt:
    cli                                   ; protect restore of interrupted stack
    mov ss, [hk_ss]                       ; restore interrupted target's stack segment
    mov sp, [hk_sp]                       ; restore interrupted target's stack pointer
    call ser_irq_enable                   ; accept later asynchronous GDB requests
    mov byte [in_dbg], 0                  ; mark debugger inactive while target runs

    mov bp, sp                            ; BP = target's saved FLAGS word
    mov ax, [st_pi]                       ; AX = temporarily skipped breakpoint slot, or -1
    cmp ax, -1                             ; does step-over still require TF to rearm it?
    jne .stf                               ; yes -> set TF before returning
    cmp byte [st_usr], 0                  ; did GDB request a single-step?
    je .ntf                               ; no -> return to target with its prior TF state
.stf:or word [bp+24], 0x100               ; enable trap flag in target's saved FLAGS
    mov byte [st_usr], 0                  ; consume user-step request
.ntf:
    call clr_ind                          ; restore screen cells used as serial indicators
    pop es                                ; restore target ES
    pop ds                                ; restore target DS
    popa                                  ; restore target general-purpose registers
    iret                                  ; resume interrupted target context





; ─── INT 0 / INT 6 (CPU faults) ────────────────────
; Divide error and invalid opcode stop in GDB (SIGFPE / SIGILL) at the faulting
; instruction instead of running off into DOS's default handlers.  Both share
; INT 3's register capture; a resume re-executes the instruction.
int0:                                     ; divide error (DIV/IDIV overflow or /0)
    mov byte [cs:fault_sig], 8            ; GDB signal 8 = SIGFPE
    jmp int3                              ; capture registers and stop
int6:                                     ; invalid opcode
    mov byte [cs:fault_sig], 4            ; GDB signal 4 = SIGILL
    jmp int3                              ; capture registers and stop

; ─── INT 2Fh (multiplex — detect resident / arm entry trap) ─
int2f:
    cmp ax, 0xCF00                        ; is caller probing whether GDBSRV is installed?
    je .resident                          ; yes -> return its resident signature
    cmp ax, 0xCF02                        ; is GDBEXEC asking to arm target entry trap?
    je .entry                             ; yes -> save opcode and plant INT 3
    cmp ax, 0xCF04                        ; did debugged child process terminate?
    je .exit                              ; yes -> notify GDB and return to DOS
    jmp far [cs:ov2f]                     ; unknown service -> chain to prior INT 2Fh handler
.resident:
    mov ax, 0xCF01                        ; return GDBSRV resident signature in AX
    iret                                  ; return to caller of multiplex interrupt
.exit:
    pusha                                 ; preserve caller's general-purpose registers
    push ds                               ; preserve caller's DS
    push es                               ; preserve caller's ES
    mov ax, cs                            ; AX = resident TSR segment
    mov ds, ax                            ; DS = TSR data for serial/protocol helpers
    call ser_irq_disable                  ; suppress nested COM1 interrupts
    mov byte [in_dbg], 1                  ; mark GDB stub as servicing target exit
    mov [hk_ss], ss                       ; save DOS caller's stack segment
    mov [hk_sp], sp                       ; save DOS caller's stack pointer
    cli                                   ; protect switch to resident debugger stack
    mov ax, cs                            ; AX = resident TSR segment
    mov ss, ax                            ; SS = debugger stack segment
    mov sp, stk_t                         ; SP = top of debugger's private stack
    sti                                   ; allow UART while sending exit notification
    mov al, bl                            ; AL = target exit code from GDBEXEC
    mov di, s_exit+1                      ; DI = two status digits after 'W'
    push ax                               ; keep low nibble for second digit
    shr al, 4                             ; AL = high nibble
    call pnib_buf                         ; write high status digit
    pop ax                                ; AL = exit code again
    call pnib_buf                         ; write low status digit
    mov si, s_exit                        ; SI = RSP Wxx exit-status reply
    call pkt_send                         ; notify GDB that debugged child exited
    cli                                   ; protect restore of DOS caller stack
    mov ss, [hk_ss]                       ; restore DOS caller's stack segment
    mov sp, [hk_sp]                       ; restore DOS caller's stack pointer
    call ser_irq_enable                   ; resume asynchronous GDB serial requests
    mov byte [in_dbg], 0                  ; debugger is no longer servicing exit
    pop es                                ; restore caller's ES
    pop ds                                ; restore caller's DS
    popa                                  ; restore caller's general-purpose registers
    mov ax, 0xCF05                        ; acknowledge GDBSRV exit service to launcher
    iret                                  ; return to GDBEXEC's child-termination callback
.entry:
    ; GDBEXEC supplies CX:DX = target CS:IP after DOS loaded it with EXEC/01.
    push ax                               ; preserve GDBEXEC's AX
    push bx                               ; preserve GDBEXEC's BX
    push es                               ; preserve GDBEXEC's ES
    push ds                               ; preserve GDBEXEC's DS
    mov ax, cs                            ; AX = resident TSR segment
    mov ds, ax                            ; DS = GDBSRV data segment
    mov [gate_cs], cx                     ; remember DOS-loaded target's initial CS
    mov [target_cs], cx                   ; initialize target segment for address translation
    mov [gate_ip], dx                     ; remember DOS-loaded target's initial IP
    mov es, cx                            ; ES:BX points into target's freshly loaded image
    mov bx, dx                            ; BX = target entry offset
    mov al, [es:bx]                       ; read original first instruction byte
    mov [gate_opcode], al                 ; save opcode so it can be restored on trap
    mov byte [es:bx], 0xCC                ; plant temporary entry breakpoint in memory
    mov byte [st_gate], 1                 ; mark that entry trap is armed
    pop ds                                ; restore GDBEXEC's DS
    pop es                                ; restore GDBEXEC's ES
    pop bx                                ; restore GDBEXEC's BX
    pop ax                                ; restore GDBEXEC's AX
    mov ax, 0xCF03                        ; return success signature to GDBEXEC
    iret                                  ; resume launcher after planting entry INT 3
