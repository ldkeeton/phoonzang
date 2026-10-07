math_loc_a29f:
    mov ax, 0                        ; 0xa29f
    db 0xe8, 0x66, 0x51 ; call 0xf40b
    cmp word [data_9e48], byte 0xff  ; 0xa2a5
    je short @..math_loc_a29f.l2     ; 0xa2aa
    cmp word [data_9e46], byte 0xff  ; 0xa2ac
    je short @..math_loc_a29f.l1     ; 0xa2b1
    cmp word [data_9e42], byte 0xff  ; 0xa2b3
    jne short @..math_loc_a29f.l2    ; 0xa2b8
@..math_loc_a29f.l1:
    call loc_9a04                    ; 0xa2ba
@..math_loc_a29f.l2:
    cmp word [data_9e46], byte 0xff  ; 0xa2bd
    je short @..math_loc_a29f.l3     ; 0xa2c2
    cmp word [data_9e42], byte 0xff  ; 0xa2c4
    je short @..math_loc_a29f.l3     ; 0xa2c9
    call api_idx_0054_6              ; 0xa2cb
    mov ax, word [data_9e42]         ; 0xa2ce
    mov word [data_9e4a], ax         ; 0xa2d1
    mov ax, word [data_9e44]         ; 0xa2d4
    mov word [data_9e4c], ax         ; 0xa2d7
    mov ax, word [data_9e46]         ; 0xa2da
    mov word [data_9e4e], ax         ; 0xa2dd
    mov word [data_9e50], 0xffff     ; 0xa2e0
@..math_loc_a29f.l3:
    ret                              ; 0xa2e6
