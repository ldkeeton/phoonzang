io_loc_02b3:
    cmp al, 6                        ; 0x02b3
    jb short @..io_loc_02b3.l1       ; 0x02b5
    mov al, 0                        ; 0x02b7
@..io_loc_02b3.l1:
    ret                              ; 0x02b9
