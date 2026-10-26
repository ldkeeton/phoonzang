; auto-generated
draw_number_field:
    mov ax, 0                        ; 0x052e
    call aztec_csav                  ; 0x0531
    push word [bp + 8]               ; 0x0534
    push word [bp + 6]               ; 0x0537
    mov ax, word [bp + 4]            ; 0x053a
    cwd                              ; 0x053d
    push dx                          ; 0x053e
    push ax                          ; 0x053f
    call draw_padded_number          ; 0x0540
    add sp, byte 8                   ; 0x0543
    ret                              ; 0x0546
