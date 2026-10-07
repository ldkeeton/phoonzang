math_loc_21bf:
    mov ax, 0                        ; 0x21bf
    db 0xe8, 0x46, 0xd2 ; call 0xf40b
    mov ax, word [data_0e36]         ; 0x21c5
    mov word [data_9136], ax         ; 0x21c8
    call math_loc_7400               ; 0x21cb
    mov ax, 0                        ; 0x21ce
    ret                              ; 0x21d1
