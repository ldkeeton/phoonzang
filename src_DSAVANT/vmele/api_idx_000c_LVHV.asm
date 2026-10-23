; auto-generated
api_idx_000c_LVHV:
    mov ax, 0xfff4                   ; 0x030a
    call aztec_csav                  ; 0x030d
    mov ax, 1                        ; 0x0310
    push ax                          ; 0x0313
    call restore_areas_redraw_glyph  ; 0x0314
    pop cx                           ; 0x0317
    mov ax, 2                        ; 0x0318
    push ax                          ; 0x031b
    push word [bp + 0x4]             ; 0x031c
    call measure_text_width          ; 0x031f
    add sp, byte 4                   ; 0x0322
    mov word [bp - 0x0006], ax       ; 0x0325
    inc ax                           ; 0x0328
    mov cx, 2                        ; 0x0329
    cwd                              ; 0x032c
    idiv cx                          ; 0x032d
    mov cx, ax                       ; 0x032f
    mov ax, 0xa0                     ; 0x0331
    sub ax, cx                       ; 0x0334
    mov word [bp - 0x0002], ax       ; 0x0336
    add ax, word [bp - 0x0006]       ; 0x0339
    mov word [bp - 0x0004], ax       ; 0x033c
    mov ax, 0                        ; 0x033f
    push ax                          ; 0x0342
    mov ax, 0x55                     ; 0x0343
    push ax                          ; 0x0346
    call gfx_set_text_color          ; 0x0347
    add sp, byte 4                   ; 0x034a
    mov ax, 0xa4                     ; 0x034d
    push ax                          ; 0x0350
    push word [bp - 0x0002]          ; 0x0351
    call gfx_set_text_pos            ; 0x0354
    add sp, byte 4                   ; 0x0357
    mov ax, 2                        ; 0x035a
    push ax                          ; 0x035d
    push word [bp + 0x4]             ; 0x035e
    call draw_text_glyphs            ; 0x0361
    add sp, byte 4                   ; 0x0364
    mov ax, word [loaded_sound_id]   ; 0x0367
    mov word [bp - 0x000c], ax       ; 0x036a
    push word [bp + 0x6]             ; 0x036d
    call ds_app_QTIV                 ; 0x0370
    pop cx                           ; 0x0373
    mov ax, 0xb0                     ; 0x0374
    push ax                          ; 0x0377
    push word [bp - 0x0004]          ; 0x0378
    mov ax, 0xa4                     ; 0x037b
    push ax                          ; 0x037e
    push word [bp - 0x0002]          ; 0x037f
    call gfx_show_area               ; 0x0382
    add sp, byte 8                   ; 0x0385
    mov ax, 0x10                     ; 0x0388
    push ax                          ; 0x038b
    call play_sound_effect           ; 0x038c
    pop cx                           ; 0x038f
    cmp word [bp - 0x000c], byte 0xff ; 0x0390
    je short @..api_idx_000c_LVHV.l1 ; 0x0394
    push word [bp - 0x000c]          ; 0x0396
    call ds_app_QTIV                 ; 0x0399
    pop cx                           ; 0x039c
    jmp short @..api_idx_000c_LVHV.l2 ; 0x039d
@..api_idx_000c_LVHV.l1:
    mov ax, 0x10                     ; 0x039f
    push ax                          ; 0x03a2
    call wait_and_free_sound         ; 0x03a3
    pop cx                           ; 0x03a6
    mov word [loaded_sound_id], 0xffff ; 0x03a7
@..api_idx_000c_LVHV.l2:
    mov ax, 0                        ; 0x03ad
    push ax                          ; 0x03b0
    call restore_areas_redraw_glyph  ; 0x03b1
    pop cx                           ; 0x03b4
    call flush_keyboard              ; 0x03b5
    ret                              ; 0x03b8
