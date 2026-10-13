api_idx_002a:
    mov ax, 0xffd6                   ; 0x020b
    call aztec_csav                  ; 0x020e
    mov ax, 0                        ; 0x0211
    push ax                          ; 0x0214
    mov ax, 0x28                     ; 0x0215
    push ax                          ; 0x0218
    lea ax, word [bp - 0x002a]       ; 0x0219
    push ax                          ; 0x021c
    call aztec_setmem                ; 0x021d
    add sp, byte 6                   ; 0x0220
    push word [bp + 0x4]             ; 0x0223
    lea ax, word [bp - 0x002a]       ; 0x0226
    push ax                          ; 0x0229
    call aztec_strcpy                ; 0x022a
    add sp, byte 4                   ; 0x022d
    mov ax, 0x2f                     ; 0x0230
    push ax                          ; 0x0233
    lea ax, word [bp - 0x002a]       ; 0x0234
    push ax                          ; 0x0237
    call strlen                      ; 0x0238
    add sp, byte 4                   ; 0x023b
    mov word [bp - 0x0002], ax       ; 0x023e
    cmp ax, strict word 0xffff       ; 0x0241
    jne short @..api_idx_002a.l1     ; 0x0244
    lea ax, word [bp - 0x002a]       ; 0x0246
    push ax                          ; 0x0249
    call aztec_strlen                ; 0x024a
    pop cx                           ; 0x024d
    mov word [bp - 0x0002], ax       ; 0x024e
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x0251
    jle short @..api_idx_002a.l2     ; 0x0255
    mov word [bp - 0x0002], 0xa      ; 0x0257
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x025c
    add bx, bp                       ; 0x025f
    mov byte [bx - 0x002a], 0        ; 0x0261
    mov byte [bx - 0x001f], 0        ; 0x0265
    mov ax, 0                        ; 0x0269
    push ax                          ; 0x026c
    push word [bp + 0xa]             ; 0x026d
    call ds_loc_3a6a                 ; 0x0270
    add sp, byte 4                   ; 0x0273
    push word [bp + 0x8]             ; 0x0276
    push word [bp + 0x6]             ; 0x0279
    call ds_loc_3a50                 ; 0x027c
    add sp, byte 4                   ; 0x027f
    mov ax, 0                        ; 0x0282
    push ax                          ; 0x0285
    lea ax, word [bp - 0x002a]       ; 0x0286
    push ax                          ; 0x0289
    call ds_string_loc_3a95          ; 0x028a
    add sp, byte 4                   ; 0x028d
    mov ax, word [bp + 0x8]          ; 0x0290
    add ax, strict word 6            ; 0x0293
    push ax                          ; 0x0296
    push word [bp + 0x6]             ; 0x0297
    call ds_loc_3a50                 ; 0x029a
    add sp, byte 4                   ; 0x029d
    mov ax, 0                        ; 0x02a0
    push ax                          ; 0x02a3
    mov ax, word [bp - 0x0002]       ; 0x02a4
    lea cx, word [bp - 0x0029]       ; 0x02a7
    add ax, cx                       ; 0x02aa
    push ax                          ; 0x02ac
    call ds_string_loc_3a95          ; 0x02ad
    add sp, byte 4                   ; 0x02b0
    ret                              ; 0x02b3
loc_02b4:
    mov ax, 0                        ; 0x02b4
    call aztec_csav                  ; 0x02b7
    mov ax, 0xa                      ; 0x02ba
    push ax                          ; 0x02bd
    call ds_leaf_loc_36d0            ; 0x02be
    pop cx                           ; 0x02c1
    ret                              ; 0x02c2
