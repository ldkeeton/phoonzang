dos_intvec_loc_37d9:
    push ds                          ; 0x37d9
    push es                          ; 0x37da
    mov ah, 0x35                     ; 0x37db
    mov al, 0x67                     ; 0x37dd
    int 0x21 ; DOS get interrupt vector
    mov di, 0xa                      ; 0x37e1
    mov ax, cs                       ; 0x37e4
    mov ds, ax                       ; 0x37e6
    mov si, 0x35d1                   ; 0x37e8
    mov cx, 8                        ; 0x37eb
    repe cmpsb                       ; 0x37ee
    or cx, cx                        ; 0x37f0
    jne short @..dos_intvec_loc_37d9.l2 ; 0x37f2
    mov ah, 0x42                     ; 0x37f4
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, byte 0x18                ; 0x37f8
    jb short @..dos_intvec_loc_37d9.l1 ; 0x37fb
    mov bx, 0x18                     ; 0x37fd
@..dos_intvec_loc_37d9.l1:
    mov word [cs:data_2d60], bx      ; 0x3800
    mov ah, 0x43                     ; 0x3805
    int 0x67 ; EMS (Expanded Memory)
    or ah, ah                        ; 0x3809
    jne short @..dos_intvec_loc_37d9.l2 ; 0x380b
    mov word [cs:data_2d62], dx      ; 0x380d
    mov bx, word [cs:data_2d60]      ; 0x3812
    mov cl, 0xa                      ; 0x3817
    shl bx, cl                       ; 0x3819
    mov word [cs:data_2d60], bx      ; 0x381b
    mov ah, 0x41                     ; 0x3820
    int 0x67 ; EMS (Expanded Memory)
    mov word [cs:data_2d64], bx      ; 0x3824
@..dos_intvec_loc_37d9.l2:
    pop es                           ; 0x3829
    pop ds                           ; 0x382a
    ret                              ; 0x382b
