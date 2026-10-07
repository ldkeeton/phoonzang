math_loc_742e:
    mov ax, 0                        ; 0x742e
    db 0xe8, 0xd7, 0x7f ; call 0xf40b
    mov ax, word [data_598e]         ; 0x7434
    cmp ax, word [bp + 0x4]          ; 0x7437
    je short @..math_loc_742e.l1     ; 0x743a
    push word [bp + 0x4]             ; 0x743c
    db 0xe8, 0x68, 0x63 ; call 0xd7aa
    pop cx                           ; 0x7442
@..math_loc_742e.l1:
    mov word [data_93da], 0x10       ; 0x7443
    push word [data_93da]            ; 0x7449
    db 0xe8, 0x90, 0x43 ; call 0xb7e0
    pop cx                           ; 0x7450
    ret                              ; 0x7451
