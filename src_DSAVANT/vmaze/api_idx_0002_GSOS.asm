; auto-generated
api_idx_0002_GSOS:
    mov ax, 0xfffe                   ; 0x6882
    call aztec_csav                  ; 0x6885
    mov ax, word [bp + 0xa]          ; 0x6888
    mov word [bp - 0x0002], ax       ; 0x688b
    jmp short @..api_idx_0002_GSOS.l4 ; 0x688e
@..api_idx_0002_GSOS.l1:
    mov bx, word [bss_0e12]          ; 0x6890
    mov si, word [bp - 0x0002]       ; 0x6894
    mov al, byte [bx + si + 0x870]   ; 0x6897
    sub ah, ah                       ; 0x689b
    cmp ax, word [bp + 0x8]          ; 0x689d
    je short @..api_idx_0002_GSOS.l2 ; 0x68a0
    mov ax, 0xffff                   ; 0x68a2
    ret                              ; 0x68a5
@..api_idx_0002_GSOS.l2:
    mov al, byte [bx + si + 0x690]   ; 0x68a6
    sub ah, ah                       ; 0x68aa
    cmp ax, word [bp + 0x4]          ; 0x68ac
    jne short @..api_idx_0002_GSOS.l3 ; 0x68af
    mov al, byte [bx + si + 0x780]   ; 0x68b1
    sub ah, ah                       ; 0x68b5
    cmp ax, word [bp + 0x6]          ; 0x68b7
    jne short @..api_idx_0002_GSOS.l3 ; 0x68ba
    cmp byte [bx + si + 0x5a0], 0    ; 0x68bc
    jbe short @..api_idx_0002_GSOS.l3 ; 0x68c1
    mov al, byte [bx + si + 0x960]   ; 0x68c3
    sub ah, ah                       ; 0x68c7
    push ax                          ; 0x68c9
    mov ax, word [game_state_arg]    ; 0x68ca
    mov cx, 4                        ; 0x68cd
    shl ax, cl                       ; 0x68d0
    add ax, 0x8d14                   ; 0x68d2
    push ax                          ; 0x68d5
    call ds_leaf_loc_PRVP            ; 0x68d6
    add sp, byte 4                   ; 0x68d9
    test ax, ax                      ; 0x68dc
    jne short @..api_idx_0002_GSOS.l3 ; 0x68de
    mov ax, word [bp - 0x0002]       ; 0x68e0
    ret                              ; 0x68e3
@..api_idx_0002_GSOS.l3:
    inc word [bp - 0x0002]           ; 0x68e4
@..api_idx_0002_GSOS.l4:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x68e7
    jl short @..api_idx_0002_GSOS.l1 ; 0x68ec
    mov ax, 0xffff                   ; 0x68ee
    ret                              ; 0x68f1
