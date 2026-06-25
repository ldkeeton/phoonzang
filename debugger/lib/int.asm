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

    ; IP points to next instruction after 0xCC; decrement to original
    mov ax, [bp+20]
    dec ax
    mov [sreg+R_IP], ax
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
    add ax, cx
    adc dx, 0
    push dx
    push ax
    call bp_find
    add sp, 4
    mov [bp_cur], ax
    cmp ax, -1
    je .nb
    call bp_rest
.nb:
    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t
    sti

    call gdb_loop

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
    mov byte [in_dbg], 0
    call bp_patch
    and word [bp+24], ~0x100        ; clear TF before returning
    pop es
    pop ds
    popa
    iret

.eg:
    mov byte [brk_req], 0
    call gdb_loop
    mov byte [in_dbg], 0
    call bp_patch

    mov bp, sp
    cmp byte [st_usr], 0
    je .nf
    or word [bp+24], 0x100
    mov byte [st_usr], 0
.nf:
    pop es
    pop ds
    popa
    iret

; ─── INT 8 (timer tick — background serial poll) ──
int8:
    pushf
    call far [cs:ov8]

    push ax
    push dx
    push ds
    push bp
    mov bp, sp
    mov ax, cs
    mov ds, ax

    mov dx, [com]
    add dx, 5
    in al, dx
    test al, 1
    jz .clr

    mov dx, [com]
    in al, dx

    mov di, ser_ring
    xor ch, ch
    mov cl, [ser_ring_w]
    add di, cx
    mov [di], al
    inc byte [ser_ring_w]
    and byte [ser_ring_w], RING_SZ-1

    cmp al, '$'
    jne .clr
    cmp byte [in_dbg], 0
    jne .clr

    mov ax, [bp+8]
    mov [hk_ip], ax
    mov ax, [bp+10]
    mov [hk_cs], ax
    mov ax, [bp+12]
    mov [hk_fl], ax
    mov ax, cs
    mov [bp+10], ax
    mov word [bp+8], gdb_en
    and word [bp+12], ~0x100
    or word [bp+12], 0x200

.clr:
    push es
    mov ax, 0xB800
    mov es, ax
    mov byte [es:156], 0xB0
    mov byte [es:158], 0xB0
    pop es

    pop bp
    pop ds
    pop dx
    pop ax
    iret

; ─── INT 9 (keyboard hotkey) ────────────────────────
int9:
    push ax
    push ds
    push es
    in al, 0x60
    test al, 0x80
    jnz .ch
    cmp al, [cs:hkey]
    jne .ch
    cmp byte [cs:in_dbg], 0
    jne .in_dbg_hotkey
    mov ax, KBF_S
    mov ds, ax
    test byte [KBF_O], CTRL
    jz .ch
    jmp .hk_enter

.in_dbg_hotkey:
    push ax
    push ds
    mov byte [cs:brk_req], 1
    in al, 0x61
    mov ah, al
    or al, 0x80
    out 0x61, al
    xchg ah, al
    out 0x61, al
    mov al, 0x20
    out 0x20, al
    pop ds
    pop ax
    pop es
    pop ds
    pop ax
    iret

.hk_enter:
    mov ax, cs
    mov ds, ax
    in al, 0x61
    mov ah, al
    or al, 0x80
    out 0x61, al
    xchg ah, al
    out 0x61, al
    mov al, 0x20
    out 0x20, al
    mov bp, sp
    mov ax, [bp+6]
    mov [cs:hk_ip], ax
    mov ax, [bp+8]
    mov [cs:hk_cs], ax
    mov ax, [bp+10]
    mov [cs:hk_fl], ax
    mov ax, cs
    mov [bp+8], ax
    mov word [bp+6], gdb_en
    and word [bp+10], ~0x100
    or word [bp+10], 0x200
    pop es
    pop ds
    pop ax
    iret
.ch:pop es
    pop ds
    pop ax
    jmp far [cs:ov9]

; ─── gdb_entry (hotkey entry point) ─────────────────
gdb_en:
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
    push [bp+10]
    pop word [sreg+R_SP]
    push [bp+8]
    pop word [sreg+R_BP]
    push [bp+6]
    pop word [sreg+R_SI]
    push [bp+4]
    pop word [sreg+R_DI]
    push [hk_ip]
    pop word [sreg+R_IP]
    push [hk_cs]
    pop word [sreg+R_CS]
    push [hk_fl]
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
.g1:mov word [di], 0
    add di, 4
    loop .g1

    mov word [bp_cur], -1
    mov [hk_ss], ss
    mov [hk_sp], sp

    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t
    sti

    call gdb_loop
    mov byte [in_dbg], 0
    call bp_patch

    cli
    mov ss, [hk_ss]
    mov sp, [hk_sp]
    pop es
    pop ds
    popa

    push word [sreg+R_FL]
    push word [sreg+R_CS]
    push word [sreg+R_IP]
    sti
    iret

; ─── INT 2Fh (multiplex — detect resident) ─────────
int2f:
    cmp ax, 0xCF00
    jne .c2
    mov ax, 0xCF01
    iret
.c2:jmp far [cs:ov2f]
