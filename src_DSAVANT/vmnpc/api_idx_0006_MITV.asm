; auto-generated
api_idx_0006_MITV:
    mov ax, 0xfffa                   ; 0x72bf
    call aztec_csav                  ; 0x72c2
    mov ax, 3                        ; 0x72c5
    push ax                          ; 0x72c8
    call api_idx_0006_SHUK           ; 0x72c9
    pop cx                           ; 0x72cc
    cmp word [game_state], byte 0x0a ; 0x72cd
    je short @..api_idx_0006_MITV.l1 ; 0x72d2
    mov ax, 3                        ; 0x72d4
    push ax                          ; 0x72d7
    call loc_HTQP                    ; 0x72d8
    pop cx                           ; 0x72db
@..api_idx_0006_MITV.l1:
    mov ax, 1                        ; 0x72dc
    push ax                          ; 0x72df
    call free_picture_slot           ; 0x72e0
    pop cx                           ; 0x72e3
    mov ax, 2                        ; 0x72e4
    push ax                          ; 0x72e7
    call free_picture_slot           ; 0x72e8
    pop cx                           ; 0x72eb
    mov ax, 0xc                      ; 0x72ec
    push ax                          ; 0x72ef
    call free_picture_slot           ; 0x72f0
    pop cx                           ; 0x72f3
    mov ax, 1                        ; 0x72f4
    push ax                          ; 0x72f7
    push word [saved_area_b_hi]      ; 0x72f8
    push word [saved_area_b]         ; 0x72fc
    call gfx_restore_area            ; 0x7300
    add sp, byte 6                   ; 0x7303
    mov ax, 1                        ; 0x7306
    push ax                          ; 0x7309
    push word [saved_area_a_hi]      ; 0x730a
    push word [saved_area_a]         ; 0x730e
    call gfx_restore_area            ; 0x7312
    add sp, byte 6                   ; 0x7315
    cmp word [game_state], byte 0x0a ; 0x7318
    je short @..api_idx_0006_MITV.l2 ; 0x731d
    mov ax, 0xc6                     ; 0x731f
    push ax                          ; 0x7322
    mov ax, 0x109                    ; 0x7323
    push ax                          ; 0x7326
    mov ax, 0x92                     ; 0x7327
    push ax                          ; 0x732a
    mov ax, 0x37                     ; 0x732b
    push ax                          ; 0x732e
    call ds_app_VRKV                 ; 0x732f
    add sp, byte 8                   ; 0x7332
@..api_idx_0006_MITV.l2:
    mov word [bp - 0x0002], 0        ; 0x7335
@..api_idx_0006_MITV.l3:
    mov ax, word [bp - 0x0002]       ; 0x733a
    shl ax, 1                        ; 0x733d
    mov bx, ax                       ; 0x733f
    push word [bx - 0x7b96]          ; 0x7341
    call aztec_free                  ; 0x7345
    pop cx                           ; 0x7348
    inc word [bp - 0x0002]           ; 0x7349
    mov ax, word [bp - 0x0002]       ; 0x734c
    cmp ax, strict word 0xc          ; 0x734f
    jl short @..api_idx_0006_MITV.l3 ; 0x7352
    mov word [bp - 0x0002], 0xf      ; 0x7354
@..api_idx_0006_MITV.l4:
    mov bx, word [bp - 0x0002]       ; 0x7359
    mov al, byte [bx + 0x5b48]       ; 0x735c
    sub ah, ah                       ; 0x7360
    cmp ax, 0xff                     ; 0x7362
    je short @..api_idx_0006_MITV.l5 ; 0x7365
    push bx                          ; 0x7367
    call free_picture_slot           ; 0x7368
    pop cx                           ; 0x736b
@..api_idx_0006_MITV.l5:
    inc word [bp - 0x0002]           ; 0x736c
    mov ax, word [bp - 0x0002]       ; 0x736f
    cmp ax, strict word 0x12         ; 0x7372
    jl short @..api_idx_0006_MITV.l4 ; 0x7375
    mov ax, 0                        ; 0x7377
    push ax                          ; 0x737a
    mov ax, 0x12                     ; 0x737b
    push ax                          ; 0x737e
    mov ax, bss_843a                 ; 0x737f
    push ax                          ; 0x7382
    call aztec_setmem                ; 0x7383
    add sp, byte 6                   ; 0x7386
    mov ax, 0                        ; 0x7389
    push ax                          ; 0x738c
    mov ax, 0x12                     ; 0x738d
    push ax                          ; 0x7390
    mov ax, bss_93dc                 ; 0x7391
    push ax                          ; 0x7394
    call aztec_setmem                ; 0x7395
    add sp, byte 6                   ; 0x7398
    cmp word [bss_598e], byte 0xff   ; 0x739b
    je short @..api_idx_0006_MITV.l6 ; 0x73a0
    mov ax, 0x10                     ; 0x73a2
    push ax                          ; 0x73a5
    call wait_and_free_sound         ; 0x73a6
    pop cx                           ; 0x73a9
    mov word [bss_598e], 0xffff      ; 0x73aa
@..api_idx_0006_MITV.l6:
    mov ax, 0                        ; 0x73b0
    push ax                          ; 0x73b3
    mov ax, 1                        ; 0x73b4
    push ax                          ; 0x73b7
    push word [bss_9066]             ; 0x73b8
    push word [bss_9064]             ; 0x73bc
    call gfx_restore_screen          ; 0x73c0
    add sp, byte 8                   ; 0x73c3
    mov ax, dseg_90dc                ; 0x73c6
    push ax                          ; 0x73c9
    mov ax, 0x8f                     ; 0x73ca
    push ax                          ; 0x73cd
    mov ax, 0xf7                     ; 0x73ce
    push ax                          ; 0x73d1
    mov ax, 0x21                     ; 0x73d2
    push ax                          ; 0x73d5
    mov ax, 0x48                     ; 0x73d6
    push ax                          ; 0x73d9
    call save_screen_area            ; 0x73da
    add sp, byte 0x0a                ; 0x73dd
    mov word [bss_9068], ax          ; 0x73e0
    mov word [bss_906a], 1           ; 0x73e3
    mov ax, 0                        ; 0x73e9
    push ax                          ; 0x73ec
    mov ax, 1                        ; 0x73ed
    push ax                          ; 0x73f0
    push word [bss_9062]             ; 0x73f1
    push word [screen_cache]         ; 0x73f5
    call gfx_restore_screen          ; 0x73f9
    add sp, byte 8                   ; 0x73fc
    ret                              ; 0x73ff
