; auto-generated
show_message:
    mov ax, 0xffb0
    call aztec_csav
    lea ax, word [bp - 0x50]
    push ax
    push word [bp + 4]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x50]
    push ax
    call show_centered_text_band
    pop cx
    ret
