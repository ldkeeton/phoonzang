api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x0e03
    call aztec_csav                  ; 0x0e06
    mov word [bp - 0x0002], 0        ; 0x0e09
    mov word [bp - 0x0004], 0        ; 0x0e0e
    cmp word [bp + 0x4], byte 0      ; 0x0e13
    jle short @..api_idx_0004_4.l1   ; 0x0e17
    mov ax, 0x90a2                   ; 0x0e19
    push ax                          ; 0x0e1c
    mov ax, 7                        ; 0x0e1d
    imul word [bp + 0x4]             ; 0x0e20
    add ax, 0x9b                     ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x127                    ; 0x0e27
    push ax                          ; 0x0e2a
    mov ax, 0x9c                     ; 0x0e2b
    push ax                          ; 0x0e2e
    mov ax, 0x19                     ; 0x0e2f
    push ax                          ; 0x0e32
    call ds_app_file_14ca            ; 0x0e33
    add sp, byte 0x0a                ; 0x0e36
    mov word [bp - 0x0002], ax       ; 0x0e39
@..api_idx_0004_4.l1:
    cmp word [bp + 0x6], byte 4      ; 0x0e3c
    jge short @..api_idx_0004_4.l2   ; 0x0e40
    mov ax, 0x90a9                   ; 0x0e42
    push ax                          ; 0x0e45
    mov ax, 0xc4                     ; 0x0e46
    push ax                          ; 0x0e49
    mov ax, 0x127                    ; 0x0e4a
    push ax                          ; 0x0e4d
    mov ax, 7                        ; 0x0e4e
    imul word [bp + 0x6]             ; 0x0e51
    add ax, 0xa2                     ; 0x0e54
    push ax                          ; 0x0e57
    mov ax, 0x19                     ; 0x0e58
    push ax                          ; 0x0e5b
    call ds_app_file_14ca            ; 0x0e5c
    add sp, byte 0x0a                ; 0x0e5f
    mov word [bp - 0x0004], ax       ; 0x0e62
@..api_idx_0004_4.l2:
    mov ax, 0                        ; 0x0e65
    push ax                          ; 0x0e68
    call api_idx_000a_2              ; 0x0e69
    pop cx                           ; 0x0e6c
    cmp word [bp - 0x0004], byte 0   ; 0x0e6d
    je short @..api_idx_0004_4.l3    ; 0x0e71
    mov ax, 1                        ; 0x0e73
    push ax                          ; 0x0e76
    push word [bp - 0x0004]          ; 0x0e77
    call ds_app_file_16a0            ; 0x0e7a
    add sp, byte 4                   ; 0x0e7d
@..api_idx_0004_4.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x0e80
    je short @..api_idx_0004_4.l4    ; 0x0e84
    mov ax, 1                        ; 0x0e86
    push ax                          ; 0x0e89
    push word [bp - 0x0002]          ; 0x0e8a
    call ds_app_file_16a0            ; 0x0e8d
    add sp, byte 4                   ; 0x0e90
@..api_idx_0004_4.l4:
    mov ax, 0xc2                     ; 0x0e93
    push ax                          ; 0x0e96
    mov ax, 0x127                    ; 0x0e97
    push ax                          ; 0x0e9a
    mov ax, 0x92                     ; 0x0e9b
    push ax                          ; 0x0e9e
    mov ax, 0x19                     ; 0x0e9f
    push ax                          ; 0x0ea2
    call ds_loc_3b21                 ; 0x0ea3
    add sp, byte 8                   ; 0x0ea6
    mov ax, 1                        ; 0x0ea9
    push ax                          ; 0x0eac
    call api_idx_0004                ; 0x0ead
    pop cx                           ; 0x0eb0
    ret                              ; 0x0eb1
loc_0eb2:
    mov ax, 0                        ; 0x0eb2
    call aztec_csav                  ; 0x0eb5
    push word [bp + 0x6]             ; 0x0eb8
    push word [bp + 0x6]             ; 0x0ebb
    call api_idx_0004_4              ; 0x0ebe
    add sp, byte 4                   ; 0x0ec1
    mov ax, 0                        ; 0x0ec4
    push ax                          ; 0x0ec7
    push word [bp + 0xa]             ; 0x0ec8
    call ds_loc_3a6a                 ; 0x0ecb
    add sp, byte 4                   ; 0x0ece
    mov ax, 7                        ; 0x0ed1
    imul word [bp + 0x6]             ; 0x0ed4
    add ax, 0x9c                     ; 0x0ed7
    push ax                          ; 0x0eda
    push word [bp + 0x4]             ; 0x0edb
    call aztec_strlen                ; 0x0ede
    pop cx                           ; 0x0ee1
    mov cx, 6                        ; 0x0ee2
    imul cx                          ; 0x0ee5
    mov cx, 2                        ; 0x0ee7
    cwd                              ; 0x0eea
    idiv cx                          ; 0x0eeb
    mov cx, ax                       ; 0x0eed
    mov ax, 0xa0                     ; 0x0eef
    sub ax, cx                       ; 0x0ef2
    push ax                          ; 0x0ef4
    call ds_loc_3a50                 ; 0x0ef5
    add sp, byte 4                   ; 0x0ef8
    mov ax, 0                        ; 0x0efb
    push ax                          ; 0x0efe
    push word [bp + 0x4]             ; 0x0eff
    call ds_string_loc_3a95          ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    mov ax, 7                        ; 0x0f08
    imul word [bp + 0x6]             ; 0x0f0b
    add ax, 0xa2                     ; 0x0f0e
    push ax                          ; 0x0f11
    mov ax, 0x127                    ; 0x0f12
    push ax                          ; 0x0f15
    mov ax, 7                        ; 0x0f16
    imul word [bp + 0x6]             ; 0x0f19
    add ax, 0x9c                     ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, 0x19                     ; 0x0f20
    push ax                          ; 0x0f23
    call ds_loc_3b21                 ; 0x0f24
    add sp, byte 8                   ; 0x0f27
    cmp word [bp + 0x8], byte 0      ; 0x0f2a
    jle short @..loc_0eb2.l1         ; 0x0f2e
    mov ax, word [bp + 0x8]          ; 0x0f30
    dec ax                           ; 0x0f33
    push ax                          ; 0x0f34
    call ds_app_0a27                 ; 0x0f35
    pop cx                           ; 0x0f38
@..loc_0eb2.l1:
    push word [bss_905a]             ; 0x0f39
    call api_idx_0004                ; 0x0f3d
    pop cx                           ; 0x0f40
    cmp word [bp + 0x8], byte 0xff   ; 0x0f41
    je short @..loc_0eb2.l2          ; 0x0f45
    push word [bp + 0x6]             ; 0x0f47
    push word [bp + 0x6]             ; 0x0f4a
    call api_idx_0004_4              ; 0x0f4d
    add sp, byte 4                   ; 0x0f50
@..loc_0eb2.l2:
    ret                              ; 0x0f53
loc_0f54:
    mov ax, 0                        ; 0x0f54
    call aztec_csav                  ; 0x0f57
    mov ax, 0x248                    ; 0x0f5a
    imul word [bp + 0x4]             ; 0x0f5d
    add ax, word [bp + 0x6]          ; 0x0f60
    mov bx, ax                       ; 0x0f63
    cmp byte [bx + 0x5d6c], 0x64     ; 0x0f65
    jae short @..loc_0f54.l1         ; 0x0f6a
    mov al, byte [bx + 0x5d6c]       ; 0x0f6c
    sub ah, ah                       ; 0x0f70
    push ax                          ; 0x0f72
    call ds_app_09f0                 ; 0x0f73
    pop cx                           ; 0x0f76
    push ax                          ; 0x0f77
    mov ax, 0x248                    ; 0x0f78
    imul word [bp + 0x4]             ; 0x0f7b
    mov bx, ax                       ; 0x0f7e
    mov ax, word [bx + 0x5c18]       ; 0x0f80
    imul word [bp + 0x8]             ; 0x0f84
    mov cx, ax                       ; 0x0f87
    pop ax                           ; 0x0f89
    sub ax, cx                       ; 0x0f8a
    jg short @..loc_0f54.l1          ; 0x0f8c
    add bx, word [bp + 0x6]          ; 0x0f8e
    inc byte [bx + 0x5d6c]           ; 0x0f91
@..loc_0f54.l1:
    ret                              ; 0x0f95
