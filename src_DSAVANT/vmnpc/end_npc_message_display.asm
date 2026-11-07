; auto-generated
end_npc_message_display:
    mov ax, 0                        ; 0x243b
    call $csav                  ; 0x243e
    mov ax, 3                        ; 0x2441
    push ax                          ; 0x2444
    call redraw_area_set             ; 0x2445
    pop cx                           ; 0x2448
    mov ax, 3                        ; 0x2449
    push ax                          ; 0x244c
    call show_area_set               ; 0x244d
    pop cx                           ; 0x2450
    mov ax, 0                        ; 0x2451
    push ax                          ; 0x2454
    mov ax, 0xa4                     ; 0x2455
    push ax                          ; 0x2458
    mov ax, 0x12e                    ; 0x2459
    push ax                          ; 0x245c
    call call_mouse_glide_back       ; 0x245d
    add sp, byte 6                   ; 0x2460
    mov ax, 0                        ; 0x2463
    mov dx, 0                        ; 0x2466
    push dx                          ; 0x2469
    push ax                          ; 0x246a
    call set_mouse_pointer_shape     ; 0x246b
    add sp, byte 4                   ; 0x246e
    ret                              ; 0x2471
