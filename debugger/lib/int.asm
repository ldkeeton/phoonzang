; int.asm — interrupt handlers for GDBSRV

; ─── INT 3 (breakpoint) ─────────────────────────────
int3:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    call ser_irq_disable
    mov byte [in_dbg], 1
    mov bp, sp

    push [bp+18]
    pop word [sreg+R_AX]
    push [bp+16]
    pop word [sreg+R_CX]
    push [bp+14]
    pop word [sreg+R_DX]
    push [bp+12]
    pop word [sreg+R_BX]
    mov ax, [bp+10]
    add ax, 6
    mov [sreg+R_SP], ax
    push [bp+8]
    pop word [sreg+R_BP]
    push [bp+6]
    pop word [sreg+R_SI]
    push [bp+4]
    pop word [sreg+R_DI]

    ; Keep the post-INT3 IP until we know this was one of our breakpoints.
    ; A program-authored INT3 must resume after the INT3 instruction.
    push [bp+20]
    pop word [sreg+R_IP]
    push [bp+22]
    pop word [sreg+R_CS]
    push [bp+24]
    pop word [sreg+R_FL]
    mov ax, ss
    mov [sreg+R_SS], ax
    push [bp+2]
    pop word [sreg+R_DS]
    push [bp]
    pop word [sreg+R_ES]
    xor ax, ax
    mov [sreg+R_FS], ax
    mov [sreg+R_GS], ax
    mov di, sreg+2
    mov cx, 15
.z0:mov word [di], 0
    add di, 4
    loop .z0

    mov [hk_ss], ss
    mov [hk_sp], sp

    mov ax, [sreg+R_CS]
    mov dx, 16
    mul dx
    mov cx, [sreg+R_IP]
    dec cx                          ; candidate address for a patched 0xCC
    add ax, cx
    adc dx, 0
    push dx
    push ax
    call bp_find
    add sp, 4
    mov [bp_cur], ax
    ; Report the INT3 instruction's address to GDB.
    dec word [sreg+R_IP]
    cmp ax, -1
    jne .swbp
    ; TESTDBG.COM has a debugger-injected INT3 at COM entry. Rewind the real
    ; IRET frame so restoring the original first byte resumes at entry.
    cmp byte [st_gate], 0
    je .nb
    cmp word [sreg+R_IP], 0x100
    jne .nb
    dec word [bp+20]
    ; Present the gate stop just before the COM entry to GDB. If GDB sees
    ; EIP equal to a breakpoint being installed at 0x100, it single-steps the
    ; entry instruction before planting Z0, which misses a pre-launch BP.
    ; The real IRET frame remains at 0x100; this is only the initial RSP view.
    mov word [sreg+R_IP], 0x00FF
    mov byte [st_gate], 0
    mov byte [st_entry_stop], 1
    call mark_entry_ready
    jmp .nb
.swbp:
    ; A GDB-inserted INT3 traps with the frame IP one byte past the CC. Restore
    ; the original instruction at its first byte before returning to the app.
    dec word [bp+20]
    call bp_rest
.nb:
    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t
    sti

    ; On the first stop GDB queries '?' after connecting. Once execution has
    ; resumed, report each subsequent INT3 as an asynchronous stop reply.
    cmp byte [st_run], 0
    je .wait
    mov byte [st_run], 0
    call pkt_send_trap
.wait:
    push .rt
    call gdb_loop
.rt:
    cli
    mov ss, [hk_ss]
    mov sp, [hk_sp]
    call ser_irq_enable
    mov byte [in_dbg], 0

    mov ax, [st_pi]
    cmp ax, -1
    jne .nopii
    call bp_patch
.nopii:
    mov bp, sp
    mov ax, [st_pi]
    cmp ax, -1
    jne .stf
    cmp byte [st_usr], 0
    je .ntf
.stf:or word [bp+24], 0x100
    mov byte [st_usr], 0
.ntf:
    call clr_ind
    pop es
    pop ds
    popa
    iret

; Signal the host launcher only after TESTDBG.COM has reached its entry gate.
; The marker prevents GDB from interrupting COMMAND.COM during DOS startup.
mark_entry_ready:
    push ax
    push bx
    push cx
    push dx
    push bp
    push ds
    mov dx, entry_ready_file
    xor cx, cx
    mov ah, 0x3C
    int 0x21
    jc .done
    mov bx, ax
    mov cx, 1
    mov dx, entry_ready_data
    mov ah, 0x40
    int 0x21
    mov ah, 0x3E
    int 0x21
.done:
    pop ds
    pop bp
    pop dx
    pop cx
    pop bx
    pop ax
    ret

; ─── INT 1 (single-step) ────────────────────────────
int1:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    call ser_irq_disable
    mov byte [in_dbg], 1
    mov bp, sp

    push [bp+18]
    pop word [sreg+R_AX]
    push [bp+16]
    pop word [sreg+R_CX]
    push [bp+14]
    pop word [sreg+R_DX]
    push [bp+12]
    pop word [sreg+R_BX]
    mov ax, [bp+10]
    add ax, 6
    mov [sreg+R_SP], ax
    push [bp+8]
    pop word [sreg+R_BP]
    push [bp+6]
    pop word [sreg+R_SI]
    push [bp+4]
    pop word [sreg+R_DI]
    push [bp+20]
    pop word [sreg+R_IP]
    push [bp+22]
    pop word [sreg+R_CS]
    push [bp+24]
    pop word [sreg+R_FL]
    and word [sreg+R_FL], ~0x100
    mov ax, ss
    mov [sreg+R_SS], ax
    push [bp+2]
    pop word [sreg+R_DS]
    push [bp]
    pop word [sreg+R_ES]
    xor ax, ax
    mov [sreg+R_FS], ax
    mov [sreg+R_GS], ax
    mov di, sreg+2
    mov cx, 15
.z1:mov word [di], 0
    add di, 4
    loop .z1

    mov [hk_ss], ss
    mov [hk_sp], sp
    mov word [st_pi], -1

    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t
    sti

    cmp byte [st_cont], 0
    je .eg
    ; stepping past breakpoint: continue silently
    mov byte [st_cont], 0
    call bp_patch
    cli
    mov ss, [hk_ss]
    mov sp, [hk_sp]
    call ser_irq_enable
    mov byte [in_dbg], 0
    mov bp, sp
    and word [bp+24], ~0x100        ; clear TF before returning
    call clr_ind
    pop es
    pop ds
    popa
    iret

.eg:
    mov byte [st_run], 0
    call pkt_send_trap
    push .r1
    call gdb_loop
.r1:
    call bp_patch
    cli
    mov ss, [hk_ss]
    mov sp, [hk_sp]
    call ser_irq_enable
    mov byte [in_dbg], 0

    mov bp, sp
    and word [bp+24], ~0x100
    cmp byte [st_usr], 0
    je .nf
    or word [bp+24], 0x100
    mov byte [st_usr], 0
.nf:
    call clr_ind
    pop es
    pop ds
    popa
    iret

; ─── IRQ4 (COM1 receive / asynchronous GDB entry) ────
; A leading '$' lets GDB install/remove software breakpoints while the app is
; running. A raw 0x03 is the RSP interrupt request used by Pause/Stop.
int4:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    mov bp, sp

    mov dx, [com]
    add dx, 5
    in al, dx
    test al, 1
    jz .spurious
    mov dx, [com]
    in al, dx
    cmp al, 0x03
    je .halt
    cmp al, '$'
    jne .ignored
    mov [rx_byte], al
    mov byte [rx_pending], 1
    mov byte [st_async], 1
    jmp .enter
.halt:
    mov byte [st_async], 0
    mov byte [st_run], 0
    jmp .enter
.ignored:
.spurious:
    mov al, 0x20
    out 0x20, al
    pop es
    pop ds
    popa
    iret

.enter:
    call ser_irq_disable
    mov al, 0x20
    out 0x20, al
    mov byte [in_dbg], 1

    push [bp+18]
    pop word [sreg+R_AX]
    push [bp+16]
    pop word [sreg+R_CX]
    push [bp+14]
    pop word [sreg+R_DX]
    push [bp+12]
    pop word [sreg+R_BX]
    mov ax, [bp+10]
    add ax, 6
    mov [sreg+R_SP], ax
    push [bp+8]
    pop word [sreg+R_BP]
    push [bp+6]
    pop word [sreg+R_SI]
    push [bp+4]
    pop word [sreg+R_DI]
    push [bp+20]
    pop word [sreg+R_IP]
    push [bp+22]
    pop word [sreg+R_CS]
    push [bp+24]
    pop word [sreg+R_FL]
    mov ax, ss
    mov [sreg+R_SS], ax
    push [bp+2]
    pop word [sreg+R_DS]
    push [bp]
    pop word [sreg+R_ES]
    xor ax, ax
    mov [sreg+R_FS], ax
    mov [sreg+R_GS], ax
    mov di, sreg+2
    mov cx, 15
.z4:mov word [di], 0
    add di, 4
    loop .z4

    mov [hk_ss], ss
    mov [hk_sp], sp
    mov word [st_pi], -1
    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t
    sti
    cmp byte [st_async], 0
    jne .wait
    mov si, s_intr
    call pkt_send
.wait:
    push .rt
    call gdb_loop
.rt:
    cli
    mov ss, [hk_ss]
    mov sp, [hk_sp]
    call ser_irq_enable
    mov byte [in_dbg], 0

    mov bp, sp
    mov ax, [st_pi]
    cmp ax, -1
    jne .stf
    cmp byte [st_usr], 0
    je .ntf
.stf:or word [bp+24], 0x100
    mov byte [st_usr], 0
.ntf:
    call clr_ind
    pop es
    pop ds
    popa
    iret





; ─── INT 2Fh (multiplex — detect resident) ─────────
int2f:
    cmp ax, 0xCF00
    jne .c2
    mov ax, 0xCF01
    iret
.c2:jmp far [cs:ov2f]
