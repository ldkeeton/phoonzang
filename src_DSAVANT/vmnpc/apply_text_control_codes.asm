; auto-generated
apply_text_control_codes:
    mov ax, 0xfff6                   ; 0x93e7
    call aztec_csav                  ; 0x93ea
    mov ax, word [bp + 0x4]          ; 0x93ed
    mov word [bp - 0x000a], ax       ; 0x93f0
    mov word [bp - 0x0006], 0        ; 0x93f3
    mov word [bp - 0x0004], 1        ; 0x93f8
@..apply_text_control_codes.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x93fd
    jne short @..apply_text_control_codes.l2 ; 0x9401
    jmp near @..apply_text_control_codes.l22 ; 0x9403
@..apply_text_control_codes.l2:
    mov bx, word [bp - 0x000a]       ; 0x9406
    mov al, byte [bx]                ; 0x9409
    sub ah, ah                       ; 0x940b
    jmp near @..apply_text_control_codes.l14 ; 0x940d
@..apply_text_control_codes.l3:
    mov ax, 0                        ; 0x9410
    push ax                          ; 0x9413
    mov ax, 0xa4                     ; 0x9414
    push ax                          ; 0x9417
    mov ax, 0x12e                    ; 0x9418
    push ax                          ; 0x941b
    call gfx_mouse_glide_back        ; 0x941c
    add sp, byte 6                   ; 0x941f
    mov ax, 0                        ; 0x9422
    mov dx, 0                        ; 0x9425
    push dx                          ; 0x9428
    push ax                          ; 0x9429
    call set_mouse_pointer_shape     ; 0x942a
    add sp, byte 4                   ; 0x942d
@..apply_text_control_codes.l4:
    call poll_fullscreen_hotspot     ; 0x9430
    test ax, ax                      ; 0x9433
    jne short @..apply_text_control_codes.l5 ; 0x9435
    call step_party_animation        ; 0x9437
    jmp short @..apply_text_control_codes.l4 ; 0x943a
@..apply_text_control_codes.l5:
    push word [mouse_pointer_shape_seg] ; 0x943c
    push word [mouse_pointer_shape]  ; 0x9440
    call set_mouse_pointer_shape     ; 0x9444
    add sp, byte 4                   ; 0x9447
    mov ax, 0                        ; 0x944a
    push ax                          ; 0x944d
    mov ax, 0xa4                     ; 0x944e
    push ax                          ; 0x9451
    mov ax, 0x12e                    ; 0x9452
    push ax                          ; 0x9455
    call gfx_mouse_glide_to          ; 0x9456
    add sp, byte 6                   ; 0x9459
    mov bx, word [bp - 0x000a]       ; 0x945c
    cmp byte [bx], 0x40              ; 0x945f
    jne short @..apply_text_control_codes.l6 ; 0x9462
    call next_text_line              ; 0x9464
    call next_text_line              ; 0x9467
    mov word [bp - 0x0006], 0        ; 0x946a
@..apply_text_control_codes.l6:
    inc word [bp - 0x000a]           ; 0x946f
    jmp near @..apply_text_control_codes.l21 ; 0x9472
@..apply_text_control_codes.l7:
    mov ax, 1                        ; 0x9475
    push ax                          ; 0x9478
    mov ax, 0x36                     ; 0x9479
    push ax                          ; 0x947c
    call wait_ticks_abortable        ; 0x947d
    add sp, byte 4                   ; 0x9480
    inc word [bp - 0x000a]           ; 0x9483
    jmp near @..apply_text_control_codes.l21 ; 0x9486
@..apply_text_control_codes.l8:
    call next_text_line              ; 0x9489
    mov word [bp - 0x0006], 0        ; 0x948c
    inc word [bp - 0x000a]           ; 0x9491
    jmp near @..apply_text_control_codes.l21 ; 0x9494
@..apply_text_control_codes.l9:
    push word [bp + 0x6]             ; 0x9497
    mov ax, word [text_line_index]   ; 0x949a
    mov cx, 7                        ; 0x949d
    shl ax, cl                       ; 0x94a0
    add ax, text_line_buffer         ; 0x94a2
    push ax                          ; 0x94a5
    call aztec_strcpy                ; 0x94a6
    add sp, byte 4                   ; 0x94a9
    mov ax, word [text_line_index]   ; 0x94ac
    shl ax, 1                        ; 0x94af
    mov bx, ax                       ; 0x94b1
    mov word [bx + text_line_color], 2 ; 0x94b3
    call reveal_text_line            ; 0x94b9
    mov bx, word [bp + 0x6]          ; 0x94bc
    mov byte [bx], 0                 ; 0x94bf
    mov word [bp - 0x0006], 1        ; 0x94c2
    inc word [bp - 0x000a]           ; 0x94c7
    jmp near @..apply_text_control_codes.l21 ; 0x94ca
@..apply_text_control_codes.l10:
    mov word [bp - 0x0002], 0        ; 0x94cd
@..apply_text_control_codes.l11:
    mov ax, word [bp - 0x0002]       ; 0x94d2
    mov cx, 7                        ; 0x94d5
    shl ax, cl                       ; 0x94d8
    mov bx, ax                       ; 0x94da
    mov byte [bx + text_line_buffer], 0 ; 0x94dc
    mov ax, word [bp - 0x0002]       ; 0x94e1
    shl ax, 1                        ; 0x94e4
    mov bx, ax                       ; 0x94e6
    mov word [bx + text_line_color], 0 ; 0x94e8
    inc word [bp - 0x0002]           ; 0x94ee
    mov ax, word [bp - 0x0002]       ; 0x94f1
    cmp ax, strict word 4            ; 0x94f4
    jl short @..apply_text_control_codes.l11 ; 0x94f7
    mov word [text_line_index], 0    ; 0x94f9
    mov word [bp - 0x0006], 0        ; 0x94ff
    mov ax, 3                        ; 0x9504
    push ax                          ; 0x9507
    call redraw_area_set             ; 0x9508
    pop cx                           ; 0x950b
    mov ax, 3                        ; 0x950c
    push ax                          ; 0x950f
    call show_area_set               ; 0x9510
    pop cx                           ; 0x9513
    inc word [bp - 0x000a]           ; 0x9514
    jmp short @..apply_text_control_codes.l21 ; 0x9517
@..apply_text_control_codes.l12:
    inc word [bp - 0x000a]           ; 0x9519
    mov bx, word [bp - 0x000a]       ; 0x951c
    mov al, byte [bx]                ; 0x951f
    sub ah, ah                       ; 0x9521
    mov word [bp - 0x0008], ax       ; 0x9523
    push ax                          ; 0x9526
    call play_sound_cue              ; 0x9527
    pop cx                           ; 0x952a
    inc word [bp - 0x000a]           ; 0x952b
    jmp short @..apply_text_control_codes.l21 ; 0x952e
@..apply_text_control_codes.l13:
    mov word [bp - 0x0004], 0        ; 0x9530
    jmp short @..apply_text_control_codes.l21 ; 0x9535
@..apply_text_control_codes.l14:
    cmp ax, strict word 0x21         ; 0x9537
    jne short @..apply_text_control_codes.l15 ; 0x953a
    jmp near @..apply_text_control_codes.l8 ; 0x953c
@..apply_text_control_codes.l15:
    cmp ax, strict word 0x25         ; 0x953f
    jne short @..apply_text_control_codes.l16 ; 0x9542
    jmp near @..apply_text_control_codes.l7 ; 0x9544
@..apply_text_control_codes.l16:
    cmp ax, strict word 0x26         ; 0x9547
    jne short @..apply_text_control_codes.l17 ; 0x954a
    jmp near @..apply_text_control_codes.l9 ; 0x954c
@..apply_text_control_codes.l17:
    cmp ax, strict word 0x40         ; 0x954f
    jne short @..apply_text_control_codes.l18 ; 0x9552
    jmp near @..apply_text_control_codes.l3 ; 0x9554
@..apply_text_control_codes.l18:
    cmp ax, strict word 0x5b         ; 0x9557
    jne short @..apply_text_control_codes.l19 ; 0x955a
    jmp near @..apply_text_control_codes.l3 ; 0x955c
@..apply_text_control_codes.l19:
    cmp ax, strict word 0x5d         ; 0x955f
    jne short @..apply_text_control_codes.l20 ; 0x9562
    jmp near @..apply_text_control_codes.l10 ; 0x9564
@..apply_text_control_codes.l20:
    cmp ax, strict word 0x7e         ; 0x9567
    je short @..apply_text_control_codes.l12 ; 0x956a
    jmp short @..apply_text_control_codes.l13 ; 0x956c
@..apply_text_control_codes.l21:
    jmp near @..apply_text_control_codes.l1 ; 0x956e
@..apply_text_control_codes.l22:
    cmp word [bp - 0x0006], byte 0   ; 0x9571
    je short @..apply_text_control_codes.l23 ; 0x9575
    call next_text_line              ; 0x9577
@..apply_text_control_codes.l23:
    push word [bp - 0x000a]          ; 0x957a
    push word [bp + 0x4]             ; 0x957d
    call aztec_strcpy                ; 0x9580
    add sp, byte 4                   ; 0x9583
    ret                              ; 0x9586
