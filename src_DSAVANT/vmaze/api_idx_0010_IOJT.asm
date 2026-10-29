; auto-generated
api_idx_0010_IOJT:
    mov ax, 0xfff0                   ; 0x9a80
    call aztec_csav                  ; 0x9a83
    mov word [bp - 0xa], 0xffff      ; 0x9a86
    mov word [bp - 0xc], 0xffff      ; 0x9a8b
    mov word [bp - 2], 0xa           ; 0x9a90
.back1:
    push word [bp - 2]               ; 0x9a95
    mov ax, 0x26                     ; 0x9a98
    imul word [bp + 4]               ; 0x9a9b
    add ax, slot_records + slot_record.assigned_bits ; 0x9a9e
    push ax                          ; 0x9aa1
    call test_bit                    ; 0x9aa2
    add sp, byte 4                   ; 0x9aa5
    test ax, ax                      ; 0x9aa8
    je short .forward1               ; 0x9aaa
    push word [bp - 2]               ; 0x9aac
    mov ax, 0x26                     ; 0x9aaf
    imul word [bp + 6]               ; 0x9ab2
    add ax, slot_records + slot_record.marked_bits ; 0x9ab5
    push ax                          ; 0x9ab8
    call test_bit                    ; 0x9ab9
    add sp, byte 4                   ; 0x9abc
    test ax, ax                      ; 0x9abf
    jne short .forward1              ; 0x9ac1
    mov ax, 6                        ; 0x9ac3
    imul word [bp - 2]               ; 0x9ac6
    mov bx, ax                       ; 0x9ac9
    mov al, byte [bx + slot_bit_states + slot_bit_state.location] ; 0x9acb
    sub ah, ah                       ; 0x9acf
    mov word [bp - 6], ax            ; 0x9ad1
    push ax                          ; 0x9ad4
    push word [bp + 4]               ; 0x9ad5
    call slot_is_at_location         ; 0x9ad8
    add sp, byte 4                   ; 0x9adb
    test ax, ax                      ; 0x9ade
    jne short .forward1              ; 0x9ae0
    mov ax, word [bp - 2]            ; 0x9ae2
    mov word [bp - 0xa], ax          ; 0x9ae5
.forward1:
    push word [bp - 2]               ; 0x9ae8
    mov ax, 0x26                     ; 0x9aeb
    imul word [bp + 6]               ; 0x9aee
    add ax, slot_records + slot_record.assigned_bits ; 0x9af1
    push ax                          ; 0x9af4
    call test_bit                    ; 0x9af5
    add sp, byte 4                   ; 0x9af8
    test ax, ax                      ; 0x9afb
    je short .forward2               ; 0x9afd
    push word [bp - 2]               ; 0x9aff
    mov ax, 0x26                     ; 0x9b02
    imul word [bp + 4]               ; 0x9b05
    add ax, slot_records + slot_record.marked_bits ; 0x9b08
    push ax                          ; 0x9b0b
    call test_bit                    ; 0x9b0c
    add sp, byte 4                   ; 0x9b0f
    test ax, ax                      ; 0x9b12
    jne short .forward2              ; 0x9b14
    mov ax, word [bp - 2]            ; 0x9b16
    mov word [bp - 0xc], ax          ; 0x9b19
.forward2:
    push word [bp - 2]               ; 0x9b1c
    mov ax, 0x26                     ; 0x9b1f
    imul word [bp + 4]               ; 0x9b22
    add ax, slot_records + slot_record.selected_bits ; 0x9b25
    push ax                          ; 0x9b28
    call test_bit                    ; 0x9b29
    add sp, byte 4                   ; 0x9b2c
    test ax, ax                      ; 0x9b2f
    je short .forward3               ; 0x9b31
    mov ax, 1                        ; 0x9b33
    push ax                          ; 0x9b36
    push word [bp - 2]               ; 0x9b37
    mov ax, 0x26                     ; 0x9b3a
    imul word [bp + 6]               ; 0x9b3d
    add ax, slot_records + slot_record.selected_bits ; 0x9b40
    push ax                          ; 0x9b43
    call set_bitmap_bit              ; 0x9b44
    add sp, byte 6                   ; 0x9b47
.forward3:
    push word [bp - 2]               ; 0x9b4a
    mov ax, 0x26                     ; 0x9b4d
    imul word [bp + 6]               ; 0x9b50
    add ax, slot_records + slot_record.selected_bits ; 0x9b53
    push ax                          ; 0x9b56
    call test_bit                    ; 0x9b57
    add sp, byte 4                   ; 0x9b5a
    test ax, ax                      ; 0x9b5d
    je short .forward4               ; 0x9b5f
    mov ax, 1                        ; 0x9b61
    push ax                          ; 0x9b64
    push word [bp - 2]               ; 0x9b65
    mov ax, 0x26                     ; 0x9b68
    imul word [bp + 4]               ; 0x9b6b
    add ax, slot_records + slot_record.selected_bits ; 0x9b6e
    push ax                          ; 0x9b71
    call set_bitmap_bit              ; 0x9b72
    add sp, byte 6                   ; 0x9b75
.forward4:
    mov ax, 0x26                     ; 0x9b78
    imul word [bp + 4]               ; 0x9b7b
    mov bx, ax                       ; 0x9b7e
    mov al, byte [bx + slot_records] ; 0x9b80
    push ax                          ; 0x9b84
    mov ax, 0x26                     ; 0x9b85
    imul word [bp + 6]               ; 0x9b88
    mov bx, ax                       ; 0x9b8b
    mov cl, byte [bx + slot_records] ; 0x9b8d
    pop ax                           ; 0x9b91
    cmp al, cl                       ; 0x9b92
    je short .forward5               ; 0x9b94
    jmp near .forward9               ; 0x9b96
.forward5:
    push word [bp - 2]               ; 0x9b99
    mov ax, 0x26                     ; 0x9b9c
    imul word [bp + 4]               ; 0x9b9f
    add ax, slot_records + slot_record.marked_bits ; 0x9ba2
    push ax                          ; 0x9ba5
    call test_bit                    ; 0x9ba6
    add sp, byte 4                   ; 0x9ba9
    test ax, ax                      ; 0x9bac
    je short .forward6               ; 0x9bae
    mov ax, 1                        ; 0x9bb0
    push ax                          ; 0x9bb3
    push word [bp - 2]               ; 0x9bb4
    mov ax, 0x26                     ; 0x9bb7
    imul word [bp + 6]               ; 0x9bba
    add ax, slot_records + slot_record.marked_bits ; 0x9bbd
    push ax                          ; 0x9bc0
    call set_bitmap_bit              ; 0x9bc1
    add sp, byte 6                   ; 0x9bc4
.forward6:
    push word [bp - 2]               ; 0x9bc7
    mov ax, 0x26                     ; 0x9bca
    imul word [bp + 6]               ; 0x9bcd
    add ax, slot_records + slot_record.marked_bits ; 0x9bd0
    push ax                          ; 0x9bd3
    call test_bit                    ; 0x9bd4
    add sp, byte 4                   ; 0x9bd7
    test ax, ax                      ; 0x9bda
    je short .forward7               ; 0x9bdc
    mov ax, 1                        ; 0x9bde
    push ax                          ; 0x9be1
    push word [bp - 2]               ; 0x9be2
    mov ax, 0x26                     ; 0x9be5
    imul word [bp + 4]               ; 0x9be8
    add ax, slot_records + slot_record.marked_bits ; 0x9beb
    push ax                          ; 0x9bee
    call set_bitmap_bit              ; 0x9bef
    add sp, byte 6                   ; 0x9bf2
.forward7:
    mov ax, word [bp - 2]            ; 0x9bf5
    add ax, strict word 0xc          ; 0x9bf8
    push ax                          ; 0x9bfb
    mov ax, 0x26                     ; 0x9bfc
    imul word [bp + 4]               ; 0x9bff
    add ax, slot_records + slot_record.marked_bits ; 0x9c02
    push ax                          ; 0x9c05
    call test_bit                    ; 0x9c06
    add sp, byte 4                   ; 0x9c09
    test ax, ax                      ; 0x9c0c
    je short .forward8               ; 0x9c0e
    mov ax, 1                        ; 0x9c10
    push ax                          ; 0x9c13
    mov ax, word [bp - 2]            ; 0x9c14
    add ax, strict word 0xc          ; 0x9c17
    push ax                          ; 0x9c1a
    mov ax, 0x26                     ; 0x9c1b
    imul word [bp + 6]               ; 0x9c1e
    add ax, slot_records + slot_record.marked_bits ; 0x9c21
    push ax                          ; 0x9c24
    call set_bitmap_bit              ; 0x9c25
    add sp, byte 6                   ; 0x9c28
.forward8:
    mov ax, word [bp - 2]            ; 0x9c2b
    add ax, strict word 0xc          ; 0x9c2e
    push ax                          ; 0x9c31
    mov ax, 0x26                     ; 0x9c32
    imul word [bp + 6]               ; 0x9c35
    add ax, slot_records + slot_record.marked_bits ; 0x9c38
    push ax                          ; 0x9c3b
    call test_bit                    ; 0x9c3c
    add sp, byte 4                   ; 0x9c3f
    test ax, ax                      ; 0x9c42
    je short .forward9               ; 0x9c44
    mov ax, 1                        ; 0x9c46
    push ax                          ; 0x9c49
    mov ax, word [bp - 2]            ; 0x9c4a
    add ax, strict word 0xc          ; 0x9c4d
    push ax                          ; 0x9c50
    mov ax, 0x26                     ; 0x9c51
    imul word [bp + 4]               ; 0x9c54
    add ax, slot_records + slot_record.marked_bits ; 0x9c57
    push ax                          ; 0x9c5a
    call set_bitmap_bit              ; 0x9c5b
    add sp, byte 6                   ; 0x9c5e
.forward9:
    dec word [bp - 2]                ; 0x9c61
    jl short .forward10              ; 0x9c64
    jmp near .back1                  ; 0x9c66
.forward10:
    cmp word [bp + 8], byte 0        ; 0x9c69
    jle short .forward11             ; 0x9c6d
    mov ax, 5                        ; 0x9c6f
    push ax                          ; 0x9c72
    call random_below                ; 0x9c73
    pop cx                           ; 0x9c76
    push ax                          ; 0x9c77
    push word [bp + 6]               ; 0x9c78
    push word [bp + 4]               ; 0x9c7b
    call adjust_target_weight        ; 0x9c7e
    add sp, byte 6                   ; 0x9c81
    mov ax, 5                        ; 0x9c84
    push ax                          ; 0x9c87
    call random_below                ; 0x9c88
    pop cx                           ; 0x9c8b
    push ax                          ; 0x9c8c
    push word [bp + 4]               ; 0x9c8d
    push word [bp + 6]               ; 0x9c90
    call adjust_target_weight        ; 0x9c93
    add sp, byte 6                   ; 0x9c96
.forward11:
    mov ax, 0x16                     ; 0x9c99
    imul word [bp + 4]               ; 0x9c9c
    add ax, word [bp + 6]            ; 0x9c9f
    mov bx, ax                       ; 0x9ca2
    mov byte [bx + slot_pair_processed], 1 ; 0x9ca4
    mov ax, 0x16                     ; 0x9ca9
    imul word [bp + 6]               ; 0x9cac
    add ax, word [bp + 4]            ; 0x9caf
    mov bx, ax                       ; 0x9cb2
    mov byte [bx + slot_pair_processed], 1 ; 0x9cb4
    mov ax, 0x26                     ; 0x9cb9
    imul word [bp + 4]               ; 0x9cbc
    mov bx, ax                       ; 0x9cbf
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9cc1
    cbw                              ; 0x9cc5
    mov cx, 0xa                      ; 0x9cc6
    cwd                              ; 0x9cc9
    idiv cx                          ; 0x9cca
    inc ax                           ; 0x9ccc
    mov word [bp - 0xe], ax          ; 0x9ccd
    mov ax, 0x26                     ; 0x9cd0
    imul word [bp + 6]               ; 0x9cd3
    mov bx, ax                       ; 0x9cd6
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9cd8
    cbw                              ; 0x9cdc
    cwd                              ; 0x9cdd
    idiv cx                          ; 0x9cde
    inc ax                           ; 0x9ce0
    mov word [bp - 0x10], ax         ; 0x9ce1
    mov ax, 0x26                     ; 0x9ce4
    imul word [bp + 4]               ; 0x9ce7
    mov bx, ax                       ; 0x9cea
    mov al, byte [bx + slot_records] ; 0x9cec
    push ax                          ; 0x9cf0
    mov ax, 0x26                     ; 0x9cf1
    imul word [bp + 6]               ; 0x9cf4
    mov bx, ax                       ; 0x9cf7
    pop ax                           ; 0x9cf9
    cmp al, byte [bx + slot_records] ; 0x9cfa
    jne short .forward12             ; 0x9cfe
    cmp byte [bx + slot_records + slot_record.activity], 1 ; 0x9d00
    jne short .forward12             ; 0x9d05
    mov ax, 0x26                     ; 0x9d07
    imul word [bp + 4]               ; 0x9d0a
    mov bx, ax                       ; 0x9d0d
    cmp byte [bx + slot_records + slot_record.max_health], 0x41 ; 0x9d0f
    jge short .forward12             ; 0x9d14
    mov ax, 3                        ; 0x9d16
    push ax                          ; 0x9d19
    call random_below                ; 0x9d1a
    pop cx                           ; 0x9d1d
    test ax, ax                      ; 0x9d1e
    jne short .forward12             ; 0x9d20
    mov ax, 0x26                     ; 0x9d22
    imul word [bp + 4]               ; 0x9d25
    mov bx, ax                       ; 0x9d28
    inc byte [bx + slot_records + slot_record.max_health] ; 0x9d2a
.forward12:
    cmp word [bp - 0xc], byte -1     ; 0x9d2e
    jne short .forward13             ; 0x9d32
    jmp near .forward16              ; 0x9d34
.forward13:
    cmp word [bp - 0xa], byte -1     ; 0x9d37
    jne short .forward15             ; 0x9d3b
    mov ax, 0x32                     ; 0x9d3d
    sub ax, word [bp - 0xe]          ; 0x9d40
    cmp ax, word [bp + 8]            ; 0x9d43
    jg short .return1                ; 0x9d46
    mov ax, 0xa                      ; 0x9d48
    push ax                          ; 0x9d4b
    call random_below                ; 0x9d4c
    pop cx                           ; 0x9d4f
    inc ax                           ; 0x9d50
    cmp ax, word [bp - 0xe]          ; 0x9d51
    jle short .forward14             ; 0x9d54
.return1:
    ret                              ; 0x9d56
.forward14:
    mov ax, 0x64                     ; 0x9d57
    push ax                          ; 0x9d5a
    mov ax, 1                        ; 0x9d5b
    push ax                          ; 0x9d5e
    mov ax, 0x26                     ; 0x9d5f
    imul word [bp + 6]               ; 0x9d62
    mov bx, ax                       ; 0x9d65
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9d67
    cbw                              ; 0x9d6b
    add ax, word [bp - 0xe]          ; 0x9d6c
    push ax                          ; 0x9d6f
    call clamp_between               ; 0x9d70
    add sp, byte 6                   ; 0x9d73
    push ax                          ; 0x9d76
    mov ax, 0x26                     ; 0x9d77
    imul word [bp + 6]               ; 0x9d7a
    mov bx, ax                       ; 0x9d7d
    pop ax                           ; 0x9d7f
    mov byte [bx + slot_records + slot_record.max_health], al ; 0x9d80
    mov ax, 0x64                     ; 0x9d84
    push ax                          ; 0x9d87
    mov ax, 1                        ; 0x9d88
    push ax                          ; 0x9d8b
    mov ax, 0x26                     ; 0x9d8c
    imul word [bp + 4]               ; 0x9d8f
    mov bx, ax                       ; 0x9d92
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9d94
    cbw                              ; 0x9d98
    sub ax, word [bp - 0xe]          ; 0x9d99
    push ax                          ; 0x9d9c
    call clamp_between               ; 0x9d9d
    add sp, byte 6                   ; 0x9da0
    push ax                          ; 0x9da3
    mov ax, 0x26                     ; 0x9da4
    imul word [bp + 4]               ; 0x9da7
    mov bx, ax                       ; 0x9daa
    pop ax                           ; 0x9dac
    mov byte [bx + slot_records + slot_record.max_health], al ; 0x9dad
.forward15:
    push word [bp + 6]               ; 0x9db1
    mov ax, 3                        ; 0x9db4
    push ax                          ; 0x9db7
    push word [bp - 0xc]             ; 0x9db8
    push word [bp + 4]               ; 0x9dbb
    call find_or_add_loaded_record   ; 0x9dbe
    add sp, byte 8                   ; 0x9dc1
    push word [bp - 0xc]             ; 0x9dc4
    push word [bp + 6]               ; 0x9dc7
    push word [bp + 4]               ; 0x9dca
    call assign_slot_bit             ; 0x9dcd
    add sp, byte 6                   ; 0x9dd0
.forward16:
    cmp word [bp - 0xa], byte -1     ; 0x9dd3
    jne short .forward17             ; 0x9dd7
    jmp near .return3                ; 0x9dd9
.forward17:
    cmp word [bp - 0xc], byte -1     ; 0x9ddc
    jne short .forward19             ; 0x9de0
    mov ax, 0x32                     ; 0x9de2
    sub ax, word [bp - 0x10]         ; 0x9de5
    cmp ax, word [bp + 8]            ; 0x9de8
    jg short .return2                ; 0x9deb
    mov ax, 0xa                      ; 0x9ded
    push ax                          ; 0x9df0
    call random_below                ; 0x9df1
    pop cx                           ; 0x9df4
    inc ax                           ; 0x9df5
    cmp ax, word [bp - 0x10]         ; 0x9df6
    jle short .forward18             ; 0x9df9
.return2:
    ret                              ; 0x9dfb
.forward18:
    mov ax, 0x64                     ; 0x9dfc
    push ax                          ; 0x9dff
    mov ax, 1                        ; 0x9e00
    push ax                          ; 0x9e03
    mov ax, 0x26                     ; 0x9e04
    imul word [bp + 4]               ; 0x9e07
    mov bx, ax                       ; 0x9e0a
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9e0c
    cbw                              ; 0x9e10
    add ax, word [bp - 0x10]         ; 0x9e11
    push ax                          ; 0x9e14
    call clamp_between               ; 0x9e15
    add sp, byte 6                   ; 0x9e18
    push ax                          ; 0x9e1b
    mov ax, 0x26                     ; 0x9e1c
    imul word [bp + 4]               ; 0x9e1f
    mov bx, ax                       ; 0x9e22
    pop ax                           ; 0x9e24
    mov byte [bx + slot_records + slot_record.max_health], al ; 0x9e25
    mov ax, 0x64                     ; 0x9e29
    push ax                          ; 0x9e2c
    mov ax, 1                        ; 0x9e2d
    push ax                          ; 0x9e30
    mov ax, 0x26                     ; 0x9e31
    imul word [bp + 6]               ; 0x9e34
    mov bx, ax                       ; 0x9e37
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x9e39
    cbw                              ; 0x9e3d
    sub ax, word [bp - 0x10]         ; 0x9e3e
    push ax                          ; 0x9e41
    call clamp_between               ; 0x9e42
    add sp, byte 6                   ; 0x9e45
    push ax                          ; 0x9e48
    mov ax, 0x26                     ; 0x9e49
    imul word [bp + 6]               ; 0x9e4c
    mov bx, ax                       ; 0x9e4f
    pop ax                           ; 0x9e51
    mov byte [bx + slot_records + slot_record.max_health], al ; 0x9e52
.forward19:
    push word [bp + 4]               ; 0x9e56
    mov ax, 3                        ; 0x9e59
    push ax                          ; 0x9e5c
    push word [bp - 0xa]             ; 0x9e5d
    push word [bp + 6]               ; 0x9e60
    call find_or_add_loaded_record   ; 0x9e63
    add sp, byte 8                   ; 0x9e66
    push word [bp - 0xa]             ; 0x9e69
    push word [bp + 4]               ; 0x9e6c
    push word [bp + 6]               ; 0x9e6f
    call assign_slot_bit             ; 0x9e72
    add sp, byte 6                   ; 0x9e75
.return3:
    ret                              ; 0x9e78
