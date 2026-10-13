api_idx_0004_13:
    mov ax, 0xfffc                   ; 0x799e
    call aztec_csav                  ; 0x79a1
    mov ax, word [bss_8d12]          ; 0x79a4
    shl ax, 1                        ; 0x79a7
    mov si, ax                       ; 0x79a9
    mov bx, word [bss_0e12]          ; 0x79ab
    mov ax, word [bx + si + 0x3c0]   ; 0x79af
    mov word [bp - 0x0002], ax       ; 0x79b3
    mov ax, 2                        ; 0x79b6
    push ax                          ; 0x79b9
    mov ax, 0                        ; 0x79ba
    push ax                          ; 0x79bd
    push word [bp - 0x0002]          ; 0x79be
    call ds_dos_con_loc_3f81         ; 0x79c1
    add sp, byte 6                   ; 0x79c4
    mov word [bp - 0x0004], ax       ; 0x79c7
    cmp word [bp - 0x0004], byte 0   ; 0x79ca
    jne short @..api_idx_0004_13.l1  ; 0x79ce
    mov word [bss_9b4a], 0           ; 0x79d0
@..api_idx_0004_13.l1:
    mov ax, 1                        ; 0x79d6
    push ax                          ; 0x79d9
    mov ax, 6                        ; 0x79da
    push ax                          ; 0x79dd
    push word [bp - 0x0002]          ; 0x79de
    call ds_dos_con_loc_3f81         ; 0x79e1
    add sp, byte 6                   ; 0x79e4
    cmp ax, strict word 1            ; 0x79e7
    jne short @..api_idx_0004_13.l2  ; 0x79ea
    mov ax, 2                        ; 0x79ec
    push ax                          ; 0x79ef
    mov ax, 4                        ; 0x79f0
    push ax                          ; 0x79f3
    push word [bp - 0x0002]          ; 0x79f4
    call ds_dos_con_loc_3f81         ; 0x79f7
    add sp, byte 6                   ; 0x79fa
    mov word [bss_8f24], ax          ; 0x79fd
    cmp ax, word [bss_82ee]          ; 0x7a00
    je short @..api_idx_0004_13.l2   ; 0x7a04
    ret                              ; 0x7a06
@..api_idx_0004_13.l2:
    mov ax, 1                        ; 0x7a07
    push ax                          ; 0x7a0a
    mov ax, 2                        ; 0x7a0b
    push ax                          ; 0x7a0e
    push word [bp - 0x0002]          ; 0x7a0f
    call ds_dos_con_loc_3f81         ; 0x7a12
    add sp, byte 6                   ; 0x7a15
    push ax                          ; 0x7a18
    mov ax, word [bss_8d12]          ; 0x7a19
    shl ax, 1                        ; 0x7a1c
    mov si, ax                       ; 0x7a1e
    mov bx, word [bss_0e12]          ; 0x7a20
    push word [bx + si]              ; 0x7a24
    call loc_6f14                    ; 0x7a26
    add sp, byte 4                   ; 0x7a29
    push word [bp - 0x0004]          ; 0x7a2c
    call loc_7242                    ; 0x7a2f
    pop cx                           ; 0x7a32
    ret                              ; 0x7a33
loc_7a34:
    mov ax, 0                        ; 0x7a34
    call aztec_csav                  ; 0x7a37
    mov ax, 1                        ; 0x7a3a
    push ax                          ; 0x7a3d
    mov ax, 0                        ; 0x7a3e
    push ax                          ; 0x7a41
    mov ax, word [bss_8d12]          ; 0x7a42
    shl ax, 1                        ; 0x7a45
    mov si, ax                       ; 0x7a47
    mov bx, word [bss_0e12]          ; 0x7a49
    push word [bx + si + 0x3c0]      ; 0x7a4d
    call ds_dos_con_loc_3f81         ; 0x7a51
    add sp, byte 6                   ; 0x7a54
    cmp ax, strict word 1            ; 0x7a57
    jne short @..loc_7a34.l1         ; 0x7a5a
    mov si, word [bss_8d12]          ; 0x7a5c
    mov bx, word [bss_0e12]          ; 0x7a60
    mov al, byte [bx + si + 0xa50]   ; 0x7a64
    sub ah, ah                       ; 0x7a68
    push ax                          ; 0x7a6a
    call api_idx_0006                ; 0x7a6b
    pop cx                           ; 0x7a6e
    mov bx, word [bss_100a]          ; 0x7a6f
    mov word [bx], ax                ; 0x7a73
    jmp short @..loc_7a34.l2         ; 0x7a75
@..loc_7a34.l1:
    mov bx, word [bss_0e12]          ; 0x7a77
    mov si, word [bss_8d12]          ; 0x7a7b
    mov al, byte [bx + si + 0xa50]   ; 0x7a7f
    sub ah, ah                       ; 0x7a83
    mov bx, word [bss_100a]          ; 0x7a85
    mov word [bx], ax                ; 0x7a89
@..loc_7a34.l2:
    mov ax, 1                        ; 0x7a8b
    push ax                          ; 0x7a8e
    push ax                          ; 0x7a8f
    push ax                          ; 0x7a90
    call loc_0b14                    ; 0x7a91
    add sp, byte 6                   ; 0x7a94
    mov ax, 2                        ; 0x7a97
    push ax                          ; 0x7a9a
    mov ax, 1                        ; 0x7a9b
    push ax                          ; 0x7a9e
    mov ax, word [bss_8d12]          ; 0x7a9f
    shl ax, 1                        ; 0x7aa2
    mov si, ax                       ; 0x7aa4
    mov bx, word [bss_0e12]          ; 0x7aa6
    push word [bx + si + 0x3c0]      ; 0x7aaa
    call ds_dos_con_loc_3f81         ; 0x7aae
    add sp, byte 6                   ; 0x7ab1
    push ax                          ; 0x7ab4
    call loc_7242                    ; 0x7ab5
    pop cx                           ; 0x7ab8
    inc word [bss_8d12]              ; 0x7ab9
    ret                              ; 0x7abd
