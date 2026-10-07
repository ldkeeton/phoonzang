dos_mem_loc_3a39:
    push bp                          ; 0x3a39
    mov bp, sp                       ; 0x3a3a
    mov ax, word [bp + 0x4]          ; 0x3a3c
    inc ax                           ; 0x3a3f
    and al, 0xfe                     ; 0x3a40
    cmp ax, word [data_24dc]         ; 0x3a42
    jb short @..dos_mem_loc_3a39.l4  ; 0x3a46
    cmp word [data_2518], byte 0     ; 0x3a48
    jne short @..dos_mem_loc_3a39.l2 ; 0x3a4d
    mov bx, sp                       ; 0x3a4f
    sub bx, word [data_2514]         ; 0x3a51
    cmp ax, bx                       ; 0x3a55
    jae short @..dos_mem_loc_3a39.l4 ; 0x3a57
    mov word [data_24d4], ax         ; 0x3a59
    add ax, word [data_2514]         ; 0x3a5c
    mov word [data_24de], ax         ; 0x3a60
@..dos_mem_loc_3a39.l1:
    sub ax, ax                       ; 0x3a63
    pop bp                           ; 0x3a65
    ret                              ; 0x3a66
