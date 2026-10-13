; auto-generated
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x29ef
    call aztec_csav                  ; 0x29f2
    mov byte [bp - 0x000a], 1        ; 0x29f5
    mov byte [bp - 0x0009], 0        ; 0x29f9
    mov ax, 0                        ; 0x29fd
    push ax                          ; 0x2a00
    push ax                          ; 0x2a01
    lea ax, word [bp - 0x000a]       ; 0x2a02
    push ax                          ; 0x2a05
    mov ax, 0                        ; 0x2a06
    push ax                          ; 0x2a09
    mov ax, 0xc7                     ; 0x2a0a
    push ax                          ; 0x2a0d
    mov ax, 0                        ; 0x2a0e
    push ax                          ; 0x2a11
    mov ax, 0x13f                    ; 0x2a12
    push ax                          ; 0x2a15
    mov ax, 0                        ; 0x2a16
    push ax                          ; 0x2a19
    mov ax, 0x73                     ; 0x2a1a
    push ax                          ; 0x2a1d
    mov ax, 0x32                     ; 0x2a1e
    push ax                          ; 0x2a21
    mov ax, 1                        ; 0x2a22
    push ax                          ; 0x2a25
    call ds_loc_4218                 ; 0x2a26
    add sp, byte 0x16                ; 0x2a29
    ret                              ; 0x2a2c
loc_2a2d:
    mov ax, 0                        ; 0x2a2d
    call aztec_csav                  ; 0x2a30
    push word [bp + 0x6]             ; 0x2a33
    mov ax, 0xa                      ; 0x2a36
    imul word [bp + 0x8]             ; 0x2a39
    add ax, word [bp + 0x4]          ; 0x2a3c
    dec ax                           ; 0x2a3f
    push ax                          ; 0x2a40
    call ds_loc_3a50                 ; 0x2a41
    add sp, byte 4                   ; 0x2a44
    mov ax, 7                        ; 0x2a47
    push ax                          ; 0x2a4a
    mov ax, 0                        ; 0x2a4b
    cmp word [bp + 0xa], byte 0      ; 0x2a4e
    je short @..loc_2a2d.l1          ; 0x2a52
    mov ax, 1                        ; 0x2a54
@..loc_2a2d.l1:
    add ax, strict word 0x10         ; 0x2a57
    sub ah, ah                       ; 0x2a5a
    push ax                          ; 0x2a5c
    call ds_loc_3a77                 ; 0x2a5d
    add sp, byte 4                   ; 0x2a60
    push word [bp + 0x6]             ; 0x2a63
    mov ax, 0xa                      ; 0x2a66
    imul word [bp + 0x8]             ; 0x2a69
    add ax, word [bp + 0x4]          ; 0x2a6c
    push ax                          ; 0x2a6f
    call ds_loc_3a50                 ; 0x2a70
    add sp, byte 4                   ; 0x2a73
    mov ax, 0                        ; 0x2a76
    push ax                          ; 0x2a79
    push ax                          ; 0x2a7a
    call ds_loc_3a6a                 ; 0x2a7b
    add sp, byte 4                   ; 0x2a7e
    mov ax, 2                        ; 0x2a81
    push ax                          ; 0x2a84
    mov ax, word [bp + 0x8]          ; 0x2a85
    inc ax                           ; 0x2a88
    sub ah, ah                       ; 0x2a89
    push ax                          ; 0x2a8b
    call ds_loc_3a77                 ; 0x2a8c
    add sp, byte 4                   ; 0x2a8f
    cmp word [bp + 0x8], byte 0      ; 0x2a92
    jne short @..loc_2a2d.l2         ; 0x2a96
    cmp word [bp + 0xa], byte 0      ; 0x2a98
    jne short @..loc_2a2d.l2         ; 0x2a9c
    mov ax, 0xc2                     ; 0x2a9e
    push ax                          ; 0x2aa1
    mov ax, word [bp + 0x6]          ; 0x2aa2
    add ax, strict word 8            ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, word [bp + 0x4]          ; 0x2aa9
    dec ax                           ; 0x2aac
    push ax                          ; 0x2aad
    push word [bp + 0x6]             ; 0x2aae
    push ax                          ; 0x2ab1
    call ds_loc_3b48                 ; 0x2ab2
    add sp, byte 0x0a                ; 0x2ab5
@..loc_2a2d.l2:
    ret                              ; 0x2ab8
loc_2ab9:
    mov ax, 0                        ; 0x2ab9
    call aztec_csav                  ; 0x2abc
    mov ax, word [bp + 0x6]          ; 0x2abf
    add ax, strict word 6            ; 0x2ac2
    push ax                          ; 0x2ac5
    mov ax, word [bp + 0x4]          ; 0x2ac6
    add ax, strict word 0x14         ; 0x2ac9
    push ax                          ; 0x2acc
    push word [bp + 0x6]             ; 0x2acd
    push word [bp + 0x4]             ; 0x2ad0
    call ds_app_0fdf                 ; 0x2ad3
    add sp, byte 8                   ; 0x2ad6
    mov ax, word [bp + 0x8]          ; 0x2ad9
    shl ax, 1                        ; 0x2adc
    shl ax, 1                        ; 0x2ade
    mov bx, ax                       ; 0x2ae0
    push word [word bx + 0x8]        ; 0x2ae2
    mov ax, word [bp + 0x6]          ; 0x2ae6
    add ax, strict word 6            ; 0x2ae9
    push ax                          ; 0x2aec
    mov ax, word [bp + 0x4]          ; 0x2aed
    add ax, strict word 0x14         ; 0x2af0
    push ax                          ; 0x2af3
    push word [bp + 0x6]             ; 0x2af4
    push word [bp + 0x4]             ; 0x2af7
    call ds_loc_3b48                 ; 0x2afa
    add sp, byte 0x0a                ; 0x2afd
    mov ax, word [bp + 0x6]          ; 0x2b00
    inc ax                           ; 0x2b03
    push ax                          ; 0x2b04
    mov ax, word [bp + 0x4]          ; 0x2b05
    inc ax                           ; 0x2b08
    inc ax                           ; 0x2b09
    push ax                          ; 0x2b0a
    call ds_loc_3a50                 ; 0x2b0b
    add sp, byte 4                   ; 0x2b0e
    cmp word [bp + 0xa], byte 0      ; 0x2b11
    jle short @..loc_2ab9.l1         ; 0x2b15
    mov ax, word [bp + 0xa]          ; 0x2b17
    cmp ax, word [bp + 0xc]          ; 0x2b1a
    jg short @..loc_2ab9.l1          ; 0x2b1d
    mov ax, 0                        ; 0x2b1f
    push ax                          ; 0x2b22
    mov ax, 1                        ; 0x2b23
    push ax                          ; 0x2b26
    call ds_loc_3a6a                 ; 0x2b27
    add sp, byte 4                   ; 0x2b2a
    mov ax, 0                        ; 0x2b2d
    push ax                          ; 0x2b30
    mov ax, 3                        ; 0x2b31
    push ax                          ; 0x2b34
    push word [bp + 0xa]             ; 0x2b35
    call ds_app_052e                 ; 0x2b38
    add sp, byte 6                   ; 0x2b3b
    jmp short @..loc_2ab9.l2         ; 0x2b3e
@..loc_2ab9.l1:
    mov ax, 0                        ; 0x2b40
    push ax                          ; 0x2b43
    push ax                          ; 0x2b44
    call ds_loc_3a6a                 ; 0x2b45
    add sp, byte 4                   ; 0x2b48
    mov ax, 0                        ; 0x2b4b
    push ax                          ; 0x2b4e
    mov ax, 0x90a7                   ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_string_loc_3a95          ; 0x2b53
    add sp, byte 4                   ; 0x2b56
@..loc_2ab9.l2:
    ret                              ; 0x2b59
