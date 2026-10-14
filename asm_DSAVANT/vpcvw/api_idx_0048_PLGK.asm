; auto-generated
api_idx_0048_PLGK:
    mov ax, 0xffb8                   ; 0x4a1c
    call aztec_csav                  ; 0x4a1f
    mov ax, 0                        ; 0x4a22
    push ax                          ; 0x4a25
    mov bx, word [bp + 0x6]          ; 0x4a26
    push word [bx]                   ; 0x4a29
    lea ax, word [bp - 0x0048]       ; 0x4a2b
    push ax                          ; 0x4a2e
    mov ax, 1                        ; 0x4a2f
    push ax                          ; 0x4a32
    call ds_app_file_GKHN            ; 0x4a33
    add sp, byte 8                   ; 0x4a36
    mov al, byte [bp - 0x000a]       ; 0x4a39
    sub ah, ah                       ; 0x4a3c
    ret                              ; 0x4a3e
