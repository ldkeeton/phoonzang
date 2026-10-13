; auto-generated
dos_con_loc_4b1d:
    mov ah, 9                        ; 0x4b1d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4b21
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l6:
    mov cx, ax                       ; 0x4b52
    mov ax, word [cs:cseg_01e9 - IMAGE_BASE] ; 0x4b54
    mov ds, ax                       ; 0x4b58
    xor dx, dx                       ; 0x4b5a
    mov bx, word [bp + 0xc]          ; 0x4b5c
    mov ah, 0x3f                     ; 0x4b5f
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400                    ; 0x4b63
    mov bx, word [bp + 0xc]          ; 0x4b66
    mov cx, 0x1000                   ; 0x4b69
    mov ah, 0x3f                     ; 0x4b6c
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4b70
    mov di, 0                        ; 0x4b73
    lodsw                            ; 0x4b76
    mov word [bp - 0x0004], ax       ; 0x4b77
    mov bx, word [bp - 0x0002]       ; 0x4b7a
    mov word [cs:bx + 0x2], ax       ; 0x4b7d
    add ax, strict word 0xf          ; 0x4b81
    mov cl, 4                        ; 0x4b84
    shr ax, cl                       ; 0x4b86
    mov bx, word [bp - 0x000a]       ; 0x4b88
    mov word [cs:bx + 0x2], ax       ; 0x4b8b
    add ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x4b8f
    cmp ax, 0x4180                   ; 0x4b94
    jb short @..dos_read_file_6.l7   ; 0x4b97
    jmp near @..dos_read_file_6.l5   ; 0x4b99
@..dos_read_file_6.l7:
    mov word [cs:cseg_11cd - IMAGE_BASE], ax ; 0x4b9c
    mov ax, word [cs:bx]             ; 0x4ba0
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x4ba3
    mov es, ax                       ; 0x4ba8
    call string_loc_4bb2             ; 0x4baa
    xor ax, ax                       ; 0x4bad
    jmp near @..dos_read_file_6.l3   ; 0x4baf
