; auto-generated
loc_UKJI:
    mov ax, 0xf5                     ; 0x179b
    ret                              ; 0x179e
@..loc_16e6.l8:
    cmp word [bp + 0x4], strict word 0x1d9 ; 0x179f
    jne short @..loc_16e6.l9         ; 0x17a4
    mov ax, 0xf4                     ; 0x17a6
    ret                              ; 0x17a9
@..loc_16e6.l9:
    mov ax, word [bp + 0x4]          ; 0x17aa
    jmp short @..loc_16e6.l10        ; 0x17ad
