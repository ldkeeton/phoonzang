; auto-generated
loc_TLQV:
    mov ax, 0                        ; 0x0eac
    call aztec_csav                  ; 0x0eaf
    push word [bp + 4]               ; 0x0eb2
    call api_idx_0050_JOKU           ; 0x0eb5
    pop cx                           ; 0x0eb8
    mov ax, 0                        ; 0x0eb9
    push ax                          ; 0x0ebc
    call play_sound_effect           ; 0x0ebd
    pop cx                           ; 0x0ec0
    push word [message_delay]        ; 0x0ec1
    call api_idx_0004_OOHR           ; 0x0ec5
    pop cx                           ; 0x0ec8
    mov ax, 0x98                     ; 0x0ec9
    push ax                          ; 0x0ecc
    mov ax, 0x13f                    ; 0x0ecd
    push ax                          ; 0x0ed0
    mov ax, 0x92                     ; 0x0ed1
    push ax                          ; 0x0ed4
    mov ax, 0                        ; 0x0ed5
    push ax                          ; 0x0ed8
    call call_show_area              ; 0x0ed9
    add sp, byte 8                   ; 0x0edc
    ret                              ; 0x0edf
