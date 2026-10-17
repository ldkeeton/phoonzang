; auto-generated
api_idx_0004_GSIV:
    mov ax, 0xfffc                   ; 0x8f85
    call aztec_csav                  ; 0x8f88
    mov ax, 7                        ; 0x8f8b
    push ax                          ; 0x8f8e
    mov ax, 2                        ; 0x8f8f
    push ax                          ; 0x8f92
    push word [bp + 0x4]             ; 0x8f93
    call api_idx_0054_TNHV           ; 0x8f96
    add sp, byte 6                   ; 0x8f99
    mov word [bp - 0x0002], ax       ; 0x8f9c
    cmp ax, strict word 0xffff       ; 0x8f9f
    je short @..api_idx_0004_GSIV.l1 ; 0x8fa2
    mov ax, 2                        ; 0x8fa4
    ret                              ; 0x8fa7
@..api_idx_0004_GSIV.l1:
    mov ax, 0xa                      ; 0x8fa8
    push ax                          ; 0x8fab
    mov ax, 3                        ; 0x8fac
    push ax                          ; 0x8faf
    push word [bp + 0x4]             ; 0x8fb0
    call api_idx_0054_TNHV           ; 0x8fb3
    add sp, byte 6                   ; 0x8fb6
    mov word [bp - 0x0002], ax       ; 0x8fb9
    cmp ax, strict word 0xffff       ; 0x8fbc
    je short @..api_idx_0004_GSIV.l4 ; 0x8fbf
    mov word [bss_9e48], ax          ; 0x8fc1
    jmp short @..api_idx_0004_GSIV.l2 ; 0x8fc4
jumptable_8ffe_case_0:
    mov word [bss_9e6e], 1           ; 0x8fc6
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8fcc
jumptable_8ffe_case_1:
    mov word [bss_9e70], 1           ; 0x8fce
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8fd4
jumptable_8ffe_case_2:
    mov word [bss_9e68], 1           ; 0x8fd6
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8fdc
jumptable_8ffe_case_3:
    mov word [bss_9e6a], 1           ; 0x8fde
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8fe4
jumptable_8ffe_case_4:
    mov word [bss_9e6c], 1           ; 0x8fe6
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8fec
jumptable_8ffe_case_5:
    mov word [bss_9e74], 1           ; 0x8fee
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8ff4
jumptable_8ffe_case_6:
    mov word [bss_9e76], 1           ; 0x8ff6
    jmp short @..api_idx_0004_GSIV.l3 ; 0x8ffc
jumptable_8ffe:
    dw jumptable_8ffe_case_0 - IMAGE_BASE + __zres_end ; 0x8ffe
    dw jumptable_8ffe_case_1 - IMAGE_BASE + __zres_end ; 0x9000
    dw jumptable_8ffe_case_2 - IMAGE_BASE + __zres_end ; 0x9002
    dw jumptable_8ffe_case_3 - IMAGE_BASE + __zres_end ; 0x9004
    dw jumptable_8ffe_case_4 - IMAGE_BASE + __zres_end ; 0x9006
    dw jumptable_8ffe_case_5 - IMAGE_BASE + __zres_end ; 0x9008
    dw jumptable_8ffe_case_6 - IMAGE_BASE + __zres_end ; 0x900a
@..api_idx_0004_GSIV.l2:
    cmp ax, strict word 7            ; 0x900c
    jae short @..api_idx_0004_GSIV.l3 ; 0x900f
    xchg bx, ax                      ; 0x9011
    shl bx, 1                        ; 0x9012
    jmp [cs:bx + jumptable_8ffe - IMAGE_BASE + __zres_end] ; 0x9014
@..api_idx_0004_GSIV.l3:
    mov ax, 3                        ; 0x9019
    ret                              ; 0x901c
@..api_idx_0004_GSIV.l4:
    mov ax, 7                        ; 0x901d
    push ax                          ; 0x9020
    mov ax, 8                        ; 0x9021
    push ax                          ; 0x9024
    push word [bp + 0x4]             ; 0x9025
    call api_idx_0054_TNHV           ; 0x9028
    add sp, byte 6                   ; 0x902b
    mov word [bp - 0x0002], ax       ; 0x902e
    cmp ax, strict word 0xffff       ; 0x9031
    je short @..api_idx_0004_GSIV.l5 ; 0x9034
    mov word [bss_9e62], 1           ; 0x9036
    mov word [bss_9e50], ax          ; 0x903c
    push ax                          ; 0x903f
    call loc_NLPS                    ; 0x9040
    pop cx                           ; 0x9043
    mov word [bss_9e46], 0xffff      ; 0x9044
    mov word [bss_9e82], 0xffff      ; 0x904a
    mov ax, 8                        ; 0x9050
    ret                              ; 0x9053
@..api_idx_0004_GSIV.l5:
    mov ax, 7                        ; 0x9054
    push ax                          ; 0x9057
    mov ax, 4                        ; 0x9058
    push ax                          ; 0x905b
    push word [bp + 0x4]             ; 0x905c
    call api_idx_0054_TNHV           ; 0x905f
    add sp, byte 6                   ; 0x9062
    mov word [bp - 0x0002], ax       ; 0x9065
    cmp ax, strict word 0xffff       ; 0x9068
    je short @..api_idx_0004_GSIV.l9 ; 0x906b
    cmp word [bss_b030], byte 7      ; 0x906d
    je short @..api_idx_0004_GSIV.l6 ; 0x9072
    cmp word [bss_b030], byte 0      ; 0x9074
    jne short @..api_idx_0004_GSIV.l7 ; 0x9079
@..api_idx_0004_GSIV.l6:
    mov word [bss_9e64], 1           ; 0x907b
    mov ax, word [bss_9e7c]          ; 0x9081
    mov word [bss_9e78], ax          ; 0x9084
@..api_idx_0004_GSIV.l7:
    cmp word [bp - 0x0002], byte 0   ; 0x9087
    jne short @..api_idx_0004_GSIV.l8 ; 0x908b
    mov word [bss_9e60], 1           ; 0x908d
@..api_idx_0004_GSIV.l8:
    mov ax, 4                        ; 0x9093
    ret                              ; 0x9096
@..api_idx_0004_GSIV.l9:
    mov ax, 0xb032                   ; 0x9097
    push ax                          ; 0x909a
    push word [bp + 0x4]             ; 0x909b
    call api_idx_0002_NTRU           ; 0x909e
    add sp, byte 4                   ; 0x90a1
    mov word [bp - 0x0002], ax       ; 0x90a4
    cmp ax, strict word 0xffff       ; 0x90a7
    je short @..api_idx_0004_GSIV.l10 ; 0x90aa
    mov word [bss_9e66], 1           ; 0x90ac
    mov ax, 5                        ; 0x90b2
    ret                              ; 0x90b5
@..api_idx_0004_GSIV.l10:
    mov ax, 0xa                      ; 0x90b6
    push ax                          ; 0x90b9
    mov ax, 1                        ; 0x90ba
    push ax                          ; 0x90bd
    push word [bp + 0x4]             ; 0x90be
    call api_idx_0054_TNHV           ; 0x90c1
    add sp, byte 6                   ; 0x90c4
    mov word [bp - 0x0002], ax       ; 0x90c7
    cmp ax, strict word 0xffff       ; 0x90ca
    je short @..api_idx_0004_GSIV.l15 ; 0x90cd
    cmp word [bss_b030], byte 6      ; 0x90cf
    jne short @..api_idx_0004_GSIV.l11 ; 0x90d4
    mov word [bss_9e46], 0xffff      ; 0x90d6
    mov ax, word [bss_9e78]          ; 0x90dc
    mov word [bp - 0x0004], ax       ; 0x90df
    mov ax, word [bss_9e7a]          ; 0x90e2
    mov word [bss_9e78], ax          ; 0x90e5
    mov ax, word [bp - 0x0004]       ; 0x90e8
    mov word [bss_9e7a], ax          ; 0x90eb
@..api_idx_0004_GSIV.l11:
    cmp word [bss_9e46], byte 0xff   ; 0x90ee
    je short @..api_idx_0004_GSIV.l12 ; 0x90f3
    mov ax, word [bp - 0x0002]       ; 0x90f5
    mov word [bss_9e82], ax          ; 0x90f8
    jmp short @..api_idx_0004_GSIV.l13 ; 0x90fb
@..api_idx_0004_GSIV.l12:
    mov ax, word [bp - 0x0002]       ; 0x90fd
    mov word [bss_9e46], ax          ; 0x9100
@..api_idx_0004_GSIV.l13:
    cmp word [bss_b030], byte 7      ; 0x9103
    jne short @..api_idx_0004_GSIV.l14 ; 0x9108
    mov ax, word [bss_9e7c]          ; 0x910a
    mov word [bss_9e78], ax          ; 0x910d
@..api_idx_0004_GSIV.l14:
    mov ax, 1                        ; 0x9110
    ret                              ; 0x9113
@..api_idx_0004_GSIV.l15:
    mov ax, 0xb03c                   ; 0x9114
    push ax                          ; 0x9117
    push word [bp + 0x4]             ; 0x9118
    call api_idx_0002_NTRU           ; 0x911b
    add sp, byte 4                   ; 0x911e
    mov word [bp - 0x0002], ax       ; 0x9121
    cmp ax, strict word 0xffff       ; 0x9124
    je short @..api_idx_0004_GSIV.l16 ; 0x9127
    mov ax, 6                        ; 0x9129
    ret                              ; 0x912c
@..api_idx_0004_GSIV.l16:
    mov ax, 0xb                      ; 0x912d
    push ax                          ; 0x9130
    mov ax, 9                        ; 0x9131
    push ax                          ; 0x9134
    push word [bp + 0x4]             ; 0x9135
    call api_idx_0054_TNHV           ; 0x9138
    add sp, byte 6                   ; 0x913b
    mov word [bp - 0x0002], ax       ; 0x913e
    cmp ax, strict word 0xffff       ; 0x9141
    je short @..api_idx_0004_GSIV.l20 ; 0x9144
    mov ax, word [bss_9e42]          ; 0x9146
    cmp ax, strict word 0xffff       ; 0x9149
    je short @..api_idx_0004_GSIV.l17 ; 0x914c
    cmp word [bss_9e42], byte 0      ; 0x914e
    je short @..api_idx_0004_GSIV.l17 ; 0x9153
    cmp ax, word [bss_b046]          ; 0x9155
    jne short @..api_idx_0004_GSIV.l18 ; 0x9159
@..api_idx_0004_GSIV.l17:
    mov ax, word [bss_9e4a]          ; 0x915b
    mov word [bss_9e42], ax          ; 0x915e
    mov ax, word [bss_9e4c]          ; 0x9161
    mov word [bss_9e44], ax          ; 0x9164
    jmp short @..api_idx_0004_GSIV.l19 ; 0x9167
@..api_idx_0004_GSIV.l18:
    mov ax, word [bss_9e4a]          ; 0x9169
    cmp ax, word [bss_9e42]          ; 0x916c
    je short @..api_idx_0004_GSIV.l19 ; 0x9170
    cmp word [bss_9e4a], byte 0      ; 0x9172
    je short @..api_idx_0004_GSIV.l19 ; 0x9177
    cmp ax, word [bss_b046]          ; 0x9179
    je short @..api_idx_0004_GSIV.l19 ; 0x917d
    mov word [bss_9e7e], ax          ; 0x917f
    mov ax, word [bss_9e4c]          ; 0x9182
    mov word [bss_9e80], ax          ; 0x9185
@..api_idx_0004_GSIV.l19:
    mov ax, 0                        ; 0x9188
    ret                              ; 0x918b
@..api_idx_0004_GSIV.l20:
    mov word [bss_b048], 0           ; 0x918c
    mov ax, 0xb048                   ; 0x9192
    push ax                          ; 0x9195
    push word [bp + 0x4]             ; 0x9196
    call api_idx_0058_PMKH           ; 0x9199
    add sp, byte 4                   ; 0x919c
    mov word [bp - 0x0002], ax       ; 0x919f
    cmp ax, strict word 0xffff       ; 0x91a2
    jne short @..api_idx_0004_GSIV.l21 ; 0x91a5
    jmp near @..api_idx_0004_GSIV.l30 ; 0x91a7
@..api_idx_0004_GSIV.l21:
    cmp word [bss_b030], byte 4      ; 0x91aa
    jne short @..api_idx_0004_GSIV.l23 ; 0x91af
    mov word [bss_9e62], 1           ; 0x91b1
    cmp word [bp - 0x0002], byte 0   ; 0x91b7
    jne short @..api_idx_0004_GSIV.l22 ; 0x91bb
    mov word [bss_9e78], 0           ; 0x91bd
@..api_idx_0004_GSIV.l22:
    jmp short @..api_idx_0004_GSIV.l26 ; 0x91c3
@..api_idx_0004_GSIV.l23:
    cmp word [bss_b030], byte 1      ; 0x91c5
    jne short @..api_idx_0004_GSIV.l25 ; 0x91ca
    cmp word [bp - 0x0002], byte 0   ; 0x91cc
    jne short @..api_idx_0004_GSIV.l24 ; 0x91d0
    mov word [bss_9e7a], 0           ; 0x91d2
@..api_idx_0004_GSIV.l24:
    jmp short @..api_idx_0004_GSIV.l26 ; 0x91d8
@..api_idx_0004_GSIV.l25:
    cmp word [bss_b030], byte 6      ; 0x91da
    jne short @..api_idx_0004_GSIV.l26 ; 0x91df
    cmp word [bp - 0x0002], byte 0   ; 0x91e1
    jne short @..api_idx_0004_GSIV.l26 ; 0x91e5
    mov word [bss_9e7a], 0           ; 0x91e7
@..api_idx_0004_GSIV.l26:
    cmp word [bp - 0x0002], byte 0   ; 0x91ed
    jne short @..api_idx_0004_GSIV.l27 ; 0x91f1
    mov word [bss_9e7c], ax          ; 0x91f3
@..api_idx_0004_GSIV.l27:
    mov ax, word [bss_9e42]          ; 0x91f6
    cmp ax, strict word 0xffff       ; 0x91f9
    je short @..api_idx_0004_GSIV.l28 ; 0x91fc
    cmp word [bss_9e42], byte 0      ; 0x91fe
    je short @..api_idx_0004_GSIV.l28 ; 0x9203
    cmp ax, word [bss_b046]          ; 0x9205
    jne short @..api_idx_0004_GSIV.l29 ; 0x9209
@..api_idx_0004_GSIV.l28:
    mov ax, word [bp - 0x0002]       ; 0x920b
    mov word [bss_9e42], ax          ; 0x920e
    mov ax, word [bss_b048]          ; 0x9211
    mov word [bss_9e44], ax          ; 0x9214
@..api_idx_0004_GSIV.l29:
    mov ax, 0                        ; 0x9217
    ret                              ; 0x921a
@..api_idx_0004_GSIV.l30:
    mov ax, 5                        ; 0x921b
    push ax                          ; 0x921e
    mov ax, 7                        ; 0x921f
    push ax                          ; 0x9222
    push word [bp + 0x4]             ; 0x9223
    call api_idx_0054_TNHV           ; 0x9226
    add sp, byte 6                   ; 0x9229
    mov word [bp - 0x0002], ax       ; 0x922c
    cmp ax, strict word 0xffff       ; 0x922f
    je short @..api_idx_0004_GSIV.l34 ; 0x9232
    cmp word [bss_b030], byte 4      ; 0x9234
    jne short @..api_idx_0004_GSIV.l31 ; 0x9239
    mov word [bss_9e62], 1           ; 0x923b
    mov word [bss_9e78], ax          ; 0x9241
    jmp short @..api_idx_0004_GSIV.l33 ; 0x9244
@..api_idx_0004_GSIV.l31:
    cmp word [bss_b030], byte 1      ; 0x9246
    jne short @..api_idx_0004_GSIV.l32 ; 0x924b
    mov ax, word [bp - 0x0002]       ; 0x924d
    mov word [bss_9e7a], ax          ; 0x9250
    jmp short @..api_idx_0004_GSIV.l33 ; 0x9253
@..api_idx_0004_GSIV.l32:
    cmp word [bss_b030], byte 6      ; 0x9255
    jne short @..api_idx_0004_GSIV.l33 ; 0x925a
    mov ax, word [bp - 0x0002]       ; 0x925c
    mov word [bss_9e7a], ax          ; 0x925f
@..api_idx_0004_GSIV.l33:
    mov ax, word [bp - 0x0002]       ; 0x9262
    mov word [bss_9e7c], ax          ; 0x9265
    mov ax, 7                        ; 0x9268
    ret                              ; 0x926b
@..api_idx_0004_GSIV.l34:
    cmp word [bss_b030], byte 6      ; 0x926c
    jne short @..api_idx_0004_GSIV.l35 ; 0x9271
    mov word [bss_9e46], 0xffff      ; 0x9273
@..api_idx_0004_GSIV.l35:
    mov ax, 0xa                      ; 0x9279
    ret                              ; 0x927c
