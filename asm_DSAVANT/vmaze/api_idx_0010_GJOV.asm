; auto-generated
api_idx_0010_GJOV:
    mov ax, 0xfff0                   ; 0x820b
    call aztec_csav                  ; 0x820e
    mov ax, word [bss_8d12]          ; 0x8211
    shl ax, 1                        ; 0x8214
    mov si, ax                       ; 0x8216
    mov bx, word [bss_0e12]          ; 0x8218
    mov ax, word [bx + si + 0x3c0]   ; 0x821c
    mov word [bp - 0x0004], ax       ; 0x8220
    mov ax, 3                        ; 0x8223
    push ax                          ; 0x8226
    mov ax, 0                        ; 0x8227
    push ax                          ; 0x822a
    push word [bp - 0x0004]          ; 0x822b
    call ds_dos_con_loc_RGTO         ; 0x822e
    add sp, byte 6                   ; 0x8231
    mov word [bp - 0x0006], ax       ; 0x8234
    mov ax, 3                        ; 0x8237
    push ax                          ; 0x823a
    push ax                          ; 0x823b
    push word [bp - 0x0004]          ; 0x823c
    call ds_dos_con_loc_RGTO         ; 0x823f
    add sp, byte 6                   ; 0x8242
    mov word [bp - 0x0008], ax       ; 0x8245
    mov ax, 4                        ; 0x8248
    push ax                          ; 0x824b
    mov ax, 6                        ; 0x824c
    push ax                          ; 0x824f
    push word [bp - 0x0004]          ; 0x8250
    call ds_dos_con_loc_RGTO         ; 0x8253
    add sp, byte 6                   ; 0x8256
    mov word [bp - 0x000a], ax       ; 0x8259
    mov ax, word [bss_8d12]          ; 0x825c
    shl ax, 1                        ; 0x825f
    mov si, ax                       ; 0x8261
    mov bx, word [bss_0e12]          ; 0x8263
    mov ax, word [bx + si + 0x1e0]   ; 0x8267
    mov word [bp - 0x0010], ax       ; 0x826b
    mov ax, word [bp - 0x000a]       ; 0x826e
    mov cx, 6                        ; 0x8271
    shl ax, cl                       ; 0x8274
    mov cx, word [bp - 0x0008]       ; 0x8276
    shl cx, 1                        ; 0x8279
    shl cx, 1                        ; 0x827b
    shl cx, 1                        ; 0x827d
    add ax, cx                       ; 0x827f
    add ax, word [bp - 0x0006]       ; 0x8281
    mov word [bp - 0x0002], ax       ; 0x8284
    mov ax, word [bx + si]           ; 0x8287
    mov word [bp - 0x000c], ax       ; 0x8289
    mov si, word [bss_8d12]          ; 0x828c
    mov al, byte [bx + si + 0xa50]   ; 0x8290
    sub ah, ah                       ; 0x8294
    mov word [bp - 0x000e], ax       ; 0x8296
    mov ax, 0                        ; 0x8299
    push ax                          ; 0x829c
    push ax                          ; 0x829d
    push word [bp - 0x000e]          ; 0x829e
    push word [bp - 0x000c]          ; 0x82a1
    push word [bp - 0x0008]          ; 0x82a4
    push word [bp - 0x0006]          ; 0x82a7
    push word [bp - 0x000a]          ; 0x82aa
    mov ax, 5                        ; 0x82ad
    push ax                          ; 0x82b0
    push word [bss_830c]             ; 0x82b1
    call api_idx_0004_VVMS           ; 0x82b5
    add sp, byte 0x12                ; 0x82b8
    push word [bp - 0x000c]          ; 0x82bb
    mov ax, 6                        ; 0x82be
    push ax                          ; 0x82c1
    push word [bp - 0x0002]          ; 0x82c2
    mov ax, word [bss_0e14]          ; 0x82c5
    add ax, 0x4b0                    ; 0x82c8
    push ax                          ; 0x82cb
    call ds_leaf_loc_JGPJ            ; 0x82cc
    add sp, byte 8                   ; 0x82cf
    push word [bp - 0x000e]          ; 0x82d2
    mov ax, 2                        ; 0x82d5
    push ax                          ; 0x82d8
    push word [bp - 0x0002]          ; 0x82d9
    mov ax, word [bss_0e14]          ; 0x82dc
    add ax, 0x7b0                    ; 0x82df
    push ax                          ; 0x82e2
    call ds_leaf_loc_JGPJ            ; 0x82e3
    add sp, byte 8                   ; 0x82e6
    cmp word [bp - 0x0010], byte 0   ; 0x82e9
    jle short @..api_idx_0010_GJOV.l1 ; 0x82ed
    push word [bp - 0x0010]          ; 0x82ef
    call ds_app_LOMI                 ; 0x82f2
    pop cx                           ; 0x82f5
@..api_idx_0010_GJOV.l1:
    mov ax, 1                        ; 0x82f6
    push ax                          ; 0x82f9
    mov ax, 0xa                      ; 0x82fa
    push ax                          ; 0x82fd
    push word [bp - 0x0004]          ; 0x82fe
    call ds_dos_con_loc_RGTO         ; 0x8301
    add sp, byte 6                   ; 0x8304
    cmp ax, strict word 1            ; 0x8307
    je short @..api_idx_0010_GJOV.l2 ; 0x830a
    jmp near @..api_idx_0010_GJOV.l10 ; 0x830c
@..api_idx_0010_GJOV.l2:
    call loc_JGLI                    ; 0x830f
    mov ax, word [bp - 0x000c]       ; 0x8312
    cmp ax, strict word 5            ; 0x8315
    je short @..api_idx_0010_GJOV.l3 ; 0x8318
    cmp ax, strict word 6            ; 0x831a
    je short @..api_idx_0010_GJOV.l3 ; 0x831d
    cmp ax, strict word 0xa          ; 0x831f
    je short @..api_idx_0010_GJOV.l3 ; 0x8322
    cmp ax, strict word 0xb          ; 0x8324
    jne short @..api_idx_0010_GJOV.l10 ; 0x8327
@..api_idx_0010_GJOV.l3:
    cmp ax, strict word 6            ; 0x8329
    je short @..api_idx_0010_GJOV.l4 ; 0x832c
    cmp ax, strict word 0xa          ; 0x832e
    je short @..api_idx_0010_GJOV.l4 ; 0x8331
    cmp ax, strict word 0xb          ; 0x8333
    jne short @..api_idx_0010_GJOV.l6 ; 0x8336
@..api_idx_0010_GJOV.l4:
    mov ax, 0x80a                    ; 0x8338
    cmp word [bp - 0x000c], byte 6   ; 0x833b
    jne short @..api_idx_0010_GJOV.l5 ; 0x833f
    mov ax, 0x7fc                    ; 0x8341
@..api_idx_0010_GJOV.l5:
    push ax                          ; 0x8344
    call api_idx_0050_RIIV           ; 0x8345
    pop cx                           ; 0x8348
@..api_idx_0010_GJOV.l6:
    cmp word [bp - 0x000c], byte 5   ; 0x8349
    je short @..api_idx_0010_GJOV.l7 ; 0x834d
    cmp word [bp - 0x000c], byte 6   ; 0x834f
    jne short @..api_idx_0010_GJOV.l8 ; 0x8353
@..api_idx_0010_GJOV.l7:
    mov ax, 4                        ; 0x8355
    jmp short @..api_idx_0010_GJOV.l9 ; 0x8358
@..api_idx_0010_GJOV.l8:
    mov ax, 1                        ; 0x835a
@..api_idx_0010_GJOV.l9:
    push ax                          ; 0x835d
    call ds_app_IPOK                 ; 0x835e
    pop cx                           ; 0x8361
    mov ax, 2                        ; 0x8362
    push ax                          ; 0x8365
    call api_idx_0006_KLOT           ; 0x8366
    pop cx                           ; 0x8369
    mov ax, 0x98                     ; 0x836a
    push ax                          ; 0x836d
    mov ax, 0x13f                    ; 0x836e
    push ax                          ; 0x8371
    mov ax, 0x92                     ; 0x8372
    push ax                          ; 0x8375
    mov ax, 0                        ; 0x8376
    push ax                          ; 0x8379
    call thunk_4                     ; 0x837a
    add sp, byte 8                   ; 0x837d
@..api_idx_0010_GJOV.l10:
    cmp word [bp - 0x0010], byte 0   ; 0x8380
    jle short @..api_idx_0010_GJOV.l11 ; 0x8384
    mov ax, 0x10                     ; 0x8386
    push ax                          ; 0x8389
    call ds_app_IPOK                 ; 0x838a
    pop cx                           ; 0x838d
    mov ax, 0x10                     ; 0x838e
    push ax                          ; 0x8391
    call ds_app_KKKO                 ; 0x8392
    pop cx                           ; 0x8395
    mov word [bss_598e], 0xffff      ; 0x8396
@..api_idx_0010_GJOV.l11:
    mov ax, 2                        ; 0x839c
    push ax                          ; 0x839f
    mov ax, 0xb                      ; 0x83a0
    push ax                          ; 0x83a3
    push word [bp - 0x0004]          ; 0x83a4
    call ds_dos_con_loc_RGTO         ; 0x83a7
    add sp, byte 6                   ; 0x83aa
    push ax                          ; 0x83ad
    call loc_VMLV                    ; 0x83ae
    pop cx                           ; 0x83b1
    ret                              ; 0x83b2
