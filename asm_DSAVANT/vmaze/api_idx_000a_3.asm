api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x784f
    call ds_dispatch_f40b            ; 0x7852
    mov bx, word [data_0e12]         ; 0x7855
    mov si, word [data_8d12]         ; 0x7859
    mov al, byte [bx + si + 0xa50]   ; 0x785d
    sub ah, ah                       ; 0x7861
    push ax                          ; 0x7863
    call loc_6ac7                    ; 0x7864
    pop cx                           ; 0x7867
    mov ax, word [data_8d12]         ; 0x7868
    shl ax, 1                        ; 0x786b
    mov si, ax                       ; 0x786d
    mov bx, word [data_0e12]         ; 0x786f
    mov ax, word [bx + si + 0x3c0]   ; 0x7873
    mov word [bp - 0x0002], ax       ; 0x7877
    mov ax, 1                        ; 0x787a
    push ax                          ; 0x787d
    mov ax, 0xf                      ; 0x787e
    push ax                          ; 0x7881
    push word [bp - 0x0002]          ; 0x7882
    call ds_dispatch_ed3a            ; 0x7885
    add sp, byte 6                   ; 0x7888
    mov word [bp - 0x0006], ax       ; 0x788b
    mov ax, word [data_8d12]         ; 0x788e
    shl ax, 1                        ; 0x7891
    mov si, ax                       ; 0x7893
    mov bx, word [data_0e12]         ; 0x7895
    push word [bx + si]              ; 0x7899
    mov ax, word [data_830c]         ; 0x789b
    mov cx, 4                        ; 0x789e
    shl ax, cl                       ; 0x78a1
    add ax, 0x8d14                   ; 0x78a3
    push ax                          ; 0x78a6
    call ds_dispatch_ec74            ; 0x78a7
    add sp, byte 4                   ; 0x78aa
    mov cx, ax                       ; 0x78ad
    mov ax, word [bp - 0x0006]       ; 0x78af
    cmp cx, ax                       ; 0x78b2
    jne short @..api_idx_000a_3.l1   ; 0x78b4
    mov ax, word [data_8d12]         ; 0x78b6
    shl ax, 1                        ; 0x78b9
    mov si, ax                       ; 0x78bb
    mov bx, word [data_0e12]         ; 0x78bd
    push word [bx + si + 0x1e0]      ; 0x78c1
    mov ax, word [data_830c]         ; 0x78c5
    mov cx, 4                        ; 0x78c8
    shl ax, cl                       ; 0x78cb
    add ax, 0x8d14                   ; 0x78cd
    push ax                          ; 0x78d0
    call ds_dispatch_ec74            ; 0x78d1
    add sp, byte 4                   ; 0x78d4
    mov cx, ax                       ; 0x78d7
    mov ax, word [bp - 0x0006]       ; 0x78d9
    cmp cx, ax                       ; 0x78dc
    je short @..api_idx_000a_3.l2    ; 0x78de
@..api_idx_000a_3.l1:
    ret                              ; 0x78e0
