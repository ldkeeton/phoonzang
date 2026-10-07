dos_con_loc_088f:
    mov ax, cs                       ; 0x088f
    mov ds, ax                       ; 0x0891
    mov dx, 0x99f                    ; 0x0893
    mov ah, 9                        ; 0x0896
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x089a
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'RESTOREAREA called with NULL pointer.', 0
    db 0x0a, 0x24

@..dos_free_mem.l2:
    pop si                           ; 0x08ca
    pop di                           ; 0x08cb
    pop ds                           ; 0x08cc
    pop es                           ; 0x08cd
    mov sp, bp                       ; 0x08ce
    pop bp                           ; 0x08d0
    ret                              ; 0x08d1
