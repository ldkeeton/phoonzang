; auto-generated
leaf_loc_URUM:
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x3e6]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x3e8]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 4
    mov ax, word [bss_82e8]
    add ax, strict word 5
    mov word [bp - 0x000a], ax
    jmp near loc_LIQJ
