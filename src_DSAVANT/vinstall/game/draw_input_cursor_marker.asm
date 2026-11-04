; auto-generated
draw_input_cursor_marker:
    push bp                          ; 0x0584
    mov bp, sp                       ; 0x0585
    add sp, byte -4                  ; 0x0587
    call bios_get_cursor_packed      ; 0x058a
    mov word [bp - 4], ax            ; 0x058d
    mov ax, 0x20                     ; 0x0590
    cmp word [bp + 4], byte 1        ; 0x0593
    jne short .forward1              ; 0x0597
    mov ax, 0x11                     ; 0x0599
.forward1:
    mov byte [bp - 2], al            ; 0x059c
    mov byte [bp - 1], 0             ; 0x059f
    lea ax, word [bp - 2]            ; 0x05a3
    push ax                          ; 0x05a6
    call bios_put_text               ; 0x05a7
    pop cx                           ; 0x05aa
    push word [bp - 4]               ; 0x05ab
    call bios_set_cursor_packed      ; 0x05ae
    pop cx                           ; 0x05b1
    mov sp, bp                       ; 0x05b2
    pop bp                           ; 0x05b4
    ret                              ; 0x05b5
