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
@..api_idx_0008_3.l1:
    inc word [data_8466]             ; 0x07f1
    mov al, byte [bp + 0x4]          ; 0x07f5
    mov cx, word [bp + 0x6]          ; 0x07f8
    shl cx, 1                        ; 0x07fb
    mov bx, cx                       ; 0x07fd
    mov bx, word [bx - 0x7b7e]       ; 0x07ff
    mov byte [bx + 0x19e], al        ; 0x0803
    mov ax, word [bp + 0x6]          ; 0x0807
    shl ax, 1                        ; 0x080a
    mov bx, ax                       ; 0x080c
    mov bx, word [bx - 0x7b70]       ; 0x080e
    mov al, byte [bx + 0xd7]         ; 0x0812
    sub ah, ah                       ; 0x0816
    push ax                          ; 0x0818
    call api_idx_0004_3              ; 0x0819
    pop cx                           ; 0x081c
    mov cx, word [bp + 0x6]          ; 0x081d
    shl cx, 1                        ; 0x0820
    mov bx, cx                       ; 0x0822
    mov bx, word [bx - 0x7b7e]       ; 0x0824
    mov byte [bx + 0x19f], al        ; 0x0828
    cmp word [bp + 0x6], byte 1      ; 0x082c
    jne short @..api_idx_0008_3.l2   ; 0x0830
    mov ax, word [bp + 0x6]          ; 0x0832
    shl ax, 1                        ; 0x0835
    mov bx, ax                       ; 0x0837
    mov bx, word [bx - 0x7b70]       ; 0x0839
    cmp byte [bx + 0xd8], 0          ; 0x083d
    jbe short @..api_idx_0008_3.l2   ; 0x0842
    mov al, byte [bx + 0xd8]         ; 0x0844
    sub ah, ah                       ; 0x0848
    push ax                          ; 0x084a
    call ds_dispatch_d7aa            ; 0x084b
    pop cx                           ; 0x084e
@..api_idx_0008_3.l2:
    mov ax, word [bp + 0x6]          ; 0x084f
    shl ax, 1                        ; 0x0852
    mov bx, ax                       ; 0x0854
    mov bx, word [bx - 0x7b70]       ; 0x0856
    mov al, byte [bx + 0xe2]         ; 0x085a
    sub ah, ah                       ; 0x085e
    test ax, 1                       ; 0x0860
    jne short @..api_idx_0008_3.l7   ; 0x0863
    mov al, byte [data_5988]         ; 0x0865
    sub ah, ah                       ; 0x0868
    jmp short @..api_idx_0008_3.l6   ; 0x086a
