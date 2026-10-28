; auto-generated
save_area_out_of_memory:
    mov ax, cs
    mov ds, ax
    mov dx, save_area_out_of_memory.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
save_area_out_of_memory.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'SAVEAREA out of memory.', 0
    db 0x0a, 0x24

