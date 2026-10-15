; auto-generated
; asm only
dos_file_loc_IIUJ:
    push ds                          ; 0x3d0b
    push es                          ; 0x3d0c
    push si                          ; 0x3d0d
    push di                          ; 0x3d0e
    mov dx, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x3d0f
    mov ds, dx                       ; 0x3d14
@..dos_file_loc_IIUJ.l1:
    xor dx, dx                       ; 0x3d16
    mov cx, 0x1000                   ; 0x3d18
    mov bx, word [bp - 0x0002]       ; 0x3d1b
    mov ah, 0x3f                     ; 0x3d1e
    int 0x21 ; DOS read file (handle)
    or ax, ax                        ; 0x3d22
    je short @..dos_file_loc_IIUJ.l2 ; 0x3d24
    mov cx, ax                       ; 0x3d26
    push ax                          ; 0x3d28
    mov bx, word [bp - 0x0004]       ; 0x3d29
    xor dx, dx                       ; 0x3d2c
    mov ah, 0x40                     ; 0x3d2e
    int 0x21 ; DOS write file (handle)
    jb short dos_con_loc_KSIP        ; 0x3d32
    pop cx                           ; 0x3d34
    cmp cx, ax                       ; 0x3d35
    je short @..dos_file_loc_IIUJ.l1 ; 0x3d37
