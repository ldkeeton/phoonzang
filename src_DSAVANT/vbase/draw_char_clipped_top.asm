; auto-generated
draw_char_clipped_top:
    mov ax, 0xfff6                   ; 0x737d
    call aztec_csav                  ; 0x7380
    mov al, byte [bp + 6]            ; 0x7383
    mov byte [bp - 0xa], al          ; 0x7386
    mov byte [bp - 9], 0             ; 0x7389
    push word [bp + 0xc]             ; 0x738d
    mov ax, 0                        ; 0x7390
    push ax                          ; 0x7393
    lea ax, word [bp - 0xa]          ; 0x7394
    push ax                          ; 0x7397
    mov ax, 0                        ; 0x7398
    push ax                          ; 0x739b
    mov ax, 0x91                     ; 0x739c
    push ax                          ; 0x739f
    mov ax, 0                        ; 0x73a0
    push ax                          ; 0x73a3
    mov ax, 0x140                    ; 0x73a4
    push ax                          ; 0x73a7
    mov ax, 0                        ; 0x73a8
    push ax                          ; 0x73ab
    push word [bp + 0xa]             ; 0x73ac
    push word [bp + 8]               ; 0x73af
    push word [bp + 4]               ; 0x73b2
    call call_draw_text              ; 0x73b5
    add sp, byte 0x16                ; 0x73b8
    ret                              ; 0x73bb
