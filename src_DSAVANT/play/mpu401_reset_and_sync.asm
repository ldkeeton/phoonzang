; auto-generated
mpu401_reset_and_sync:
    push bx                          ; 0x1217
    push cx                          ; 0x1218
    push dx                          ; 0x1219
mpu401_write_ready_flag:
    db 0x00
mpu401_read_ready_flag:
__zinsn_121b:
    add byte [bp + si + 0x331], bh   ; 0x121b
    in al, dx                        ; 0x121f
    and al, 0x80                     ; 0x1220
    jne short @..mpu401_reset_and_sync.l1 ; 0x1222
    mov dx, 0x330                    ; 0x1224
    in al, dx                        ; 0x1227
@..mpu401_reset_and_sync.l1:
    mov cx, 0x1388                   ; 0x1228
@..mpu401_reset_and_sync.l2:
    mov dx, 0x331                    ; 0x122b
    in al, dx                        ; 0x122e
    and al, 0x40                     ; 0x122f
    jne short @..mpu401_reset_and_sync.l3 ; 0x1231
    mov byte [cs:mpu401_write_ready_flag - IMAGE_BASE], 1 ; 0x1233
    jmp near @..mpu401_reset_and_sync.l4 ; 0x1239
@..mpu401_reset_and_sync.l3:
    loop @..mpu401_reset_and_sync.l2 ; 0x123c
@..mpu401_reset_and_sync.l4:
    cmp byte [cs:mpu401_write_ready_flag - IMAGE_BASE], 0 ; 0x123e
    je short @..mpu401_reset_and_sync.l5 ; 0x1244
    mov dx, 0x331                    ; 0x1246
    mov al, 0xff                     ; 0x1249
    out dx, al                       ; 0x124b
    jmp near @..mpu401_reset_and_sync.l6 ; 0x124c
@..mpu401_reset_and_sync.l5:
    jmp near @..mpu401_reset_and_sync.l12 ; 0x124f
@..mpu401_reset_and_sync.l6:
    mov cx, 3                        ; 0x1252
@..mpu401_reset_and_sync.l7:
    mov bx, 0x1388                   ; 0x1255
@..mpu401_reset_and_sync.l8:
    mov dx, 0x331                    ; 0x1258
    in al, dx                        ; 0x125b
    and al, 0x80                     ; 0x125c
    jne short @..mpu401_reset_and_sync.l9 ; 0x125e
    mov byte [cs:mpu401_read_ready_flag - IMAGE_BASE], 1 ; 0x1260
    jmp near @..mpu401_reset_and_sync.l10 ; 0x1266
@..mpu401_reset_and_sync.l9:
    dec bx                           ; 0x1269
    jne short @..mpu401_reset_and_sync.l8 ; 0x126a
@..mpu401_reset_and_sync.l10:
    cmp byte [cs:mpu401_read_ready_flag - IMAGE_BASE], 0 ; 0x126c
    je short @..mpu401_reset_and_sync.l11 ; 0x1272
    mov dx, 0x330                    ; 0x1274
    in al, dx                        ; 0x1277
    cmp al, 0xfe                     ; 0x1278
    je short @..mpu401_reset_and_sync.l13 ; 0x127a
    mov byte [cs:mpu401_read_ready_flag - IMAGE_BASE], 0 ; 0x127c
@..mpu401_reset_and_sync.l11:
    loop @..mpu401_reset_and_sync.l7 ; 0x1282
@..mpu401_reset_and_sync.l12:
    mov ax, 0xfff                    ; 0x1284
    jmp near @..mpu401_reset_and_sync.l16 ; 0x1287
@..mpu401_reset_and_sync.l13:
    mov dx, 0x331                    ; 0x128a
@..mpu401_reset_and_sync.l14:
    in al, dx                        ; 0x128d
    and al, 0x40                     ; 0x128e
    jne short @..mpu401_reset_and_sync.l14 ; 0x1290
    mov dx, 0x331                    ; 0x1292
    mov al, 0x3f                     ; 0x1295
    out dx, al                       ; 0x1297
@..mpu401_reset_and_sync.l15:
    mov dx, 0x331                    ; 0x1298
    in al, dx                        ; 0x129b
    and al, 0x80                     ; 0x129c
    jne short @..mpu401_reset_and_sync.l15 ; 0x129e
    mov dx, 0x330                    ; 0x12a0
    in al, dx                        ; 0x12a3
    cmp al, 0xfe                     ; 0x12a4
    jne short @..mpu401_reset_and_sync.l15 ; 0x12a6
    mov ax, 0                        ; 0x12a8
@..mpu401_reset_and_sync.l16:
    pop dx                           ; 0x12ab
    pop cx                           ; 0x12ac
    pop bx                           ; 0x12ad
    ret                              ; 0x12ae
