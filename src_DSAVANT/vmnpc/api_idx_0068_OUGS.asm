; auto-generated
api_idx_0068_OUGS:
    mov ax, 0xff98                   ; 0x51bb
    call aztec_csav                  ; 0x51be
    push word [bp + 0x4]             ; 0x51c1
    call api_idx_004c_OGSK           ; 0x51c4
    pop cx                           ; 0x51c7
    cmp word [bss_9ca8], byte 0      ; 0x51c8
    jne short @..api_idx_0068_OUGS.l1 ; 0x51cd
    ret                              ; 0x51cf
@..api_idx_0068_OUGS.l1:
    mov ax, 0                        ; 0x51d0
    push ax                          ; 0x51d3
    call api_idx_0006_SHUK           ; 0x51d4
    pop cx                           ; 0x51d7
    call loc_UTQS                    ; 0x51d8
    mov ax, 0x248                    ; 0x51db
    imul word [bp + 0x4]             ; 0x51de
    add ax, bss_5bf4                 ; 0x51e1
    push ax                          ; 0x51e4
    push word [bss_9ca8]             ; 0x51e5
    mov ax, 1                        ; 0x51e9
    push ax                          ; 0x51ec
    push ax                          ; 0x51ed
    mov ax, 0                        ; 0x51ee
    push ax                          ; 0x51f1
    mov ax, 0x5ea                    ; 0x51f2
    push ax                          ; 0x51f5
    call api_idx_0038_IJUK           ; 0x51f6
    add sp, byte 0x0c                ; 0x51f9
    mov word [bp - 0x004c], ax       ; 0x51fc
    mov ax, word [bss_904e]          ; 0x51ff
    mov word [bp - 0x0002], ax       ; 0x5202
    cmp word [bp - 0x004c], byte 2   ; 0x5205
    je short @..api_idx_0068_OUGS.l2 ; 0x5209
    cmp ax, strict word 0xffff       ; 0x520b
    jne short @..api_idx_0068_OUGS.l3 ; 0x520e
@..api_idx_0068_OUGS.l2:
    mov ax, 0xc6                     ; 0x5210
    push ax                          ; 0x5213
    mov ax, 0x109                    ; 0x5214
    push ax                          ; 0x5217
    mov ax, 0x8e                     ; 0x5218
    push ax                          ; 0x521b
    mov ax, 0x36                     ; 0x521c
    push ax                          ; 0x521f
    call gfx_entry_16                ; 0x5220
    add sp, byte 8                   ; 0x5223
    ret                              ; 0x5226
@..api_idx_0068_OUGS.l3:
    mov ax, word [bp - 0x0002]       ; 0x5227
    shl ax, 1                        ; 0x522a
    mov bx, ax                       ; 0x522c
    mov ax, word [bx - 0x6356]       ; 0x522e
    mov cx, 0x100                    ; 0x5232
    cwd                              ; 0x5235
    idiv cx                          ; 0x5236
    mov word [bp - 0x004e], ax       ; 0x5238
    mov word [bp - 0x0050], dx       ; 0x523b
    mov ax, 0x10                     ; 0x523e
    push ax                          ; 0x5241
    mov ax, 0xc                      ; 0x5242
    push ax                          ; 0x5245
    mov ax, 0x96                     ; 0x5246
    push ax                          ; 0x5249
    mov ax, 0x3f                     ; 0x524a
    push ax                          ; 0x524d
    push word [bp - 0x004c]          ; 0x524e
    mov ax, word [bp - 0x004c]       ; 0x5251
    add ax, 0x5ea                    ; 0x5254
    push ax                          ; 0x5257
    call api_idx_0018_RGOS           ; 0x5258
    add sp, byte 0x0c                ; 0x525b
    mov ax, word [bp - 0x004c]       ; 0x525e
    cmp word [bp - 0x004c], byte 1   ; 0x5261
    je short @..api_idx_0068_OUGS.l4 ; 0x5265
    jmp near @..api_idx_0068_OUGS.l6 ; 0x5267
@..api_idx_0068_OUGS.l4:
    mov ax, 0                        ; 0x526a
    push ax                          ; 0x526d
    mov ax, 0x248                    ; 0x526e
    imul word [bp + 0x4]             ; 0x5271
    push ax                          ; 0x5274
    mov ax, 0x78                     ; 0x5275
    imul word [bp - 0x004e]          ; 0x5278
    mov cx, ax                       ; 0x527b
    pop ax                           ; 0x527d
    add ax, cx                       ; 0x527e
    push ax                          ; 0x5280
    mov ax, 0xc                      ; 0x5281
    imul word [bp - 0x0050]          ; 0x5284
    mov cx, ax                       ; 0x5287
    pop ax                           ; 0x5289
    add ax, cx                       ; 0x528a
    mov bx, ax                       ; 0x528c
    push word [bx + 0x5c34]          ; 0x528e
    lea ax, word [bp - 0x004a]       ; 0x5292
    push ax                          ; 0x5295
    mov ax, 1                        ; 0x5296
    push ax                          ; 0x5299
    call data_record_io              ; 0x529a
    add sp, byte 8                   ; 0x529d
    cmp word [bp - 0x0028], byte 0   ; 0x52a0
    je short @..api_idx_0068_OUGS.l6 ; 0x52a4
    mov ax, word [bp - 0x0028]       ; 0x52a6
    mov cx, 0x100                    ; 0x52a9
    cwd                              ; 0x52ac
    idiv cx                          ; 0x52ad
    mov word [bp - 0x0054], ax       ; 0x52af
    mov word [bp - 0x0052], dx       ; 0x52b2
    mov ax, 6                        ; 0x52b5
    imul dx                          ; 0x52b8
    mov bx, ax                       ; 0x52ba
    cmp byte [bx + 0x624], 1         ; 0x52bc
    jne short @..api_idx_0068_OUGS.l5 ; 0x52c1
    call ds_app_VGOM                 ; 0x52c3
    mov word [bss_9650], ax          ; 0x52c6
    cmp ax, strict word 0xffff       ; 0x52c9
    jne short @..api_idx_0068_OUGS.l5 ; 0x52cc
    mov word [bp - 0x0052], 0xffff   ; 0x52ce
@..api_idx_0068_OUGS.l5:
    cmp word [bp - 0x0052], byte 0xff ; 0x52d3
    je short @..api_idx_0068_OUGS.l6 ; 0x52d7
    mov ax, 0xc6                     ; 0x52d9
    push ax                          ; 0x52dc
    mov ax, 0x109                    ; 0x52dd
    push ax                          ; 0x52e0
    mov ax, 0x8e                     ; 0x52e1
    push ax                          ; 0x52e4
    mov ax, 0x36                     ; 0x52e5
    push ax                          ; 0x52e8
    call gfx_entry_16                ; 0x52e9
    add sp, byte 8                   ; 0x52ec
    push word [bp - 0x0050]          ; 0x52ef
    push word [bp - 0x004e]          ; 0x52f2
    push word [bp + 0x4]             ; 0x52f5
    call ds_app_UTUH                 ; 0x52f8
    add sp, byte 6                   ; 0x52fb
    push word [bss_9650]             ; 0x52fe
    push word [bp - 0x0054]          ; 0x5302
    push word [bp - 0x0052]          ; 0x5305
    push word [bp + 0x4]             ; 0x5308
    call api_idx_0008_HUTJ           ; 0x530b
    add sp, byte 8                   ; 0x530e
@..api_idx_0068_OUGS.l6:
    mov ax, 0xc6                     ; 0x5311
    push ax                          ; 0x5314
    mov ax, 0x109                    ; 0x5315
    push ax                          ; 0x5318
    mov ax, 0x8e                     ; 0x5319
    push ax                          ; 0x531c
    mov ax, 0x36                     ; 0x531d
    push ax                          ; 0x5320
    call gfx_entry_16                ; 0x5321
    add sp, byte 8                   ; 0x5324
    mov ax, 1                        ; 0x5327
    push ax                          ; 0x532a
    push word [bp + 0x4]             ; 0x532b
    call ds_app_LUOV                 ; 0x532e
    add sp, byte 4                   ; 0x5331
    cmp word [bp - 0x004c], byte 1   ; 0x5334
    jne short @..api_idx_0068_OUGS.l7 ; 0x5338
    mov ax, 0                        ; 0x533a
    push ax                          ; 0x533d
    push ax                          ; 0x533e
    mov ax, 0x248                    ; 0x533f
    imul word [bp + 0x4]             ; 0x5342
    push ax                          ; 0x5345
    mov ax, 0x78                     ; 0x5346
    imul word [bp - 0x004e]          ; 0x5349
    mov cx, ax                       ; 0x534c
    pop ax                           ; 0x534e
    add ax, cx                       ; 0x534f
    push ax                          ; 0x5351
    mov ax, 0xc                      ; 0x5352
    imul word [bp - 0x0050]          ; 0x5355
    mov cx, ax                       ; 0x5358
    pop ax                           ; 0x535a
    add ax, cx                       ; 0x535b
    mov bx, ax                       ; 0x535d
    push word [bx + 0x5c34]          ; 0x535f
    mov ax, 9                        ; 0x5363
    push ax                          ; 0x5366
    push word [bp + 0x4]             ; 0x5367
    call api_idx_0006_SRQN           ; 0x536a
    add sp, byte 0x0a                ; 0x536d
@..api_idx_0068_OUGS.l7:
    ret                              ; 0x5370
