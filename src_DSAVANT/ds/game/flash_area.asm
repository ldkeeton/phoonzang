; auto-generated
flash_area: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x10ff
    call aztec_csav                  ; 0x1102
    push word [bp + 0xa]             ; 0x1105
    push word [bp + 8]               ; 0x1108
    push word [bp + 6]               ; 0x110b
    push word [bp + 4]               ; 0x110e
    call gfx_invert_area             ; 0x1111
    add sp, byte 8                   ; 0x1114
    push word [bp + 0xa]             ; 0x1117
    push word [bp + 8]               ; 0x111a
    push word [bp + 6]               ; 0x111d
    push word [bp + 4]               ; 0x1120
    call gfx_show_area               ; 0x1123
    add sp, byte 8                   ; 0x1126
    cmp word [bp + 0xc], byte 0      ; 0x1129
    je short .return1                ; 0x112d
    mov ax, 0x23                     ; 0x112f
    push ax                          ; 0x1132
    call delay_ms                    ; 0x1133
    pop cx                           ; 0x1136
.return1:
    ret                              ; 0x1137
