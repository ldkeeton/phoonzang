api_idx_0068:
    mov ax, 0xff98                   ; 0x0ac7
    call ds_dispatch_f40b            ; 0x0aca
    call ds_dispatch_d9a6            ; 0x0acd
    mov word [data_8450], ax         ; 0x0ad0
    test ax, ax                      ; 0x0ad3
    je short @..api_idx_0068.l1      ; 0x0ad5
    mov ax, 0                        ; 0x0ad7
    push ax                          ; 0x0ada
    push ax                          ; 0x0adb
    call ds_dispatch_d7e7            ; 0x0adc
    add sp, byte 4                   ; 0x0adf
    mov ax, word [api_idx_0002_4]    ; 0x0ae2
    mov word [data_844e], ax         ; 0x0ae5
@..api_idx_0068.l1:
    mov word [bp - 0x0008], 0        ; 0x0ae8
@..api_idx_0068.l2:
    mov bx, word [bp - 0x0008]       ; 0x0aed
    mov byte [bx + 0x5b48], 0xff     ; 0x0af0
    mov byte [bx + 0x5b5a], 0        ; 0x0af5
    inc word [bp - 0x0008]           ; 0x0afa
    mov ax, word [bp - 0x0008]       ; 0x0afd
    cmp ax, strict word 0x12         ; 0x0b00
    jl short @..api_idx_0068.l2      ; 0x0b03
    mov ax, 0xf                      ; 0x0b05
    push ax                          ; 0x0b08
    mov ax, 0x3c                     ; 0x0b09
    push ax                          ; 0x0b0c
    call ds_dispatch_d61c            ; 0x0b0d
    add sp, byte 4                   ; 0x0b10
    mov ax, 0                        ; 0x0b13
    push ax                          ; 0x0b16
    mov ax, 0xc7                     ; 0x0b17
    push ax                          ; 0x0b1a
    mov ax, 0x13f                    ; 0x0b1b
    push ax                          ; 0x0b1e
    mov ax, 0                        ; 0x0b1f
    push ax                          ; 0x0b22
    push ax                          ; 0x0b23
    call ds_dispatch_e901            ; 0x0b24
    add sp, byte 0x0a                ; 0x0b27
    mov ax, 0                        ; 0x0b2a
    push ax                          ; 0x0b2d
    mov ax, 1                        ; 0x0b2e
    push ax                          ; 0x0b31
    call api_idx_000e                ; 0x0b32
    add sp, byte 4                   ; 0x0b35
    mov ax, 0                        ; 0x0b38
    push ax                          ; 0x0b3b
    push ax                          ; 0x0b3c
    push ax                          ; 0x0b3d
    call ds_dispatch_f0d7            ; 0x0b3e
    add sp, byte 6                   ; 0x0b41
    mov ax, 0xc7                     ; 0x0b44
    push ax                          ; 0x0b47
    mov ax, 0x13f                    ; 0x0b48
    push ax                          ; 0x0b4b
    mov ax, 0                        ; 0x0b4c
    push ax                          ; 0x0b4f
    push ax                          ; 0x0b50
    call ds_dispatch_e8da            ; 0x0b51
    add sp, byte 8                   ; 0x0b54
    mov ax, 0                        ; 0x0b57
    push ax                          ; 0x0b5a
    call ds_dispatch_f0bd            ; 0x0b5b
    pop cx                           ; 0x0b5e
    mov word [data_91b8], 0          ; 0x0b5f
    call api_idx_0002_6              ; 0x0b65
    test ax, ax                      ; 0x0b68
    jne short @..api_idx_0068.l4     ; 0x0b6a
    cmp word [data_8450], byte 0     ; 0x0b6c
    je short @..api_idx_0068.l3      ; 0x0b71
    mov ax, 0                        ; 0x0b73
    push ax                          ; 0x0b76
    push word [data_844e]            ; 0x0b77
    push ax                          ; 0x0b7b
    call ds_dispatch_d964            ; 0x0b7c
    add sp, byte 6                   ; 0x0b7f
    mov word [data_844c], ax         ; 0x0b82
@..api_idx_0068.l3:
    mov ax, 0xb4                     ; 0x0b85
    push ax                          ; 0x0b88
    call api_idx_0004                ; 0x0b89
    pop cx                           ; 0x0b8c
@..api_idx_0068.l4:
    call api_idx_0002_6              ; 0x0b8d
    test ax, ax                      ; 0x0b90
    jne short @..api_idx_0068.l5     ; 0x0b92
    mov ax, 0xa                      ; 0x0b94
    push ax                          ; 0x0b97
    mov ax, 0                        ; 0x0b98
    push ax                          ; 0x0b9b
    mov ax, 3                        ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, data_0002                ; 0x0ba0
    push ax                          ; 0x0ba3
    call loc_0a56                    ; 0x0ba4
    add sp, byte 8                   ; 0x0ba7
@..api_idx_0068.l5:
    call api_idx_0002_6              ; 0x0baa
    test ax, ax                      ; 0x0bad
    jne short @..api_idx_0068.l6     ; 0x0baf
    mov ax, 0xa                      ; 0x0bb1
    push ax                          ; 0x0bb4
    mov ax, 0                        ; 0x0bb5
    push ax                          ; 0x0bb8
    mov ax, 5                        ; 0x0bb9
    push ax                          ; 0x0bbc
    mov ax, 4                        ; 0x0bbd
    push ax                          ; 0x0bc0
    call loc_0a56                    ; 0x0bc1
    add sp, byte 8                   ; 0x0bc4
@..api_idx_0068.l6:
    call api_idx_0002_6              ; 0x0bc7
    test ax, ax                      ; 0x0bca
    jne short @..api_idx_0068.l7     ; 0x0bcc
    mov ax, 0xa                      ; 0x0bce
    push ax                          ; 0x0bd1
    mov ax, 0                        ; 0x0bd2
    push ax                          ; 0x0bd5
    mov ax, 7                        ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 6                        ; 0x0bda
    push ax                          ; 0x0bdd
    call loc_0a56                    ; 0x0bde
    add sp, byte 8                   ; 0x0be1
@..api_idx_0068.l7:
    call api_idx_0002_6              ; 0x0be4
    test ax, ax                      ; 0x0be7
    jne short @..api_idx_0068.l8     ; 0x0be9
    mov ax, 0xa                      ; 0x0beb
    push ax                          ; 0x0bee
    push ax                          ; 0x0bef
    mov ax, 9                        ; 0x0bf0
    push ax                          ; 0x0bf3
    mov ax, 8                        ; 0x0bf4
    push ax                          ; 0x0bf7
    call loc_0a56                    ; 0x0bf8
    add sp, byte 8                   ; 0x0bfb
@..api_idx_0068.l8:
    call api_idx_0002_6              ; 0x0bfe
    test ax, ax                      ; 0x0c01
    jne short @..api_idx_0068.l9     ; 0x0c03
    mov ax, 0xa                      ; 0x0c05
    push ax                          ; 0x0c08
    mov ax, 0xd                      ; 0x0c09
    push ax                          ; 0x0c0c
    mov ax, 0xc                      ; 0x0c0d
    push ax                          ; 0x0c10
    mov ax, 0xb                      ; 0x0c11
    push ax                          ; 0x0c14
    call loc_0a56                    ; 0x0c15
    add sp, byte 8                   ; 0x0c18
@..api_idx_0068.l9:
    call api_idx_0002_6              ; 0x0c1b
    test ax, ax                      ; 0x0c1e
    jne short @..api_idx_0068.l10    ; 0x0c20
    mov ax, 0xa                      ; 0x0c22
    push ax                          ; 0x0c25
    mov ax, 0                        ; 0x0c26
    push ax                          ; 0x0c29
    mov ax, 0xf                      ; 0x0c2a
    push ax                          ; 0x0c2d
    mov ax, 0xe                      ; 0x0c2e
    push ax                          ; 0x0c31
    call loc_0a56                    ; 0x0c32
    add sp, byte 8                   ; 0x0c35
@..api_idx_0068.l10:
    call api_idx_0002_6              ; 0x0c38
    test ax, ax                      ; 0x0c3b
    jne short @..api_idx_0068.l11    ; 0x0c3d
    mov ax, 0                        ; 0x0c3f
    push ax                          ; 0x0c42
    push ax                          ; 0x0c43
    mov ax, 0x11                     ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, 0x10                     ; 0x0c48
    push ax                          ; 0x0c4b
    call loc_0a56                    ; 0x0c4c
    add sp, byte 8                   ; 0x0c4f
@..api_idx_0068.l11:
    mov ax, 0xf                      ; 0x0c52
    push ax                          ; 0x0c55
    call ds_dispatch_c12a            ; 0x0c56
    pop cx                           ; 0x0c59
    call api_idx_0002_6              ; 0x0c5a
    test ax, ax                      ; 0x0c5d
    je short @..api_idx_0068.l12     ; 0x0c5f
    jmp near @..api_idx_0068.l19     ; 0x0c61
@..api_idx_0068.l12:
    mov ax, 0xf                      ; 0x0c64
    push ax                          ; 0x0c67
    mov ax, 0x3d                     ; 0x0c68
    push ax                          ; 0x0c6b
    call ds_dispatch_d61c            ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    mov ax, 0x98                     ; 0x0c72
    push ax                          ; 0x0c75
    call api_idx_0004                ; 0x0c76
    pop cx                           ; 0x0c79
    call api_idx_0002_6              ; 0x0c7a
    test ax, ax                      ; 0x0c7d
    jne short @..api_idx_0068.l13    ; 0x0c7f
    mov ax, 0xa                      ; 0x0c81
    push ax                          ; 0x0c84
    mov ax, 3                        ; 0x0c85
    push ax                          ; 0x0c88
    mov ax, data_0002                ; 0x0c89
    push ax                          ; 0x0c8c
    mov ax, 1                        ; 0x0c8d
    push ax                          ; 0x0c90
    call loc_0a56                    ; 0x0c91
    add sp, byte 8                   ; 0x0c94
@..api_idx_0068.l13:
    call api_idx_0002_6              ; 0x0c97
    test ax, ax                      ; 0x0c9a
    jne short @..api_idx_0068.l14    ; 0x0c9c
    mov ax, 0xa                      ; 0x0c9e
    push ax                          ; 0x0ca1
    mov ax, 6                        ; 0x0ca2
    push ax                          ; 0x0ca5
    mov ax, 5                        ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, 4                        ; 0x0caa
    push ax                          ; 0x0cad
    call loc_0a56                    ; 0x0cae
    add sp, byte 8                   ; 0x0cb1
@..api_idx_0068.l14:
    call api_idx_0002_6              ; 0x0cb4
    test ax, ax                      ; 0x0cb7
    jne short @..api_idx_0068.l15    ; 0x0cb9
    mov ax, 0                        ; 0x0cbb
    push ax                          ; 0x0cbe
    push ax                          ; 0x0cbf
    mov ax, 8                        ; 0x0cc0
    push ax                          ; 0x0cc3
    mov ax, 7                        ; 0x0cc4
