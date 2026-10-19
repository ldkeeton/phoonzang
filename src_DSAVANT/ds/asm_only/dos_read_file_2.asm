; auto-generated
; asm only
dos_read_file_2:
    push bp                          ; 0x3fa9
    mov bp, sp                       ; 0x3faa
    cld                              ; 0x3fac
    push ds                          ; 0x3fad
    push es                          ; 0x3fae
    mov ax, ds                       ; 0x3faf
    mov es, ax                       ; 0x3fb1
    mov cx, 0x400                    ; 0x3fb3
    mov bx, word [cs:cseg_2f4e - IMAGE_BASE] ; 0x3fb6
    mov ds, bx                       ; 0x3fbb
    xor dx, dx                       ; 0x3fbd
    mov bx, word [bp + 0x4]          ; 0x3fbf
    mov ah, 0x3f                     ; 0x3fc2
    int 0x21 ; DOS read file (handle)
    jb short @..dos_read_file_2.l1   ; 0x3fc6
    pop es                           ; 0x3fc8
    pop ds                           ; 0x3fc9
    mov sp, bp                       ; 0x3fca
    pop bp                           ; 0x3fcc
    ret                              ; 0x3fcd
@..dos_read_file_2.l1:
    mov ax, cs                       ; 0x3fce
    mov ds, ax                       ; 0x3fd0
    mov dx, bss_3dde                 ; 0x3fd2
