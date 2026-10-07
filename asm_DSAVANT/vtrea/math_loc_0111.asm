math_loc_0111:
    mov ax, 0xfee8                   ; 0x0111
    call ds_dispatch_f40b            ; 0x0114
    mov word [bp - 0x00f6], 7        ; 0x0117
    mov ax, 6                        ; 0x011d
    imul word [bp + 0x6]             ; 0x0120
    mov bx, ax                       ; 0x0123
    mov al, byte [bx + 0x889]        ; 0x0125
    sub ah, ah                       ; 0x0129
    jmp short @..math_loc_0111.l4    ; 0x012b
@..math_loc_0111.l1:
    mov word [bp - 0x0010], 1        ; 0x012d
    mov word [bp - 0x00fa], 1        ; 0x0132
    jmp short @..math_loc_0111.l5    ; 0x0138
@..math_loc_0111.l2:
    mov word [bp - 0x0010], 1        ; 0x013a
    mov word [bp - 0x00fa], 1        ; 0x013f
    jmp short @..math_loc_0111.l5    ; 0x0145
@..math_loc_0111.l3:
    mov word [bp - 0x0010], 0        ; 0x0147
    mov word [bp - 0x00fa], 4        ; 0x014c
    jmp short @..math_loc_0111.l5    ; 0x0152
@..math_loc_0111.l4:
    cmp ax, strict word 0            ; 0x0154
    je short @..math_loc_0111.l1     ; 0x0157
    cmp ax, strict word 1            ; 0x0159
    je short @..math_loc_0111.l2     ; 0x015c
    cmp ax, strict word 2            ; 0x015e
    je short @..math_loc_0111.l3     ; 0x0161
@..math_loc_0111.l5:
    mov word [bp - 0x00fc], 6        ; 0x0163
    mov ax, 0xc                      ; 0x0169
    cwd                              ; 0x016c
    idiv word [bp - 0x00fa]          ; 0x016d
    mov word [bp - 0x00fe], ax       ; 0x0171
    mov ax, 6                        ; 0x0175
    imul word [bp + 0x6]             ; 0x0178
    mov bx, ax                       ; 0x017b
    mov al, byte [bx + 0x888]        ; 0x017d
    sub ah, ah                       ; 0x0181
    mov word [bp - 0x00f8], ax       ; 0x0183
    mov word [bp - 0x000c], 1        ; 0x0187
    mov ax, word [bp - 0x00fc]       ; 0x018c
    dec ax                           ; 0x0190
    mov word [bp - 0x0006], ax       ; 0x0191
    mov word [bp - 0x0008], 0        ; 0x0194
    mov word [bp - 0x000a], 0xffff   ; 0x0199
    mov al, byte [bx + 0x889]        ; 0x019e
    sub ah, ah                       ; 0x01a2
    jmp short @..math_loc_0111.l8    ; 0x01a4
@..math_loc_0111.l6:
    inc word [bp + 0x6]              ; 0x01a6
    inc word [bp - 0x00f8]           ; 0x01a9
    jmp short @..math_loc_0111.l9    ; 0x01ad
@..math_loc_0111.l7:
    add word [bp - 0x00f8], byte 3   ; 0x01af
    jmp short @..math_loc_0111.l9    ; 0x01b4
@..math_loc_0111.l8:
    cmp ax, strict word 1            ; 0x01b6
    je short @..math_loc_0111.l6     ; 0x01b9
    cmp ax, strict word 2            ; 0x01bb
    je short @..math_loc_0111.l7     ; 0x01be
@..math_loc_0111.l9:
    cmp word [bp + 0x4], byte 0xff   ; 0x01c0
    je short @..math_loc_0111.l10    ; 0x01c4
    mov ax, word [bp + 0x4]          ; 0x01c6
    mov cx, data_0002                ; 0x01c9
    cwd                              ; 0x01cc
    idiv cx                          ; 0x01cd
    mov ax, dx                       ; 0x01cf
    test ax, ax                      ; 0x01d1
    jne short @..math_loc_0111.l12   ; 0x01d3
@..math_loc_0111.l10:
    mov word [bp - 0x000e], 0        ; 0x01d5
    mov ax, 0                        ; 0x01da
    cmp word [bp - 0x0010], byte 0   ; 0x01dd
    je short @..math_loc_0111.l11    ; 0x01e1
    mov ax, 1                        ; 0x01e3
@..math_loc_0111.l11:
    mov word [bp - 0x0104], ax       ; 0x01e6
    jmp short @..math_loc_0111.l14   ; 0x01ea
@..math_loc_0111.l12:
    mov word [bp - 0x000e], 1        ; 0x01ec
    mov ax, 1                        ; 0x01f1
    cmp word [bp - 0x0010], byte 0   ; 0x01f4
    je short @..math_loc_0111.l13    ; 0x01f8
    mov ax, 0                        ; 0x01fa
@..math_loc_0111.l13:
    mov word [bp - 0x0104], ax       ; 0x01fd
@..math_loc_0111.l14:
    mov ax, 6                        ; 0x0201
    imul word [bp + 0x6]             ; 0x0204
    mov bx, ax                       ; 0x0207
    mov ax, word [bx + 0x884]        ; 0x0209
    mov word [bp - 0x00ea], ax       ; 0x020d
    mov ax, word [bx + 0x886]        ; 0x0211
    mov word [bp - 0x00ec], ax       ; 0x0215
    mov word [bp - 0x00e8], 0        ; 0x0219
    mov word [bp - 0x00e6], 0        ; 0x021f
    mov word [bp - 0x00e4], 0        ; 0x0225
    mov word [bp - 0x00e2], 0        ; 0x022b
    mov word [bp - 0x00e0], 0        ; 0x0231
    mov word [bp - 0x00de], 0        ; 0x0237
    mov word [bp - 0x00dc], 0        ; 0x023d
    mov word [bp - 0x00da], 3        ; 0x0243
    mov word [bp - 0x00d8], 3        ; 0x0249
    mov word [bp - 0x00d6], 3        ; 0x024f
    mov word [bp - 0x00d4], 3        ; 0x0255
    mov word [bp - 0x00d2], 3        ; 0x025b
    mov word [bp - 0x00d0], 3        ; 0x0261
    mov word [bp - 0x00ce], data_0002 ; 0x0267
    mov word [bp - 0x00cc], data_0002 ; 0x026d
    mov word [bp - 0x00ca], data_0002 ; 0x0273
    mov word [bp - 0x00c8], data_0002 ; 0x0279
    mov word [bp - 0x00c6], 1        ; 0x027f
    mov word [bp - 0x00c4], 1        ; 0x0285
    mov word [bp - 0x00c2], 3        ; 0x028b
    mov word [bp - 0x00c0], data_0002 ; 0x0291
    mov word [bp - 0x00be], data_0002 ; 0x0297
    mov word [bp - 0x00bc], data_0002 ; 0x029d
    mov word [bp - 0x00ba], 3        ; 0x02a3
    mov word [bp - 0x00b8], data_0002 ; 0x02a9
    mov word [bp - 0x00b6], data_0002 ; 0x02af
    mov word [bp - 0x00b4], data_0002 ; 0x02b5
    mov word [bp - 0x00b2], 4        ; 0x02bb
    mov word [bp - 0x00b0], 3        ; 0x02c1
    mov word [bp - 0x00ae], 3        ; 0x02c7
    mov word [bp - 0x00ac], 3        ; 0x02cd
    mov word [bp - 0x00aa], 1        ; 0x02d3
    mov word [bp - 0x00a8], 1        ; 0x02d9
    mov word [bp - 0x00a6], 1        ; 0x02df
    mov word [bp - 0x00a4], 1        ; 0x02e5
    mov word [bp - 0x00a2], 3        ; 0x02eb
    mov word [bp - 0x00a0], 3        ; 0x02f1
    mov word [bp - 0x009e], 3        ; 0x02f7
    mov word [bp - 0x009c], 3        ; 0x02fd
    mov word [bp - 0x009a], 3        ; 0x0303
    mov word [bp - 0x0098], 5        ; 0x0309
