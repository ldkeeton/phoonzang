; bp.asm — breakpoint management

; Find breakpoint by linear address DX:AX → AX=index or -1.
; The table is sparse; indices remain stable until an entry is removed.
bp_find:
    push cx                               ; preserve caller's CX
    push di                               ; preserve caller's DI
    push si                               ; preserve caller's SI
    mov cx, MAX_BP                        ; CX = number of slots to search
    mov di, bp_a                          ; DI = first table entry
    xor si, si                            ; SI = current slot index
.fl:cmp [di], ax                          ; compare low address word
    jne .nx                               ; low word differs -> try next slot
    cmp [di+2], dx                        ; compare high address word
    jne .nx                               ; high word differs -> try next slot
    mov ax, si                            ; return matching slot index in AX
    jmp .fd                               ; restore registers before returning
.nx:add di, 4                             ; advance to next 32-bit table entry
    inc si                                ; advance slot index
    loop .fl                              ; check remaining breakpoint slots
.nf:mov ax, -1                            ; no active breakpoint matched the address
.fd:pop si                                ; restore caller's SI
    pop di                                ; restore caller's DI
    pop cx                                ; restore caller's CX
    ret                                   ; AX = matching index or -1

; Add breakpoint at linear address DX:AX → AX=index or -1
bp_add:
    push cx                                ; preserve caller's CX
    push dx                                ; preserve address high word
    push es                                ; preserve caller's ES
    push bx                                ; preserve caller's BX
    push di                                ; preserve caller's DI
    push si                                ; preserve caller's SI
    mov bx, ax                             ; save low address word across bp_find
    call bp_find                           ; avoid duplicating an already-set breakpoint
    cmp ax, -1                              ; did the address already have a slot?
    jne .ad                                 ; yes -> return its existing slot
    cmp byte [bp_n], MAX_BP                 ; is the table already at its capacity?
    jae .fl                                 ; yes -> report allocation failure
    ; Allocate the first free slot rather than assuming active entries are
    ; packed; GDB may remove breakpoints in any order.
    xor si, si                             ; SI = candidate slot index zero
    mov di, bp_a                           ; DI = first breakpoint table entry
    mov cx, MAX_BP                         ; CX = number of slots to inspect
.slot:
    cmp word [di], -1                      ; -1 in low word marks an unused slot
    je .free                               ; found reusable slot
    add di, 4                              ; advance to next 32-bit address entry
    inc si                                 ; advance slot index
    loop .slot                             ; continue searching free entries
    jmp .fl                                ; no free slot found -> return -1
.free:
    mov ax, bx                             ; AX = requested low address word
    mov [di], ax                           ; store low half of breakpoint address
    mov [di+2], dx                         ; store high half of breakpoint address
    ; save original byte at breakpoint address
    mov ax, bx                             ; AX = linear address low word
    shr ax, 4                              ; AX = segment portion of linear address
    mov cx, dx                             ; CX = high address word
    shl cx, 12                             ; move high-address bits into segment word
    or ax, cx                              ; AX = real-mode segment covering address
    and bx, 0xF                            ; BX = offset within the 16-byte segment
    mov es, ax                             ; ES:BX now addresses requested byte
    mov al, [es:bx]                        ; read and save original instruction byte
    mov [bp_o+si], al                      ; preserve it for breakpoint restoration
    mov byte [es:bx], 0xCC                 ; replace instruction with INT 3 trap
    inc byte [bp_n]                        ; record one more allocated breakpoint
    mov ax, si                             ; return allocated slot index
    jmp .ad                                ; restore saved registers before return
.fl:mov ax, -1                             ; signal that no breakpoint slot was available
.ad:pop si                                 ; restore caller's SI
    pop di                                 ; restore caller's DI
    pop bx                                 ; restore caller's BX
    pop es                                 ; restore caller's ES
    pop dx                                 ; restore caller's DX
    pop cx                                 ; restore caller's CX
    ret                                    ; return index in AX or -1 on failure

; Remove breakpoint at linear address DX:AX
bp_rem:
    push es                                ; preserve caller's ES
    push bx                                ; preserve caller's BX
    push cx                                ; preserve caller's CX
    push dx                                ; preserve caller's DX
    push di                                ; preserve caller's DI
    push si                                ; preserve caller's SI
    call bp_find                           ; locate slot for requested DX:AX address
    cmp ax, -1                              ; was a breakpoint registered there?
    je .rd                                 ; no -> nothing to restore or remove
    mov si, ax                             ; SI = breakpoint slot index
    mov cl, [bp_o+si]                      ; CL = original instruction byte
    push si                                ; retain index while computing table offset
    shl si, 2                              ; SI = slot index * four-byte table entry
    mov ax, [bp_a+si]                      ; AX = breakpoint linear address low word
    mov dx, [bp_a+si+2]                    ; DX = breakpoint linear address high word
    push cx                                ; preserve original byte while using CX
    mov bx, ax                             ; BX = low address word
    mov ax, bx                             ; AX = linear low word for segment calculation
    shr ax, 4                              ; AX = segment portion
    mov cx, dx                             ; CX = high address word
    shl cx, 12                             ; align high address bits into segment word
    or ax, cx                              ; AX = real-mode segment for address
    and bx, 0xF                            ; BX = byte offset within segment
    mov es, ax                             ; ES:BX points to original breakpoint byte
    pop cx                                 ; recover saved instruction byte in CL
    mov [es:bx], cl                        ; restore original instruction to target memory
    pop si                                 ; SI = slot index again
    push si                                ; keep index while clearing table entry
    mov di, si                             ; DI = slot index
    shl di, 2                              ; DI = byte offset of table entry
    mov word [bp_a+di], -1                 ; mark low address word as unused
    mov word [bp_a+di+2], -1               ; mark high address word as unused
    mov byte [bp_o+si], 0                  ; clear saved original byte
    dec byte [bp_n]                        ; record one fewer active breakpoint
    cmp [bp_cur], si                       ; did we remove the breakpoint just hit?
    jne .not_cur                           ; no -> preserve current-hit state
    mov word [bp_cur], -1                  ; clear now-stale current-hit index
.not_cur:
    cmp [st_pi], si                         ; was this slot temporarily skipped for stepping?
    jne .removed                            ; no -> no step-over state to clear
    mov word [st_pi], -1                    ; clear skipped-slot state after removal
.removed:
    mov ax, si                              ; return the removed slot index
    pop si                                  ; discard saved slot index
.rd:pop si                                  ; restore caller's SI
    pop di                                  ; restore caller's DI
    pop dx                                  ; restore caller's DX
    pop cx                                  ; restore caller's CX
    pop bx                                  ; restore caller's BX
    pop es                                  ; restore caller's ES
    ret                                     ; return removed slot or -1 if not found

; Restore original byte at breakpoint index AX
bp_rest:
    push bx                                ; preserve caller's BX
    push cx                                ; preserve caller's CX
    push dx                                ; preserve caller's DX
    push es                                ; preserve caller's ES
    push si                                ; preserve caller's SI
    mov si, ax                             ; SI = breakpoint slot index supplied by caller
    mov cl, [bp_o+si]                      ; CL = saved original instruction byte
    push si                                ; keep slot index while computing table offset
    shl si, 2                              ; SI = byte offset of 32-bit address entry
    mov ax, [bp_a+si]                      ; AX = linear breakpoint address low word
    mov dx, [bp_a+si+2]                    ; DX = linear breakpoint address high word
    push cx                                ; preserve original byte while calculating address
    mov bx, ax                             ; BX = low half of linear address
    mov ax, bx                             ; AX = value used to calculate real-mode segment
    shr ax, 4                              ; AX = segment portion of linear address
    mov cx, dx                             ; CX = high half of linear address
    shl cx, 12                             ; align high bits into segment calculation
    or ax, cx                              ; AX = real-mode segment for this memory location
    and bx, 0xF                            ; BX = offset within the 16-byte segment
    mov es, ax                             ; ES:BX points to breakpoint instruction byte
    pop cx                                 ; recover original instruction byte in CL
    mov [es:bx], cl                        ; restore original byte to target memory
    pop si                                 ; discard saved slot index
    pop si                                 ; restore caller's SI
    pop es                                 ; restore caller's ES
    pop dx                                 ; restore caller's DX
    pop cx                                 ; restore caller's CX
    pop bx                                 ; restore caller's BX
    ret                                    ; return after removing INT 3 patch temporarily

; Patch 0xCC at every active breakpoint except st_pi.
bp_patch:
    push ax                                ; preserve caller's AX
    push cx                                ; preserve caller's CX
    push dx                                ; preserve caller's DX
    push es                                ; preserve caller's ES
    push bx                                ; preserve caller's BX
    push si                                ; preserve caller's SI
    xor bx, bx                             ; BX = first breakpoint slot index
.pl:cmp bx, MAX_BP                         ; have all breakpoint slots been examined?
    jae .pd                                ; yes -> restore registers and return
    cmp bx, [st_pi]                        ; is this slot temporarily skipped for stepping?
    je .ps                                 ; yes -> leave its original byte in place
    mov si, bx                             ; SI = current slot index
    shl si, 2                              ; SI = byte offset of this table entry
    mov ax, [bp_a+si]                      ; AX = low word of slot's linear address
    cmp ax, -1                              ; unused entries have -1 in their low word
    je .ps                                 ; unused slot -> skip patching it
    mov dx, [bp_a+si+2]                    ; DX = high word of linear address
    push bx                                ; preserve loop index while using BX as offset
    mov bx, ax                             ; BX = low linear-address word
    mov ax, bx                             ; AX = low word for segment conversion
    shr ax, 4                              ; AX = low-address contribution to segment
    push cx                                ; preserve loop state while using CX
    mov cx, dx                             ; CX = high linear-address word
    shl cx, 12                             ; align high-address bits into segment word
    or ax, cx                              ; AX = real-mode segment that reaches address
    and bx, 0xF                            ; BX = offset within the segment
    mov es, ax                             ; ES:BX addresses this active breakpoint byte
    mov byte [es:bx], 0xCC                 ; arm software breakpoint with INT 3 opcode
    pop cx                                 ; restore caller's CX for loop/stack discipline
    pop bx                                 ; restore slot index for next iteration
.ps:inc bx                                 ; advance to next breakpoint slot
    jmp .pl                                ; inspect and patch remaining slots
.pd:pop si                                 ; restore caller's SI
    pop bx                                 ; restore caller's BX
    pop es                                 ; restore caller's ES
    pop dx                                 ; restore caller's DX
    pop cx                                 ; restore caller's CX
    pop ax                                 ; restore caller's AX
    ret                                    ; return after rearming applicable breakpoints
