; auto-generated
api_idx_0006:
    mov ax, 0xfffa                   ; 0x018d
    call aztec_csav                  ; 0x0190
    mov ax, word [bp + 0x4]          ; 0x0193
    jmp near @..api_idx_0006.l5      ; 0x0196
@..api_idx_0006.l1:
    mov ax, 0x9098                   ; 0x0199
    push ax                          ; 0x019c
    mov ax, 0xc2                     ; 0x019d
    push ax                          ; 0x01a0
    mov ax, 0xe0                     ; 0x01a1
    push ax                          ; 0x01a4
    mov ax, 0xa4                     ; 0x01a5
    push ax                          ; 0x01a8
    mov ax, 0x62                     ; 0x01a9
    push ax                          ; 0x01ac
    call ds_app_file_14ca            ; 0x01ad
    add sp, byte 0x0a                ; 0x01b0
    mov word [bp - 0x0002], ax       ; 0x01b3
    mov ax, 0                        ; 0x01b6
    push ax                          ; 0x01b9
    call api_idx_000a                ; 0x01ba
    pop cx                           ; 0x01bd
    mov ax, 1                        ; 0x01be
    push ax                          ; 0x01c1
    push word [bp - 0x0002]          ; 0x01c2
    call ds_app_file_16a0            ; 0x01c5
    add sp, byte 4                   ; 0x01c8
    jmp near @..api_idx_0006.l8      ; 0x01cb
@..api_idx_0006.l2:
    mov ax, 0x909f                   ; 0x01ce
    push ax                          ; 0x01d1
    mov ax, 0xc2                     ; 0x01d2
    push ax                          ; 0x01d5
    mov ax, 0x60                     ; 0x01d6
    push ax                          ; 0x01d9
    mov ax, 0xa5                     ; 0x01da
    push ax                          ; 0x01dd
    mov ax, 8                        ; 0x01de
    push ax                          ; 0x01e1
    call ds_app_file_14ca            ; 0x01e2
    add sp, byte 0x0a                ; 0x01e5
    mov word [bp - 0x0002], ax       ; 0x01e8
    mov ax, 0x90a6                   ; 0x01eb
    push ax                          ; 0x01ee
    mov ax, 0xc2                     ; 0x01ef
    push ax                          ; 0x01f2
    mov ax, 0x13a                    ; 0x01f3
    push ax                          ; 0x01f6
    mov ax, 0xa5                     ; 0x01f7
    push ax                          ; 0x01fa
    mov ax, 0xe7                     ; 0x01fb
    push ax                          ; 0x01fe
    call ds_app_file_14ca            ; 0x01ff
    add sp, byte 0x0a                ; 0x0202
    mov word [bp - 0x0004], ax       ; 0x0205
    mov ax, 0x90ad                   ; 0x0208
    push ax                          ; 0x020b
    mov ax, 0x9f                     ; 0x020c
    push ax                          ; 0x020f
    mov ax, 0xcd                     ; 0x0210
    push ax                          ; 0x0213
    mov ax, 0x93                     ; 0x0214
    push ax                          ; 0x0217
    mov ax, 0x73                     ; 0x0218
    push ax                          ; 0x021b
    call ds_app_file_14ca            ; 0x021c
    add sp, byte 0x0a                ; 0x021f
    mov word [bp - 0x0006], ax       ; 0x0222
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    call api_idx_000a                ; 0x0229
    pop cx                           ; 0x022c
    mov ax, 1                        ; 0x022d
    push ax                          ; 0x0230
    push word [bp - 0x0006]          ; 0x0231
    call ds_app_file_16a0            ; 0x0234
    add sp, byte 4                   ; 0x0237
    mov ax, 1                        ; 0x023a
    push ax                          ; 0x023d
    push word [bp - 0x0004]          ; 0x023e
    call ds_app_file_16a0            ; 0x0241
    add sp, byte 4                   ; 0x0244
    mov ax, 1                        ; 0x0247
    push ax                          ; 0x024a
    push word [bp - 0x0002]          ; 0x024b
    call ds_app_file_16a0            ; 0x024e
    add sp, byte 4                   ; 0x0251
    jmp short @..api_idx_0006.l8     ; 0x0254
@..api_idx_0006.l3:
    mov ax, 0x90b4                   ; 0x0256
    push ax                          ; 0x0259
    mov ax, 0xc2                     ; 0x025a
    push ax                          ; 0x025d
    mov ax, 0x13a                    ; 0x025e
    push ax                          ; 0x0261
    mov ax, 0xa4                     ; 0x0262
    push ax                          ; 0x0265
    mov ax, 8                        ; 0x0266
    push ax                          ; 0x0269
    call ds_app_file_14ca            ; 0x026a
    add sp, byte 0x0a                ; 0x026d
    mov word [bp - 0x0002], ax       ; 0x0270
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    call api_idx_000a                ; 0x0277
    pop cx                           ; 0x027a
    mov ax, 1                        ; 0x027b
    push ax                          ; 0x027e
    push word [bp - 0x0002]          ; 0x027f
    call ds_app_file_16a0            ; 0x0282
    add sp, byte 4                   ; 0x0285
    jmp short @..api_idx_0006.l8     ; 0x0288
@..api_idx_0006.l4:
    mov ax, 0                        ; 0x028a
    push ax                          ; 0x028d
    call api_idx_000a                ; 0x028e
    pop cx                           ; 0x0291
    jmp short @..api_idx_0006.l8     ; 0x0292
@..api_idx_0006.l5:
    cmp ax, strict word 0            ; 0x0294
    jne short @..api_idx_0006.l6     ; 0x0297
    jmp near @..api_idx_0006.l1      ; 0x0299
@..api_idx_0006.l6:
    cmp ax, strict word 1            ; 0x029c
    jne short @..api_idx_0006.l7     ; 0x029f
    jmp near @..api_idx_0006.l2      ; 0x02a1
@..api_idx_0006.l7:
    cmp ax, strict word 2            ; 0x02a4
    je short @..api_idx_0006.l3      ; 0x02a7
    cmp ax, strict word 3            ; 0x02a9
    je short @..api_idx_0006.l4      ; 0x02ac
@..api_idx_0006.l8:
    ret                              ; 0x02ae
loc_02af:
    mov ax, 0                        ; 0x02af
    call aztec_csav                  ; 0x02b2
    mov ax, word [bp + 0x4]          ; 0x02b5
    jmp near @..loc_02af.l5          ; 0x02b8
@..loc_02af.l1:
    mov ax, 0x9f                     ; 0x02bb
    push ax                          ; 0x02be
    mov ax, 0xcd                     ; 0x02bf
    push ax                          ; 0x02c2
    mov ax, 0x93                     ; 0x02c3
    push ax                          ; 0x02c6
    mov ax, 0x73                     ; 0x02c7
    push ax                          ; 0x02ca
    call ds_loc_3b21                 ; 0x02cb
    add sp, byte 8                   ; 0x02ce
    mov ax, 0xc2                     ; 0x02d1
    push ax                          ; 0x02d4
    mov ax, 0x60                     ; 0x02d5
    push ax                          ; 0x02d8
    mov ax, 0xa5                     ; 0x02d9
    push ax                          ; 0x02dc
    mov ax, 8                        ; 0x02dd
    push ax                          ; 0x02e0
    call ds_loc_3b21                 ; 0x02e1
    add sp, byte 8                   ; 0x02e4
    mov ax, 0xc2                     ; 0x02e7
    push ax                          ; 0x02ea
    mov ax, 0x13a                    ; 0x02eb
    push ax                          ; 0x02ee
    mov ax, 0xa5                     ; 0x02ef
    push ax                          ; 0x02f2
    mov ax, 0xe7                     ; 0x02f3
    push ax                          ; 0x02f6
    call ds_loc_3b21                 ; 0x02f7
    add sp, byte 8                   ; 0x02fa
    jmp short @..loc_02af.l7         ; 0x02fd
@..loc_02af.l2:
    mov ax, 0xc2                     ; 0x02ff
    push ax                          ; 0x0302
    mov ax, 0xe0                     ; 0x0303
    push ax                          ; 0x0306
    mov ax, 0xa4                     ; 0x0307
    push ax                          ; 0x030a
    mov ax, 0x62                     ; 0x030b
    push ax                          ; 0x030e
    call ds_loc_3b21                 ; 0x030f
    add sp, byte 8                   ; 0x0312
    jmp short @..loc_02af.l7         ; 0x0315
@..loc_02af.l3:
    mov ax, 0x9f                     ; 0x0317
    push ax                          ; 0x031a
    mov ax, 0xcd                     ; 0x031b
    push ax                          ; 0x031e
    mov ax, 0x93                     ; 0x031f
    push ax                          ; 0x0322
    mov ax, 0x73                     ; 0x0323
    push ax                          ; 0x0326
    call ds_loc_3b21                 ; 0x0327
    add sp, byte 8                   ; 0x032a
    jmp short @..loc_02af.l7         ; 0x032d
@..loc_02af.l4:
    mov ax, 0xc2                     ; 0x032f
    push ax                          ; 0x0332
    mov ax, 0x13a                    ; 0x0333
    push ax                          ; 0x0336
    mov ax, 0x93                     ; 0x0337
    push ax                          ; 0x033a
    mov ax, 8                        ; 0x033b
    push ax                          ; 0x033e
    call ds_loc_3b21                 ; 0x033f
    add sp, byte 8                   ; 0x0342
    jmp short @..loc_02af.l7         ; 0x0345
@..loc_02af.l5:
    cmp ax, strict word 0            ; 0x0347
    jne short @..loc_02af.l6         ; 0x034a
    jmp near @..loc_02af.l1          ; 0x034c
@..loc_02af.l6:
    cmp ax, strict word 1            ; 0x034f
    je short @..loc_02af.l2          ; 0x0352
    cmp ax, strict word 2            ; 0x0354
    je short @..loc_02af.l3          ; 0x0357
    cmp ax, strict word 3            ; 0x0359
    je short @..loc_02af.l4          ; 0x035c
@..loc_02af.l7:
    ret                              ; 0x035e
