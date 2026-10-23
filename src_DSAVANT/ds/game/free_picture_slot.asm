; auto-generated
free_picture_slot: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1371
    call aztec_csav                  ; 0x1374
    push word [bp + 0x4]             ; 0x1377
    call gfx_free_picture            ; 0x137a
    pop cx                           ; 0x137d
    mov bx, word [bp + 0x4]          ; 0x137e
    mov byte [bx + picture_slot_number], 0xff ; 0x1381
    mov byte [bx + picture_slot_used], 0 ; 0x1386
    ret                              ; 0x138b
