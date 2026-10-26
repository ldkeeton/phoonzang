; auto-generated
random_below:
    mov ax, 0                        ; 0x09f0
    call aztec_csav                  ; 0x09f3
    mov ax, 0                        ; 0x09f6
    cmp word [bp + 4], byte 0        ; 0x09f9
    jle short .return1               ; 0x09fd
    call ds_loc_JRJK                 ; 0x09ff
    cwd                              ; 0x0a02
    idiv word [bp + 4]               ; 0x0a03
    mov ax, dx                       ; 0x0a06
.return1:
    ret                              ; 0x0a08
