api_idx_0002_14:
    mov ax, 0xfffe                   ; 0x7abe
    call ds_aztec_csav               ; 0x7ac1
    mov ax, word [bss_8d12]          ; 0x7ac4
    shl ax, 1                        ; 0x7ac7
    mov si, ax                       ; 0x7ac9
    mov bx, word [bss_0e12]          ; 0x7acb
    mov ax, word [bx + si + 0x3c0]   ; 0x7acf
    mov word [bp - 0x0002], ax       ; 0x7ad3
    mov ax, 1                        ; 0x7ad6
    push ax                          ; 0x7ad9
    mov ax, 2                        ; 0x7ada
    push ax                          ; 0x7add
    push word [bp - 0x0002]          ; 0x7ade
    call ds_dos_con_loc_3f81         ; 0x7ae1
    add sp, byte 6                   ; 0x7ae4
    cmp ax, strict word 1            ; 0x7ae7
    jne short @..api_idx_0002_14.l1  ; 0x7aea
    mov ax, 2                        ; 0x7aec
    push ax                          ; 0x7aef
    mov ax, 0                        ; 0x7af0
    push ax                          ; 0x7af3
    push word [bp - 0x0002]          ; 0x7af4
    call ds_dos_con_loc_3f81         ; 0x7af7
    add sp, byte 6                   ; 0x7afa
    mov word [bss_8f24], ax          ; 0x7afd
    cmp ax, word [bss_82ee]          ; 0x7b00
    je short @..api_idx_0002_14.l1   ; 0x7b04
    ret                              ; 0x7b06
@..api_idx_0002_14.l1:
    mov bx, word [bss_0e12]          ; 0x7b07
    mov si, word [bss_8d12]          ; 0x7b0b
    mov al, byte [bx + si + 0xa50]   ; 0x7b0f
    sub ah, ah                       ; 0x7b13
    mov bx, word [bss_100a]          ; 0x7b15
    mov word [bx], ax                ; 0x7b19
    mov ax, 1                        ; 0x7b1b
    push ax                          ; 0x7b1e
    mov ax, 3                        ; 0x7b1f
    push ax                          ; 0x7b22
    push word [bp - 0x0002]          ; 0x7b23
    call ds_dos_con_loc_3f81         ; 0x7b26
    add sp, byte 6                   ; 0x7b29
    cmp ax, strict word 1            ; 0x7b2c
    jne short @..api_idx_0002_14.l2  ; 0x7b2f
    mov ax, 0                        ; 0x7b31
    jmp short @..api_idx_0002_14.l3  ; 0x7b34
@..api_idx_0002_14.l2:
    mov ax, 1                        ; 0x7b36
@..api_idx_0002_14.l3:
    push ax                          ; 0x7b39
    mov ax, 0                        ; 0x7b3a
    push ax                          ; 0x7b3d
    mov ax, 1                        ; 0x7b3e
    push ax                          ; 0x7b41
    call loc_0b14                    ; 0x7b42
    add sp, byte 6                   ; 0x7b45
    mov word [bss_830a], 0x12        ; 0x7b48
    inc word [bss_8d12]              ; 0x7b4e
    ret                              ; 0x7b52
