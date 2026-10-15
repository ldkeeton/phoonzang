; auto-generated
; asm only
dos_con_loc_IJPM:
    mov ah, 9                        ; 0x1218
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x121c
    int 0x21 ; DOS function dispatcher
loc_VTKP:
    mov ax, cs                       ; 0x1221
    mov ds, ax                       ; 0x1223
    mov dx, 0x138c                   ; 0x1225
    mov ah, 9                        ; 0x1228
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x122c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

