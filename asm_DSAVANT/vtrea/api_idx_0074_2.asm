api_idx_0074_2:
    mov ax, 0xff8c                   ; 0x78ed
    call ds_dispatch_f40b            ; 0x78f0
    mov ax, word [data_8d12]         ; 0x78f3
    shl ax, 1                        ; 0x78f6
    mov si, ax                       ; 0x78f8
    mov bx, word [data_0e12]         ; 0x78fa
    mov ax, word [bx + si + 0x3c0]   ; 0x78fe
    mov word [bp - 0x0006], ax       ; 0x7902
    mov ax, 4                        ; 0x7905
    push ax                          ; 0x7908
    mov ax, 8                        ; 0x7909
    push ax                          ; 0x790c
    push word [bp - 0x0006]          ; 0x790d
    call ds_dispatch_ed3a            ; 0x7910
    add sp, byte 6                   ; 0x7913
    mov word [bp - 0x0004], ax       ; 0x7916
    mov ax, 4                        ; 0x7919
    push ax                          ; 0x791c
    mov ax, 0                        ; 0x791d
    push ax                          ; 0x7920
    push word [bp - 0x0006]          ; 0x7921
    call ds_dispatch_ed3a            ; 0x7924
    add sp, byte 6                   ; 0x7927
    mov word [bp - 0x000a], ax       ; 0x792a
    mov ax, 4                        ; 0x792d
    push ax                          ; 0x7930
    push ax                          ; 0x7931
    push word [bp - 0x0006]          ; 0x7932
    call ds_dispatch_ed3a            ; 0x7935
    add sp, byte 6                   ; 0x7938
    mov word [bp - 0x0008], ax       ; 0x793b
    mov ax, 1                        ; 0x793e
    push ax                          ; 0x7941
    mov ax, 0xc                      ; 0x7942
    push ax                          ; 0x7945
    push word [bp - 0x0006]          ; 0x7946
    call ds_dispatch_ed3a            ; 0x7949
    add sp, byte 6                   ; 0x794c
    mov word [bp - 0x0018], ax       ; 0x794f
    mov word [bp - 0x0024], 0        ; 0x7952
    mov ax, 1                        ; 0x7957
    push ax                          ; 0x795a
    mov ax, 0xf                      ; 0x795b
    push ax                          ; 0x795e
    push word [bp - 0x0006]          ; 0x795f
    call ds_dispatch_ed3a            ; 0x7962
    add sp, byte 6                   ; 0x7965
    mov word [bp - 0x0010], ax       ; 0x7968
    mov ax, word [data_8d12]         ; 0x796b
    shl ax, 1                        ; 0x796e
    mov si, ax                       ; 0x7970
    mov bx, word [data_0e12]         ; 0x7972
    cmp word [bx + si], byte 0       ; 0x7976
    jle short @..api_idx_0074_2.l1   ; 0x7979
    mov ax, 0                        ; 0x797b
    push ax                          ; 0x797e
    push word [bx + si]              ; 0x797f
    call loc_0d87                    ; 0x7981
    add sp, byte 4                   ; 0x7984
@..api_idx_0074_2.l1:
    mov ax, 1                        ; 0x7987
    push ax                          ; 0x798a
    call api_idx_000a_2              ; 0x798b
    pop cx                           ; 0x798e
    cmp word [bp - 0x0004], byte 4   ; 0x798f
    jne short @..api_idx_0074_2.l4   ; 0x7993
    mov word [bp - 0x0002], 0        ; 0x7995
    jmp short @..api_idx_0074_2.l3   ; 0x799a
@..api_idx_0074_2.l2:
    mov ax, data_0002                ; 0x799c
    push ax                          ; 0x799f
    push word [bp - 0x0002]          ; 0x79a0
    call math_loc_788f               ; 0x79a3
    add sp, byte 4                   ; 0x79a6
    inc word [bp - 0x0002]           ; 0x79a9
@..api_idx_0074_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x79ac
    cmp ax, word [data_69c8]         ; 0x79af
    jl short @..api_idx_0074_2.l2    ; 0x79b3
    mov ax, word [data_905a]         ; 0x79b5
    shl ax, 1                        ; 0x79b8
    push ax                          ; 0x79ba
    call api_idx_0004                ; 0x79bb
    pop cx                           ; 0x79be
    mov word [data_830a], 8          ; 0x79bf
    ret                              ; 0x79c5
