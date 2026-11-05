; auto-generated
draw_colored_rect_outline:
    mov ax, 0                        ; 0x83c6
    call aztec_csav                  ; 0x83c9
    push word [bp + 0xc]             ; 0x83cc
    mov ax, word [bp + 6]            ; 0x83cf
    dec ax                           ; 0x83d2
    push ax                          ; 0x83d3
    mov ax, word [bp + 8]            ; 0x83d4
    inc ax                           ; 0x83d7
    push ax                          ; 0x83d8
    mov ax, word [bp + 6]            ; 0x83d9
    dec ax                           ; 0x83dc
    push ax                          ; 0x83dd
    mov ax, word [bp + 4]            ; 0x83de
    dec ax                           ; 0x83e1
    push ax                          ; 0x83e2
    call call_fill_area              ; 0x83e3
    add sp, byte 0xa                 ; 0x83e6
    push word [bp + 0xc]             ; 0x83e9
    mov ax, word [bp + 0xa]          ; 0x83ec
    inc ax                           ; 0x83ef
    push ax                          ; 0x83f0
    mov ax, word [bp + 8]            ; 0x83f1
    inc ax                           ; 0x83f4
    push ax                          ; 0x83f5
    mov ax, word [bp + 6]            ; 0x83f6
    dec ax                           ; 0x83f9
    push ax                          ; 0x83fa
    mov ax, word [bp + 8]            ; 0x83fb
    inc ax                           ; 0x83fe
    push ax                          ; 0x83ff
    call call_fill_area              ; 0x8400
    add sp, byte 0xa                 ; 0x8403
    push word [bp + 0xc]             ; 0x8406
    mov ax, word [bp + 0xa]          ; 0x8409
    inc ax                           ; 0x840c
    push ax                          ; 0x840d
    mov ax, word [bp + 8]            ; 0x840e
    inc ax                           ; 0x8411
    push ax                          ; 0x8412
    mov ax, word [bp + 0xa]          ; 0x8413
    inc ax                           ; 0x8416
    push ax                          ; 0x8417
    mov ax, word [bp + 4]            ; 0x8418
    dec ax                           ; 0x841b
    push ax                          ; 0x841c
    call call_fill_area              ; 0x841d
    add sp, byte 0xa                 ; 0x8420
    push word [bp + 0xc]             ; 0x8423
    mov ax, word [bp + 0xa]          ; 0x8426
    inc ax                           ; 0x8429
    push ax                          ; 0x842a
    mov ax, word [bp + 4]            ; 0x842b
    dec ax                           ; 0x842e
    push ax                          ; 0x842f
    mov ax, word [bp + 6]            ; 0x8430
    dec ax                           ; 0x8433
    push ax                          ; 0x8434
    mov ax, word [bp + 4]            ; 0x8435
    dec ax                           ; 0x8438
    push ax                          ; 0x8439
    call call_fill_area              ; 0x843a
    add sp, byte 0xa                 ; 0x843d
    ret                              ; 0x8440
