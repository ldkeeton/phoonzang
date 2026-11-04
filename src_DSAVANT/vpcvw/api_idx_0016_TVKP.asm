; auto-generated
api_idx_0016_TVKP:
    mov ax, 0xffea                   ; 0x9434
    call aztec_csav                  ; 0x9437
    mov ax, portrait_data_filename   ; 0x943a
    push ax                          ; 0x943d
    lea ax, word [bp - 0x16]         ; 0x943e
    push ax                          ; 0x9441
    call aztec_strcpy                ; 0x9442
    add sp, byte 4                   ; 0x9445
    mov ax, 0                        ; 0x9448
    push ax                          ; 0x944b
    call call_wait_sound             ; 0x944c
    pop cx                           ; 0x944f
    mov ax, 0                        ; 0x9450
    push ax                          ; 0x9453
    push ax                          ; 0x9454
    lea ax, word [bp - 0x16]         ; 0x9455
    push ax                          ; 0x9458
    call data_file_path              ; 0x9459
    add sp, byte 4                   ; 0x945c
    push ax                          ; 0x945f
    call aztec_open                  ; 0x9460
    add sp, byte 4                   ; 0x9463
    mov word [bp - 2], ax            ; 0x9466
    cmp ax, strict word 0xffff       ; 0x9469
    jne short .forward1              ; 0x946c
    mov ax, 0x13                     ; 0x946e
    push ax                          ; 0x9471
    call release_and_exit            ; 0x9472
    pop cx                           ; 0x9475
.forward1:
    push word [bp + 6]               ; 0x9476
    push word [bp + 4]               ; 0x9479
    mov ax, 5                        ; 0x947c
    push ax                          ; 0x947f
    push word [bp - 2]               ; 0x9480
    call read_font_glyph             ; 0x9483
    add sp, byte 8                   ; 0x9486
    push word [bp - 2]               ; 0x9489
    call aztec_close                 ; 0x948c
    pop cx                           ; 0x948f
    ret                              ; 0x9490
