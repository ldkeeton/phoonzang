dos_file_loc_4fec:
    push bp                          ; 0x4fec
    mov bp, sp                       ; 0x4fed
    mov ah, 0x3e                     ; 0x4fef
    mov bx, word [bp + 0x4]          ; 0x4ff1
    int 0x21 ; DOS close file handle
    jae short @..dos_file_loc_4fec.l1 ; 0x4ff6
    mov word [data_0c72], ax         ; 0x4ff8
    mov ax, 0xffff                   ; 0x4ffb
    pop bp                           ; 0x4ffe
    ret                              ; 0x4fff
