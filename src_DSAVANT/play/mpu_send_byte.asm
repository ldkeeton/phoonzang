; auto-generated
mpu_send_byte:
    push ax                          ; 0x11fb
    push dx                          ; 0x11fc
    push cx                          ; 0x11fd
    mov ah, al                       ; 0x11fe
    mov cx, 0xc350                   ; 0x1200
    mov dx, 0x331                    ; 0x1203
@..mpu_send_byte.l1:
    in al, dx                        ; 0x1206
    and al, 0x40                     ; 0x1207
    je short @..mpu_send_byte.l2     ; 0x1209
    loop @..mpu_send_byte.l1         ; 0x120b
@..mpu_send_byte.l2:
    mov dx, 0x330                    ; 0x120d
    mov al, ah                       ; 0x1210
    out dx, al                       ; 0x1212
    pop cx                           ; 0x1213
    pop dx                           ; 0x1214
    pop ax                           ; 0x1215
    ret                              ; 0x1216
