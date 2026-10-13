; auto-generated
leaf_loc_446b:
    mov word [bp - 0x000c], 9        ; 0x446b
    mov ax, word [bp + 0x4]          ; 0x4470
    mov cx, 4                        ; 0x4473
    shl ax, cl                       ; 0x4476
    mov cx, word [bp - 0x0012]       ; 0x4478
    shl cx, 1                        ; 0x447b
    shl cx, 1                        ; 0x447d
    shl cx, 1                        ; 0x447f
    add ax, cx                       ; 0x4481
    mov cx, word [bp - 0x0006]       ; 0x4483
    shl cx, 1                        ; 0x4486
    shl cx, 1                        ; 0x4488
    add ax, cx                       ; 0x448a
    mov bx, ax                       ; 0x448c
    mov ax, word [bx + 0x3e6]        ; 0x448e
    mov word [bp - 0x000e], ax       ; 0x4492
    mov ax, word [bx + 0x3e8]        ; 0x4495
    mov word [bp - 0x0010], ax       ; 0x4499
    mov word [bp - 0x0008], 4        ; 0x449c
    mov ax, word [bss_82e8]          ; 0x44a1
    add ax, strict word 5            ; 0x44a4
    mov word [bp - 0x000a], ax       ; 0x44a7
    jmp near loc_4623                ; 0x44aa
