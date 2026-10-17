; auto-generated
io_loc_HHNP:
    mov word [bp - 0x0006], 1        ; 0x30e3
    jmp short loc_SHRQ               ; 0x30e8
jumptable_30ea:
    dw io_loc_PONH_309d - IMAGE_BASE + 0x5055  ; 0x30ea
    dw io_loc_PONH_30ab - IMAGE_BASE + 0x5055  ; 0x30ec
    dw io_loc_ISUT_30b9 - IMAGE_BASE + 0x5055  ; 0x30ee
    dw io_loc_ISUT_30c7 - IMAGE_BASE + 0x5055  ; 0x30f0
    dw io_loc_QLSL - IMAGE_BASE + 0x5055       ; 0x30f2
    dw io_loc_HHNP - IMAGE_BASE + 0x5055       ; 0x30f4
loc_ROJH:
    cmp ax, strict word 6            ; 0x30f6
    jae short loc_SHRQ               ; 0x30f9
    xchg bx, ax                      ; 0x30fb
    shl bx, 1                        ; 0x30fc
    jmp [cs:bx - 0x7ecf]             ; 0x30fe
loc_SHRQ:
    cmp word [bp - 0x0006], byte 1   ; 0x3103
    jge short loc_MRGH               ; 0x3107
    mov word [bp - 0x0006], 1        ; 0x3109
loc_MRGH:
    mov ax, word [bp - 0x0006]       ; 0x310e
    sub word [bp - 0x0008], ax       ; 0x3111
    cmp word [bp - 0x0008], byte 0   ; 0x3114
    jge short loc_JVRU               ; 0x3118
    mov word [bp - 0x0008], 0        ; 0x311a
loc_JVRU:
    mov al, byte [bp - 0x0008]       ; 0x311f
    mov cx, word [bp - 0x0002]       ; 0x3122
    shl cx, 1                        ; 0x3125
    mov bx, cx                       ; 0x3127
    mov bx, word [bx - 0x7b7e]       ; 0x3129
    mov si, word [bp - 0x0004]       ; 0x312d
    mov byte [bx + si + 0x18c], al   ; 0x3130
loc_GHOG:
    inc word [bp - 0x0004]           ; 0x3134
    mov ax, word [bp - 0x0004]       ; 0x3137
    cmp ax, strict word 6            ; 0x313a
    jge short loc_RUIS_3142          ; 0x313d
    jmp near loc_VHSO                ; 0x313f
loc_RUIS_3142:
    mov word [bp - 0x0004], 0        ; 0x3142
loc_OOVK:
    mov ax, word [bp - 0x0002]       ; 0x3147
    shl ax, 1                        ; 0x314a
    mov bx, ax                       ; 0x314c
    mov bx, word [bx - 0x7b7e]       ; 0x314e
    mov si, word [bp - 0x0004]       ; 0x3152
    cmp byte [bx + si + 0x192], 0    ; 0x3155
    jbe short loc_SMGR               ; 0x315a
    dec byte [bx + si + 0x192]       ; 0x315c
loc_SMGR:
    inc word [bp - 0x0004]           ; 0x3160
    mov ax, word [bp - 0x0004]       ; 0x3163
    cmp ax, strict word 6            ; 0x3166
    jl short loc_OOVK                ; 0x3169
    inc word [bp - 0x0002]           ; 0x316b
    mov ax, word [bp - 0x0002]       ; 0x316e
    cmp ax, strict word 7            ; 0x3171
    jge short loc_NQIQ               ; 0x3174
    jmp near loc_RUIS_3075           ; 0x3176
loc_NQIQ:
    cmp word [bss_82fa], byte 0      ; 0x3179
    jle short loc_OROO               ; 0x317e
    mov bx, word [bss_8482]          ; 0x3180
    mov al, byte [bx + 0x190]        ; 0x3184
    sub ah, ah                       ; 0x3188
    mov word [bss_82fc], ax          ; 0x318a
loc_OROO:
    cmp word [bss_82fc], byte 0      ; 0x318d
    jg short loc_PLIR                ; 0x3192
    mov word [bss_82fa], 0           ; 0x3194
    mov word [bss_82fc], 0           ; 0x319a
loc_PLIR:
    ret                              ; 0x31a0
