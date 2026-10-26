; auto-generated
poll_fullscreen_hotspot:
    mov ax, 0                        ; 0x0d36
    call aztec_csav                  ; 0x0d39
    mov ax, 0x1b                     ; 0x0d3c
    push ax                          ; 0x0d3f
    mov ax, 0xd                      ; 0x0d40
    push ax                          ; 0x0d43
    mov ax, 0xc7                     ; 0x0d44
    push ax                          ; 0x0d47
    mov ax, 0x13f                    ; 0x0d48
    push ax                          ; 0x0d4b
    mov ax, 0                        ; 0x0d4c
    push ax                          ; 0x0d4f
    push ax                          ; 0x0d50
    push ax                          ; 0x0d51
    call set_hotspot                 ; 0x0d52
    add sp, byte 0xe                 ; 0x0d55
    mov ax, 0                        ; 0x0d58
    push ax                          ; 0x0d5b
    push ax                          ; 0x0d5c
    push ax                          ; 0x0d5d
    push ax                          ; 0x0d5e
    push ax                          ; 0x0d5f
    mov ax, 0xffff                   ; 0x0d60
    push ax                          ; 0x0d63
    mov ax, 1                        ; 0x0d64
    push ax                          ; 0x0d67
    call set_hotspot                 ; 0x0d68
    add sp, byte 0xe                 ; 0x0d6b
    mov ax, hotspot_rects            ; 0x0d6e
    push ax                          ; 0x0d71
    call poll_hotspots               ; 0x0d72
    pop cx                           ; 0x0d75
    mov ax, word [hotspot_hit]       ; 0x0d76
    ret                              ; 0x0d79
