; auto-generated
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0104
    call aztec_csav                  ; 0x0107
    push word [bp + 0xe]             ; 0x010a
    push word [bp + 0xc]             ; 0x010d
    call ds_loc_3a6a                 ; 0x0110
    add sp, byte 4                   ; 0x0113
    push word [bp + 0x4]             ; 0x0116
    call aztec_strlen                ; 0x0119
    pop cx                           ; 0x011c
    mov word [bp - 0x0004], ax       ; 0x011d
    mov cx, 6                        ; 0x0120
    imul cx                          ; 0x0123
    add word [bp + 0x6], ax          ; 0x0125
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0128
    mov word [bp - 0x0008], 0        ; 0x012d
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0132
    push ax                          ; 0x0135
    call dos_con_in_noecho           ; 0x0136
    pop cx                           ; 0x0139
    test ax, ax                      ; 0x013a
    je short @..api_idx_0008.l3      ; 0x013c
    jmp near @..api_idx_0008.l7      ; 0x013e
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0141
    jne short @..api_idx_0008.l5     ; 0x0145
    push word [bp + 0xe]             ; 0x0147
    mov ax, word [bp + 0x8]          ; 0x014a
    add ax, strict word 5            ; 0x014d
    push ax                          ; 0x0150
    mov ax, word [bp + 0x6]          ; 0x0151
    add ax, strict word 5            ; 0x0154
    push ax                          ; 0x0157
    push word [bp + 0x8]             ; 0x0158
    push word [bp + 0x6]             ; 0x015b
    call ds_loc_3b48                 ; 0x015e
    add sp, byte 0x0a                ; 0x0161
    cmp word [bp - 0x0006], byte 0   ; 0x0164
    je short @..api_idx_0008.l4      ; 0x0168
    push word [bp + 0x8]             ; 0x016a
    push word [bp + 0x6]             ; 0x016d
    call ds_loc_3a50                 ; 0x0170
    add sp, byte 4                   ; 0x0173
    mov ax, 0                        ; 0x0176
    push ax                          ; 0x0179
    mov ax, 3                        ; 0x017a
    push ax                          ; 0x017d
    call ds_loc_3a77                 ; 0x017e
    add sp, byte 4                   ; 0x0181
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0184
    add ax, strict word 5            ; 0x0187
    push ax                          ; 0x018a
    mov ax, word [bp + 0x6]          ; 0x018b
    add ax, strict word 5            ; 0x018e
    push ax                          ; 0x0191
    push word [bp + 0x8]             ; 0x0192
    push word [bp + 0x6]             ; 0x0195
    call ds_loc_3b21                 ; 0x0198
    add sp, byte 8                   ; 0x019b
    mov ax, word [bp - 0x0006]       ; 0x019e
    inc ax                           ; 0x01a1
    mov cx, 2                        ; 0x01a2
    cwd                              ; 0x01a5
    idiv cx                          ; 0x01a6
    mov word [bp - 0x0006], dx       ; 0x01a8
    mov word [bp - 0x0008], 0xa      ; 0x01ab
    jmp short @..api_idx_0008.l6     ; 0x01b0
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x01b2
    push ax                          ; 0x01b5
    call ds_leaf_loc_36d0            ; 0x01b6
    pop cx                           ; 0x01b9
    dec word [bp - 0x0008]           ; 0x01ba
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x01bd
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x01c0
    push ax                          ; 0x01c3
    call dos_con_in_noecho_2         ; 0x01c4
    pop cx                           ; 0x01c7
    sub ah, ah                       ; 0x01c8
    mov word [bp - 0x0002], ax       ; 0x01ca
    push word [bp + 0xe]             ; 0x01cd
    mov ax, word [bp + 0x8]          ; 0x01d0
    add ax, strict word 5            ; 0x01d3
    push ax                          ; 0x01d6
    mov ax, word [bp + 0x6]          ; 0x01d7
    add ax, strict word 5            ; 0x01da
    push ax                          ; 0x01dd
    push word [bp + 0x8]             ; 0x01de
    push word [bp + 0x6]             ; 0x01e1
    call ds_loc_3b48                 ; 0x01e4
    add sp, byte 0x0a                ; 0x01e7
    mov ax, word [bp + 0x8]          ; 0x01ea
    add ax, strict word 5            ; 0x01ed
    push ax                          ; 0x01f0
    mov ax, word [bp + 0x6]          ; 0x01f1
    add ax, strict word 5            ; 0x01f4
    push ax                          ; 0x01f7
    push word [bp + 0x8]             ; 0x01f8
    push word [bp + 0x6]             ; 0x01fb
    call ds_loc_3b21                 ; 0x01fe
    add sp, byte 8                   ; 0x0201
    cmp word [bp - 0x0002], byte 0x0d ; 0x0204
    jne short @..api_idx_0008.l8     ; 0x0208
    mov bx, word [bp + 0x4]          ; 0x020a
    mov si, word [bp - 0x0004]       ; 0x020d
    mov byte [bx + si], 0            ; 0x0210
    call bios_kbd_check              ; 0x0213
    ret                              ; 0x0216
@..api_idx_0008.l8:
    cmp word [bp - 0x0002], byte 8   ; 0x0217
    jne short @..api_idx_0008.l11    ; 0x021b
    cmp word [bp - 0x0004], byte 0   ; 0x021d
    jle short @..api_idx_0008.l9     ; 0x0221
    dec word [bp - 0x0004]           ; 0x0223
    add word [bp + 0x6], byte 0xfa   ; 0x0226
    jmp short @..api_idx_0008.l10    ; 0x022a
@..api_idx_0008.l9:
    mov ax, 0                        ; 0x022c
    push ax                          ; 0x022f
    call ds_app_0a27                 ; 0x0230
    pop cx                           ; 0x0233
@..api_idx_0008.l10:
    jmp near @..api_idx_0008.l15     ; 0x0234
@..api_idx_0008.l11:
    mov ax, word [bp - 0x0004]       ; 0x0237
    cmp ax, word [bp + 0xa]          ; 0x023a
    jl short @..api_idx_0008.l12     ; 0x023d
    mov ax, 0                        ; 0x023f
    push ax                          ; 0x0242
    call ds_app_0a27                 ; 0x0243
    pop cx                           ; 0x0246
    jmp near @..api_idx_0008.l15     ; 0x0247
@..api_idx_0008.l12:
    cmp word [bp + 0x10], byte 0     ; 0x024a
    jne short @..api_idx_0008.l13    ; 0x024e
    mov ax, word [bp - 0x0002]       ; 0x0250
    cmp ax, strict word 0x20         ; 0x0253
    jl short @..api_idx_0008.l13     ; 0x0256
    cmp ax, strict word 0x7f         ; 0x0258
    jle short @..api_idx_0008.l14    ; 0x025b
@..api_idx_0008.l13:
    cmp word [bp + 0x10], byte 1     ; 0x025d
    jne short @..api_idx_0008.l15    ; 0x0261
    mov ax, word [bp - 0x0002]       ; 0x0263
    cmp ax, strict word 0x30         ; 0x0266
    jl short @..api_idx_0008.l15     ; 0x0269
    cmp ax, strict word 0x39         ; 0x026b
    jg short @..api_idx_0008.l15     ; 0x026e
@..api_idx_0008.l14:
    mov al, byte [bp - 0x0002]       ; 0x0270
    mov bx, word [bp + 0x4]          ; 0x0273
    mov si, word [bp - 0x0004]       ; 0x0276
    mov byte [bx + si], al           ; 0x0279
    inc word [bp - 0x0004]           ; 0x027b
    push word [bp + 0x8]             ; 0x027e
    push word [bp + 0x6]             ; 0x0281
    call ds_loc_3a50                 ; 0x0284
    add sp, byte 4                   ; 0x0287
    mov ax, 0                        ; 0x028a
    push ax                          ; 0x028d
    mov al, byte [bp - 0x0002]       ; 0x028e
    sub ah, ah                       ; 0x0291
    push ax                          ; 0x0293
    call ds_loc_3a77                 ; 0x0294
    add sp, byte 4                   ; 0x0297
    mov ax, word [bp + 0x8]          ; 0x029a
    add ax, strict word 5            ; 0x029d
    push ax                          ; 0x02a0
    mov ax, word [bp + 0x6]          ; 0x02a1
    add ax, strict word 5            ; 0x02a4
    push ax                          ; 0x02a7
    push word [bp + 0x8]             ; 0x02a8
    push word [bp + 0x6]             ; 0x02ab
    call ds_loc_3b21                 ; 0x02ae
    add sp, byte 8                   ; 0x02b1
    add word [bp + 0x6], byte 6      ; 0x02b4
@..api_idx_0008.l15:
    jmp near @..api_idx_0008.l1      ; 0x02b8
    db 0xc3
