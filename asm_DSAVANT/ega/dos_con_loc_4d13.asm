dos_con_loc_4d13:
    push ax                          ; 0x4d13
    mov bx, 0x4f8b                   ; 0x4d14
    mov cx, 5                        ; 0x4d17
@..dos_con_loc_4d13.l1:
    cmp ax, word [cs:bx]             ; 0x4d1a
    jae short @..dos_con_loc_4d13.l2 ; 0x4d1d
    dec word [cs:bx]                 ; 0x4d1f
    push ds                          ; 0x4d22
    push ax                          ; 0x4d23
    push bx                          ; 0x4d24
    push cx                          ; 0x4d25
    push dx                          ; 0x4d26
    mov ax, cs                       ; 0x4d27
    mov ds, ax                       ; 0x4d29
    mov dx, 0x4e3e                   ; 0x4d2b
    mov ah, 9                        ; 0x4d2e
    int 0x21 ; DOS string output
    pop dx                           ; 0x4d32
    pop cx                           ; 0x4d33
    pop bx                           ; 0x4d34
    pop ax                           ; 0x4d35
    pop ds                           ; 0x4d36
@..dos_con_loc_4d13.l2:
    add bx, byte 4                   ; 0x4d37
    loop @..dos_con_loc_4d13.l1      ; 0x4d3a
    pop ax                           ; 0x4d3c
    ret                              ; 0x4d3d

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

