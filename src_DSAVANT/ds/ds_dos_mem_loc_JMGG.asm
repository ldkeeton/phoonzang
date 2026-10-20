; auto-generated
ds_dos_mem_loc_JMGG:
    mov ax, cs                       ; 0x371d
    mov ds, ax                       ; 0x371f
    mov dx, cseg_372e - IMAGE_BASE   ; 0x3721
    mov ah, 9                        ; 0x3724
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3728
    int 0x21 ; DOS function dispatcher
ds_loc_LGTQ:
    ret                              ; 0x372d
cseg_372e:

    db 0x0d, 0x0a, 0x07
    db 'Unable to allocate sufficient memory to run.', 0
    db 0x0a, 0x24

