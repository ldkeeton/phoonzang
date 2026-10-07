api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x07ad
    call ds_dispatch_f40b            ; 0x07b0
    mov ax, 0                        ; 0x07b3
    push ax                          ; 0x07b6
    push word [bp + 0x4]             ; 0x07b7
    mov ax, word [bp + 0x6]          ; 0x07ba
    shl ax, 1                        ; 0x07bd
    mov bx, ax                       ; 0x07bf
    push word [bx - 0x7b70]          ; 0x07c1
    mov ax, 4                        ; 0x07c5
    push ax                          ; 0x07c8
    call ds_dispatch_b63c            ; 0x07c9
    add sp, byte 8                   ; 0x07cc
    cmp word [bp + 0x6], byte 1      ; 0x07cf
    jle short @..api_idx_0008_3.l1   ; 0x07d3
    mov ax, word [bp + 0x6]          ; 0x07d5
    shl ax, 1                        ; 0x07d8
    mov bx, ax                       ; 0x07da
    mov bx, word [bx - 0x7b70]       ; 0x07dc
    mov al, byte [bx + 0xd7]         ; 0x07e0
    sub ah, ah                       ; 0x07e4
    push ax                          ; 0x07e6
    call api_idx_005e                ; 0x07e7
    pop cx                           ; 0x07ea
    cmp ax, strict word 0xffff       ; 0x07eb
    jne short @..api_idx_0008_3.l1   ; 0x07ee
    ret                              ; 0x07f0
