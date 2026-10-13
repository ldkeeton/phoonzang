api_idx_0008:
    mov ax, 0xfff8                   ; 0x01c9
    call aztec_csav                  ; 0x01cc
    mov word [bp - 0x0008], 0        ; 0x01cf
    call loc_13c0                    ; 0x01d4
    cmp word [bss_919e], byte 0      ; 0x01d7
    je short @..api_idx_0008.l2      ; 0x01dc
    cmp word [bss_9194], byte 0x0d   ; 0x01de
    je short @..api_idx_0008.l1      ; 0x01e3
    mov ax, 0                        ; 0x01e5
    push ax                          ; 0x01e8
    mov ax, 0xd                      ; 0x01e9
    push ax                          ; 0x01ec
    call loc_017f                    ; 0x01ed
    add sp, byte 4                   ; 0x01f0
@..api_idx_0008.l1:
    mov ax, word [bp + 0xe]          ; 0x01f3
    mov word [bss_9198], ax          ; 0x01f6
    ret                              ; 0x01f9
@..api_idx_0008.l2:
    mov ax, word [bp + 0xe]          ; 0x01fa
    jmp near @..api_idx_0008.l10     ; 0x01fd
@..api_idx_0008.l3:
    mov ax, word [bss_8f3e]          ; 0x0200
    mov cx, 6                        ; 0x0203
    shl ax, cl                       ; 0x0206
    mov cx, word [bss_8f40]          ; 0x0208
    shl cx, 1                        ; 0x020c
    shl cx, 1                        ; 0x020e
    shl cx, 1                        ; 0x0210
    add ax, cx                       ; 0x0212
    add ax, word [bss_8f42]          ; 0x0214
    mov word [bp - 0x0002], ax       ; 0x0218
    push ax                          ; 0x021b
    mov ax, word [bss_0e14]          ; 0x021c
    add ax, 0x8b0                    ; 0x021f
    push ax                          ; 0x0222
    call ds_leaf_loc_3ebb            ; 0x0223
    add sp, byte 4                   ; 0x0226
    test ax, ax                      ; 0x0229
    je short @..api_idx_0008.l4      ; 0x022b
    push word [bp - 0x0002]          ; 0x022d
    mov ax, word [bss_0e14]          ; 0x0230
    add ax, 0x9b0                    ; 0x0233
    push ax                          ; 0x0236
    call ds_leaf_loc_3ebb            ; 0x0237
    add sp, byte 4                   ; 0x023a
    test ax, ax                      ; 0x023d
    je short @..api_idx_0008.l4      ; 0x023f
    mov ax, 1                        ; 0x0241
    jmp short @..api_idx_0008.l5     ; 0x0244
@..api_idx_0008.l4:
    mov ax, 0                        ; 0x0246
@..api_idx_0008.l5:
    mov word [bp - 0x0008], ax       ; 0x0249
    jmp short @..api_idx_0008.l12    ; 0x024c
@..api_idx_0008.l6:
    mov word [bp - 0x0004], 0x14a    ; 0x024e
    mov ax, word [bss_8f1c]          ; 0x0253
    mov dx, word [bss_8f1e]          ; 0x0256
    push ax                          ; 0x025a
    push dx                          ; 0x025b
    mov ax, word [bp - 0x0004]       ; 0x025c
    cwd                              ; 0x025f
    mov cx, ax                       ; 0x0260
    mov bx, dx                       ; 0x0262
    pop dx                           ; 0x0264
    pop ax                           ; 0x0265
    sub ax, cx                       ; 0x0266
    sbb dx, bx                       ; 0x0268
    mov cx, 0x5a0                    ; 0x026a
    mov bx, 0                        ; 0x026d
    call aztec_lrm                   ; 0x0270
    mov word [bp - 0x0006], ax       ; 0x0273
    cmp ax, strict word 0            ; 0x0276
    jl short @..api_idx_0008.l7      ; 0x0279
    cmp ax, 0x36c                    ; 0x027b
    jl short @..api_idx_0008.l8      ; 0x027e
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x0280
    jmp short @..api_idx_0008.l9     ; 0x0283
@..api_idx_0008.l8:
    mov ax, 0                        ; 0x0285
@..api_idx_0008.l9:
    mov word [bp - 0x0008], ax       ; 0x0288
    jmp short @..api_idx_0008.l12    ; 0x028b
@..api_idx_0008.l10:
    cmp ax, strict word 2            ; 0x028d
    jne short @..api_idx_0008.l11    ; 0x0290
    jmp near @..api_idx_0008.l3      ; 0x0292
@..api_idx_0008.l11:
    jmp short @..api_idx_0008.l6     ; 0x0295
@..api_idx_0008.l12:
    cmp word [bp - 0x0008], byte 0   ; 0x0297
    je short @..api_idx_0008.l15     ; 0x029b
    mov ax, word [bss_9194]          ; 0x029d
    cmp ax, word [bp + 0x8]          ; 0x02a0
    jne short @..api_idx_0008.l13    ; 0x02a3
    cmp word [bp + 0xc], byte 0      ; 0x02a5
    je short @..api_idx_0008.l14     ; 0x02a9
@..api_idx_0008.l13:
    push word [bp + 0xa]             ; 0x02ab
    push word [bp + 0x8]             ; 0x02ae
    call loc_017f                    ; 0x02b1
    add sp, byte 4                   ; 0x02b4
@..api_idx_0008.l14:
    jmp short @..api_idx_0008.l17    ; 0x02b7
@..api_idx_0008.l15:
    mov ax, word [bss_9194]          ; 0x02b9
    cmp ax, word [bp + 0x4]          ; 0x02bc
    jne short @..api_idx_0008.l16    ; 0x02bf
    cmp word [bp + 0xc], byte 0      ; 0x02c1
    je short @..api_idx_0008.l17     ; 0x02c5
@..api_idx_0008.l16:
    push word [bp + 0x6]             ; 0x02c7
    push word [bp + 0x4]             ; 0x02ca
    call loc_017f                    ; 0x02cd
    add sp, byte 4                   ; 0x02d0
@..api_idx_0008.l17:
    mov ax, word [bp + 0xe]          ; 0x02d3
    mov word [bss_9198], ax          ; 0x02d6
    ret                              ; 0x02d9
