; auto-generated
app_malloc: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0200
    call aztec_csav                  ; 0x0203
    push word [bp + 0x6]             ; 0x0206
    push word [bp + 0x4]             ; 0x0209
    call aztec_lmalloc               ; 0x020c
    add sp, byte 4                   ; 0x020f
    ret                              ; 0x0212
