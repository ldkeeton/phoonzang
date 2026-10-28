; auto-generated
api_idx_004c_RQSO:
    mov ax, 0xffb4
    call aztec_csav
    mov ax, 0
    push ax
    push word [bp + 6]
    lea ax, word [bp - 0x4c]
    push ax
    mov ax, 1
    push ax
    call data_record_io
    add sp, byte 8
    cmp word [bp + 0xa], byte -2
    jne short .forward1
    mov al, byte [bp - 0x30]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x2f]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x32]
    mov bx, word [bp + 8]
    mov byte [bx + 6], al
    jmp short .forward3
.forward1:
    cmp word [bp + 0xa], byte -1
    jne short .forward2
    push word [bp - 0x30]
    push word [bp - 0x32]
    call add_random_steps
    add sp, byte 4
    mov bx, word [bp + 8]
    mov byte [bx + 6], al
    jmp short .forward3
.forward2:
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 8]
    mov byte [bx + 6], al
.forward3:
    mov ax, word [bp + 6]
    mov bx, word [bp + 8]
    mov word [bx], ax
    mov al, byte [bp - 0x14]
    mov bx, word [bp + 8]
    mov byte [bx + 4], al
    mov al, byte [bp - 0x13]
    mov bx, word [bp + 8]
    mov byte [bx + 5], al
    mov ax, word [bp - 0x28]
    mov bx, word [bp + 8]
    mov word [bx + 2], ax
    mov al, byte [bp - 0x24]
    mov bx, word [bp + 8]
    mov byte [bx + 8], al
    mov al, byte [bp - 0x23]
    mov bx, word [bp + 8]
    mov byte [bx + 9], al
    mov al, byte [bp - 0x10]
    mov bx, word [bp + 8]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0xc]
    mov bx, word [bp + 8]
    mov byte [bx + 0xb], al
    mov ax, 0
    cmp word [bp + 0xc], byte 0
    je short .forward4
    mov ax, 0x80
.forward4:
    mov bx, word [bp + 8]
    mov byte [bx + 7], al
    mov al, byte [bp - 0x15]
    sub ah, ah
    test ax, 8
    je short .forward5
    mov bx, word [bp + 8]
    or byte [bx + 7], 4
.forward5:
    mov al, byte [bp - 0x15]
    sub ah, ah
    test ax, 4
    je short .forward6
    mov bx, word [bp + 8]
    or byte [bx + 7], 8
.forward6:
    mov al, byte [bp - 0x15]
    sub ah, ah
    test ax, 0x10
    je short .forward7
    mov bx, word [bp + 8]
    or byte [bx + 7], 0x10
.forward7:
    mov al, byte [bp - 0x15]
    sub ah, ah
    test ax, 0x20
    je short .forward8
    mov bx, word [bp + 8]
    or byte [bx + 7], 0x20
.forward8:
    mov al, byte [bp - 0x15]
    sub ah, ah
    test ax, 2
    je short .forward9
    mov bx, word [bp + 8]
    or byte [bx + 7], 0x40
.forward9:
    push word [bp + 4]
    call sum_page_cell_values
    pop cx
    ret
