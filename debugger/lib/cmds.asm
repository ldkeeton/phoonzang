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
    cmp al, 'Q'
    je .c_Q
    cmp al, 'v'
    je .c_v
    cmp al, 'p'
    je .c_pr
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
.c_Q:  jmp cmd_set
.c_v:  jmp cmd_v
.c_pr: jmp cmd_preg

; ─── Command handlers ───────────────────────────────

cmd_halt:
    cmp byte [st_entry_stop], 0
    je .trap
    mov si, s_trap
    call pkt_send
    jmp gdb_loop
.trap:
    mov si, s_trap
    call pkt_send
    jmp gdb_loop

cmd_H:
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_rreg:
    mov si, sreg
    mov cx, RSP_REG_SIZE
    call bytes_pkt
    jmp gdb_loop

cmd_wreg:
    mov si, rbuf+1
    mov di, sreg
    mov cx, SAVE_L*2           ; hex_mem consumes two chars per register byte
    call hex_mem
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_rmem:
    mov si, rbuf+1
    call ph32                ; DX:AX = address
    cmp byte [st_phys], 0
    je .rm_np
    call phys_addr
.rm_np:
    push dx
    push ax
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
.rd:mov si, bx               ; preserve parsed length while restoring address
    pop ax
    pop dx
    mov bx, si
    push bx                   ; save length on stack
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
    cmp byte [st_phys], 0
    je .wm_np
    call phys_addr
.wm_np:
    mov bx, ax
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0x000F
    mov es, ax
    mov di, bx
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
.wd:mov cx, bx
    shl cx, 1                  ; hex_mem counts input hex characters
    call hex_mem
    mov si, s_ok
    call pkt_send
    jmp gdb_loop

cmd_cont:
    mov byte [st_entry_stop], 0
    cmp byte [rbuf+1], 0
    je .cn
    mov si, rbuf+1
    call ph32
    cmp byte [st_phys], 0
    je .cc_np
    call phys_addr
.cc_np:
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
    mov byte [st_run], 1
    pop ax
    ret
.cn2:call bp_patch
    mov byte [st_usr], 0
    and word [sreg+R_FL], ~0x100
    call clr_ind
    mov byte [st_run], 1
    pop ax
    ret

cmd_step:
    mov byte [st_entry_stop], 0
    cmp byte [rbuf+1], 0
    je .sn
    mov si, rbuf+1
    call ph32
    cmp byte [st_phys], 0
    je .cs_np
    call phys_addr
.cs_np:
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
    mov byte [st_run], 1
    pop ax
    ret
.sn2:call bp_patch
    mov byte [st_usr], 1
    mov byte [st_cont], 0
    call clr_ind
    or word [sreg+R_FL], 0x100
    mov byte [st_run], 1
    pop ax
    ret

cmd_bins:
    cmp byte [rbuf+1], '0'
    jne .unsupported
    mov si, rbuf+3                 ; skip "Z0,"
    call ph32
    cmp byte [st_phys], 0
    je .bi_np
    call phys_addr
.bi_np:
    push dx
    push ax
    call bp_add
    add sp, 4
    cmp ax, -1
    je .bf
    mov si, s_ok
    call pkt_send
    cmp byte [st_async], 0
    jne .async
    jmp gdb_loop
.async:
    mov byte [st_async], 0
    pop ax
    ret
.bf:mov si, s_err
    call pkt_send
    cmp byte [st_async], 0
    jne .asyncf
    jmp gdb_loop
.asyncf:
    mov byte [st_async], 0
    pop ax
    ret
.unsupported:
    mov si, s_emp
    call pkt_send
    jmp gdb_loop

cmd_brem:
    cmp byte [rbuf+1], '0'
    jne .unsupported
    mov si, rbuf+3                 ; skip "z0,"
    call ph32
    cmp byte [st_phys], 0
    je .br_np
    call phys_addr
.br_np:
    push dx
    push ax
    call bp_rem
    add sp, 4
    cmp ax, -1
    je .missing
    mov si, s_ok
    call pkt_send
    cmp byte [st_async], 0
    jne .async
    jmp gdb_loop
.async:
    mov byte [st_async], 0
    pop ax
    ret
.missing:
    mov si, s_err
    call pkt_send
    cmp byte [st_async], 0
    jne .asyncf
    jmp gdb_loop
.asyncf:
    mov byte [st_async], 0
    pop ax
    ret
.unsupported:
    mov si, s_emp
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

; ─── Physical address mode ──────────────────────────
; When st_phys != 0, translate offset addresses to physical
; by adding CS*16. Enabled via GDB: maint packet QPhys:1

; Convert offset in DX:AX to physical (add CS*16)
phys_addr:
    push bx
    push cx
    xor cx, cx
    mov bx, [sreg+R_CS]
    shl bx, 1
    rcl cx, 1
    shl bx, 1
    rcl cx, 1
    shl bx, 1
    rcl cx, 1
    shl bx, 1
    rcl cx, 1
    add ax, bx
    adc dx, cx
    pop cx
    pop bx
    ret

cmd_set:
    mov si, rbuf+1
    cmp word [si], 'Ph'
    jne .us
    add si, 5
    lodsb
    sub al, '0'
    mov [st_phys], al
    mov si, s_ok
    call pkt_send
    jmp gdb_loop
.us:mov si, s_emp
    call pkt_send
    jmp gdb_loop

cmd_preg:
    mov si, rbuf+1
    call ph32
    cmp ax, 15
    ja .preg_unk
    mov bx, ax
    shl bx, 2
    mov si, sreg
    add si, bx
    mov cx, 4
    call bytes_pkt
    jmp gdb_loop
.preg_unk:
    push di
    push cx
    mov di, stk
    mov cx, 64
    xor al, al
    rep stosb
    pop cx
    pop di
    mov si, stk
    mov cx, 64
    call bytes_pkt
    jmp gdb_loop

; ─── Restore interrupt vectors ──────────────────────
restore_vecs:
    call ser_irq_disable
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
    jz .r4
    mov ds, [ov2f+2]
    mov dx, [ov2f]
    mov ax, 0x252F
    int 0x21
.r4:mov ax, [ov4+2]
    or ax, [ov4]
    jz .mask
    mov ds, [ov4+2]
    mov dx, [ov4]
    mov ax, 0x250C
    int 0x21
.mask:
    mov al, [cs:pic_mask]
    out 0x21, al
.done:pop ds
    ret
