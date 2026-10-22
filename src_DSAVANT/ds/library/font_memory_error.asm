; auto-generated
font_memory_error:
    mov ax, cs                       ; 0x395b
    mov ds, ax                       ; 0x395d
    mov dx, cseg_396b - IMAGE_BASE   ; 0x395f
    mov ah, 9                        ; 0x3962
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3966
    int 0x21 ; DOS function dispatcher
cseg_396b:

    db 0x07, 0x0d, 0x0a
    db 'Memory error loading font'
    db 0x0d, 0x0a, 0x24

