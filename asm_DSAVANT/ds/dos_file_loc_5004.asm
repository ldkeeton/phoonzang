dos_file_loc_5004:
    push bp                          ; 0x5004
    mov bp, sp                       ; 0x5005
    mov ah, 0x42                     ; 0x5007
    mov al, byte [bp + 0xa]          ; 0x5009
    mov dx, word [bp + 0x6]          ; 0x500c
    mov cx, word [bp + 0x8]          ; 0x500f
    mov bx, word [bp + 0x4]          ; 0x5012
    int 0x21 ; DOS seek file (lseek)
    jae short @..dos_file_loc_5004.l1 ; 0x5017
    mov word [data_0c72], ax         ; 0x5019
    mov ax, 0xffff                   ; 0x501c
    mov dx, ax                       ; 0x501f
@..dos_file_loc_5004.l1:
    pop bp                           ; 0x5021
    ret                              ; 0x5022
