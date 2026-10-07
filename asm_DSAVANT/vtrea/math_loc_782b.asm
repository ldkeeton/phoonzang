math_loc_782b:
    mov ax, 0                        ; 0x782b
    call ds_dispatch_f40b            ; 0x782e
    cmp word [bp + 0x4], byte 0      ; 0x7831
    jle short @..math_loc_782b.l1    ; 0x7835
    mov bx, word [data_0e12]         ; 0x7837
    mov si, word [data_8d12]         ; 0x783b
    cmp byte [bx + si + 0x960], 0    ; 0x783f
    jbe short @..math_loc_782b.l1    ; 0x7844
    mov ax, 1                        ; 0x7846
    push ax                          ; 0x7849
    mov al, byte [bx + si + 0x960]   ; 0x784a
    sub ah, ah                       ; 0x784e
    push ax                          ; 0x7850
    mov ax, word [data_830c]         ; 0x7851
    mov cx, 4                        ; 0x7854
    shl ax, cl                       ; 0x7857
    add ax, 0x8d14                   ; 0x7859
    push ax                          ; 0x785c
    call ds_dispatch_ec41            ; 0x785d
    add sp, byte 6                   ; 0x7860
    cmp word [bp + 0x4], byte 1      ; 0x7863
    jle short @..math_loc_782b.l1    ; 0x7867
    mov ax, 1                        ; 0x7869
    push ax                          ; 0x786c
    mov bx, word [data_0e12]         ; 0x786d
    mov si, word [data_8d12]         ; 0x7871
    mov al, byte [bx + si + 0x960]   ; 0x7875
    sub ah, ah                       ; 0x7879
    push ax                          ; 0x787b
    mov ax, word [data_830c]         ; 0x787c
    mov cx, 4                        ; 0x787f
    shl ax, cl                       ; 0x7882
    add ax, 0x5642                   ; 0x7884
    push ax                          ; 0x7887
    call ds_dispatch_ec41            ; 0x7888
    add sp, byte 6                   ; 0x788b
@..math_loc_782b.l1:
    ret                              ; 0x788e
