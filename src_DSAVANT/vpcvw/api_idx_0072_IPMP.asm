; auto-generated
api_idx_0072_IPMP:
    mov ax, 0xff8e                   ; 0x4a3f
    call aztec_csav                  ; 0x4a42
    mov word [bss_95ea], 0           ; 0x4a45
    mov word [bp - 0x000c], 0        ; 0x4a4b
    mov word [bp - 0x000e], 0        ; 0x4a50
@..api_idx_0072_IPMP.l1:
    cmp word [bp - 0x000c], byte 2   ; 0x4a55
    jge short @..api_idx_0072_IPMP.l3 ; 0x4a59
    mov ax, 0x248                    ; 0x4a5b
    imul word [bp + 0x4]             ; 0x4a5e
    push ax                          ; 0x4a61
    mov ax, 0x78                     ; 0x4a62
    imul word [bp - 0x000c]          ; 0x4a65
    mov cx, ax                       ; 0x4a68
    pop ax                           ; 0x4a6a
    add ax, cx                       ; 0x4a6b
    push ax                          ; 0x4a6d
    mov ax, 0xc                      ; 0x4a6e
    imul word [bp - 0x000e]          ; 0x4a71
    mov cx, ax                       ; 0x4a74
    pop ax                           ; 0x4a76
    add ax, cx                       ; 0x4a77
    mov bx, ax                       ; 0x4a79
    cmp word [bx + party_records + pc_rec.cell], byte 0 ; 0x4a7b
    jle short @..api_idx_0072_IPMP.l3 ; 0x4a80
    inc word [bp - 0x000e]           ; 0x4a82
    mov ax, word [bp - 0x000e]       ; 0x4a85
    cmp ax, strict word 0xa          ; 0x4a88
    jne short @..api_idx_0072_IPMP.l2 ; 0x4a8b
    mov word [bp - 0x000e], 0        ; 0x4a8d
    inc word [bp - 0x000c]           ; 0x4a92
    mov ax, word [bp - 0x000c]       ; 0x4a95
    cmp ax, strict word 2            ; 0x4a98
    jne short @..api_idx_0072_IPMP.l2 ; 0x4a9b
    mov ax, 0                        ; 0x4a9d
    push ax                          ; 0x4aa0
    call play_sound_effect           ; 0x4aa1
    pop cx                           ; 0x4aa4
    mov ax, 0xffff                   ; 0x4aa5
    ret                              ; 0x4aa8
@..api_idx_0072_IPMP.l2:
    jmp short @..api_idx_0072_IPMP.l1 ; 0x4aa9
@..api_idx_0072_IPMP.l3:
    mov ax, 0                        ; 0x4aab
    push ax                          ; 0x4aae
    mov bx, word [bp + 0x6]          ; 0x4aaf
    push word [bx]                   ; 0x4ab2
    lea ax, word [bp - 0x0066]       ; 0x4ab4
    push ax                          ; 0x4ab7
    mov ax, 1                        ; 0x4ab8
    push ax                          ; 0x4abb
    call data_record_io              ; 0x4abc
    add sp, byte 8                   ; 0x4abf
    lea ax, word [bp - 0x0066]       ; 0x4ac2
    push ax                          ; 0x4ac5
    push word [bp + 0x4]             ; 0x4ac6
    call api_idx_0002_USJS           ; 0x4ac9
    add sp, byte 4                   ; 0x4acc
    mov word [bp - 0x0006], ax       ; 0x4acf
    cmp ax, strict word 0xffff       ; 0x4ad2
    jne short @..api_idx_0072_IPMP.l4 ; 0x4ad5
    mov ax, 0                        ; 0x4ad7
    push ax                          ; 0x4ada
    call play_sound_effect           ; 0x4adb
    pop cx                           ; 0x4ade
    mov ax, 0xffff                   ; 0x4adf
    ret                              ; 0x4ae2
@..api_idx_0072_IPMP.l4:
    cmp word [bp - 0x0006], byte 0xfe ; 0x4ae3
    jne short @..api_idx_0072_IPMP.l6 ; 0x4ae7
    mov ax, 0                        ; 0x4ae9
    push ax                          ; 0x4aec
    push word [bp + 0x4]             ; 0x4aed
    call loc_IHRL                    ; 0x4af0
    add sp, byte 4                   ; 0x4af3
    test ax, ax                      ; 0x4af6
    je short @..api_idx_0072_IPMP.l5 ; 0x4af8
    mov word [bp - 0x0006], 1        ; 0x4afa
@..api_idx_0072_IPMP.l5:
    mov ax, 1                        ; 0x4aff
    push ax                          ; 0x4b02
    push word [bp + 0x4]             ; 0x4b03
    call loc_IHRL                    ; 0x4b06
    add sp, byte 4                   ; 0x4b09
    test ax, ax                      ; 0x4b0c
    je short @..api_idx_0072_IPMP.l6 ; 0x4b0e
    mov word [bp - 0x0006], 0        ; 0x4b10
@..api_idx_0072_IPMP.l6:
    mov al, byte [bp - 0x002f]       ; 0x4b15
    sub ah, ah                       ; 0x4b18
    test ax, 4                       ; 0x4b1a
    je short @..api_idx_0072_IPMP.l7 ; 0x4b1d
    mov ax, 1                        ; 0x4b1f
    push ax                          ; 0x4b22
    push word [bp + 0x4]             ; 0x4b23
    call loc_IHRL                    ; 0x4b26
    add sp, byte 4                   ; 0x4b29
    test ax, ax                      ; 0x4b2c
    je short @..api_idx_0072_IPMP.l7 ; 0x4b2e
    call api_idx_0056_KPMS           ; 0x4b30
    mov ax, 0xffff                   ; 0x4b33
    ret                              ; 0x4b36
@..api_idx_0072_IPMP.l7:
    push word [bp - 0x0006]          ; 0x4b37
    push word [bp + 0x4]             ; 0x4b3a
    call loc_IHRL                    ; 0x4b3d
    add sp, byte 4                   ; 0x4b40
    test ax, ax                      ; 0x4b43
    je short @..api_idx_0072_IPMP.l8 ; 0x4b45
    call api_idx_0056_KPMS           ; 0x4b47
    mov ax, 0xffff                   ; 0x4b4a
    ret                              ; 0x4b4d
@..api_idx_0072_IPMP.l8:
    cmp word [bp - 0x0006], byte 1   ; 0x4b4e
    jne short @..api_idx_0072_IPMP.l9 ; 0x4b52
    mov ax, 0x248                    ; 0x4b54
    imul word [bp + 0x4]             ; 0x4b57
    mov bx, ax                       ; 0x4b5a
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4b5c
    sub ah, ah                       ; 0x4b60
    cmp ax, 0xff                     ; 0x4b62
    je short @..api_idx_0072_IPMP.l9 ; 0x4b65
    mov cx, 0xc                      ; 0x4b67
    imul cx                          ; 0x4b6a
    add bx, ax                       ; 0x4b6c
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x4b6e
    sub ah, ah                       ; 0x4b72
    test ax, 8                       ; 0x4b74
    je short @..api_idx_0072_IPMP.l9 ; 0x4b77
    mov ax, 0                        ; 0x4b79
    push ax                          ; 0x4b7c
    push word [bp + 0x4]             ; 0x4b7d
    call loc_IHRL                    ; 0x4b80
    add sp, byte 4                   ; 0x4b83
    test ax, ax                      ; 0x4b86
    je short @..api_idx_0072_IPMP.l9 ; 0x4b88
    call api_idx_0056_KPMS           ; 0x4b8a
    mov ax, 0xffff                   ; 0x4b8d
    ret                              ; 0x4b90
@..api_idx_0072_IPMP.l9:
    cmp word [bp - 0x0006], byte 0xfe ; 0x4b91
    jne short @..api_idx_0072_IPMP.l10 ; 0x4b95
    mov ax, 0xc6                     ; 0x4b97
    push ax                          ; 0x4b9a
    mov ax, 0xbd                     ; 0x4b9b
    push ax                          ; 0x4b9e
    mov ax, 0xbb                     ; 0x4b9f
    push ax                          ; 0x4ba2
    mov ax, 3                        ; 0x4ba3
    push ax                          ; 0x4ba6
    call gfx_show_area               ; 0x4ba7
    add sp, byte 8                   ; 0x4baa
    mov word [bp - 0x001e], 1        ; 0x4bad
    mov word [bp - 0x001c], 1        ; 0x4bb2
    mov word [bp - 0x001a], 0xffff   ; 0x4bb7
    lea ax, word [bp - 0x001e]       ; 0x4bbc
    push ax                          ; 0x4bbf
    mov ax, 0                        ; 0x4bc0
    push ax                          ; 0x4bc3
    mov ax, 0xffff                   ; 0x4bc4
    push ax                          ; 0x4bc7
    mov ax, 1                        ; 0x4bc8
    push ax                          ; 0x4bcb
    mov ax, 2                        ; 0x4bcc
    push ax                          ; 0x4bcf
    mov ax, 1                        ; 0x4bd0
    push ax                          ; 0x4bd3
    mov ax, 0xc                      ; 0x4bd4
    push ax                          ; 0x4bd7
    mov ax, 0x6a                     ; 0x4bd8
    push ax                          ; 0x4bdb
    mov ax, 0xb                      ; 0x4bdc
    push ax                          ; 0x4bdf
    mov ax, 0x70                     ; 0x4be0
    push ax                          ; 0x4be3
    mov ax, 0x4a                     ; 0x4be4
    push ax                          ; 0x4be7
    mov ax, MSG_SELECT_WEAPON_PRIORITY ; 0x4be8
    push ax                          ; 0x4beb
    mov ax, 0x15f                    ; 0x4bec
    push ax                          ; 0x4bef
    call loc_UGOG                    ; 0x4bf0
    add sp, byte 0x1a                ; 0x4bf3
    mov word [bp - 0x0006], ax       ; 0x4bf6
@..api_idx_0072_IPMP.l10:
    cmp word [bp - 0x0006], byte 0   ; 0x4bf9
    jne short @..api_idx_0072_IPMP.l12 ; 0x4bfd
    mov al, byte [bp - 0x002f]       ; 0x4bff
    sub ah, ah                       ; 0x4c02
    test ax, 4                       ; 0x4c04
    je short @..api_idx_0072_IPMP.l11 ; 0x4c07
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 0x4]             ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov al, byte [bx + party_records + pc_rec.order + 0x1] ; 0x4c11
    sub ah, ah                       ; 0x4c15
    mov word [bp - 0x000a], ax       ; 0x4c17
    cmp ax, 0xff                     ; 0x4c1a
    je short @..api_idx_0072_IPMP.l11 ; 0x4c1d
    push ax                          ; 0x4c1f
    push word [bp + 0x4]             ; 0x4c20
    call compact_grid_page           ; 0x4c23
    add sp, byte 4                   ; 0x4c26
@..api_idx_0072_IPMP.l11:
    jmp short @..api_idx_0072_IPMP.l13 ; 0x4c29
@..api_idx_0072_IPMP.l12:
    cmp word [bp - 0x0006], byte 1   ; 0x4c2b
    jne short @..api_idx_0072_IPMP.l13 ; 0x4c2f
    mov ax, 0x248                    ; 0x4c31
    imul word [bp + 0x4]             ; 0x4c34
    mov bx, ax                       ; 0x4c37
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4c39
    sub ah, ah                       ; 0x4c3d
    mov word [bp - 0x000a], ax       ; 0x4c3f
    cmp ax, 0xff                     ; 0x4c42
    je short @..api_idx_0072_IPMP.l13 ; 0x4c45
    mov cx, 0xc                      ; 0x4c47
    imul cx                          ; 0x4c4a
    add bx, ax                       ; 0x4c4c
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x4c4e
    sub ah, ah                       ; 0x4c52
    test ax, 8                       ; 0x4c54
    je short @..api_idx_0072_IPMP.l13 ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c59
    push word [bp + 0x4]             ; 0x4c5c
    call compact_grid_page           ; 0x4c5f
    add sp, byte 4                   ; 0x4c62
@..api_idx_0072_IPMP.l13:
    mov ax, 0x248                    ; 0x4c65
    imul word [bp + 0x4]             ; 0x4c68
    add ax, word [bp - 0x0006]       ; 0x4c6b
    mov bx, ax                       ; 0x4c6e
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4c70
    sub ah, ah                       ; 0x4c74
    mov word [bp - 0x000a], ax       ; 0x4c76
    cmp ax, 0xff                     ; 0x4c79
    je short @..api_idx_0072_IPMP.l14 ; 0x4c7c
    push ax                          ; 0x4c7e
    push word [bp + 0x4]             ; 0x4c7f
    call compact_grid_page           ; 0x4c82
    add sp, byte 4                   ; 0x4c85
@..api_idx_0072_IPMP.l14:
    cmp word [bp - 0x000c], byte 0   ; 0x4c88
    je short @..api_idx_0072_IPMP.l15 ; 0x4c8c
    mov ax, 0x248                    ; 0x4c8e
    imul word [bp + 0x4]             ; 0x4c91
    mov si, ax                       ; 0x4c94
    add ax, party_records + pc_rec.cell + 0x6c ; 0x4c96
    mov si, ax                       ; 0x4c99
    mov ax, 0x248                    ; 0x4c9b
    imul word [bp + 0x4]             ; 0x4c9e
    push ax                          ; 0x4ca1
    mov ax, 0x78                     ; 0x4ca2
    imul word [bp - 0x000c]          ; 0x4ca5
    mov cx, ax                       ; 0x4ca8
    pop ax                           ; 0x4caa
    add ax, cx                       ; 0x4cab
    push ax                          ; 0x4cad
    mov ax, 0xc                      ; 0x4cae
    imul word [bp - 0x000e]          ; 0x4cb1
    mov cx, ax                       ; 0x4cb4
    pop ax                           ; 0x4cb6
    add ax, cx                       ; 0x4cb7
    mov di, ax                       ; 0x4cb9
    add ax, 0x5c34                   ; 0x4cbb
    mov di, ax                       ; 0x4cbe
    mov cx, ds                       ; 0x4cc0
    mov es, cx                       ; 0x4cc2
    mov cx, 6                        ; 0x4cc4
    rep movsw                        ; 0x4cc7
    mov word [bp - 0x000c], 0        ; 0x4cc9
    mov word [bp - 0x000e], 9        ; 0x4cce
@..api_idx_0072_IPMP.l15:
    mov ax, word [bp - 0x000e]       ; 0x4cd3
    mov word [bss_95ea], ax          ; 0x4cd6
    mov si, word [bp + 0x6]          ; 0x4cd9
    mov ax, 0x248                    ; 0x4cdc
    imul word [bp + 0x4]             ; 0x4cdf
    push ax                          ; 0x4ce2
    mov ax, 0x78                     ; 0x4ce3
    imul word [bp - 0x000c]          ; 0x4ce6
    mov cx, ax                       ; 0x4ce9
    pop ax                           ; 0x4ceb
    add ax, cx                       ; 0x4cec
    push ax                          ; 0x4cee
    mov ax, 0xc                      ; 0x4cef
    imul word [bp - 0x000e]          ; 0x4cf2
    mov cx, ax                       ; 0x4cf5
    pop ax                           ; 0x4cf7
    add ax, cx                       ; 0x4cf8
    mov di, ax                       ; 0x4cfa
    add ax, 0x5c34                   ; 0x4cfc
    mov di, ax                       ; 0x4cff
    mov cx, ds                       ; 0x4d01
    mov es, cx                       ; 0x4d03
    mov cx, 6                        ; 0x4d05
    rep movsw                        ; 0x4d08
    mov ax, 0x248                    ; 0x4d0a
    imul word [bp + 0x4]             ; 0x4d0d
    push ax                          ; 0x4d10
    mov ax, 0x78                     ; 0x4d11
    imul word [bp - 0x000c]          ; 0x4d14
    mov cx, ax                       ; 0x4d17
    pop ax                           ; 0x4d19
    add ax, cx                       ; 0x4d1a
    push ax                          ; 0x4d1c
    mov ax, 0xc                      ; 0x4d1d
    imul word [bp - 0x000e]          ; 0x4d20
    mov cx, ax                       ; 0x4d23
    pop ax                           ; 0x4d25
    add ax, cx                       ; 0x4d26
    mov bx, ax                       ; 0x4d28
    or byte [bx + party_records + pc_rec.cell + 0x7], 1 ; 0x4d2a
    mov al, byte [bp - 0x000e]       ; 0x4d2f
    push ax                          ; 0x4d32
    mov ax, 0x248                    ; 0x4d33
    imul word [bp + 0x4]             ; 0x4d36
    mov cx, ax                       ; 0x4d39
    add ax, word [bp - 0x0006]       ; 0x4d3b
    mov bx, ax                       ; 0x4d3e
    pop ax                           ; 0x4d40
    mov byte [bx + party_records + pc_rec.order], al ; 0x4d41
    cmp byte [bp - 0x0029], 0        ; 0x4d45
    jbe short @..api_idx_0072_IPMP.l16 ; 0x4d49
    mov ax, 0x78                     ; 0x4d4b
    imul word [bp - 0x000c]          ; 0x4d4e
    add cx, ax                       ; 0x4d51
    mov ax, cx                       ; 0x4d53
    push ax                          ; 0x4d55
    mov ax, 0xc                      ; 0x4d56
    imul word [bp - 0x000e]          ; 0x4d59
    mov cx, ax                       ; 0x4d5c
    pop ax                           ; 0x4d5e
    add ax, cx                       ; 0x4d5f
    mov bx, ax                       ; 0x4d61
    or byte [bx + party_records + pc_rec.cell + 0x7], 2 ; 0x4d63
    call api_idx_0056_KPMS           ; 0x4d68
@..api_idx_0072_IPMP.l16:
    mov word [bp - 0x0002], 0        ; 0x4d6b
    mov word [bp - 0x000a], 0        ; 0x4d70
@..api_idx_0072_IPMP.l17:
    cmp word [bp - 0x0002], byte 8   ; 0x4d75
    jl short @..api_idx_0072_IPMP.l18 ; 0x4d79
    jmp near @..api_idx_0072_IPMP.l26 ; 0x4d7b
@..api_idx_0072_IPMP.l18:
    mov ax, 0x248                    ; 0x4d7e
    imul word [bp + 0x4]             ; 0x4d81
    add ax, word [bp - 0x0002]       ; 0x4d84
    mov bx, ax                       ; 0x4d87
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4d89
    sub ah, ah                       ; 0x4d8d
    mov word [bp - 0x000e], ax       ; 0x4d8f
    cmp ax, 0xff                     ; 0x4d92
    jne short @..api_idx_0072_IPMP.l19 ; 0x4d95
    jmp near @..api_idx_0072_IPMP.l25 ; 0x4d97
@..api_idx_0072_IPMP.l19:
    mov ax, 0x248                    ; 0x4d9a
    imul word [bp + 0x4]             ; 0x4d9d
    push ax                          ; 0x4da0
    mov ax, 0xc                      ; 0x4da1
    imul word [bp - 0x000e]          ; 0x4da4
    mov cx, ax                       ; 0x4da7
    pop ax                           ; 0x4da9
    add ax, cx                       ; 0x4daa
    mov si, ax                       ; 0x4dac
    add ax, 0x5c34                   ; 0x4dae
    mov si, ax                       ; 0x4db1
    lea di, word [bp - 0x0072]       ; 0x4db3
    mov cx, ds                       ; 0x4db6
    mov es, cx                       ; 0x4db8
    mov cx, 6                        ; 0x4dba
    rep movsw                        ; 0x4dbd
@..api_idx_0072_IPMP.l20:
    mov ax, word [bp - 0x000e]       ; 0x4dbf
    cmp ax, word [bp - 0x000a]       ; 0x4dc2
    jle short @..api_idx_0072_IPMP.l23 ; 0x4dc5
    mov ax, 0x248                    ; 0x4dc7
    imul word [bp + 0x4]             ; 0x4dca
    push ax                          ; 0x4dcd
    mov ax, 0xc                      ; 0x4dce
    imul word [bp - 0x000e]          ; 0x4dd1
    mov cx, ax                       ; 0x4dd4
    pop ax                           ; 0x4dd6
    add ax, cx                       ; 0x4dd7
    mov si, ax                       ; 0x4dd9
    add ax, 0x5c28                   ; 0x4ddb
    mov si, ax                       ; 0x4dde
    mov ax, 0x248                    ; 0x4de0
    imul word [bp + 0x4]             ; 0x4de3
    add ax, cx                       ; 0x4de6
    mov di, ax                       ; 0x4de8
    add ax, party_records + pc_rec.cell ; 0x4dea
    mov di, ax                       ; 0x4ded
    mov cx, ds                       ; 0x4def
    mov es, cx                       ; 0x4df1
    mov cx, 6                        ; 0x4df3
    rep movsw                        ; 0x4df6
    mov word [bp - 0x0004], 0        ; 0x4df8
@..api_idx_0072_IPMP.l21:
    mov ax, 0x248                    ; 0x4dfd
    imul word [bp + 0x4]             ; 0x4e00
    add ax, word [bp - 0x0004]       ; 0x4e03
    mov bx, ax                       ; 0x4e06
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4e08
    sub ah, ah                       ; 0x4e0c
    mov cx, word [bp - 0x000e]       ; 0x4e0e
    dec cx                           ; 0x4e11
    cmp ax, cx                       ; 0x4e12
    jne short @..api_idx_0072_IPMP.l22 ; 0x4e14
    mov al, byte [bp - 0x000e]       ; 0x4e16
    mov byte [bx + party_records + pc_rec.order], al ; 0x4e19
@..api_idx_0072_IPMP.l22:
    inc word [bp - 0x0004]           ; 0x4e1d
    mov ax, word [bp - 0x0004]       ; 0x4e20
    cmp ax, strict word 8            ; 0x4e23
    jl short @..api_idx_0072_IPMP.l21 ; 0x4e26
    dec word [bp - 0x000e]           ; 0x4e28
    jmp short @..api_idx_0072_IPMP.l20 ; 0x4e2b
@..api_idx_0072_IPMP.l23:
    lea si, word [bp - 0x0072]       ; 0x4e2d
    mov ax, 0x248                    ; 0x4e30
    imul word [bp + 0x4]             ; 0x4e33
    push ax                          ; 0x4e36
    mov ax, 0xc                      ; 0x4e37
    imul word [bp - 0x000a]          ; 0x4e3a
    mov cx, ax                       ; 0x4e3d
    pop ax                           ; 0x4e3f
    add ax, cx                       ; 0x4e40
    mov di, ax                       ; 0x4e42
    add ax, 0x5c34                   ; 0x4e44
    mov di, ax                       ; 0x4e47
    mov cx, ds                       ; 0x4e49
    mov es, cx                       ; 0x4e4b
    mov cx, 6                        ; 0x4e4d
    rep movsw                        ; 0x4e50
    mov al, byte [bp - 0x000a]       ; 0x4e52
    push ax                          ; 0x4e55
    mov ax, 0x248                    ; 0x4e56
    imul word [bp + 0x4]             ; 0x4e59
    mov cx, ax                       ; 0x4e5c
    add ax, word [bp - 0x0002]       ; 0x4e5e
    mov bx, ax                       ; 0x4e61
    pop ax                           ; 0x4e63
    mov byte [bx + party_records + pc_rec.order], al ; 0x4e64
    mov ax, word [bp - 0x0006]       ; 0x4e68
    cmp ax, word [bp - 0x0002]       ; 0x4e6b
    jne short @..api_idx_0072_IPMP.l24 ; 0x4e6e
    mov ax, word [bp - 0x000a]       ; 0x4e70
    mov word [bss_95ea], ax          ; 0x4e73
@..api_idx_0072_IPMP.l24:
    inc word [bp - 0x000a]           ; 0x4e76
@..api_idx_0072_IPMP.l25:
    inc word [bp - 0x0002]           ; 0x4e79
    jmp near @..api_idx_0072_IPMP.l17 ; 0x4e7c
@..api_idx_0072_IPMP.l26:
    cmp word [bp - 0x0006], byte 0   ; 0x4e7f
    je short @..api_idx_0072_IPMP.l27 ; 0x4e83
    mov ax, word [bp - 0x0006]       ; 0x4e85
    cmp ax, strict word 1            ; 0x4e88
    jne short @..api_idx_0072_IPMP.l28 ; 0x4e8b
@..api_idx_0072_IPMP.l27:
    mov al, byte [bp - 0x0026]       ; 0x4e8d
    push ax                          ; 0x4e90
    mov ax, 0x248                    ; 0x4e91
    imul word [bp + 0x4]             ; 0x4e94
    mov bx, ax                       ; 0x4e97
    pop ax                           ; 0x4e99
    sub byte [bx + party_records + pc_rec.count + 0x1], al ; 0x4e9a
    lea ax, word [bp - 0x0066]       ; 0x4e9e
    push ax                          ; 0x4ea1
    push word [bp - 0x0006]          ; 0x4ea2
    push word [bp + 0x4]             ; 0x4ea5
    call api_idx_0004_GUSS           ; 0x4ea8
    add sp, byte 6                   ; 0x4eab
    jmp short @..api_idx_0072_IPMP.l29 ; 0x4eae
@..api_idx_0072_IPMP.l28:
    mov al, byte [bp - 0x0026]       ; 0x4eb0
    push ax                          ; 0x4eb3
    mov ax, 0x248                    ; 0x4eb4
    imul word [bp + 0x4]             ; 0x4eb7
    mov cx, ax                       ; 0x4eba
    add ax, word [bp - 0x0006]       ; 0x4ebc
    mov bx, ax                       ; 0x4ebf
    pop ax                           ; 0x4ec1
    sub byte [bx + party_records + pc_rec.count], al ; 0x4ec2
@..api_idx_0072_IPMP.l29:
    mov word [bp - 0x0002], 0        ; 0x4ec6
@..api_idx_0072_IPMP.l30:
    mov ax, 0x248                    ; 0x4ecb
    imul word [bp + 0x4]             ; 0x4ece
    add ax, word [bp - 0x0002]       ; 0x4ed1
    mov bx, ax                       ; 0x4ed4
    mov al, byte [bx + party_records + pc_rec.prev] ; 0x4ed6
    mov byte [bx + party_records + pc_rec.cur], al ; 0x4eda
    inc word [bp - 0x0002]           ; 0x4ede
    mov ax, word [bp - 0x0002]       ; 0x4ee1
    cmp ax, strict word 0xe          ; 0x4ee4
    jl short @..api_idx_0072_IPMP.l30 ; 0x4ee7
    mov word [bp - 0x0002], 0        ; 0x4ee9
@..api_idx_0072_IPMP.l31:
    mov ax, 0x248                    ; 0x4eee
    imul word [bp + 0x4]             ; 0x4ef1
    add ax, word [bp - 0x0002]       ; 0x4ef4
    mov bx, ax                       ; 0x4ef7
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4ef9
    sub ah, ah                       ; 0x4efd
    cmp ax, 0xff                     ; 0x4eff
    jne short @..api_idx_0072_IPMP.l32 ; 0x4f02
    jmp near @..api_idx_0072_IPMP.l38 ; 0x4f04
@..api_idx_0072_IPMP.l32:
    mov word [bp - 0x0010], 0        ; 0x4f07
@..api_idx_0072_IPMP.l33:
    mov ax, 0x248                    ; 0x4f0c
    imul word [bp + 0x4]             ; 0x4f0f
    push ax                          ; 0x4f12
    add ax, word [bp - 0x0002]       ; 0x4f13
    mov bx, ax                       ; 0x4f16
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4f18
    sub ah, ah                       ; 0x4f1c
    mov cx, 0xc                      ; 0x4f1e
    imul cx                          ; 0x4f21
    mov cx, ax                       ; 0x4f23
    pop ax                           ; 0x4f25
    add ax, cx                       ; 0x4f26
    add ax, word [bp - 0x0010]       ; 0x4f28
    mov bx, ax                       ; 0x4f2b
    mov al, byte [bx + party_records + pc_rec.cell + 0x8] ; 0x4f2d
    sub ah, ah                       ; 0x4f31
    mov cx, 0x10                     ; 0x4f33
    cwd                              ; 0x4f36
    idiv cx                          ; 0x4f37
    mov word [bp - 0x0012], ax       ; 0x4f39
    mov ax, 0xa                      ; 0x4f3c
    imul dx                          ; 0x4f3f
    mov word [bp - 0x0014], ax       ; 0x4f41
    mov ax, 0x7d                     ; 0x4f44
    push ax                          ; 0x4f47
    mov ax, 0                        ; 0x4f48
    push ax                          ; 0x4f4b
    mov ax, 0x248                    ; 0x4f4c
    imul word [bp + 0x4]             ; 0x4f4f
    add ax, word [bp - 0x0012]       ; 0x4f52
    mov bx, ax                       ; 0x4f55
    mov al, byte [bx + party_records + pc_rec.cur] ; 0x4f57
    sub ah, ah                       ; 0x4f5b
    add ax, word [bp - 0x0014]       ; 0x4f5d
    push ax                          ; 0x4f60
    call clamp_between               ; 0x4f61
    add sp, byte 6                   ; 0x4f64
    push ax                          ; 0x4f67
    mov ax, 0x248                    ; 0x4f68
    imul word [bp + 0x4]             ; 0x4f6b
    mov cx, ax                       ; 0x4f6e
    add ax, word [bp - 0x0012]       ; 0x4f70
    mov bx, ax                       ; 0x4f73
    pop ax                           ; 0x4f75
    mov byte [bx + party_records + pc_rec.cur], al ; 0x4f76
    inc word [bp - 0x0010]           ; 0x4f7a
    mov ax, word [bp - 0x0010]       ; 0x4f7d
    cmp ax, strict word 2            ; 0x4f80
    jl short @..api_idx_0072_IPMP.l33 ; 0x4f83
    mov ax, 0x248                    ; 0x4f85
    imul word [bp + 0x4]             ; 0x4f88
    push ax                          ; 0x4f8b
    add ax, word [bp - 0x0002]       ; 0x4f8c
    mov bx, ax                       ; 0x4f8f
    mov al, byte [bx + party_records + pc_rec.order] ; 0x4f91
    sub ah, ah                       ; 0x4f95
    mov cx, 0xc                      ; 0x4f97
    imul cx                          ; 0x4f9a
    mov cx, ax                       ; 0x4f9c
    pop ax                           ; 0x4f9e
    add ax, cx                       ; 0x4f9f
    mov bx, ax                       ; 0x4fa1
    mov al, byte [bx + party_records + pc_rec.cell + 0xa] ; 0x4fa3
    sub ah, ah                       ; 0x4fa7
    mov cx, 0x10                     ; 0x4fa9
    cwd                              ; 0x4fac
    idiv cx                          ; 0x4fad
    mov word [bp - 0x0012], ax       ; 0x4faf
    mov word [bp - 0x0014], dx       ; 0x4fb2
    mov ax, 0x248                    ; 0x4fb5
    imul word [bp + 0x4]             ; 0x4fb8
    mov bx, ax                       ; 0x4fbb
    mov al, byte [bx + party_records + pc_rec.attack] ; 0x4fbd
    sub ah, ah                       ; 0x4fc1
    mov dx, word [bp - 0x0014]       ; 0x4fc3
    cmp ax, dx                       ; 0x4fc6
    jge short @..api_idx_0072_IPMP.l34 ; 0x4fc8
    mov ax, dx                       ; 0x4fca
    jmp short @..api_idx_0072_IPMP.l35 ; 0x4fcc
@..api_idx_0072_IPMP.l34:
    mov al, byte [bx + party_records + pc_rec.attack] ; 0x4fce
    sub ah, ah                       ; 0x4fd2
@..api_idx_0072_IPMP.l35:
    mov byte [bx + party_records + pc_rec.attack], al ; 0x4fd4
    mov al, byte [bx + party_records + pc_rec.defense] ; 0x4fd8
    sub ah, ah                       ; 0x4fdc
    cmp ax, word [bp - 0x0012]       ; 0x4fde
    jge short @..api_idx_0072_IPMP.l36 ; 0x4fe1
    mov ax, word [bp - 0x0012]       ; 0x4fe3
    jmp short @..api_idx_0072_IPMP.l37 ; 0x4fe6
@..api_idx_0072_IPMP.l36:
    mov al, byte [bx + party_records + pc_rec.defense] ; 0x4fe8
    sub ah, ah                       ; 0x4fec
@..api_idx_0072_IPMP.l37:
    mov byte [bx + party_records + pc_rec.defense], al ; 0x4fee
@..api_idx_0072_IPMP.l38:
    inc word [bp - 0x0002]           ; 0x4ff2
    mov ax, word [bp - 0x0002]       ; 0x4ff5
    cmp ax, strict word 8            ; 0x4ff8
    jge short @..api_idx_0072_IPMP.l39 ; 0x4ffb
    jmp near @..api_idx_0072_IPMP.l31 ; 0x4ffd
@..api_idx_0072_IPMP.l39:
    mov al, byte [bp - 0x0028]       ; 0x5000
    sub ah, ah                       ; 0x5003
    ret                              ; 0x5005
