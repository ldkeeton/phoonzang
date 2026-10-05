; int.asm — interrupt handlers for GDBSRV

; ─── INT 3 (breakpoint) ─────────────────────────────
int3:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
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
    cmp ax, -1
    je .nb
    dec word [sreg+R_IP]            ; only debugger breakpoints rewind IP
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
    sti
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

; ─── INT 1 (single-step) ────────────────────────────
int1:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
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
    sti
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
    sti
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





; ─── INT 2Fh (multiplex — detect resident) ─────────
int2f:
    cmp ax, 0xCF00
    jne .c2
    mov ax, 0xCF01
    iret
.c2:jmp far [cs:ov2f]
