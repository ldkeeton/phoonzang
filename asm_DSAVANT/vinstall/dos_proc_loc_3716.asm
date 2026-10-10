dos_proc_loc_3716:
    pop ax                           ; 0x3716
    pop ax                           ; 0x3717
loc_3718:
    mov ah, 0x4c                     ; 0x3718
    int 0x21 ; DOS exit with return code
    jmp far [cs:data_33ce]           ; 0x371c
    times 4 db 0
    pop word [cs:data_3521]          ; 0x3725
    pop word [cs:data_3523]          ; 0x372a
    pop ds                           ; 0x372f
    call loc_3738                    ; 0x3730
    jmp far [cs:data_3521]           ; 0x3733
    push di                          ; 0x3738
    push si                          ; 0x3739
    retf                             ; 0x373a
    mov ax, 0                        ; 0x373b
    ret                              ; 0x373e
