; auto-generated
; asm only
ds_dos_mem_loc_371d:
    mov ax, cs                       ; 0x371d
    mov ds, ax                       ; 0x371f
    mov dx, 0x352e                   ; 0x3721
    mov ah, 9                        ; 0x3724
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3728
    int 0x21 ; DOS function dispatcher
ds_loc_372d:
    ret                              ; 0x372d

    db 0x0d, 0x0a, 0x07
    db 'Unable to allocate sufficient memory to run.', 0
    db 0x0a, 0x24

