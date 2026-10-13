api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x6882
    call aztec_csav                  ; 0x6885
    mov ax, word [bp + 0xa]          ; 0x6888
    mov word [bp - 0x0002], ax       ; 0x688b
    jmp short @..api_idx_0002_11.l4  ; 0x688e
@..api_idx_0002_11.l1:
    mov bx, word [bss_0e12]          ; 0x6890
    mov si, word [bp - 0x0002]       ; 0x6894
    mov al, byte [bx + si + 0x870]   ; 0x6897
    sub ah, ah                       ; 0x689b
    cmp ax, word [bp + 0x8]          ; 0x689d
    je short @..api_idx_0002_11.l2   ; 0x68a0
    mov ax, 0xffff                   ; 0x68a2
    ret                              ; 0x68a5
@..api_idx_0002_11.l2:
    mov al, byte [bx + si + 0x690]   ; 0x68a6
    sub ah, ah                       ; 0x68aa
    cmp ax, word [bp + 0x4]          ; 0x68ac
    jne short @..api_idx_0002_11.l3  ; 0x68af
    mov al, byte [bx + si + 0x780]   ; 0x68b1
    sub ah, ah                       ; 0x68b5
    cmp ax, word [bp + 0x6]          ; 0x68b7
    jne short @..api_idx_0002_11.l3  ; 0x68ba
    cmp byte [bx + si + 0x5a0], 0    ; 0x68bc
    jbe short @..api_idx_0002_11.l3  ; 0x68c1
    mov al, byte [bx + si + 0x960]   ; 0x68c3
    sub ah, ah                       ; 0x68c7
    push ax                          ; 0x68c9
    mov ax, word [bss_830c]          ; 0x68ca
    mov cx, 4                        ; 0x68cd
    shl ax, cl                       ; 0x68d0
    add ax, 0x8d14                   ; 0x68d2
    push ax                          ; 0x68d5
    call ds_leaf_loc_3ebb            ; 0x68d6
    add sp, byte 4                   ; 0x68d9
    test ax, ax                      ; 0x68dc
    jne short @..api_idx_0002_11.l3  ; 0x68de
    mov ax, word [bp - 0x0002]       ; 0x68e0
    ret                              ; 0x68e3
@..api_idx_0002_11.l3:
    inc word [bp - 0x0002]           ; 0x68e4
@..api_idx_0002_11.l4:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x68e7
    jl short @..api_idx_0002_11.l1   ; 0x68ec
    mov ax, 0xffff                   ; 0x68ee
    ret                              ; 0x68f1
loc_68f2:
    mov ax, 0                        ; 0x68f2
    call aztec_csav                  ; 0x68f5
    mov ax, 0x10                     ; 0x68f8
    push ax                          ; 0x68fb
    mov ax, word [bss_830c]          ; 0x68fc
    mov cx, 4                        ; 0x68ff
    shl ax, cl                       ; 0x6902
    add ax, 0x5642                   ; 0x6904
    push ax                          ; 0x6907
    mov ax, word [bss_830c]          ; 0x6908
    shl ax, cl                       ; 0x690b
    add ax, 0x8d14                   ; 0x690d
    push ax                          ; 0x6910
    call aztec_movmem                ; 0x6911
    add sp, byte 6                   ; 0x6914
    mov ax, 0x80                     ; 0x6917
    push ax                          ; 0x691a
    mov ax, word [bss_830c]          ; 0x691b
    mov cx, 7                        ; 0x691e
    shl ax, cl                       ; 0x6921
    mov cx, ax                       ; 0x6923
    mov ax, word [bss_0e1a]          ; 0x6925
    mov dx, word [bss_0e1c]          ; 0x6928
    add ax, cx                       ; 0x692c
    push dx                          ; 0x692e
    push ax                          ; 0x692f
    push ds                          ; 0x6930
    mov ax, 0x8b7e                   ; 0x6931
    push ax                          ; 0x6934
    call app_memmove                 ; 0x6935
    add sp, byte 0x0a                ; 0x6938
    mov ax, 0x80                     ; 0x693b
    push ax                          ; 0x693e
    mov ax, word [bss_830c]          ; 0x693f
    mov cx, 7                        ; 0x6942
    shl ax, cl                       ; 0x6945
    mov cx, ax                       ; 0x6947
    mov ax, word [bss_0e16]          ; 0x6949
    mov dx, word [bss_0e18]          ; 0x694c
    add ax, cx                       ; 0x6950
    push dx                          ; 0x6952
    push ax                          ; 0x6953
    push ds                          ; 0x6954
    mov ax, 0x8afe                   ; 0x6955
    push ax                          ; 0x6958
    call app_memmove                 ; 0x6959
    add sp, byte 0x0a                ; 0x695c
    ret                              ; 0x695f
