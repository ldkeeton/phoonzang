; cmds.asm — GDB command handlers, main dispatch loop

; ─── GDB command loop ───────────────────────────────
; Called from interrupt handlers; returns when continue/step/detach
gdb_loop:
    call clr_ind
    call pkt_read

    mov al, [rbuf]
    cmp al, '?'
    je .c_h
    cmp al, 'g'
    je .c_rr
    cmp al, 'G'
    je .c_wr
    cmp al, 'm'
    je .c_rm
    cmp al, 'M'
    je .c_wm
    cmp al, 'c'
    je .c_c
    cmp al, 's'
    je .c_s
    cmp al, 'Z'
    je .c_bi
    cmp al, 'z'
    je .c_br
    cmp al, 'k'
    je .c_k
    cmp al, 'D'
    je .c_d
    cmp al, 'H'
    je .c_H
    cmp al, 'q'
    je .c_q
    cmp al, 'v'
    je .c_v
    mov si, s_emp
    call pkt_send
    jmp gdb_loop

.c_h:  jmp cmd_halt
.c_H:  jmp cmd_H
.c_rr: jmp cmd_rreg
.c_wr: jmp cmd_wreg
.c_rm: jmp cmd_rmem
.c_wm: jmp cmd_wmem
.c_c:  jmp cmd_cont
.c_s:  jmp cmd_step
.c_bi: jmp cmd_bins
.c_br: jmp cmd_brem
.c_k:  jmp cmd_kill
.c_d:  jmp cmd_det
.c_q:  jmp cmd_qry
.c_v:  jmp cmd_v

; ─── Command handlers ───────────────────────────────

cmd_halt:
    mov si, s_trap
    call pkt_send
    jmp gdb_loop

cmd_H:
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_rreg:
    mov si, sreg
    mov cx, SAVE_L
    call bytes_pkt
    jmp gdb_loop

cmd_wreg:
    mov si, rbuf+1
    mov di, sreg
    mov cx, SAVE_L
    call hex_mem
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_rmem:
    mov si, rbuf+1
    call ph32                ; DX:AX = address
    inc si                   ; skip comma
    xor bx, bx               ; parse length as hex into BX
.rl:lodsb
    cmp al, '0'
    jb .rd
    cmp al, '9'
    ja .a1
    sub al, '0'
    jmp .sv
.a1:and al, ~0x20
    cmp al, 'A'
    jb .rd
    cmp al, 'F'
    ja .rd
    sub al, 'A' - 10
.sv:shl bx, 1
    shl bx, 1
    shl bx, 1
    shl bx, 1
    or bl, al
    jmp .rl
.rd:push bx                ; save length on stack
    mov di, stk             ; store raw bytes in stk (no overlap with bytes_pkt output)
.rrp:test bx, bx
    jz .rrd
    push bx
    push dx
    push ax
    mov bx, ax
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    mov al, [es:bx]
    mov [di], al
    inc di
    pop ax
    pop dx
    pop bx
    inc ax
    adc dx, 0
    dec bx
    jmp .rrp
.rrd:pop bx                   ; clean up leaked length from stack
    sub di, stk
    mov cx, di
    mov si, stk
    call bytes_pkt
    jmp gdb_loop

cmd_wmem:
    mov si, rbuf+1
    call ph32                ; DX:AX = address
    inc si                   ; skip comma
    xor bx, bx               ; parse length as hex into BX
.wl:lodsb
    cmp al, '0'
    jb .wd
    cmp al, '9'
    ja .a1w
    sub al, '0'
    jmp .svw
.a1w:and al, ~0x20
    cmp al, 'A'
    jb .wd
    cmp al, 'F'
    ja .wd
    sub al, 'A' - 10
.svw:shl bx, 1
    shl bx, 1
    shl bx, 1
    shl bx, 1
    or bl, al
    jmp .wl
.wd:inc si                   ; skip ':'
    push bx
.wlp:test bx, bx
    jz .wld
    lodsb
    call gnib
    mov ah, al
    lodsb
    call gnib
    shl ah, 4
    or al, ah
    push ax
    push bx
    push dx
    push ax
    mov bx, ax
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    pop ax
    mov [es:bx], al
    pop dx
    pop bx
    pop ax
    inc ax
    adc dx, 0
    dec bx
    jmp .wlp
.wld:pop bx
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_cont:
    cmp byte [rbuf+1], 0
    je .cn
    mov si, rbuf+1
    call ph32
    mov [sreg+R_IP], ax
    mov [sreg+R_IP+2], dx
.cn:mov ax, [bp_cur]
    cmp ax, -1
    je .cn2
    mov [st_pi], ax
    mov byte [st_cont], 1
    mov byte [st_usr], 0
    mov ax, [bp_cur]
    call bp_rest
    mov word [bp_cur], -1
    call bp_patch
    call clr_ind
    or word [sreg+R_FL], 0x100
    pop ax
    ret
.cn2:call bp_patch
    mov byte [st_usr], 0
    and word [sreg+R_FL], ~0x100
    call clr_ind
    pop ax
    ret

cmd_step:
    cmp byte [rbuf+1], 0
    je .sn
    mov si, rbuf+1
    call ph32
    mov [sreg+R_IP], ax
    mov [sreg+R_IP+2], dx
.sn:mov ax, [bp_cur]
    cmp ax, -1
    je .sn2
    mov [st_pi], ax
    mov byte [st_cont], 0
    mov byte [st_usr], 1
    mov ax, [bp_cur]
    call bp_rest
    mov word [bp_cur], -1
    call bp_patch
    call clr_ind
    or word [sreg+R_FL], 0x100
    pop ax
    ret
.sn2:call bp_patch
    mov byte [st_usr], 1
    mov byte [st_cont], 0
    call clr_ind
    or word [sreg+R_FL], 0x100
    pop ax
    ret

cmd_bins:
    mov si, rbuf+2
    call ph32
    push dx
    push ax
    call bp_add
    add sp, 4
    cmp ax, -1
    je .bf
    mov si, s_ok
    call pkt_send
    jmp gdb_loop
.bf:mov si, s_err
    call pkt_send
    jmp gdb_loop

cmd_brem:
    mov si, rbuf+2
    call ph32
    push dx
    push ax
    call bp_rem
    add sp, 4
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_kill:
    call restore_vecs
    mov si, s_ok
    call pkt_send
    mov ax, 0x4C00
    int 0x21

cmd_det:
    mov si, s_ok
    call pkt_send
    call clr_ind
    pop ax
    ret

cmd_qry:
    mov si, rbuf+1
    cmp word [si], 'Su'
    je .qs
    cmp word [si], 'C' | (0 << 8)
    je .qC
    cmp word [si], 'At'
    je .qA
    cmp word [si], 'TS'
    je .qT
    cmp word [si], 'fT'
    je .qTh
    cmp word [si], 'sT'
    je .qTh
    cmp word [si], 'Xf'
    je .qX
    mov si, s_emp
    call pkt_send
    jmp gdb_loop
.qs:mov si, s_qsp
    call pkt_send
    jmp gdb_loop
.qC:mov si, s_qc
    call pkt_send
    jmp gdb_loop
.qA:mov si, s_qa
    call pkt_send
    jmp gdb_loop
.qT:mov si, s_emp
    call pkt_send
    jmp gdb_loop
.qTh:mov si, s_tln
    call pkt_send
    jmp gdb_loop
.qX:mov si, s_emp
    call pkt_send
    jmp gdb_loop

cmd_v:
    mov si, rbuf+1
    cmp byte [si], 'C'
    je .vC
    mov si, s_emp
    call pkt_send
    jmp gdb_loop
.vC:mov si, s_vC
    call pkt_send
    jmp gdb_loop

; ─── Restore interrupt vectors ──────────────────────
restore_vecs:
    push ds
    mov ax, [ov3+2]
    or ax, [ov3]
    jz .r1
    mov ds, [ov3+2]
    mov dx, [ov3]
    mov ax, 0x2503
    int 0x21
.r1:mov ax, [ov1+2]
    or ax, [ov1]
    jz .r2
    mov ds, [ov1+2]
    mov dx, [ov1]
    mov ax, 0x2501
    int 0x21
.r2:mov ax, [ov2f+2]
    or ax, [ov2f]
    jz .done
    mov ds, [ov2f+2]
    mov dx, [ov2f]
    mov ax, 0x252F
    int 0x21
.done:pop ds
    ret
