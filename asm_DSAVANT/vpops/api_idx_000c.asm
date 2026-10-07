api_idx_000c:
    mov ax, 0xfff4                   ; 0x178a
    call ds_dispatch_f40b            ; 0x178d
    mov word [bp - 0x000c], 1        ; 0x1790
    mov word [bp - 0x0006], 0        ; 0x1795
    jmp short @..api_idx_000c.l3     ; 0x179a
@..api_idx_000c.l1:
    mov ax, 0x2c                     ; 0x179c
    imul word [bp - 0x0006]          ; 0x179f
    mov si, ax                       ; 0x17a2
    mov ax, word [bp + 0x6]          ; 0x17a4
    shl ax, 1                        ; 0x17a7
    mov bx, ax                       ; 0x17a9
    mov bx, word [bx - 0x7b7e]       ; 0x17ab
    cmp byte [bx + si + 0x2a], 0xff  ; 0x17af
    je short @..api_idx_000c.l2      ; 0x17b3
    mov word [bp - 0x000c], 0        ; 0x17b5
@..api_idx_000c.l2:
    inc word [bp - 0x0006]           ; 0x17ba
@..api_idx_000c.l3:
    mov ax, word [bp + 0x6]          ; 0x17bd
    shl ax, 1                        ; 0x17c0
    mov bx, ax                       ; 0x17c2
    mov bx, word [bx - 0x7b7e]       ; 0x17c4
    mov al, byte [bx + 0x1a1]        ; 0x17c8
    sub ah, ah                       ; 0x17cc
    cmp ax, word [bp - 0x0006]       ; 0x17ce
    jg short @..api_idx_000c.l1      ; 0x17d1
    cmp word [bp - 0x000c], byte 1   ; 0x17d3
    jne short @..api_idx_000c.l9     ; 0x17d7
    mov word [bp - 0x000a], 0        ; 0x17d9
@..api_idx_000c.l4:
    mov word [bp - 0x0006], 0        ; 0x17de
    jmp short @..api_idx_000c.l8     ; 0x17e3
@..api_idx_000c.l5:
    mov ax, 9                        ; 0x17e5
    imul word [bp + 0x6]             ; 0x17e8
    add ax, word [bp - 0x0006]       ; 0x17eb
    mov bx, ax                       ; 0x17ee
    cmp byte [bx - 0x6f31], 0        ; 0x17f0
    je short @..api_idx_000c.l6      ; 0x17f5
    mov ax, word [bp - 0x000a]       ; 0x17f7
    cmp ax, word [bp + 0x4]          ; 0x17fa
    jne short @..api_idx_000c.l7     ; 0x17fd
@..api_idx_000c.l6:
    mov byte [bx - 0x6f31], 1        ; 0x17ff
    mov ax, word [bp - 0x0006]       ; 0x1804
    ret                              ; 0x1807
