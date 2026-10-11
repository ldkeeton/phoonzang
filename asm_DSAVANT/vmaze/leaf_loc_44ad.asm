leaf_loc_44ad:
    mov word [bp - 0x000c], 9        ; 0x44ad
    mov ax, word [bp + 0x4]          ; 0x44b2
    mov cx, 4                        ; 0x44b5
    shl ax, cl                       ; 0x44b8
    mov cx, word [bp - 0x0012]       ; 0x44ba
    shl cx, 1                        ; 0x44bd
    shl cx, 1                        ; 0x44bf
    shl cx, 1                        ; 0x44c1
    add ax, cx                       ; 0x44c3
    mov cx, word [bp - 0x0006]       ; 0x44c5
    shl cx, 1                        ; 0x44c8
    shl cx, 1                        ; 0x44ca
    add ax, cx                       ; 0x44cc
    mov bx, ax                       ; 0x44ce
    mov ax, word [bx + 0x436]        ; 0x44d0
    mov word [bp - 0x000e], ax       ; 0x44d4
    mov ax, word [bx + 0x438]        ; 0x44d7
    mov word [bp - 0x0010], ax       ; 0x44db
    mov word [bp - 0x0008], 9        ; 0x44de
    mov ax, 0                        ; 0x44e3
    cmp word [bss_82e8], byte 0      ; 0x44e6
    je short @..leaf_loc_44ad.l1     ; 0x44eb
    mov ax, 0xa                      ; 0x44ed
@..leaf_loc_44ad.l1:
    mov word [bp - 0x000a], ax       ; 0x44f0
    jmp near loc_4623                ; 0x44f3
