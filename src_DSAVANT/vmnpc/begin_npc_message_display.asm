; auto-generated
begin_npc_message_display:
    mov ax, 0                        ; 0x23d0
    call $csav                  ; 0x23d3
    mov word [text_line_index], 0    ; 0x23d6
.back1:
    mov ax, word [text_line_index]   ; 0x23dc
    mov cx, 7                        ; 0x23df
    shl ax, cl                       ; 0x23e2
    mov bx, ax                       ; 0x23e4
    mov byte [bx + text_line_buffer], 0 ; 0x23e6
    mov ax, word [text_line_index]   ; 0x23eb
    shl ax, 1                        ; 0x23ee
    mov bx, ax                       ; 0x23f0
    mov word [bx + text_line_color], 0 ; 0x23f2
    inc word [text_line_index]       ; 0x23f8
    mov ax, word [text_line_index]   ; 0x23fc
    cmp ax, strict word 4            ; 0x23ff
    jl short .back1                  ; 0x2402
    mov word [text_line_index], 0    ; 0x2404
    push word [mouse_pointer_shape_seg] ; 0x240a
    push word [mouse_pointer_shape]  ; 0x240e
    call set_mouse_pointer_shape     ; 0x2412
    add sp, byte 4                   ; 0x2415
    mov ax, 0                        ; 0x2418
    push ax                          ; 0x241b
    mov ax, 0xa4                     ; 0x241c
    push ax                          ; 0x241f
    mov ax, 0x12e                    ; 0x2420
    push ax                          ; 0x2423
    call call_mouse_glide_to         ; 0x2424
    add sp, byte 6                   ; 0x2427
    mov ax, 3                        ; 0x242a
    push ax                          ; 0x242d
    call redraw_area_set             ; 0x242e
    pop cx                           ; 0x2431
    mov ax, 3                        ; 0x2432
    push ax                          ; 0x2435
    call show_area_set               ; 0x2436
    pop cx                           ; 0x2439
    ret                              ; 0x243a
