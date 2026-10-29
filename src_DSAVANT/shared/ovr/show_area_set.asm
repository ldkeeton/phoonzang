; auto-generated
show_area_set:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    jmp near .forward1
.back1:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call call_show_area
    add sp, byte 8
    jmp short .return1
.back2:
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call call_show_area
    add sp, byte 8
    jmp short .return1
.back3:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call call_show_area
    add sp, byte 8
    jmp short .return1
.back4:
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call call_show_area
    add sp, byte 8
    jmp short .return1
.forward1:
    cmp ax, strict word 0
    jne short .forward2
    jmp near .back1
.forward2:
    cmp ax, strict word 1
    je short .back2
    cmp ax, strict word 2
    je short .back3
    cmp ax, strict word 3
    je short .back4
.return1:
    ret
