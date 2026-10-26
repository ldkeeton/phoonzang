; auto-generated
store_word_and_pair: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x2331
    call aztec_csav                  ; 0x2334
    mov al, byte [bp + 4]            ; 0x2337
    mov byte [bp - 2], al            ; 0x233a
    mov al, byte [bp + 6]            ; 0x233d
    mov byte [bp - 1], al            ; 0x2340
    mov ax, word [bp + 8]            ; 0x2343
    mov word [bp - 4], ax            ; 0x2346
    mov ax, word [bp - 4]            ; 0x2349
    mov word [saved_word], ax        ; 0x234c
    mov ax, word [bp - 2]            ; 0x234f
    mov word [saved_pair], ax        ; 0x2352
    mov ax, saved_word               ; 0x2355
    ret                              ; 0x2358
