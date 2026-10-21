; auto-generated
api_idx_0002_RJQH:
    mov ax, 0xfffe                   ; 0x0f96
    call aztec_csav                  ; 0x0f99
    mov ax, 1                        ; 0x0f9c
    push ax                          ; 0x0f9f
    push ax                          ; 0x0fa0
    call api_idx_0004_IMVS           ; 0x0fa1
    add sp, byte 4                   ; 0x0fa4
    mov bx, word [bp + 0x6]          ; 0x0fa7
    cmp byte [bx], 0                 ; 0x0faa
    je short @..api_idx_0002_RJQH.l1 ; 0x0fad
    mov ax, 1                        ; 0x0faf
    jmp short @..api_idx_0002_RJQH.l2 ; 0x0fb2
@..api_idx_0002_RJQH.l1:
    mov ax, 0                        ; 0x0fb4
@..api_idx_0002_RJQH.l2:
    mov bx, word [bp + 0x8]          ; 0x0fb7
    cmp byte [bx], 0                 ; 0x0fba
    je short @..api_idx_0002_RJQH.l3 ; 0x0fbd
    mov cx, 1                        ; 0x0fbf
    jmp short @..api_idx_0002_RJQH.l4 ; 0x0fc2
@..api_idx_0002_RJQH.l3:
    mov cx, 0                        ; 0x0fc4
@..api_idx_0002_RJQH.l4:
    add ax, cx                       ; 0x0fc7
    mov bx, word [bp + 0xa]          ; 0x0fc9
    cmp byte [bx], 0                 ; 0x0fcc
    je short @..api_idx_0002_RJQH.l5 ; 0x0fcf
    mov cx, 1                        ; 0x0fd1
    jmp short @..api_idx_0002_RJQH.l6 ; 0x0fd4
@..api_idx_0002_RJQH.l5:
    mov cx, 0                        ; 0x0fd6
@..api_idx_0002_RJQH.l6:
    add ax, cx                       ; 0x0fd9
    mov word [bp - 0x0002], ax       ; 0x0fdb
    mov ax, 0xa3                     ; 0x0fde
    push ax                          ; 0x0fe1
    mov ax, 0x248                    ; 0x0fe2
    imul word [bp + 0x4]             ; 0x0fe5
    add ax, bss_5bf4                 ; 0x0fe8
    push ax                          ; 0x0feb
    call aztec_strlen                ; 0x0fec
    pop cx                           ; 0x0fef
    push ax                          ; 0x0ff0
    push word [bp + 0x6]             ; 0x0ff1
    call aztec_strlen                ; 0x0ff4
    pop cx                           ; 0x0ff7
    mov cx, ax                       ; 0x0ff8
    pop ax                           ; 0x0ffa
    add ax, cx                       ; 0x0ffb
    push ax                          ; 0x0ffd
    push word [bp + 0x8]             ; 0x0ffe
    call aztec_strlen                ; 0x1001
    pop cx                           ; 0x1004
    mov cx, ax                       ; 0x1005
    pop ax                           ; 0x1007
    add ax, cx                       ; 0x1008
    push ax                          ; 0x100a
    push word [bp + 0xa]             ; 0x100b
    call aztec_strlen                ; 0x100e
    pop cx                           ; 0x1011
    mov cx, ax                       ; 0x1012
    pop ax                           ; 0x1014
    add ax, cx                       ; 0x1015
    add ax, word [bp - 0x0002]       ; 0x1017
    mov cx, 6                        ; 0x101a
    imul cx                          ; 0x101d
    mov cx, 2                        ; 0x101f
    cwd                              ; 0x1022
    idiv cx                          ; 0x1023
    mov cx, ax                       ; 0x1025
    mov ax, 0xa0                     ; 0x1027
    sub ax, cx                       ; 0x102a
    push ax                          ; 0x102c
    call gfx_set_text_pos            ; 0x102d
    add sp, byte 4                   ; 0x1030
    mov ax, 0                        ; 0x1033
    push ax                          ; 0x1036
    push word [bp + 0xc]             ; 0x1037
    call gfx_set_text_color          ; 0x103a
    add sp, byte 4                   ; 0x103d
    mov ax, 0                        ; 0x1040
    push ax                          ; 0x1043
    mov ax, 0x248                    ; 0x1044
    imul word [bp + 0x4]             ; 0x1047
    add ax, bss_5bf4                 ; 0x104a
    push ax                          ; 0x104d
    call ds_string_loc_QRJV          ; 0x104e
    add sp, byte 4                   ; 0x1051
    mov ax, 0                        ; 0x1054
    push ax                          ; 0x1057
    mov ax, 0x20                     ; 0x1058
    push ax                          ; 0x105b
    call ds_loc_TJTV                 ; 0x105c
    add sp, byte 4                   ; 0x105f
    mov bx, word [bp + 0x6]          ; 0x1062
    cmp byte [bx], 0                 ; 0x1065
    je short @..api_idx_0002_RJQH.l7 ; 0x1068
    mov ax, 0                        ; 0x106a
    push ax                          ; 0x106d
    push word [bp + 0xe]             ; 0x106e
    call gfx_set_text_color          ; 0x1071
    add sp, byte 4                   ; 0x1074
    mov ax, 0                        ; 0x1077
    push ax                          ; 0x107a
    push word [bp + 0x6]             ; 0x107b
    call ds_string_loc_QRJV          ; 0x107e
    add sp, byte 4                   ; 0x1081
    mov ax, 0                        ; 0x1084
    push ax                          ; 0x1087
    mov ax, 0x20                     ; 0x1088
    push ax                          ; 0x108b
    call ds_loc_TJTV                 ; 0x108c
    add sp, byte 4                   ; 0x108f
@..api_idx_0002_RJQH.l7:
    mov bx, word [bp + 0x8]          ; 0x1092
    cmp byte [bx], 0                 ; 0x1095
    je short @..api_idx_0002_RJQH.l8 ; 0x1098
    mov ax, 0                        ; 0x109a
    push ax                          ; 0x109d
    push word [bp + 0x10]            ; 0x109e
    call gfx_set_text_color          ; 0x10a1
    add sp, byte 4                   ; 0x10a4
    mov ax, 0                        ; 0x10a7
    push ax                          ; 0x10aa
    push word [bp + 0x8]             ; 0x10ab
    call ds_string_loc_QRJV          ; 0x10ae
    add sp, byte 4                   ; 0x10b1
    mov ax, 0                        ; 0x10b4
    push ax                          ; 0x10b7
    mov ax, 0x20                     ; 0x10b8
    push ax                          ; 0x10bb
    call ds_loc_TJTV                 ; 0x10bc
    add sp, byte 4                   ; 0x10bf
@..api_idx_0002_RJQH.l8:
    mov bx, word [bp + 0xa]          ; 0x10c2
    cmp byte [bx], 0                 ; 0x10c5
    je short @..api_idx_0002_RJQH.l9 ; 0x10c8
    mov ax, 0                        ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x12]            ; 0x10ce
    call gfx_set_text_color          ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0                        ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0xa]             ; 0x10db
    call ds_string_loc_QRJV          ; 0x10de
    add sp, byte 4                   ; 0x10e1
@..api_idx_0002_RJQH.l9:
    mov ax, 0xa9                     ; 0x10e4
    push ax                          ; 0x10e7
    mov ax, 0x127                    ; 0x10e8
    push ax                          ; 0x10eb
    mov ax, 0xa3                     ; 0x10ec
    push ax                          ; 0x10ef
    mov ax, 0x19                     ; 0x10f0
    push ax                          ; 0x10f3
    call gfx_show_area               ; 0x10f4
    add sp, byte 8                   ; 0x10f7
    ret                              ; 0x10fa
