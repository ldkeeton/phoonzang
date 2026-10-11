api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x306a
    call ds_dispatch_f40b            ; 0x306d
    mov word [bp - 0x0002], 0        ; 0x3070
@..api_idx_0008_4.l1:
    mov word [bp - 0x0004], 0        ; 0x3075
@..api_idx_0008_4.l2:
    mov ax, word [bp - 0x0002]       ; 0x307a
    shl ax, 1                        ; 0x307d
    mov bx, ax                       ; 0x307f
    mov bx, word [bx - 0x7b7e]       ; 0x3081
    mov si, word [bp - 0x0004]       ; 0x3085
    mov al, byte [bx + si + 0x18c]   ; 0x3088
    sub ah, ah                       ; 0x308c
    mov word [bp - 0x0008], ax       ; 0x308e
    cmp ax, strict word 0            ; 0x3091
    jg short @..api_idx_0008_4.l3    ; 0x3094
    jmp near @..api_idx_0008_4.l8    ; 0x3096
@..api_idx_0008_4.l3:
    mov ax, si                       ; 0x3099
    jmp short @..api_idx_0008_4.l4   ; 0x309b
    mov ax, word [bp - 0x0008]       ; 0x309d
    mov cx, 0xa                      ; 0x30a0
    cwd                              ; 0x30a3
    idiv cx                          ; 0x30a4
    mov word [bp - 0x0006], ax       ; 0x30a6
    jmp short @..api_idx_0008_4.l5   ; 0x30a9
    mov ax, word [bp - 0x0008]       ; 0x30ab
    mov cx, 0xa                      ; 0x30ae
    cwd                              ; 0x30b1
    idiv cx                          ; 0x30b2
    mov word [bp - 0x0006], ax       ; 0x30b4
    jmp short @..api_idx_0008_4.l5   ; 0x30b7
    mov ax, word [bp - 0x0008]       ; 0x30b9
    mov cx, 0xc                      ; 0x30bc
    cwd                              ; 0x30bf
    idiv cx                          ; 0x30c0
    mov word [bp - 0x0006], ax       ; 0x30c2
    jmp short @..api_idx_0008_4.l5   ; 0x30c5
    mov ax, word [bp - 0x0008]       ; 0x30c7
    mov cx, 0xc                      ; 0x30ca
    cwd                              ; 0x30cd
    idiv cx                          ; 0x30ce
    mov word [bp - 0x0006], ax       ; 0x30d0
    jmp short @..api_idx_0008_4.l5   ; 0x30d3
    mov ax, word [bp - 0x0008]       ; 0x30d5
    mov cx, 0x14                     ; 0x30d8
    cwd                              ; 0x30db
    idiv cx                          ; 0x30dc
    mov word [bp - 0x0006], ax       ; 0x30de
    jmp short @..api_idx_0008_4.l5   ; 0x30e1
    mov word [bp - 0x0006], 1        ; 0x30e3
    jmp short @..api_idx_0008_4.l5   ; 0x30e8
    in al, 0x80                      ; 0x30ea
    db 0xf2, 0x80, 0x00, 0x81 ; add byte [bx + si], 0x81
    push cs                          ; 0x30f0
    sbb word [si], strict word 0x2a81 ; 0x30f1
    db 0x81
@..api_idx_0008_4.l4:
    cmp ax, strict word 6            ; 0x30f6
    jae short @..api_idx_0008_4.l5   ; 0x30f9
    xchg bx, ax                      ; 0x30fb
    shl bx, 1                        ; 0x30fc
    jmp [cs:bx - 0x7ecf]             ; 0x30fe
@..api_idx_0008_4.l5:
    cmp word [bp - 0x0006], byte 1   ; 0x3103
    jge short @..api_idx_0008_4.l6   ; 0x3107
    mov word [bp - 0x0006], 1        ; 0x3109
@..api_idx_0008_4.l6:
    mov ax, word [bp - 0x0006]       ; 0x310e
    sub word [bp - 0x0008], ax       ; 0x3111
    cmp word [bp - 0x0008], byte 0   ; 0x3114
    jge short @..api_idx_0008_4.l7   ; 0x3118
    mov word [bp - 0x0008], 0        ; 0x311a
@..api_idx_0008_4.l7:
    mov al, byte [bp - 0x0008]       ; 0x311f
    mov cx, word [bp - 0x0002]       ; 0x3122
    shl cx, 1                        ; 0x3125
    mov bx, cx                       ; 0x3127
    mov bx, word [bx - 0x7b7e]       ; 0x3129
    mov si, word [bp - 0x0004]       ; 0x312d
    mov byte [bx + si + 0x18c], al   ; 0x3130
@..api_idx_0008_4.l8:
    inc word [bp - 0x0004]           ; 0x3134
    mov ax, word [bp - 0x0004]       ; 0x3137
    cmp ax, strict word 6            ; 0x313a
    jge short @..api_idx_0008_4.l9   ; 0x313d
    jmp near @..api_idx_0008_4.l2    ; 0x313f
@..api_idx_0008_4.l9:
    mov word [bp - 0x0004], 0        ; 0x3142
@..api_idx_0008_4.l10:
    mov ax, word [bp - 0x0002]       ; 0x3147
    shl ax, 1                        ; 0x314a
    mov bx, ax                       ; 0x314c
    mov bx, word [bx - 0x7b7e]       ; 0x314e
    mov si, word [bp - 0x0004]       ; 0x3152
    cmp byte [bx + si + 0x192], 0    ; 0x3155
    jbe short @..api_idx_0008_4.l11  ; 0x315a
    dec byte [bx + si + 0x192]       ; 0x315c
@..api_idx_0008_4.l11:
    inc word [bp - 0x0004]           ; 0x3160
    mov ax, word [bp - 0x0004]       ; 0x3163
    cmp ax, strict word 6            ; 0x3166
    jl short @..api_idx_0008_4.l10   ; 0x3169
    inc word [bp - 0x0002]           ; 0x316b
    mov ax, word [bp - 0x0002]       ; 0x316e
    cmp ax, strict word 7            ; 0x3171
    jge short @..api_idx_0008_4.l12  ; 0x3174
    jmp near @..api_idx_0008_4.l1    ; 0x3176
@..api_idx_0008_4.l12:
    cmp word [dseg_82fa], byte 0     ; 0x3179
    jle short @..api_idx_0008_4.l13  ; 0x317e
    mov bx, word [dseg_8482]         ; 0x3180
    mov al, byte [bx + 0x190]        ; 0x3184
    sub ah, ah                       ; 0x3188
    mov word [dseg_82fc], ax         ; 0x318a
@..api_idx_0008_4.l13:
    cmp word [dseg_82fc], byte 0     ; 0x318d
    jg short @..api_idx_0008_4.l14   ; 0x3192
    mov word [dseg_82fa], 0          ; 0x3194
    mov word [dseg_82fc], 0          ; 0x319a
@..api_idx_0008_4.l14:
    ret                              ; 0x31a0
