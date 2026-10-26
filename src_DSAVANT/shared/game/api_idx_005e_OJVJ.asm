; auto-generated
api_idx_005e_OJVJ:
    mov ax, 0xffa2
    call aztec_csav
    mov word [bp - 2], 0xf
.back1:
    mov bx, word [bp - 2]
    mov al, byte [bx + picture_slot_number]
    sub ah, ah
    cmp ax, word [bp + 4]
    jne short .forward1
    mov ax, 0
    ret
.forward1:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0x12
    jl short .back1
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
    jne short .forward2
    mov ax, 0xffff
    ret
.forward2:
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
    jl short .forward3
    jne short .forward4
    cmp ax, cx
    ja short .forward4
.forward3:
    jmp short .forward5
.forward4:
    mov ax, 0
    ret
.forward5:
    cmp byte [screen_store_1_enabled], 1
    jne short .forward8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_get_free_space
    add sp, byte 4
    cmp dx, word [bp - 0xa]
    jl short .forward6
    jne short .forward7
    cmp ax, word [bp - 0xc]
    ja short .forward7
.forward6:
    jmp short .forward8
.forward7:
    mov word [bp - 0xa], 0
    mov word [bp - 0xc], 0
    jmp short .forward11
.forward8:
    cmp byte [screen_store_disk_enabled], 1
    jne short .forward11
    mov al, byte [screen_store_drive]
    sub ah, ah
    add ax, strict word 0xffc0
    mov word [bp - 0xe], ax
    cmp ax, strict word 1
    jl short .forward11
    cmp ax, strict word 0x1a
    jg short .forward11
    push ax
    mov ax, 3
    push ax
    call gfx_get_free_space
    add sp, byte 4
    cmp dx, word [bp - 0xa]
    jl short .forward9
    jne short .forward10
    cmp ax, word [bp - 0xc]
    ja short .forward10
.forward9:
    jmp short .forward11
.forward10:
    mov word [bp - 0xa], 0
    mov word [bp - 0xc], 0
.forward11:
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
    jl short .forward12
    jne short .forward13
    cmp ax, cx
    ja short .forward13
.forward12:
    jmp short .forward14
.forward13:
    mov ax, 0
    ret
.forward14:
    mov ax, 0xffff
    ret
