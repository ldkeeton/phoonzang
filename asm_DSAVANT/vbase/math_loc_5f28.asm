math_loc_5f28:
    mov ax, 0xfd40                   ; 0x5f28
    call ds_dispatch_f40b            ; 0x5f2b
    mov word [bp - 0x0008], 0        ; 0x5f2e
    mov word [bp - 0x0002], 0        ; 0x5f33
    jmp near @..math_loc_5f28.l7     ; 0x5f38
@..math_loc_5f28.l1:
    mov bx, word [bp - 0x0002]       ; 0x5f3b
    cmp byte [bx - 0x6f8a], 1        ; 0x5f3e
    je short @..math_loc_5f28.l2     ; 0x5f43
    jmp near @..math_loc_5f28.l6     ; 0x5f45
@..math_loc_5f28.l2:
    mov ax, 0                        ; 0x5f48
    push ax                          ; 0x5f4b
    push bx                          ; 0x5f4c
    lea ax, word [bp - 0x0250]       ; 0x5f4d
    push ax                          ; 0x5f51
    call api_idx_0002                ; 0x5f52
    add sp, byte 6                   ; 0x5f55
    lea ax, word [bp - 0x0250]       ; 0x5f58
    push ax                          ; 0x5f5c
    mov ax, 0x14                     ; 0x5f5d
    imul word [bp - 0x0008]          ; 0x5f60
    add ax, data_0e38                ; 0x5f63
    push ax                          ; 0x5f66
    call ds_dispatch_f364            ; 0x5f67
    add sp, byte 4                   ; 0x5f6a
    mov ax, 0x14                     ; 0x5f6d
    imul word [bp - 0x0008]          ; 0x5f70
    add ax, data_0e38                ; 0x5f73
    push ax                          ; 0x5f76
    call ds_dispatch_fa90            ; 0x5f77
    pop cx                           ; 0x5f7a
    mov word [bp - 0x0004], ax       ; 0x5f7b
@..math_loc_5f28.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5f7e
    jge short @..math_loc_5f28.l4    ; 0x5f82
    mov ax, 0x14                     ; 0x5f84
    imul word [bp - 0x0008]          ; 0x5f87
    add ax, word [bp - 0x0004]       ; 0x5f8a
    mov bx, ax                       ; 0x5f8d
    mov byte [bx + 0xe38], 0x20      ; 0x5f8f
    inc word [bp - 0x0004]           ; 0x5f94
    jmp short @..math_loc_5f28.l3    ; 0x5f97
@..math_loc_5f28.l4:
    lea ax, word [bp - 0x02a0]       ; 0x5f99
    push ax                          ; 0x5f9d
    mov al, byte [bp - 0x0018]       ; 0x5f9e
    sub ah, ah                       ; 0x5fa1
    add ax, 0x8c                     ; 0x5fa3
    push ax                          ; 0x5fa6
    call ds_dispatch_b53b            ; 0x5fa7
    add sp, byte 4                   ; 0x5faa
    mov al, byte [bp - 0x02a0]       ; 0x5fad
    push ax                          ; 0x5fb1
    mov ax, 0x14                     ; 0x5fb2
    imul word [bp - 0x0008]          ; 0x5fb5
    mov bx, ax                       ; 0x5fb8
    pop ax                           ; 0x5fba
    mov byte [bx + 0xe42], al        ; 0x5fbb
    mov byte [bx + 0xe43], 0x2d      ; 0x5fbf
    lea ax, word [bp - 0x02a0]       ; 0x5fc4
    push ax                          ; 0x5fc8
    mov al, byte [bp - 0x0017]       ; 0x5fc9
    sub ah, ah                       ; 0x5fcc
    add ax, strict word 0x78         ; 0x5fce
    push ax                          ; 0x5fd1
    call ds_dispatch_b53b            ; 0x5fd2
    add sp, byte 4                   ; 0x5fd5
    mov word [bp - 0x0004], 0        ; 0x5fd8
@..math_loc_5f28.l5:
    mov bx, word [bp - 0x0004]       ; 0x5fdd
    add bx, bp                       ; 0x5fe0
    mov al, byte [bx - 0x02a0]       ; 0x5fe2
    push ax                          ; 0x5fe6
    mov ax, 0x14                     ; 0x5fe7
    imul word [bp - 0x0008]          ; 0x5fea
    mov cx, ax                       ; 0x5fed
    add ax, word [bp - 0x0004]       ; 0x5fef
    mov bx, ax                       ; 0x5ff2
    pop ax                           ; 0x5ff4
    mov byte [bx + 0xe44], al        ; 0x5ff5
    inc word [bp - 0x0004]           ; 0x5ff9
    mov ax, word [bp - 0x0004]       ; 0x5ffc
    cmp ax, strict word 3            ; 0x5fff
    jl short @..math_loc_5f28.l5     ; 0x6002
    mov ax, 0x14                     ; 0x6004
    imul word [bp - 0x0008]          ; 0x6007
    mov bx, ax                       ; 0x600a
    mov byte [bx + 0xe47], 0         ; 0x600c
    mov ax, word [bp - 0x0002]       ; 0x6011
    mov cx, word [bp - 0x0008]       ; 0x6014
    shl cx, 1                        ; 0x6017
    mov bx, cx                       ; 0x6019
    add bx, bp                       ; 0x601b
    mov word [bx - 0x02c0], ax       ; 0x601d
    inc word [bp - 0x0008]           ; 0x6021
@..math_loc_5f28.l6:
    inc word [bp - 0x0002]           ; 0x6024
@..math_loc_5f28.l7:
    mov ax, word [bp - 0x0002]       ; 0x6027
    cmp ax, word [data_9070]         ; 0x602a
    jge short @..math_loc_5f28.l8    ; 0x602e
    jmp near @..math_loc_5f28.l1     ; 0x6030
@..math_loc_5f28.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6033
    jle short @..math_loc_5f28.l9    ; 0x6037
    push word [bp - 0x0008]          ; 0x6039
    mov ax, 1                        ; 0x603c
    push ax                          ; 0x603f
    push ax                          ; 0x6040
    mov ax, 0                        ; 0x6041
    push ax                          ; 0x6044
    push word [bp + 0x4]             ; 0x6045
    call api_idx_0038                ; 0x6048
    add sp, byte 0x0a                ; 0x604b
    cmp ax, strict word 1            ; 0x604e
    jne short @..math_loc_5f28.l9    ; 0x6051
    mov ax, word [data_904e]         ; 0x6053
    mov word [bp - 0x0006], ax       ; 0x6056
    cmp ax, strict word 0xffff       ; 0x6059
    je short @..math_loc_5f28.l9     ; 0x605c
    shl ax, 1                        ; 0x605e
    mov bx, ax                       ; 0x6060
    add bx, bp                       ; 0x6062
    mov ax, word [bx - 0x02c0]       ; 0x6064
    ret                              ; 0x6068
