; auto-generated
mpu_all_notes_off:
    push bx                          ; 0x0222
    mov bl, 1                        ; 0x0223
.back1:
    mov al, bl                       ; 0x0225
    or al, 0xb0                      ; 0x0227
    call mpu_send_byte               ; 0x0229
    mov al, 0x7b                     ; 0x022c
    call mpu_send_byte               ; 0x022e
    mov al, 0                        ; 0x0231
    call mpu_send_byte               ; 0x0233
    inc bl                           ; 0x0236
    cmp bl, 0xa                      ; 0x0238
    jb short .back1                  ; 0x023b
    pop bx                           ; 0x023d
    ret                              ; 0x023e
