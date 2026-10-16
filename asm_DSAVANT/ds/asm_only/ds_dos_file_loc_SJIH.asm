; auto-generated
; asm only
ds_dos_file_loc_SJIH:
    push ds                          ; 0x3534
    push es                          ; 0x3535
    mov ah, 0x3d                     ; 0x3536
    mov al, 0                        ; 0x3538
    mov bx, cs                       ; 0x353a
    mov ds, bx                       ; 0x353c
    mov dx, word [bp - 0x0004]       ; 0x353e
    int 0x21 ; DOS open file handle
    jb short @..ds_dos_file_loc_SJIH.l3 ; 0x3543
    mov word [cs:cseg_3532 - IMAGE_BASE], ax ; 0x3545
    mov bx, ax                       ; 0x3549
    mov ah, 0x3f                     ; 0x354b
    mov cx, 0x5300                   ; 0x354d
    mov dx, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x3550
    mov ds, dx                       ; 0x3555
    mov dx, 0x100                    ; 0x3557
    int 0x21 ; DOS read file (handle)
    mov ah, 0x3e                     ; 0x355c
    mov bx, word [cs:cseg_3532 - IMAGE_BASE] ; 0x355e
    int 0x21 ; DOS close file handle
    mov ax, cs                       ; 0x3565
    mov es, ax                       ; 0x3567
    mov di, 0x2d87                   ; 0x3569
    mov ax, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x356c
    mov cx, 0x37                     ; 0x3570
@..ds_dos_file_loc_SJIH.l1:
    add di, byte 2                   ; 0x3573
    stosw                            ; 0x3576
    loop @..ds_dos_file_loc_SJIH.l1  ; 0x3577
    mov ax, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x3579
    mov es, ax                       ; 0x357d
    mov di, word [cs:cseg_3063 - IMAGE_BASE] ; 0x357f
    mov ax, cs                       ; 0x3584
    mov ds, ax                       ; 0x3586
    mov si, cseg_2f40 - IMAGE_BASE   ; 0x3588
    mov cx, 0x2d58                   ; 0x358b
    sub cx, si                       ; 0x358e
    rep movsb                        ; 0x3590
    add si, byte 4                   ; 0x3592
    mov cx, 2                        ; 0x3595
@..ds_dos_file_loc_SJIH.l2:
    push cx                          ; 0x3598
    mov cx, 2                        ; 0x3599
    rep movsb                        ; 0x359c
    mov ax, cs                       ; 0x359e
    stosw                            ; 0x35a0
    pop cx                           ; 0x35a1
    loop @..ds_dos_file_loc_SJIH.l2  ; 0x35a2
    mov cx, 7                        ; 0x35a4
    rep movsb                        ; 0x35a7
    mov cx, 8                        ; 0x35a9
    shl cx, 1                        ; 0x35ac
    shl cx, 1                        ; 0x35ae
    rep movsb                        ; 0x35b0
    pop es                           ; 0x35b2
    pop ds                           ; 0x35b3
    ret                              ; 0x35b4
@..ds_dos_file_loc_SJIH.l3:
    call ds_loc_IGLJ                 ; 0x35b5
