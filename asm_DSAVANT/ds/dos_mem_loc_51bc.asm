dos_mem_loc_51bc:
    push bp                          ; 0x51bc
    mov bp, sp                       ; 0x51bd
    mov ax, word [bp + 0x4]          ; 0x51bf
    inc ax                           ; 0x51c2
    and al, 0xfe                     ; 0x51c3
    cmp ax, word [data_0c78]         ; 0x51c5
    jb short @..dos_mem_loc_51bc.l4  ; 0x51c9
    cmp word [data_0cda], byte 0     ; 0x51cb
    jne short @..dos_mem_loc_51bc.l2 ; 0x51d0
    mov bx, sp                       ; 0x51d2
    sub bx, word [data_0cd6]         ; 0x51d4
    cmp ax, bx                       ; 0x51d8
    jae short @..dos_mem_loc_51bc.l4 ; 0x51da
    mov word [data_0c70], ax         ; 0x51dc
    add ax, word [data_0cd6]         ; 0x51df
    mov word [data_0c7a], ax         ; 0x51e3
@..dos_mem_loc_51bc.l1:
    sub ax, ax                       ; 0x51e6
    pop bp                           ; 0x51e8
    ret                              ; 0x51e9
