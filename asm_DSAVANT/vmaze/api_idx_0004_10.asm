api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x72a6
    call aztec_csav                  ; 0x72a9
    call loc_13c0                    ; 0x72ac
    mov ax, word [bp + 0x4]          ; 0x72af
    shl ax, 1                        ; 0x72b2
    mov si, ax                       ; 0x72b4
    mov bx, word [bss_0e12]          ; 0x72b6
    mov ax, word [bx + si + 0x3c0]   ; 0x72ba
    mov word [bp - 0x0002], ax       ; 0x72be
    mov ax, 2                        ; 0x72c1
    push ax                          ; 0x72c4
    mov ax, 0xa                      ; 0x72c5
    push ax                          ; 0x72c8
    push word [bp - 0x0002]          ; 0x72c9
    call ds_dos_con_loc_3f81         ; 0x72cc
    add sp, byte 6                   ; 0x72cf
    push ax                          ; 0x72d2
    call loc_7242                    ; 0x72d3
    pop cx                           ; 0x72d6
    mov ax, 3                        ; 0x72d7
    push ax                          ; 0x72da
    mov ax, 0                        ; 0x72db
    push ax                          ; 0x72de
    push word [bp - 0x0002]          ; 0x72df
    call ds_dos_con_loc_3f81         ; 0x72e2
    add sp, byte 6                   ; 0x72e5
    mov word [bss_8f42], ax          ; 0x72e8
    mov ax, 3                        ; 0x72eb
    push ax                          ; 0x72ee
    push ax                          ; 0x72ef
    push word [bp - 0x0002]          ; 0x72f0
    call ds_dos_con_loc_3f81         ; 0x72f3
    add sp, byte 6                   ; 0x72f6
    mov word [bss_8f40], ax          ; 0x72f9
    mov ax, 4                        ; 0x72fc
    push ax                          ; 0x72ff
    mov ax, 6                        ; 0x7300
    push ax                          ; 0x7303
    push word [bp - 0x0002]          ; 0x7304
    call ds_dos_con_loc_3f81         ; 0x7307
    add sp, byte 6                   ; 0x730a
    mov word [bss_8f3e], ax          ; 0x730d
    mov bx, word [bss_0e12]          ; 0x7310
    mov si, word [bp + 0x4]          ; 0x7314
    mov al, byte [bx + si + 0xa50]   ; 0x7317
    sub ah, ah                       ; 0x731b
    mov word [bp - 0x0004], ax       ; 0x731d
    mov word [bss_8460], 0           ; 0x7320
    cmp ax, strict word 0x63         ; 0x7326
    jne short @..api_idx_0004_10.l1  ; 0x7329
    shl si, 1                        ; 0x732b
    mov ax, word [bx + si + 0x1e0]   ; 0x732d
    mov word [bss_8460], ax          ; 0x7331
    mov word [bp - 0x0004], 0xffff   ; 0x7334
@..api_idx_0004_10.l1:
    cmp word [bss_919e], byte 0      ; 0x7339
    je short @..api_idx_0004_10.l2   ; 0x733e
    mov ax, word [bp - 0x0004]       ; 0x7340
    mov word [bss_8f28], ax          ; 0x7343
    mov ax, word [bss_8f3e]          ; 0x7346
    mov word [bss_8f2a], ax          ; 0x7349
    mov ax, word [bss_8f42]          ; 0x734c
    mov word [bss_8f2e], ax          ; 0x734f
    mov ax, word [bss_8f40]          ; 0x7352
    mov word [bss_8f2c], ax          ; 0x7355
@..api_idx_0004_10.l2:
    mov bx, word [bss_0e14]          ; 0x7358
    mov si, word [bss_8f3e]          ; 0x735c
    mov al, byte [bx + si + 0x490]   ; 0x7360
    sub ah, ah                       ; 0x7364
    add ax, word [bss_8f42]          ; 0x7366
    mov word [bss_8f46], ax          ; 0x736a
    mov al, byte [bx + si + 0x4a0]   ; 0x736d
    sub ah, ah                       ; 0x7371
    add ax, word [bss_8f40]          ; 0x7373
    mov word [bss_8f44], ax          ; 0x7377
    mov bx, word [bss_0e12]          ; 0x737a
    mov al, byte [bx + si + 0xb40]   ; 0x737e
    sub ah, ah                       ; 0x7382
    mov word [bss_8d12], ax          ; 0x7384
    mov word [bss_9bd0], 0           ; 0x7387
    mov ax, word [bp - 0x0004]       ; 0x738d
    cmp ax, word [bss_830c]          ; 0x7390
    jne short @..api_idx_0004_10.l3  ; 0x7394
    call loc_676c                    ; 0x7396
    jmp short @..api_idx_0004_10.l4  ; 0x7399
@..api_idx_0004_10.l3:
    call loc_68f2                    ; 0x739b
    push word [bp - 0x0004]          ; 0x739e
    call api_idx_000c                ; 0x73a1
    pop cx                           ; 0x73a4
    cmp word [bss_830c], byte 0      ; 0x73a5
    jl short @..api_idx_0004_10.l4   ; 0x73aa
    call loc_676c                    ; 0x73ac
@..api_idx_0004_10.l4:
    mov word [bss_91a8], 1           ; 0x73af
    ret                              ; 0x73b5
