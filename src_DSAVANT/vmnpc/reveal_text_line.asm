; auto-generated
reveal_text_line:
    mov ax, 0xfff2                   ; 0x927d
    call aztec_csav                  ; 0x9280
    mov word [bp - 0x000c], 0        ; 0x9283
    mov word [bp - 0x0004], 0        ; 0x9288
@..reveal_text_line.l1:
    mov word [bp - 0x0002], 0        ; 0x928d
@..reveal_text_line.l2:
    mov ax, 6                        ; 0x9292
    imul word [bp - 0x0004]          ; 0x9295
    mov cx, word [bp - 0x0002]       ; 0x9298
    shl cx, 1                        ; 0x929b
    add ax, cx                       ; 0x929d
    mov bx, ax                       ; 0x929f
    cmp word [bx + bss_843a], byte 0 ; 0x92a1
    je short @..reveal_text_line.l3  ; 0x92a6
    inc word [bp - 0x000c]           ; 0x92a8
@..reveal_text_line.l3:
    inc word [bp - 0x0002]           ; 0x92ab
    mov ax, word [bp - 0x0002]       ; 0x92ae
    cmp ax, strict word 3            ; 0x92b1
    jl short @..reveal_text_line.l2  ; 0x92b4
    inc word [bp - 0x0004]           ; 0x92b6
    mov ax, word [bp - 0x0004]       ; 0x92b9
    cmp ax, strict word 3            ; 0x92bc
    jl short @..reveal_text_line.l1  ; 0x92bf
    mov ax, 0xa                      ; 0x92c1
    mov cx, word [bp - 0x000c]       ; 0x92c4
    shl cx, 1                        ; 0x92c7
    shl cx, 1                        ; 0x92c9
    sub ax, cx                       ; 0x92cb
    mov word [bp - 0x000e], ax       ; 0x92cd
    mov ax, 2                        ; 0x92d0
    push ax                          ; 0x92d3
    mov ax, word [text_line_index]   ; 0x92d4
    mov cx, 7                        ; 0x92d7
    shl ax, cl                       ; 0x92da
    add ax, text_line_buffer         ; 0x92dc
    push ax                          ; 0x92df
    call measure_text_width          ; 0x92e0
    add sp, byte 4                   ; 0x92e3
    mov word [bp - 0x0004], ax       ; 0x92e6
    inc ax                           ; 0x92e9
    mov cx, 2                        ; 0x92ea
    cwd                              ; 0x92ed
    idiv cx                          ; 0x92ee
    mov cx, ax                       ; 0x92f0
    mov ax, 0xa0                     ; 0x92f2
    sub ax, cx                       ; 0x92f5
    mov word [bp - 0x0002], ax       ; 0x92f7
    mov ax, 0xc                      ; 0x92fa
    imul word [text_line_index]      ; 0x92fd
    mov cx, word [text_line_index]   ; 0x9301
    shl cx, 1                        ; 0x9305
    mov bx, cx                       ; 0x9307
    cmp word [bx + text_line_color], byte 0 ; 0x9309
    je short @..reveal_text_line.l4  ; 0x930e
    mov cx, 0x92                     ; 0x9310
    jmp short @..reveal_text_line.l5 ; 0x9313
@..reveal_text_line.l4:
    mov cx, 0x97                     ; 0x9315
@..reveal_text_line.l5:
    add ax, cx                       ; 0x9318
    push ax                          ; 0x931a
    push word [bp - 0x0002]          ; 0x931b
    call gfx_set_text_pos            ; 0x931e
    add sp, byte 4                   ; 0x9321
    mov ax, 0                        ; 0x9324
    push ax                          ; 0x9327
    mov ax, word [text_line_index]   ; 0x9328
    shl ax, 1                        ; 0x932b
    mov bx, ax                       ; 0x932d
    cmp word [bx + text_line_color], byte 0 ; 0x932f
    je short @..reveal_text_line.l6  ; 0x9334
    mov ax, 0x55                     ; 0x9336
    jmp short @..reveal_text_line.l7 ; 0x9339
@..reveal_text_line.l6:
    mov ax, 1                        ; 0x933b
@..reveal_text_line.l7:
    push ax                          ; 0x933e
    call gfx_set_text_color          ; 0x933f
    add sp, byte 4                   ; 0x9342
    mov ax, word [text_line_index]   ; 0x9345
    shl ax, 1                        ; 0x9348
    mov bx, ax                       ; 0x934a
    push word [bx + text_line_color] ; 0x934c
    mov ax, word [text_line_index]   ; 0x9350
    mov cx, 7                        ; 0x9353
    shl ax, cl                       ; 0x9356
    add ax, text_line_buffer         ; 0x9358
    push ax                          ; 0x935b
    call draw_text_glyphs            ; 0x935c
    add sp, byte 4                   ; 0x935f
    mov ax, 0                        ; 0x9362
    cmp byte [bss_598a], 2           ; 0x9365
    jne short @..reveal_text_line.l8 ; 0x936a
    mov ax, 1                        ; 0x936c
@..reveal_text_line.l8:
    mov word [bp - 0x000a], ax       ; 0x936f
    mov ax, word [bp - 0x0002]       ; 0x9372
    mov word [bp - 0x0006], ax       ; 0x9375
    jmp short @..reveal_text_line.l12 ; 0x9378
@..reveal_text_line.l9:
    mov ax, 0xc                      ; 0x937a
    imul word [text_line_index]      ; 0x937d
    add ax, 0x9e                     ; 0x9381
    push ax                          ; 0x9384
    mov ax, word [bp - 0x0006]       ; 0x9385
    add ax, word [bp - 0x000a]       ; 0x9388
    push ax                          ; 0x938b
    mov ax, 0xc                      ; 0x938c
    imul word [text_line_index]      ; 0x938f
    add ax, 0x92                     ; 0x9393
    push ax                          ; 0x9396
    push word [bp - 0x0006]          ; 0x9397
    call gfx_show_area               ; 0x939a
    add sp, byte 8                   ; 0x939d
    call step_party_animation        ; 0x93a0
    mov ax, 1                        ; 0x93a3
    push ax                          ; 0x93a6
    call poll_filtered_key           ; 0x93a7
    pop cx                           ; 0x93aa
    test ax, ax                      ; 0x93ab
    je short @..reveal_text_line.l10 ; 0x93ad
    mov ax, 1                        ; 0x93af
    push ax                          ; 0x93b2
    call get_filtered_key            ; 0x93b3
    pop cx                           ; 0x93b6
    sub ah, ah                       ; 0x93b7
    mov word [bp - 0x0008], ax       ; 0x93b9
    cmp ax, strict word 0x20         ; 0x93bc
    jne short @..reveal_text_line.l10 ; 0x93bf
    call api_idx_0004_RPUO           ; 0x93c1
@..reveal_text_line.l10:
    cmp word [bp - 0x000e], byte 0   ; 0x93c4
    jle short @..reveal_text_line.l11 ; 0x93c8
    push word [bp - 0x000e]          ; 0x93ca
    call delay_ms                    ; 0x93cd
    pop cx                           ; 0x93d0
@..reveal_text_line.l11:
    mov ax, word [bp - 0x0006]       ; 0x93d1
    add ax, word [bp - 0x000a]       ; 0x93d4
    inc ax                           ; 0x93d7
    mov word [bp - 0x0006], ax       ; 0x93d8
@..reveal_text_line.l12:
    mov ax, word [bp - 0x0002]       ; 0x93db
    add ax, word [bp - 0x0004]       ; 0x93de
    cmp ax, word [bp - 0x0006]       ; 0x93e1
    jg short @..reveal_text_line.l9  ; 0x93e4
    ret                              ; 0x93e6
