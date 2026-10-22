; auto-generated
show_message:
    mov ax, 0xffb0                   ; 0x1094
    call aztec_csav                  ; 0x1097
    lea ax, word [bp - 0x0050]       ; 0x109a
    push ax                          ; 0x109d
    push word [bp + 0x4]             ; 0x109e
    call load_message_string         ; 0x10a1
    add sp, byte 4                   ; 0x10a4
    lea ax, word [bp - 0x0050]       ; 0x10a7
    push ax                          ; 0x10aa
    call api_idx_0008_OMTP           ; 0x10ab
    pop cx                           ; 0x10ae
    ret                              ; 0x10af
