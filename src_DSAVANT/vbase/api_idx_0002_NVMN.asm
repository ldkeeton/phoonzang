; auto-generated
api_idx_0002_NVMN:
    mov ax, 0xfffe                   ; 0x706d
    call aztec_csav                  ; 0x7070
    mov ax, 0                        ; 0x7073
    push ax                          ; 0x7076
    push ax                          ; 0x7077
    push ax                          ; 0x7078
    push ax                          ; 0x7079
    call thunk_44                    ; 0x707a
    add sp, byte 8                   ; 0x707d
    mov ax, 0                        ; 0x7080
    push ax                          ; 0x7083
    mov ax, 0xc7                     ; 0x7084
    push ax                          ; 0x7087
    mov ax, 0x13f                    ; 0x7088
    push ax                          ; 0x708b
    mov ax, 0                        ; 0x708c
    push ax                          ; 0x708f
    push ax                          ; 0x7090
    call thunk_7                     ; 0x7091
    add sp, byte 0x0a                ; 0x7094
    mov ax, 0xc7                     ; 0x7097
    push ax                          ; 0x709a
    mov ax, 0x13f                    ; 0x709b
    push ax                          ; 0x709e
    mov ax, 0                        ; 0x709f
    push ax                          ; 0x70a2
    push ax                          ; 0x70a3
    call thunk_4                     ; 0x70a4
    add sp, byte 8                   ; 0x70a7
    cmp word [bss_0e32], byte 1      ; 0x70aa
    jne short @..api_idx_0002_NVMN.l1 ; 0x70af
    call thunk_36                    ; 0x70b1
@..api_idx_0002_NVMN.l1:
    mov word [bss_0e32], 0           ; 0x70b4
    call ds_app_NNSU                 ; 0x70ba
    mov word [bss_8450], ax          ; 0x70bd
    test ax, ax                      ; 0x70c0
    je short @..api_idx_0002_NVMN.l2 ; 0x70c2
    mov ax, 0                        ; 0x70c4
    push ax                          ; 0x70c7
    mov ax, 4                        ; 0x70c8
    push ax                          ; 0x70cb
    call ds_app_file_KRUQ            ; 0x70cc
    add sp, byte 4                   ; 0x70cf
    mov ax, word [dseg_0114]         ; 0x70d2
    mov word [bss_844e], ax          ; 0x70d5
    mov ax, 1                        ; 0x70d8
    push ax                          ; 0x70db
    push word [bss_844e]             ; 0x70dc
    mov ax, 0                        ; 0x70e0
    push ax                          ; 0x70e3
    call ds_app_UKGP                 ; 0x70e4
    add sp, byte 6                   ; 0x70e7
    mov word [bss_844c], ax          ; 0x70ea
@..api_idx_0002_NVMN.l2:
    cmp word [bp + 0x4], byte 4      ; 0x70ed
    je short @..api_idx_0002_NVMN.l3 ; 0x70f1
    mov ax, 2                        ; 0x70f3
    push ax                          ; 0x70f6
    mov ax, 0x911e                   ; 0x70f7
    push ax                          ; 0x70fa
    call api_idx_0002_LVPS           ; 0x70fb
    add sp, byte 4                   ; 0x70fe
    jmp short @..api_idx_0002_NVMN.l4 ; 0x7101
@..api_idx_0002_NVMN.l3:
    mov ax, 0                        ; 0x7103
    push ax                          ; 0x7106
    push ax                          ; 0x7107
    push ax                          ; 0x7108
    call thunk_45                    ; 0x7109
    add sp, byte 6                   ; 0x710c
    mov ax, 0xc7                     ; 0x710f
    push ax                          ; 0x7112
    mov ax, 0x13f                    ; 0x7113
    push ax                          ; 0x7116
    mov ax, 0                        ; 0x7117
    push ax                          ; 0x711a
    push ax                          ; 0x711b
    call thunk_4                     ; 0x711c
    add sp, byte 8                   ; 0x711f
    mov ax, 0                        ; 0x7122
    push ax                          ; 0x7125
    call thunk_43                    ; 0x7126
    pop cx                           ; 0x7129
@..api_idx_0002_NVMN.l4:
    mov word [bss_a4a4], 0           ; 0x712a
    mov ax, word [bp + 0x4]          ; 0x7130
    jmp short @..api_idx_0002_NVMN.l5 ; 0x7133
jumptable_7185_case_1:
    mov ax, 1                        ; 0x7135
    push ax                          ; 0x7138
    mov ax, 0x6e96                   ; 0x7139
    push ax                          ; 0x713c
    call loc_LIQV                    ; 0x713d
    add sp, byte 4                   ; 0x7140
    jmp short @..api_idx_0002_NVMN.l6 ; 0x7143
jumptable_7185_case_2:
    mov ax, 1                        ; 0x7145
    push ax                          ; 0x7148
    mov ax, 0x6fc2                   ; 0x7149
    push ax                          ; 0x714c
    call loc_LIQV                    ; 0x714d
    add sp, byte 4                   ; 0x7150
    jmp short @..api_idx_0002_NVMN.l6 ; 0x7153
jumptable_7185_case_3:
    mov ax, 1                        ; 0x7155
    push ax                          ; 0x7158
    mov ax, 0x6ffe                   ; 0x7159
    push ax                          ; 0x715c
    call loc_LIQV                    ; 0x715d
    add sp, byte 4                   ; 0x7160
    jmp short @..api_idx_0002_NVMN.l6 ; 0x7163
jumptable_7185_case_4:
    mov ax, 1                        ; 0x7165
    push ax                          ; 0x7168
    mov ax, 0x6e46                   ; 0x7169
    push ax                          ; 0x716c
    call loc_LIQV                    ; 0x716d
    add sp, byte 4                   ; 0x7170
    jmp short @..api_idx_0002_NVMN.l6 ; 0x7173
jumptable_7185_case_5:
    mov ax, 1                        ; 0x7175
    push ax                          ; 0x7178
    mov ax, 0x6f54                   ; 0x7179
    push ax                          ; 0x717c
    call loc_LIQV                    ; 0x717d
    add sp, byte 4                   ; 0x7180
    jmp short @..api_idx_0002_NVMN.l6 ; 0x7183
io_loc_7185:
jumptable_7185:
    dw jumptable_7185_case_0 - IMAGE_BASE + 0x5055 ; 0x7185
    dw jumptable_7185_case_1 - IMAGE_BASE + 0x5055 ; 0x7187
    dw jumptable_7185_case_2 - IMAGE_BASE + 0x5055 ; 0x7189
    dw jumptable_7185_case_3 - IMAGE_BASE + 0x5055 ; 0x718b
    dw jumptable_7185_case_4 - IMAGE_BASE + 0x5055 ; 0x718d
    dw jumptable_7185_case_5 - IMAGE_BASE + 0x5055 ; 0x718f
@..api_idx_0002_NVMN.l5:
    cmp ax, strict word 6            ; 0x7191
    jae short @..api_idx_0002_NVMN.l6 ; 0x7194
    xchg bx, ax                      ; 0x7196
    shl bx, 1                        ; 0x7197
    jmp [cs:bx - 0x3e34]             ; 0x7199
jumptable_7185_case_0:
@..api_idx_0002_NVMN.l6:
    mov ax, 0                        ; 0x719e
    push ax                          ; 0x71a1
    push ax                          ; 0x71a2
    push ax                          ; 0x71a3
    push ax                          ; 0x71a4
    call thunk_44                    ; 0x71a5
    add sp, byte 8                   ; 0x71a8
    mov ax, 0                        ; 0x71ab
    push ax                          ; 0x71ae
    mov ax, 0xc7                     ; 0x71af
    push ax                          ; 0x71b2
    mov ax, 0x13f                    ; 0x71b3
    push ax                          ; 0x71b6
    mov ax, 0                        ; 0x71b7
    push ax                          ; 0x71ba
    push ax                          ; 0x71bb
    call thunk_7                     ; 0x71bc
    add sp, byte 0x0a                ; 0x71bf
    mov ax, 0xc7                     ; 0x71c2
    push ax                          ; 0x71c5
    mov ax, 0x13f                    ; 0x71c6
    push ax                          ; 0x71c9
    mov ax, 0                        ; 0x71ca
    push ax                          ; 0x71cd
    push ax                          ; 0x71ce
    call thunk_4                     ; 0x71cf
    add sp, byte 8                   ; 0x71d2
    cmp word [bss_8450], byte 0      ; 0x71d5
    je short @..api_idx_0002_NVMN.l7 ; 0x71da
    push word [bss_844c]             ; 0x71dc
    push word [bss_844e]             ; 0x71e0
    call animate_sprite_up           ; 0x71e4
    add sp, byte 4                   ; 0x71e7
    mov ax, 0                        ; 0x71ea
    push ax                          ; 0x71ed
    call ds_app_thunk_21_VGJR        ; 0x71ee
    pop cx                           ; 0x71f1
@..api_idx_0002_NVMN.l7:
    test word [bss_9056], 0x1000     ; 0x71f2
    je short @..api_idx_0002_NVMN.l9 ; 0x71f8
    cmp byte [bss_5989], 1           ; 0x71fa
    jne short @..api_idx_0002_NVMN.l9 ; 0x71ff
    cmp word [bss_0e32], byte 0      ; 0x7201
    jne short @..api_idx_0002_NVMN.l8 ; 0x7206
    call thunk_35                    ; 0x7208
@..api_idx_0002_NVMN.l8:
    mov word [bss_0e32], 1           ; 0x720b
@..api_idx_0002_NVMN.l9:
    mov ax, 0                        ; 0x7211
    push ax                          ; 0x7214
    push ax                          ; 0x7215
    push ax                          ; 0x7216
    call thunk_45                    ; 0x7217
    add sp, byte 6                   ; 0x721a
    mov ax, 0xc7                     ; 0x721d
    push ax                          ; 0x7220
    mov ax, 0x13f                    ; 0x7221
    push ax                          ; 0x7224
    mov ax, 0                        ; 0x7225
    push ax                          ; 0x7228
    push ax                          ; 0x7229
    call thunk_4                     ; 0x722a
    add sp, byte 8                   ; 0x722d
    mov ax, 0                        ; 0x7230
    push ax                          ; 0x7233
    call thunk_43                    ; 0x7234
    pop cx                           ; 0x7237
    mov word [bp - 0x0002], 0        ; 0x7238
    jmp short @..api_idx_0002_NVMN.l11 ; 0x723d
@..api_idx_0002_NVMN.l10:
    mov ax, 1                        ; 0x723f
    push ax                          ; 0x7242
    mov ax, word [bp + 0x4]          ; 0x7243
    inc ax                           ; 0x7246
    inc ax                           ; 0x7247
    inc ax                           ; 0x7248
    push ax                          ; 0x7249
    mov ax, 0x248                    ; 0x724a
    imul word [bp - 0x0002]          ; 0x724d
    add ax, 0x5e26                   ; 0x7250
    push ax                          ; 0x7253
    call set_bitmap_bit              ; 0x7254
    add sp, byte 6                   ; 0x7257
    inc word [bp - 0x0002]           ; 0x725a
@..api_idx_0002_NVMN.l11:
    mov ax, word [bp - 0x0002]       ; 0x725d
    cmp ax, word [bss_69c8]          ; 0x7260
    jl short @..api_idx_0002_NVMN.l10 ; 0x7264
    mov ax, 1                        ; 0x7266
    push ax                          ; 0x7269
    call api_idx_004e_HUKL           ; 0x726a
    pop cx                           ; 0x726d
    cmp ax, strict word 0xffff       ; 0x726e
    jne short @..api_idx_0002_NVMN.l12 ; 0x7271
    mov ax, 0xc6                     ; 0x7273
    push ax                          ; 0x7276
    mov ax, 0x109                    ; 0x7277
    push ax                          ; 0x727a
    mov ax, 0x8e                     ; 0x727b
    push ax                          ; 0x727e
    mov ax, 0x36                     ; 0x727f
    push ax                          ; 0x7282
    call thunk_4                     ; 0x7283
    add sp, byte 8                   ; 0x7286
@..api_idx_0002_NVMN.l12:
    mov ax, 0                        ; 0x7289
    push ax                          ; 0x728c
    mov ax, 0xc7                     ; 0x728d
    push ax                          ; 0x7290
    mov ax, 0x13f                    ; 0x7291
    push ax                          ; 0x7294
    mov ax, 0                        ; 0x7295
    push ax                          ; 0x7298
    push ax                          ; 0x7299
    call thunk_7                     ; 0x729a
    add sp, byte 0x0a                ; 0x729d
    mov ax, 0xc7                     ; 0x72a0
    push ax                          ; 0x72a3
    mov ax, 0x13f                    ; 0x72a4
    push ax                          ; 0x72a7
    mov ax, 0                        ; 0x72a8
    push ax                          ; 0x72ab
    push ax                          ; 0x72ac
    call thunk_4                     ; 0x72ad
    add sp, byte 8                   ; 0x72b0
    mov ax, 2                        ; 0x72b3
    push ax                          ; 0x72b6
    mov ax, 0x912b                   ; 0x72b7
    push ax                          ; 0x72ba
    call api_idx_0002_LVPS           ; 0x72bb
    add sp, byte 4                   ; 0x72be
    ret                              ; 0x72c1
