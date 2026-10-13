api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x01ac
    call aztec_csav                  ; 0x01af
    mov ax, word [bp + 0xa]          ; 0x01b2
    mov word [bp - 0x0002], ax       ; 0x01b5
    jmp short @..api_idx_0002_2.l4   ; 0x01b8
@..api_idx_0002_2.l1:
    mov bx, word [bss_0e12]          ; 0x01ba
    mov si, word [bp - 0x0002]       ; 0x01be
    mov al, byte [bx + si + 0x870]   ; 0x01c1
    sub ah, ah                       ; 0x01c5
    cmp ax, word [bp + 0x8]          ; 0x01c7
    je short @..api_idx_0002_2.l2    ; 0x01ca
    mov ax, 0xffff                   ; 0x01cc
    ret                              ; 0x01cf
@..api_idx_0002_2.l2:
    mov al, byte [bx + si + 0x690]   ; 0x01d0
    sub ah, ah                       ; 0x01d4
    cmp ax, word [bp + 0x4]          ; 0x01d6
    jne short @..api_idx_0002_2.l3   ; 0x01d9
    mov al, byte [bx + si + 0x780]   ; 0x01db
    sub ah, ah                       ; 0x01df
    cmp ax, word [bp + 0x6]          ; 0x01e1
    jne short @..api_idx_0002_2.l3   ; 0x01e4
    cmp byte [bx + si + 0x5a0], 0    ; 0x01e6
    jbe short @..api_idx_0002_2.l3   ; 0x01eb
    mov al, byte [bx + si + 0x960]   ; 0x01ed
    sub ah, ah                       ; 0x01f1
    push ax                          ; 0x01f3
    mov ax, word [bss_830c]          ; 0x01f4
    mov cx, 4                        ; 0x01f7
    shl ax, cl                       ; 0x01fa
    add ax, 0x8d14                   ; 0x01fc
    push ax                          ; 0x01ff
    call ds_leaf_loc_3ebb            ; 0x0200
    add sp, byte 4                   ; 0x0203
    test ax, ax                      ; 0x0206
    jne short @..api_idx_0002_2.l3   ; 0x0208
    mov ax, word [bp - 0x0002]       ; 0x020a
    ret                              ; 0x020d
@..api_idx_0002_2.l3:
    inc word [bp - 0x0002]           ; 0x020e
@..api_idx_0002_2.l4:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x0211
    jl short @..api_idx_0002_2.l1    ; 0x0216
    mov ax, 0xffff                   ; 0x0218
    ret                              ; 0x021b
