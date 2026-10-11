leaf_loc_2efa:
    mov word [bp - 0x000c], 9        ; 0x2efa
    mov ax, word [bp + 0x4]          ; 0x2eff
    mov cx, 4                        ; 0x2f02
    shl ax, cl                       ; 0x2f05
    mov cx, word [bp - 0x0012]       ; 0x2f07
    shl cx, 1                        ; 0x2f0a
    shl cx, 1                        ; 0x2f0c
    shl cx, 1                        ; 0x2f0e
    add ax, cx                       ; 0x2f10
    mov cx, word [bp - 0x0006]       ; 0x2f12
    shl cx, 1                        ; 0x2f15
    shl cx, 1                        ; 0x2f17
    add ax, cx                       ; 0x2f19
    mov bx, ax                       ; 0x2f1b
    mov ax, word [bx + 0x3e6]        ; 0x2f1d
    mov word [bp - 0x000e], ax       ; 0x2f21
    mov ax, word [bx + 0x3e8]        ; 0x2f24
    mov word [bp - 0x0010], ax       ; 0x2f28
    mov word [bp - 0x0008], 4        ; 0x2f2b
    mov ax, word [bss_82e8]          ; 0x2f30
    add ax, strict word 5            ; 0x2f33
    mov word [bp - 0x000a], ax       ; 0x2f36
    jmp near loc_30b2                ; 0x2f39
