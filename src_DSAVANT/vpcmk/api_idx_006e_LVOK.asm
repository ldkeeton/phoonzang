; auto-generated
api_idx_006e_LVOK:
    mov ax, 0xff92                   ; 0x3d59
    call aztec_csav                  ; 0x3d5c
    mov ax, word [bp + 6]            ; 0x3d5f
    jmp short .forward1              ; 0x3d62
.back1:
    mov word [bp - 0xc], 8           ; 0x3d64
    mov word [bp - 0xe], 0x20        ; 0x3d69
    jmp short .forward2              ; 0x3d6e
.back2:
    mov word [bp - 0xc], 4           ; 0x3d70
    mov word [bp - 0xe], 0x1e        ; 0x3d75
    jmp short .forward2              ; 0x3d7a
.back3:
    mov word [bp - 0xc], 2           ; 0x3d7c
    mov word [bp - 0xe], 0x1f        ; 0x3d81
    jmp short .forward2              ; 0x3d86
.back4:
    mov word [bp - 0xc], 1           ; 0x3d88
    mov word [bp - 0xe], 0x1d        ; 0x3d8d
    jmp short .forward2              ; 0x3d92
.forward1:
    cmp ax, strict word 0            ; 0x3d94
    je short .back1                  ; 0x3d97
    cmp ax, strict word 1            ; 0x3d99
    je short .back2                  ; 0x3d9c
    cmp ax, strict word 2            ; 0x3d9e
    je short .back4                  ; 0x3da1
    cmp ax, strict word 3            ; 0x3da3
    je short .back3                  ; 0x3da6
.forward2:
    mov ax, 0x10                     ; 0x3da8
    push ax                          ; 0x3dab
    lea ax, word [bp - 0x1e]         ; 0x3dac
    push ax                          ; 0x3daf
    mov ax, 0x248                    ; 0x3db0
    imul word [bp + 4]               ; 0x3db3
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3db6
    push ax                          ; 0x3db9
    call aztec_movmem                ; 0x3dba
    add sp, byte 6                   ; 0x3dbd
    mov ax, 0                        ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0x10                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 0x248                    ; 0x3dc8
    imul word [bp + 4]               ; 0x3dcb
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3dce
    push ax                          ; 0x3dd1
    call aztec_setmem                ; 0x3dd2
    add sp, byte 6                   ; 0x3dd5
    mov word [bp - 0xa], 1           ; 0x3dd8
    mov word [bp - 4], 0             ; 0x3ddd
    mov word [bp - 2], 0             ; 0x3de2
.back5:
    mov ax, 6                        ; 0x3de7
    imul word [bp - 2]               ; 0x3dea
    mov bx, ax                       ; 0x3ded
    mov al, byte [bx + spell_table + spell_table_rec.f_0005] ; 0x3def
    sub ah, ah                       ; 0x3df3
    test word [bp - 0xc], ax         ; 0x3df5
    je short .forward3               ; 0x3df8
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x3dfa
    sub ah, ah                       ; 0x3dfe
    cmp ax, word [bp - 0xa]          ; 0x3e00
    jg short .forward3               ; 0x3e03
    push word [bp - 2]               ; 0x3e05
    lea ax, word [bp - 0x1e]         ; 0x3e08
    push ax                          ; 0x3e0b
    call test_bit                    ; 0x3e0c
    add sp, byte 4                   ; 0x3e0f
    test ax, ax                      ; 0x3e12
    jne short .forward3              ; 0x3e14
    mov ax, 1                        ; 0x3e16
    push ax                          ; 0x3e19
    push word [bp - 2]               ; 0x3e1a
    mov ax, 0x248                    ; 0x3e1d
    imul word [bp + 4]               ; 0x3e20
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3e23
    push ax                          ; 0x3e26
    call set_bitmap_bit              ; 0x3e27
    add sp, byte 6                   ; 0x3e2a
    inc word [bp - 4]                ; 0x3e2d
.forward3:
    inc word [bp - 2]                ; 0x3e30
    mov ax, word [bp - 2]            ; 0x3e33
    cmp ax, strict word 0x66         ; 0x3e36
    jl short .back5                  ; 0x3e39
    cmp word [bp - 4], byte 0        ; 0x3e3b
    jne short .forward4              ; 0x3e3f
    mov ax, 0x10                     ; 0x3e41
    push ax                          ; 0x3e44
    mov ax, 0x248                    ; 0x3e45
    imul word [bp + 4]               ; 0x3e48
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3e4b
    push ax                          ; 0x3e4e
    lea ax, word [bp - 0x1e]         ; 0x3e4f
    push ax                          ; 0x3e52
    call aztec_movmem                ; 0x3e53
    add sp, byte 6                   ; 0x3e56
    ret                              ; 0x3e59
.forward4:
    lea ax, word [bp - 0x6e]         ; 0x3e5a
    push ax                          ; 0x3e5d
    mov ax, MSG_SELECT_A_NEW_SPELL_FOR_703 ; 0x3e5e
    push ax                          ; 0x3e61
    call load_message_string         ; 0x3e62
    add sp, byte 4                   ; 0x3e65
    mov ax, 1                        ; 0x3e68
    push ax                          ; 0x3e6b
    lea ax, word [bp - 0x6e]         ; 0x3e6c
    push ax                          ; 0x3e6f
    call api_idx_0004_PMIU           ; 0x3e70
    add sp, byte 4                   ; 0x3e73
    mov ax, 0                        ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, 1                        ; 0x3e7a
    push ax                          ; 0x3e7d
    mov ax, MSG_LEARN                ; 0x3e7e
    push ax                          ; 0x3e81
    push word [bp + 4]               ; 0x3e82
    call api_idx_0050_NHHL           ; 0x3e85
    add sp, byte 8                   ; 0x3e88
    mov word [bp - 4], ax            ; 0x3e8b
    mov ax, 0x10                     ; 0x3e8e
    push ax                          ; 0x3e91
    mov ax, 0x248                    ; 0x3e92
    imul word [bp + 4]               ; 0x3e95
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3e98
    push ax                          ; 0x3e9b
    lea ax, word [bp - 0x1e]         ; 0x3e9c
    push ax                          ; 0x3e9f
    call aztec_movmem                ; 0x3ea0
    add sp, byte 6                   ; 0x3ea3
    cmp word [bp - 4], byte 0        ; 0x3ea6
    je short .forward5               ; 0x3eaa
    jmp near .return1                ; 0x3eac
.forward5:
    mov ax, word [spell_dialog_result] ; 0x3eaf
    mov cx, 0x100                    ; 0x3eb2
    cwd                              ; 0x3eb5
    idiv cx                          ; 0x3eb6
    mov word [bp - 8], ax            ; 0x3eb8
    mov word [bp - 6], dx            ; 0x3ebb
    mov ax, 1                        ; 0x3ebe
    push ax                          ; 0x3ec1
    push dx                          ; 0x3ec2
    mov ax, 0x248                    ; 0x3ec3
    imul word [bp + 4]               ; 0x3ec6
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x3ec9
    push ax                          ; 0x3ecc
    call set_bitmap_bit              ; 0x3ecd
    add sp, byte 6                   ; 0x3ed0
    mov ax, 6                        ; 0x3ed3
    imul word [bp - 6]               ; 0x3ed6
    mov bx, ax                       ; 0x3ed9
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x3edb
    sub ah, ah                       ; 0x3edf
    push ax                          ; 0x3ee1
    mov ax, 0x248                    ; 0x3ee2
    imul word [bp + 4]               ; 0x3ee5
    mov bx, ax                       ; 0x3ee8
    mov al, byte [bx + party_records + pc_rec.stat + 0x2] ; 0x3eea
    sub ah, ah                       ; 0x3eee
    mov cx, 6                        ; 0x3ef0
    cwd                              ; 0x3ef3
    idiv cx                          ; 0x3ef4
    mov cx, ax                       ; 0x3ef6
    pop ax                           ; 0x3ef8
    imul cx                          ; 0x3ef9
    inc ax                           ; 0x3efb
    mov word [bp - 2], ax            ; 0x3efc
    mov ax, 6                        ; 0x3eff
    imul word [bp - 6]               ; 0x3f02
    mov bx, ax                       ; 0x3f05
    mov al, byte [bx + spell_table]  ; 0x3f07
    sub ah, ah                       ; 0x3f0b
    mov word [bp - 4], ax            ; 0x3f0d
    mov ax, 0x248                    ; 0x3f10
    imul word [bp + 4]               ; 0x3f13
    mov cx, word [bp - 4]            ; 0x3f16
    shl cx, 1                        ; 0x3f19
    shl cx, 1                        ; 0x3f1b
    add ax, cx                       ; 0x3f1d
    mov bx, ax                       ; 0x3f1f
    mov ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x3f21
    add ax, word [bp - 2]            ; 0x3f25
    push ax                          ; 0x3f28
    mov ax, 6                        ; 0x3f29
    imul word [bp - 6]               ; 0x3f2c
    mov bx, ax                       ; 0x3f2f
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x3f31
    sub ah, ah                       ; 0x3f35
    mov cx, ax                       ; 0x3f37
    pop ax                           ; 0x3f39
    cmp ax, cx                       ; 0x3f3a
    jge short .forward6              ; 0x3f3c
    mov ax, 0x248                    ; 0x3f3e
    imul word [bp + 4]               ; 0x3f41
    mov dx, word [bp - 4]            ; 0x3f44
    shl dx, 1                        ; 0x3f47
    shl dx, 1                        ; 0x3f49
    add ax, dx                       ; 0x3f4b
    mov bx, ax                       ; 0x3f4d
    sub cx, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x3f4f
    mov word [bp - 2], cx            ; 0x3f53
.forward6:
    mov ax, word [bp - 2]            ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x248                    ; 0x3f5a
    imul word [bp + 4]               ; 0x3f5d
    mov cx, ax                       ; 0x3f60
    mov dx, word [bp - 4]            ; 0x3f62
    shl dx, 1                        ; 0x3f65
    shl dx, 1                        ; 0x3f67
    add ax, dx                       ; 0x3f69
    mov bx, ax                       ; 0x3f6b
    pop ax                           ; 0x3f6d
    add word [bx + party_records + pc_rec.realm_points + 0x2], ax ; 0x3f6e
    add word [bx + party_records + pc_rec.realm_points], ax ; 0x3f72
    add cx, word [bp + 6]            ; 0x3f76
    mov bx, cx                       ; 0x3f79
    dec byte [bx + party_records + pc_rec.f_015c] ; 0x3f7b
    push word [bp + 4]               ; 0x3f7f
    call api_idx_0004_RMVO           ; 0x3f82
    pop cx                           ; 0x3f85
.return1:
    ret                              ; 0x3f86
