api_idx_0002_15:
    mov ax, 0xfffe                   ; 0x86f9
    call aztec_csav                  ; 0x86fc
    mov ax, 2                        ; 0x86ff
    push ax                          ; 0x8702
    mov ax, 0                        ; 0x8703
    push ax                          ; 0x8706
    mov ax, word [bss_8d12]          ; 0x8707
    shl ax, 1                        ; 0x870a
    mov si, ax                       ; 0x870c
    mov bx, word [bss_0e12]          ; 0x870e
    push word [bx + si + 0x3c0]      ; 0x8712
    call ds_dos_con_loc_3f81         ; 0x8716
    add sp, byte 6                   ; 0x8719
    mov word [bp - 0x0002], ax       ; 0x871c
    mov ax, 1                        ; 0x871f
    push ax                          ; 0x8722
    mov ax, 2                        ; 0x8723
    push ax                          ; 0x8726
    mov ax, word [bss_8d12]          ; 0x8727
    shl ax, 1                        ; 0x872a
    mov si, ax                       ; 0x872c
    mov bx, word [bss_0e12]          ; 0x872e
    push word [bx + si + 0x3c0]      ; 0x8732
    call ds_dos_con_loc_3f81         ; 0x8736
    add sp, byte 6                   ; 0x8739
    test ax, ax                      ; 0x873c
    jne short @..api_idx_0002_15.l1  ; 0x873e
    push word [bp - 0x0002]          ; 0x8740
    mov si, word [bss_8d12]          ; 0x8743
    mov bx, word [bss_0e12]          ; 0x8747
    mov al, byte [bx + si + 0xa50]   ; 0x874b
    sub ah, ah                       ; 0x874f
    push ax                          ; 0x8751
    mov ax, 0x5842                   ; 0x8752
    push ax                          ; 0x8755
    call ds_leaf_loc_3ebb            ; 0x8756
    add sp, byte 4                   ; 0x8759
    push ax                          ; 0x875c
    call loc_8540                    ; 0x875d
    add sp, byte 4                   ; 0x8760
    jmp short @..api_idx_0002_15.l4  ; 0x8763
@..api_idx_0002_15.l1:
    push word [bp - 0x0002]          ; 0x8765
    mov bx, word [bss_0e12]          ; 0x8768
    mov si, word [bss_8d12]          ; 0x876c
    mov al, byte [bx + si + 0xa50]   ; 0x8770
    sub ah, ah                       ; 0x8774
    mov cx, 0x26                     ; 0x8776
    imul cx                          ; 0x8779
    mov bx, ax                       ; 0x877b
    cmp byte [bx - 0x7b00], 0        ; 0x877d
    jne short @..api_idx_0002_15.l2  ; 0x8782
    mov ax, 1                        ; 0x8784
    jmp short @..api_idx_0002_15.l3  ; 0x8787
@..api_idx_0002_15.l2:
    mov ax, 0                        ; 0x8789
@..api_idx_0002_15.l3:
    push ax                          ; 0x878c
    call loc_8540                    ; 0x878d
    add sp, byte 4                   ; 0x8790
@..api_idx_0002_15.l4:
    ret                              ; 0x8793
