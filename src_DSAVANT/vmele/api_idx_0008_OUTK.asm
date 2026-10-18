; auto-generated
api_idx_0008_OUTK:
    mov ax, 0xfff8                   ; 0x306a
    call aztec_csav                  ; 0x306d
    mov word [bp - 0x0002], 0        ; 0x3070
@..api_idx_0008_OUTK.l1:
    mov word [bp - 0x0004], 0        ; 0x3075
@..api_idx_0008_OUTK.l2:
    mov ax, word [bp - 0x0002]       ; 0x307a
    shl ax, 1                        ; 0x307d
    mov bx, ax                       ; 0x307f
    mov bx, word [bx + bss_8482]     ; 0x3081
    mov si, word [bp - 0x0004]       ; 0x3085
    mov al, byte [bx + si + 0x18c]   ; 0x3088
    sub ah, ah                       ; 0x308c
    mov word [bp - 0x0008], ax       ; 0x308e
    cmp ax, strict word 0            ; 0x3091
    jg short @..api_idx_0008_OUTK.l3 ; 0x3094
    jmp near @..api_idx_0008_OUTK.l8 ; 0x3096
@..api_idx_0008_OUTK.l3:
    mov ax, si                       ; 0x3099
    jmp short @..api_idx_0008_OUTK.l4 ; 0x309b
jumptable_30ea_case_0:
    mov ax, word [bp - 0x0008]       ; 0x309d
    mov cx, 0xa                      ; 0x30a0
    cwd                              ; 0x30a3
    idiv cx                          ; 0x30a4
    mov word [bp - 0x0006], ax       ; 0x30a6
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30a9
jumptable_30ea_case_1:
    mov ax, word [bp - 0x0008]       ; 0x30ab
    mov cx, 0xa                      ; 0x30ae
    cwd                              ; 0x30b1
    idiv cx                          ; 0x30b2
    mov word [bp - 0x0006], ax       ; 0x30b4
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30b7
jumptable_30ea_case_2:
    mov ax, word [bp - 0x0008]       ; 0x30b9
    mov cx, 0xc                      ; 0x30bc
    cwd                              ; 0x30bf
    idiv cx                          ; 0x30c0
    mov word [bp - 0x0006], ax       ; 0x30c2
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30c5
jumptable_30ea_case_3:
    mov ax, word [bp - 0x0008]       ; 0x30c7
    mov cx, 0xc                      ; 0x30ca
    cwd                              ; 0x30cd
    idiv cx                          ; 0x30ce
    mov word [bp - 0x0006], ax       ; 0x30d0
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30d3
jumptable_30ea_case_4:
    mov ax, word [bp - 0x0008]       ; 0x30d5
    mov cx, 0x14                     ; 0x30d8
    cwd                              ; 0x30db
    idiv cx                          ; 0x30dc
    mov word [bp - 0x0006], ax       ; 0x30de
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30e1
jumptable_30ea_case_5:
    mov word [bp - 0x0006], 1        ; 0x30e3
    jmp short @..api_idx_0008_OUTK.l5 ; 0x30e8
jumptable_30ea:
    dw jumptable_30ea_case_0 - IMAGE_BASE + __zres_end ; 0x30ea
    dw jumptable_30ea_case_1 - IMAGE_BASE + __zres_end ; 0x30ec
    dw jumptable_30ea_case_2 - IMAGE_BASE + __zres_end ; 0x30ee
    dw jumptable_30ea_case_3 - IMAGE_BASE + __zres_end ; 0x30f0
    dw jumptable_30ea_case_4 - IMAGE_BASE + __zres_end ; 0x30f2
    dw jumptable_30ea_case_5 - IMAGE_BASE + __zres_end ; 0x30f4
@..api_idx_0008_OUTK.l4:
    cmp ax, strict word 6            ; 0x30f6
    jae short @..api_idx_0008_OUTK.l5 ; 0x30f9
    xchg bx, ax                      ; 0x30fb
    shl bx, 1                        ; 0x30fc
    jmp [cs:bx + jumptable_30ea - IMAGE_BASE + __zres_end] ; 0x30fe
@..api_idx_0008_OUTK.l5:
    cmp word [bp - 0x0006], byte 1   ; 0x3103
    jge short @..api_idx_0008_OUTK.l6 ; 0x3107
    mov word [bp - 0x0006], 1        ; 0x3109
@..api_idx_0008_OUTK.l6:
    mov ax, word [bp - 0x0006]       ; 0x310e
    sub word [bp - 0x0008], ax       ; 0x3111
    cmp word [bp - 0x0008], byte 0   ; 0x3114
    jge short @..api_idx_0008_OUTK.l7 ; 0x3118
    mov word [bp - 0x0008], 0        ; 0x311a
@..api_idx_0008_OUTK.l7:
    mov al, byte [bp - 0x0008]       ; 0x311f
    mov cx, word [bp - 0x0002]       ; 0x3122
    shl cx, 1                        ; 0x3125
    mov bx, cx                       ; 0x3127
    mov bx, word [bx + bss_8482]     ; 0x3129
    mov si, word [bp - 0x0004]       ; 0x312d
    mov byte [bx + si + 0x18c], al   ; 0x3130
@..api_idx_0008_OUTK.l8:
    inc word [bp - 0x0004]           ; 0x3134
    mov ax, word [bp - 0x0004]       ; 0x3137
    cmp ax, strict word 6            ; 0x313a
    jge short @..api_idx_0008_OUTK.l9 ; 0x313d
    jmp near @..api_idx_0008_OUTK.l2 ; 0x313f
@..api_idx_0008_OUTK.l9:
    mov word [bp - 0x0004], 0        ; 0x3142
@..api_idx_0008_OUTK.l10:
    mov ax, word [bp - 0x0002]       ; 0x3147
    shl ax, 1                        ; 0x314a
    mov bx, ax                       ; 0x314c
    mov bx, word [bx + bss_8482]     ; 0x314e
    mov si, word [bp - 0x0004]       ; 0x3152
    cmp byte [bx + si + 0x192], 0    ; 0x3155
    jbe short @..api_idx_0008_OUTK.l11 ; 0x315a
    dec byte [bx + si + 0x192]       ; 0x315c
@..api_idx_0008_OUTK.l11:
    inc word [bp - 0x0004]           ; 0x3160
    mov ax, word [bp - 0x0004]       ; 0x3163
    cmp ax, strict word 6            ; 0x3166
    jl short @..api_idx_0008_OUTK.l10 ; 0x3169
    inc word [bp - 0x0002]           ; 0x316b
    mov ax, word [bp - 0x0002]       ; 0x316e
    cmp ax, strict word 7            ; 0x3171
    jge short @..api_idx_0008_OUTK.l12 ; 0x3174
    jmp near @..api_idx_0008_OUTK.l1 ; 0x3176
@..api_idx_0008_OUTK.l12:
    cmp word [bss_82fa], byte 0      ; 0x3179
    jle short @..api_idx_0008_OUTK.l13 ; 0x317e
    mov bx, word [bss_8482]          ; 0x3180
    mov al, byte [bx + 0x190]        ; 0x3184
    sub ah, ah                       ; 0x3188
    mov word [bss_82fc], ax          ; 0x318a
@..api_idx_0008_OUTK.l13:
    cmp word [bss_82fc], byte 0      ; 0x318d
    jg short @..api_idx_0008_OUTK.l14 ; 0x3192
    mov word [bss_82fa], 0           ; 0x3194
    mov word [bss_82fc], 0           ; 0x319a
@..api_idx_0008_OUTK.l14:
    ret                              ; 0x31a0
