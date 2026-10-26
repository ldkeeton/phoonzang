; auto-generated
api_idx_005e_OJVJ:
    mov ax, 0xffa2
    call aztec_csav
    mov word [bp - 2], 0xf
@..api_idx_005e_OJVJ.l1:
    mov bx, word [bp - 2]
    mov al, byte [bx + picture_slot_number]
    sub ah, ah
    cmp ax, word [bp + 4]
    jne short @..api_idx_005e_OJVJ.l2
    mov ax, 0
    ret
@..api_idx_005e_OJVJ.l2:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0x12
    jl short @..api_idx_005e_OJVJ.l1
    mov ax, api_idx_005e_OJVJ.dseg1
    push ax
    lea ax, word [bp - 0x5e]
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, word [bp + 4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x5b], al
    add dx, byte 0x30
    mov ax, dx
    mov byte [bp - 0x5a], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x5e]
    push ax
    call data_file_path
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_005e_OJVJ.l3
    mov ax, 0xffff
    ret
@..api_idx_005e_OJVJ.l3:
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 4]
    call aztec_lseek
    add sp, byte 8
    mov word [bp - 6], dx
    mov word [bp - 8], ax
    push word [bp - 4]
    call aztec_close
    pop cx
    mov word [bp - 0xa], 0
    mov word [bp - 0xc], 0x2800
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call gfx_get_free_space
    add sp, byte 4
    mov cx, word [bp - 8]
    mov bx, word [bp - 6]
    add cx, word [bp - 0xc]
    adc bx, word [bp - 0xa]
    cmp dx, bx
    jl short @..api_idx_005e_OJVJ.l4
    jne short @..api_idx_005e_OJVJ.l5
    cmp ax, cx
    ja short @..api_idx_005e_OJVJ.l5
@..api_idx_005e_OJVJ.l4:
    jmp short @..api_idx_005e_OJVJ.l6
@..api_idx_005e_OJVJ.l5:
    mov ax, 0
    ret
@..api_idx_005e_OJVJ.l6:
    cmp byte [screen_store_1_enabled], 1
    jne short @..api_idx_005e_OJVJ.l9
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_get_free_space
    add sp, byte 4
    cmp dx, word [bp - 0xa]
    jl short @..api_idx_005e_OJVJ.l7
    jne short @..api_idx_005e_OJVJ.l8
    cmp ax, word [bp - 0xc]
    ja short @..api_idx_005e_OJVJ.l8
@..api_idx_005e_OJVJ.l7:
    jmp short @..api_idx_005e_OJVJ.l9
@..api_idx_005e_OJVJ.l8:
    mov word [bp - 0xa], 0
    mov word [bp - 0xc], 0
    jmp short @..api_idx_005e_OJVJ.l12
@..api_idx_005e_OJVJ.l9:
    cmp byte [screen_store_disk_enabled], 1
    jne short @..api_idx_005e_OJVJ.l12
    mov al, byte [screen_store_drive]
    sub ah, ah
    add ax, strict word 0xffc0
    mov word [bp - 0xe], ax
    cmp ax, strict word 1
    jl short @..api_idx_005e_OJVJ.l12
    cmp ax, strict word 0x1a
    jg short @..api_idx_005e_OJVJ.l12
    push ax
    mov ax, 3
    push ax
    call gfx_get_free_space
    add sp, byte 4
    cmp dx, word [bp - 0xa]
    jl short @..api_idx_005e_OJVJ.l10
    jne short @..api_idx_005e_OJVJ.l11
    cmp ax, word [bp - 0xc]
    ja short @..api_idx_005e_OJVJ.l11
@..api_idx_005e_OJVJ.l10:
    jmp short @..api_idx_005e_OJVJ.l12
@..api_idx_005e_OJVJ.l11:
    mov word [bp - 0xa], 0
    mov word [bp - 0xc], 0
@..api_idx_005e_OJVJ.l12:
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call gfx_get_free_space
    add sp, byte 4
    mov cx, word [bp - 8]
    mov bx, word [bp - 6]
    add cx, word [bp - 0xc]
    adc bx, word [bp - 0xa]
    cmp dx, bx
    jl short @..api_idx_005e_OJVJ.l13
    jne short @..api_idx_005e_OJVJ.l14
    cmp ax, cx
    ja short @..api_idx_005e_OJVJ.l14
@..api_idx_005e_OJVJ.l13:
    jmp short @..api_idx_005e_OJVJ.l15
@..api_idx_005e_OJVJ.l14:
    mov ax, 0
    ret
@..api_idx_005e_OJVJ.l15:
    mov ax, 0xffff
    ret
