math_loc_9d06:
    mov ax, 0                        ; 0x9d06
    db 0xe8, 0xff, 0x56 ; call 0xf40b
    mov ax, word [bp + 0x4]          ; 0x9d0c
    cmp ax, word [data_b046]         ; 0x9d0f
    jge short @..math_loc_9d06.l1    ; 0x9d13
    mov cx, 5                        ; 0x9d15
    imul cx                          ; 0x9d18
    add ax, word [data_b050]         ; 0x9d1a
    ret                              ; 0x9d1e
