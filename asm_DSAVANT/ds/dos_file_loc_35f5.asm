dos_file_loc_35f5:
    push ds                          ; 0x35f5
    push es                          ; 0x35f6
    mov ah, 0x3d                     ; 0x35f7
    mov al, 0                        ; 0x35f9
    mov bx, cs                       ; 0x35fb
    mov ds, bx                       ; 0x35fd
    mov dx, 0x33ec                   ; 0x35ff
    int 0x21 ; DOS open file handle
    jb short @..dos_file_loc_35f5.l2 ; 0x3604
    mov word [cs:data_3332], ax      ; 0x3606
    mov bx, ax                       ; 0x360a
    mov ah, 0x3f                     ; 0x360c
    mov cx, 0x1d00                   ; 0x360e
    mov dx, word [cs:data_2d56]      ; 0x3611
    mov ds, dx                       ; 0x3616
    mov dx, 0x100                    ; 0x3618
    int 0x21 ; DOS read file (handle)
    mov ah, 0x3e                     ; 0x361d
    mov bx, word [cs:data_3332]      ; 0x361f
    int 0x21 ; DOS close file handle
    mov ax, cs                       ; 0x3626
    mov es, ax                       ; 0x3628
    mov di, 0x2d67                   ; 0x362a
    mov ax, word [cs:data_2d56]      ; 0x362d
    mov cx, 8                        ; 0x3631
@..dos_file_loc_35f5.l1:
    add di, byte 2                   ; 0x3634
    stosw                            ; 0x3637
    loop @..dos_file_loc_35f5.l1     ; 0x3638
    pop es                           ; 0x363a
    pop ds                           ; 0x363b
    ret                              ; 0x363c
@..dos_file_loc_35f5.l2:
    call loc_30a3                    ; 0x363d
