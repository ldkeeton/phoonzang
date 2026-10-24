; auto-generated
mpu_set_volume:
    push bx                          ; 0x11da
    mov bl, 1                        ; 0x11db
@..mpu_set_volume.l1:
    mov al, bl                       ; 0x11dd
    or al, 0xb0                      ; 0x11df
    call mpu_send_byte               ; 0x11e1
    mov al, 7                        ; 0x11e4
    call mpu_send_byte               ; 0x11e6
    mov al, byte [cs:playback_volume - IMAGE_BASE] ; 0x11e9
    shr al, 1                        ; 0x11ed
    call mpu_send_byte               ; 0x11ef
    inc bl                           ; 0x11f2
    cmp bl, 0x10                     ; 0x11f4
    jb short @..mpu_set_volume.l1    ; 0x11f7
    pop bx                           ; 0x11f9
    ret                              ; 0x11fa
