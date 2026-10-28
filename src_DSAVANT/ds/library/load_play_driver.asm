; auto-generated
load_play_driver:
    push ds                          ; 0x35f5
    push es                          ; 0x35f6
    mov ah, 0x3d                     ; 0x35f7
    mov al, 0                        ; 0x35f9
    mov bx, cs                       ; 0x35fb
    mov ds, bx                       ; 0x35fd
    mov dx, cseg_35ec - IMAGE_BASE   ; 0x35ff
    int 0x21 ; DOS open file handle
    jb short .forward1               ; 0x3604
    mov word [cs:drv_file_handle - IMAGE_BASE], ax ; 0x3606
    mov bx, ax                       ; 0x360a
    mov ah, 0x3f                     ; 0x360c
    mov cx, 0x1d00                   ; 0x360e
    mov dx, word [cs:cseg_2f56 - IMAGE_BASE] ; 0x3611
    mov ds, dx                       ; 0x3616
    mov dx, 0x100                    ; 0x3618
    int 0x21 ; DOS read file (handle)
    mov ah, 0x3e                     ; 0x361d
    mov bx, word [cs:drv_file_handle - IMAGE_BASE] ; 0x361f
    int 0x21 ; DOS close file handle
    mov ax, cs                       ; 0x3626
    mov es, ax                       ; 0x3628
    mov di, cseg_2f67 - IMAGE_BASE   ; 0x362a
    mov ax, word [cs:cseg_2f56 - IMAGE_BASE] ; 0x362d
    mov cx, 8                        ; 0x3631
.back1:
    add di, byte 2                   ; 0x3634
    stosw                            ; 0x3637
    loop .back1                      ; 0x3638
    pop es                           ; 0x363a
    pop ds                           ; 0x363b
    ret                              ; 0x363c
.forward1:
    call restore_video_and_release_memory ; 0x363d
sound_driver_error_exit:
    mov ax, cs                       ; 0x3640
    mov ds, ax                       ; 0x3642
    mov dx, cseg_3651 - IMAGE_BASE   ; 0x3644
    mov ah, 9                        ; 0x3647
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x364b
    int 0x21 ; DOS function dispatcher
    ret                              ; 0x3650
cseg_3651:

    db 0x0d, 0x0a, 0x07
    db 'Unable to load sound driver', 0
    db 0x0a, 0x24

