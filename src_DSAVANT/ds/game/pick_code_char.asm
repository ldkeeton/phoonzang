; auto-generated
pick_code_char:
    mov ax, 0                        ; 0x1cb1
    call aztec_csav                  ; 0x1cb4
    mov ax, 0x4b                     ; 0x1cb7
    push ax                          ; 0x1cba
    call random_below                ; 0x1cbb
    pop cx                           ; 0x1cbe
    mov word [code_char_index], ax   ; 0x1cbf
    mov al, byte [code_char_index]   ; 0x1cc2
    mov byte [code_characters], al   ; 0x1cc5
    mov byte [code_char_message_index], al ; 0x1cc8
    ret                              ; 0x1ccb
