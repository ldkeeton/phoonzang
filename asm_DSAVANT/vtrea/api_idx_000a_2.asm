api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0954
    call ds_aztec_csav               ; 0x0957
    mov ax, 0                        ; 0x095a
    push ax                          ; 0x095d
    push word [bss_8d10]             ; 0x095e
    push word [bss_8d0e]             ; 0x0962
    call ds_loc_3b96                 ; 0x0966
    add sp, byte 6                   ; 0x0969
    mov ax, 0                        ; 0x096c
    push ax                          ; 0x096f
    push word [bss_8d0c]             ; 0x0970
    push word [bss_8d0a]             ; 0x0974
    call ds_loc_3b96                 ; 0x0978
    add sp, byte 6                   ; 0x097b
    mov byte [bp - 0x000a], 1        ; 0x097e
    mov byte [bp - 0x0009], 0        ; 0x0982
    mov ax, 0                        ; 0x0986
    push ax                          ; 0x0989
    push ax                          ; 0x098a
    lea ax, word [bp - 0x000a]       ; 0x098b
    push ax                          ; 0x098e
    mov ax, 0                        ; 0x098f
    push ax                          ; 0x0992
    mov ax, 0xc7                     ; 0x0993
    push ax                          ; 0x0996
    mov ax, 0                        ; 0x0997
    push ax                          ; 0x099a
    mov ax, 0x13f                    ; 0x099b
    push ax                          ; 0x099e
    mov ax, 0                        ; 0x099f
    push ax                          ; 0x09a2
    mov ax, 0x9a                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 0x37                     ; 0x09a7
    push ax                          ; 0x09aa
    mov ax, 0xe                      ; 0x09ab
    push ax                          ; 0x09ae
    call ds_loc_4218                 ; 0x09af
    add sp, byte 0x16                ; 0x09b2
    cmp word [bss_9126], byte 0      ; 0x09b5
    je short @..api_idx_000a_2.l1    ; 0x09ba
    mov ax, 0x92                     ; 0x09bc
    push ax                          ; 0x09bf
    mov ax, 0x9128                   ; 0x09c0
    push ax                          ; 0x09c3
    call ds_aztec_strlen             ; 0x09c4
    pop cx                           ; 0x09c7
    mov cx, 6                        ; 0x09c8
    imul cx                          ; 0x09cb
    mov cx, 2                        ; 0x09cd
    cwd                              ; 0x09d0
    idiv cx                          ; 0x09d1
    mov cx, ax                       ; 0x09d3
    mov ax, 0xa1                     ; 0x09d5
    sub ax, cx                       ; 0x09d8
    push ax                          ; 0x09da
    call ds_loc_3a50                 ; 0x09db
    add sp, byte 4                   ; 0x09de
    mov ax, 0                        ; 0x09e1
    push ax                          ; 0x09e4
    mov ax, 0x17                     ; 0x09e5
    push ax                          ; 0x09e8
    call ds_loc_3a6a                 ; 0x09e9
    add sp, byte 4                   ; 0x09ec
    mov ax, 0                        ; 0x09ef
    push ax                          ; 0x09f2
    mov ax, 0x9128                   ; 0x09f3
    push ax                          ; 0x09f6
    call ds_string_loc_3a95          ; 0x09f7
    add sp, byte 4                   ; 0x09fa
@..api_idx_000a_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x09fd
    je short @..api_idx_000a_2.l2    ; 0x0a01
    mov ax, 0xc6                     ; 0x0a03
    push ax                          ; 0x0a06
    mov ax, 0x127                    ; 0x0a07
    push ax                          ; 0x0a0a
    mov ax, 0x92                     ; 0x0a0b
    push ax                          ; 0x0a0e
    mov ax, 0x19                     ; 0x0a0f
    push ax                          ; 0x0a12
    call ds_loc_3b21                 ; 0x0a13
    add sp, byte 8                   ; 0x0a16
@..api_idx_000a_2.l2:
    ret                              ; 0x0a19
loc_0a1a:
    mov ax, 0                        ; 0x0a1a
    call ds_aztec_csav               ; 0x0a1d
    mov ax, 0xc6                     ; 0x0a20
    push ax                          ; 0x0a23
    mov ax, 0x109                    ; 0x0a24
    push ax                          ; 0x0a27
    mov ax, 0x92                     ; 0x0a28
    push ax                          ; 0x0a2b
    mov ax, 0x37                     ; 0x0a2c
    push ax                          ; 0x0a2f
    call ds_app_io_0d7a              ; 0x0a30
    add sp, byte 8                   ; 0x0a33
    cmp word [bp + 0x4], byte 0      ; 0x0a36
    je short @..local.l41            ; 0x0a3a
    mov ax, word [bss_905a]          ; 0x0a3c
    cmp byte [bss_598c], 0           ; 0x0a3f
    je short @..local.l40            ; 0x0a44
    shl ax, 1                        ; 0x0a46
@..local.l40:
    push ax                          ; 0x0a48
    call api_idx_0004                ; 0x0a49
    pop cx                           ; 0x0a4c
    jmp short @..local.l42           ; 0x0a4d
@..local.l41:
    call ds_app_0d36                 ; 0x0a4f
    test ax, ax                      ; 0x0a52
    jne short @..local.l42           ; 0x0a54
    call loc_086b                    ; 0x0a56
    jmp short @..local.l41           ; 0x0a59
@..local.l42:
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    call api_idx_000a_2              ; 0x0a5f
    pop cx                           ; 0x0a62
    mov word [bss_9150], 0           ; 0x0a63
    ret                              ; 0x0a69
