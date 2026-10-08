api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x6960
    call ds_dispatch_f40b            ; 0x6963
    mov ax, word [bp + 0x8]          ; 0x6966
    xchg al, ah                      ; 0x6969
    sub al, al                       ; 0x696b
    mov dx, word [bp + 0xa]          ; 0x696d
    mov cx, 4                        ; 0x6970
    shl dx, cl                       ; 0x6973
    mov cx, dx                       ; 0x6975
    add ax, cx                       ; 0x6977
    add ax, word [bp + 0xc]          ; 0x6979
    mov word [bp - 0x0004], ax       ; 0x697c
    mov ax, word [data_0e10]         ; 0x697f
    mov word [bp - 0x0006], ax       ; 0x6982
    mov word [bp - 0x0002], 0        ; 0x6985
    jmp short @..api_idx_0006_5.l5   ; 0x698a
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]       ; 0x698c
    mov al, byte [bx]                ; 0x698f
    sub ah, ah                       ; 0x6991
    cmp ax, word [bp + 0x4]          ; 0x6993
    jne short @..api_idx_0006_5.l4   ; 0x6996
    mov al, byte [bx + 0x1]          ; 0x6998
    sub ah, ah                       ; 0x699b
    cmp ax, word [bp + 0x6]          ; 0x699d
    jne short @..api_idx_0006_5.l4   ; 0x69a0
    cmp word [bp + 0x6], byte 6      ; 0x69a2
    jne short @..api_idx_0006_5.l3   ; 0x69a6
    mov ax, word [bx + 0x2]          ; 0x69a8
    cmp ax, word [bp + 0x8]          ; 0x69ab
    jne short @..api_idx_0006_5.l2   ; 0x69ae
    mov ax, word [bp - 0x0002]       ; 0x69b0
    ret                              ; 0x69b3
@..api_idx_0006_5.l2:
    jmp short @..api_idx_0006_5.l4   ; 0x69b4
@..api_idx_0006_5.l3:
    mov ax, word [bx + 0x2]          ; 0x69b6
    cmp ax, word [bp - 0x0004]       ; 0x69b9
    jne short @..api_idx_0006_5.l4   ; 0x69bc
    mov ax, word [bp - 0x0002]       ; 0x69be
    ret                              ; 0x69c1
@..api_idx_0006_5.l4:
    add word [bp - 0x0006], byte 6   ; 0x69c2
    inc word [bp - 0x0002]           ; 0x69c6
@..api_idx_0006_5.l5:
    mov ax, word [bp - 0x0002]       ; 0x69c9
    cmp ax, word [data_590e]         ; 0x69cc
    jl short @..api_idx_0006_5.l1    ; 0x69d0
    mov ax, 0xffff                   ; 0x69d2
    ret                              ; 0x69d5
