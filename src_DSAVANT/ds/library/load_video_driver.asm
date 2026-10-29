; auto-generated
load_video_driver:
    push ds                          ; 0x3534
    push es                          ; 0x3535
    mov ah, 0x3d                     ; 0x3536
    mov al, 0                        ; 0x3538
    mov bx, cs                       ; 0x353a
    mov ds, bx                       ; 0x353c
    mov dx, word [bp - 4]            ; 0x353e
    int 0x21 ; DOS open file handle
    jb short .forward1               ; 0x3543
    mov word [cs:drv_file_handle - IMAGE_BASE], ax ; 0x3545
    mov bx, ax                       ; 0x3549
    mov ah, 0x3f                     ; 0x354b
    mov cx, 0x5300                   ; 0x354d
    mov dx, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x3550
    mov ds, dx                       ; 0x3555
    mov dx, 0x100                    ; 0x3557
    int 0x21 ; DOS read file (handle)
    mov ah, 0x3e                     ; 0x355c
    mov bx, word [cs:drv_file_handle - IMAGE_BASE] ; 0x355e
    int 0x21 ; DOS close file handle
    mov ax, cs                       ; 0x3565
    mov es, ax                       ; 0x3567
    mov di, drv_slot_mouse_init - IMAGE_BASE ; 0x3569
    mov ax, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x356c
    mov cx, 0x37                     ; 0x3570
.back1:
    add di, byte 2                   ; 0x3573
    stosw                            ; 0x3576
    loop .back1                      ; 0x3577
    mov ax, word [cs:cseg_2f52 - IMAGE_BASE] ; 0x3579
    mov es, ax                       ; 0x357d
    mov di, word [cs:cseg_3063 - IMAGE_BASE] ; 0x357f
    mov ax, cs                       ; 0x3584
    mov ds, ax                       ; 0x3586
    mov si, driver_block_table - IMAGE_BASE ; 0x3588
    mov cx, cseg_2f58 - IMAGE_BASE   ; 0x358b
    sub cx, si                       ; 0x358e
    rep movsb                        ; 0x3590
    add si, byte 4                   ; 0x3592
    mov cx, 2                        ; 0x3595
.back2:
    push cx                          ; 0x3598
    mov cx, 2                        ; 0x3599
    rep movsb                        ; 0x359c
    mov ax, cs                       ; 0x359e
    stosw                            ; 0x35a0
    pop cx                           ; 0x35a1
    loop .back2                      ; 0x35a2
    mov cx, 7                        ; 0x35a4
    rep movsb                        ; 0x35a7
    mov cx, 8                        ; 0x35a9
    shl cx, 1                        ; 0x35ac
    shl cx, 1                        ; 0x35ae
    rep movsb                        ; 0x35b0
    pop es                           ; 0x35b2
    pop ds                           ; 0x35b3
    ret                              ; 0x35b4
.forward1:
    call restore_video_and_release_memory ; 0x35b5
display_driver_error_exit:
    mov ax, cs                       ; 0x35b8
    mov ds, ax                       ; 0x35ba
    mov dx, cseg_35c9 - IMAGE_BASE   ; 0x35bc
    mov ah, 9                        ; 0x35bf
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x35c3
    int 0x21 ; DOS function dispatcher
    ret                              ; 0x35c8
cseg_35c9:

    db 0x0d, 0x0a, 0x07
    db 'Unable to load display driver', 0
    db 0x0a, 0x24

