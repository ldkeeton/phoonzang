; auto-generated
loc_MMGL:
    mov ax, 0                        ; 0x21e3
    call aztec_csav                  ; 0x21e6
    mov ax, 0x98                     ; 0x21e9
    push ax                          ; 0x21ec
    mov ax, 0x13f                    ; 0x21ed
    push ax                          ; 0x21f0
    mov ax, 0x92                     ; 0x21f1
    push ax                          ; 0x21f4
    mov ax, 0                        ; 0x21f5
    push ax                          ; 0x21f8
    call call_show_area              ; 0x21f9
    add sp, byte 8                   ; 0x21fc
    mov ax, 0x64                     ; 0x21ff
    push ax                          ; 0x2202
    call delay_ms                    ; 0x2203
    pop cx                           ; 0x2206
    push word [bp + 4]               ; 0x2207
    call show_message                ; 0x220a
    pop cx                           ; 0x220d
    mov word [bss_91b2], 1           ; 0x220e
    ret                              ; 0x2214
