; auto-generated
dos_file_loc_VPIN:
    mov cx, word [bp - 2]
    xor bx, bx
@..dos_file_loc_VPIN.l1:
    shl al, 1
    jb short @..dos_file_loc_VPIN.l4
    test word [bx], 0x8000
    jne short @..dos_file_loc_VPIN.l2
    mov bx, word [bx]
    jmp short @..dos_file_loc_VPIN.l6
@..dos_file_loc_VPIN.l2:
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
@..dos_file_loc_VPIN.l3:
    loop @..dos_file_loc_VPIN.l1
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_VPIN.l1
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    jmp short @..dos_file_loc_VPIN.l1
@..dos_file_loc_VPIN.l4:
    test word [bx + 2], 0x8000
    jne short @..dos_file_loc_VPIN.l5
    mov bx, word [bx + 2]
    jmp short @..dos_file_loc_VPIN.l6
@..dos_file_loc_VPIN.l5:
    mov bx, word [bx + 2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short @..dos_file_loc_VPIN.l3
@..dos_file_loc_VPIN.l6:
    dec cx
    jne short @..dos_file_loc_VPIN.l7
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_VPIN.l7
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
@..dos_file_loc_VPIN.l7:
    mov word [bp - 2], cx
    ret
