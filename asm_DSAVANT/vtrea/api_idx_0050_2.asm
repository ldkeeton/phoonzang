; auto-generated
api_idx_0050_2:
    mov ax, 0xffb0                   ; 0x7f5a
    call aztec_csav                  ; 0x7f5d
    mov ax, 0x138c                   ; 0x7f60
    push ax                          ; 0x7f63
    call loc_7d99                    ; 0x7f64
    pop cx                           ; 0x7f67
    mov ax, 1                        ; 0x7f68
    push ax                          ; 0x7f6b
    call api_idx_000a_2              ; 0x7f6c
    pop cx                           ; 0x7f6f
    push word [bss_0e2c]             ; 0x7f70
    push word [bss_0e2a]             ; 0x7f74
    call ds_app_io_0af6              ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov ax, 0                        ; 0x7f7e
    push ax                          ; 0x7f81
    mov ax, 0xa4                     ; 0x7f82
    push ax                          ; 0x7f85
    mov ax, 0x12e                    ; 0x7f86
    push ax                          ; 0x7f89
    call ds_loc_432b                 ; 0x7f8a
    add sp, byte 6                   ; 0x7f8d
    call ds_app_2bed                 ; 0x7f90
    mov word [bss_8450], ax          ; 0x7f93
    test ax, ax                      ; 0x7f96
    je short @..api_idx_0050_2.l1    ; 0x7f98
    mov ax, 0                        ; 0x7f9a
    push ax                          ; 0x7f9d
    mov ax, 3                        ; 0x7f9e
    push ax                          ; 0x7fa1
    call ds_app_file_2a2e            ; 0x7fa2
    add sp, byte 4                   ; 0x7fa5
    mov ax, 1                        ; 0x7fa8
    push ax                          ; 0x7fab
    mov ax, 2                        ; 0x7fac
    push ax                          ; 0x7faf
    call ds_app_file_2a2e            ; 0x7fb0
    add sp, byte 4                   ; 0x7fb3
    mov ax, word [dseg_0112]         ; 0x7fb6
    mov word [bss_844e], ax          ; 0x7fb9
    mov ax, 0                        ; 0x7fbc
    push ax                          ; 0x7fbf
    push word [bss_844e]             ; 0x7fc0
    push ax                          ; 0x7fc4
    call ds_app_2bab                 ; 0x7fc5
    add sp, byte 6                   ; 0x7fc8
    mov word [bss_844c], ax          ; 0x7fcb
@..api_idx_0050_2.l1:
    lea ax, word [bp - 0x0050]       ; 0x7fce
    push ax                          ; 0x7fd1
    mov ax, 0x1388                   ; 0x7fd2
    push ax                          ; 0x7fd5
    call ds_app_mem_0782             ; 0x7fd6
    add sp, byte 4                   ; 0x7fd9
    mov ax, 0xa9                     ; 0x7fdc
    push ax                          ; 0x7fdf
    mov ax, 0xffff                   ; 0x7fe0
    push ax                          ; 0x7fe3
    push word [bss_91d4]             ; 0x7fe4
    lea ax, word [bp - 0x0050]       ; 0x7fe8
    push ax                          ; 0x7feb
    call loc_0eb2                    ; 0x7fec
    add sp, byte 8                   ; 0x7fef
    cmp word [bss_8450], byte 0      ; 0x7ff2
    je short @..api_idx_0050_2.l4    ; 0x7ff7
@..api_idx_0050_2.l2:
    call ds_loc_41ca                 ; 0x7ff9
    test ax, ax                      ; 0x7ffc
    je short @..api_idx_0050_2.l3    ; 0x7ffe
    jmp short @..api_idx_0050_2.l2   ; 0x8000
@..api_idx_0050_2.l3:
    mov ax, 0x190                    ; 0x8002
    push ax                          ; 0x8005
    call ds_leaf_loc_36d0            ; 0x8006
    pop cx                           ; 0x8009
    push word [bss_91d4]             ; 0x800a
    push word [bss_91d4]             ; 0x800e
    call api_idx_0004_4              ; 0x8012
    add sp, byte 4                   ; 0x8015
    mov ax, word [dseg_0110]         ; 0x8018
    mov word [bss_844e], ax          ; 0x801b
    mov ax, 1                        ; 0x801e
    push ax                          ; 0x8021
    push word [bss_844e]             ; 0x8022
    push ax                          ; 0x8026
    call ds_app_2bab                 ; 0x8027
    add sp, byte 6                   ; 0x802a
    mov word [bss_844c], ax          ; 0x802d
@..api_idx_0050_2.l4:
    cmp word [bss_84a4], byte 0      ; 0x8030
    jl short @..api_idx_0050_2.l5    ; 0x8035
    jne short @..api_idx_0050_2.l6   ; 0x8037
    cmp word [bss_84a2], byte 0      ; 0x8039
    ja short @..api_idx_0050_2.l6    ; 0x803e
@..api_idx_0050_2.l5:
    jmp short @..api_idx_0050_2.l7   ; 0x8040
@..api_idx_0050_2.l6:
    call api_idx_00a8                ; 0x8042
@..api_idx_0050_2.l7:
    mov ax, 0                        ; 0x8045
    push ax                          ; 0x8048
    mov ax, 0xa4                     ; 0x8049
    push ax                          ; 0x804c
    mov ax, 0x12e                    ; 0x804d
    push ax                          ; 0x8050
    call ds_loc_4338                 ; 0x8051
    add sp, byte 6                   ; 0x8054
    mov ax, 0                        ; 0x8057
    mov dx, 0                        ; 0x805a
    push dx                          ; 0x805d
    push ax                          ; 0x805e
    call ds_app_io_0af6              ; 0x805f
    add sp, byte 4                   ; 0x8062
    cmp word [bss_84a0], byte 0xff   ; 0x8065
    je short @..api_idx_0050_2.l8    ; 0x806a
    mov word [bss_905e], 0xf         ; 0x806c
    call loc_5789                    ; 0x8072
@..api_idx_0050_2.l8:
    cmp word [bss_8450], byte 0      ; 0x8075
    je short @..api_idx_0050_2.l9    ; 0x807a
    push word [bss_844c]             ; 0x807c
    push word [bss_844e]             ; 0x8080
    call ds_app_2b62                 ; 0x8084
    add sp, byte 4                   ; 0x8087
    mov ax, 1                        ; 0x808a
    push ax                          ; 0x808d
    call ds_app_2b4e                 ; 0x808e
    pop cx                           ; 0x8091
    mov ax, 0                        ; 0x8092
    push ax                          ; 0x8095
    call ds_app_2b4e                 ; 0x8096
    pop cx                           ; 0x8099
@..api_idx_0050_2.l9:
    call loc_7eba                    ; 0x809a
    ret                              ; 0x809d
loc_809e:
    mov ax, 0                        ; 0x809e
    call aztec_csav                  ; 0x80a1
    mov word [bss_849e], 0xffff      ; 0x80a4
    mov ax, 0x138c                   ; 0x80aa
    push ax                          ; 0x80ad
    call loc_7d99                    ; 0x80ae
    pop cx                           ; 0x80b1
    mov ax, 0                        ; 0x80b2
    push ax                          ; 0x80b5
    call api_idx_000a_2              ; 0x80b6
    pop cx                           ; 0x80b9
    cmp word [bss_84a0], byte 0xff   ; 0x80ba
    je short @..loc_809e.l2          ; 0x80bf
    call ds_app_2bed                 ; 0x80c1
    mov word [bss_8450], ax          ; 0x80c4
    test ax, ax                      ; 0x80c7
    je short @..loc_809e.l1          ; 0x80c9
    mov ax, 1                        ; 0x80cb
    push ax                          ; 0x80ce
    mov ax, 2                        ; 0x80cf
    push ax                          ; 0x80d2
    call ds_app_file_2a2e            ; 0x80d3
    add sp, byte 4                   ; 0x80d6
    mov ax, word [dseg_0110]         ; 0x80d9
    mov word [bss_844e], ax          ; 0x80dc
    mov ax, 1                        ; 0x80df
    push ax                          ; 0x80e2
    push word [bss_844e]             ; 0x80e3
    push ax                          ; 0x80e7
    call ds_app_2bab                 ; 0x80e8
    add sp, byte 6                   ; 0x80eb
    mov word [bss_844c], ax          ; 0x80ee
@..loc_809e.l1:
    mov word [bss_905e], 0x15        ; 0x80f1
    call loc_5789                    ; 0x80f7
    cmp word [bss_8450], byte 0      ; 0x80fa
    je short @..loc_809e.l2          ; 0x80ff
    push word [bss_844c]             ; 0x8101
    push word [bss_844e]             ; 0x8105
    call ds_app_2b62                 ; 0x8109
    add sp, byte 4                   ; 0x810c
    mov ax, 1                        ; 0x810f
    push ax                          ; 0x8112
    call ds_app_2b4e                 ; 0x8113
    pop cx                           ; 0x8116
@..loc_809e.l2:
    inc word [bss_8d12]              ; 0x8117
    call loc_7eba                    ; 0x811b
    ret                              ; 0x811e
loc_811f:
    mov ax, 0                        ; 0x811f
    call aztec_csav                  ; 0x8122
    mov ax, 0x138e                   ; 0x8125
    cmp word [bss_5b6e], byte 1      ; 0x8128
    jne short @..loc_811f.l1         ; 0x812d
    mov ax, 0x138f                   ; 0x812f
@..loc_811f.l1:
    push ax                          ; 0x8132
    call loc_7d99                    ; 0x8133
    pop cx                           ; 0x8136
    mov ax, 0                        ; 0x8137
    push ax                          ; 0x813a
    call api_idx_000a_2              ; 0x813b
    pop cx                           ; 0x813e
    mov ax, 0xc6                     ; 0x813f
    push ax                          ; 0x8142
    mov ax, 0x109                    ; 0x8143
    push ax                          ; 0x8146
    mov ax, 0x92                     ; 0x8147
    push ax                          ; 0x814a
    mov ax, 0x37                     ; 0x814b
    push ax                          ; 0x814e
    call ds_loc_3b21                 ; 0x814f
    add sp, byte 8                   ; 0x8152
    call ds_app_2bed                 ; 0x8155
    mov word [bss_8450], ax          ; 0x8158
    test ax, ax                      ; 0x815b
    je short @..loc_811f.l2          ; 0x815d
    mov ax, 1                        ; 0x815f
    push ax                          ; 0x8162
    mov ax, 2                        ; 0x8163
    push ax                          ; 0x8166
    call ds_app_file_2a2e            ; 0x8167
    add sp, byte 4                   ; 0x816a
    mov ax, word [dseg_0110]         ; 0x816d
    mov word [bss_844e], ax          ; 0x8170
    mov ax, 1                        ; 0x8173
    push ax                          ; 0x8176
    push word [bss_844e]             ; 0x8177
    push ax                          ; 0x817b
    call ds_app_2bab                 ; 0x817c
    add sp, byte 6                   ; 0x817f
    mov word [bss_844c], ax          ; 0x8182
@..loc_811f.l2:
    push word [bss_84a0]             ; 0x8185
    call api_idx_0072                ; 0x8189
    pop cx                           ; 0x818c
    mov ax, 1                        ; 0x818d
    push ax                          ; 0x8190
    call api_idx_000a_2              ; 0x8191
    pop cx                           ; 0x8194
    cmp word [bss_8450], byte 0      ; 0x8195
    je short @..loc_811f.l3          ; 0x819a
    push word [bss_844c]             ; 0x819c
    push word [bss_844e]             ; 0x81a0
    call ds_app_2b62                 ; 0x81a4
    add sp, byte 4                   ; 0x81a7
    mov ax, 1                        ; 0x81aa
    push ax                          ; 0x81ad
    call ds_app_2b4e                 ; 0x81ae
    pop cx                           ; 0x81b1
@..loc_811f.l3:
    call loc_7eba                    ; 0x81b2
    ret                              ; 0x81b5
loc_81b6:
    mov ax, 0                        ; 0x81b6
    call aztec_csav                  ; 0x81b9
    mov ax, 0x7f6                    ; 0x81bc
    push ax                          ; 0x81bf
    call loc_7d99                    ; 0x81c0
    pop cx                           ; 0x81c3
    mov ax, 0                        ; 0x81c4
    push ax                          ; 0x81c7
    call api_idx_000a_2              ; 0x81c8
    pop cx                           ; 0x81cb
    call api_idx_00e6                ; 0x81cc
    mov ax, 1                        ; 0x81cf
    push ax                          ; 0x81d2
    call api_idx_000a_2              ; 0x81d3
    pop cx                           ; 0x81d6
    call loc_7eba                    ; 0x81d7
    ret                              ; 0x81da
loc_81db:
    mov ax, 0                        ; 0x81db
    call aztec_csav                  ; 0x81de
    mov ax, 0                        ; 0x81e1
    push ax                          ; 0x81e4
    call loc_7d99                    ; 0x81e5
    pop cx                           ; 0x81e8
    mov ax, 0                        ; 0x81e9
    push ax                          ; 0x81ec
    call api_idx_000a_2              ; 0x81ed
    pop cx                           ; 0x81f0
    call api_idx_0074_2              ; 0x81f1
    mov ax, 1                        ; 0x81f4
    push ax                          ; 0x81f7
    call api_idx_000a_2              ; 0x81f8
    pop cx                           ; 0x81fb
    call loc_7eba                    ; 0x81fc
    ret                              ; 0x81ff
