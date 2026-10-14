; auto-generated
; asm only
dos_file_loc_QUNJ:
    push ds                          ; 0x45bd
    push es                          ; 0x45be
    push si                          ; 0x45bf
    push di                          ; 0x45c0
    mov dx, word [cs:cseg_01e9 - IMAGE_BASE] ; 0x45c1
    mov ds, dx                       ; 0x45c6
@..dos_file_loc_QUNJ.l1:
    xor dx, dx                       ; 0x45c8
    mov cx, 0x1000                   ; 0x45ca
    mov bx, word [bp - 0x0002]       ; 0x45cd
    mov ah, 0x3f                     ; 0x45d0
    int 0x21 ; DOS read file (handle)
    or ax, ax                        ; 0x45d4
    je short @..dos_file_loc_QUNJ.l3 ; 0x45d6
    mov cx, ax                       ; 0x45d8
    push ax                          ; 0x45da
    mov bx, word [bp - 0x0004]       ; 0x45db
    xor dx, dx                       ; 0x45de
    mov ah, 0x40                     ; 0x45e0
    int 0x21 ; DOS write file (handle)
    jb short @..dos_file_loc_QUNJ.l2 ; 0x45e4
    pop cx                           ; 0x45e6
    cmp cx, ax                       ; 0x45e7
    je short @..dos_file_loc_QUNJ.l1 ; 0x45e9
@..dos_file_loc_QUNJ.l2:
    mov ax, cs                       ; 0x45eb
    mov ds, ax                       ; 0x45ed
    mov dx, 0x46fb                   ; 0x45ef
