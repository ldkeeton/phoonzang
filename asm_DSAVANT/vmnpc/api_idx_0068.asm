api_idx_0068:
    mov ax, 0xff98                   ; 0x51bb
    db 0xe8, 0x4a, 0xa2 ; call 0xf40b
    push word [bp + 0x4]             ; 0x51c1
    call api_idx_004c_2              ; 0x51c4
    pop cx                           ; 0x51c7
    cmp word [data_9ca8], byte 0     ; 0x51c8
    jne short @..api_idx_0068.l1     ; 0x51cd
    ret                              ; 0x51cf
