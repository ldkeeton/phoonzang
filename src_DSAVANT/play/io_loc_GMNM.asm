; auto-generated
io_loc_GMNM:
    push bx                          ; 0x1217
    push cx                          ; 0x1218
    push dx                          ; 0x1219
__zinsn_121a:
cseg_121a:
    add byte [bx + si], al           ; 0x121a
__zinsn_121c:
    mov dx, 0x331                    ; 0x121c
    in al, dx                        ; 0x121f
    and al, 0x80                     ; 0x1220
    jne short @..io_loc_GMNM.l1      ; 0x1222
    mov dx, 0x330                    ; 0x1224
    in al, dx                        ; 0x1227
@..io_loc_GMNM.l1:
    mov cx, 0x1388                   ; 0x1228
@..io_loc_GMNM.l2:
    mov dx, 0x331                    ; 0x122b
    in al, dx                        ; 0x122e
    and al, 0x40                     ; 0x122f
    jne short @..io_loc_GMNM.l3      ; 0x1231
    mov byte [cs:cseg_121a - IMAGE_BASE], 1 ; 0x1233
    jmp near @..io_loc_GMNM.l4       ; 0x1239
@..io_loc_GMNM.l3:
    loop @..io_loc_GMNM.l2           ; 0x123c
@..io_loc_GMNM.l4:
    cmp byte [cs:cseg_121a - IMAGE_BASE], 0 ; 0x123e
    je short @..io_loc_GMNM.l5       ; 0x1244
    mov dx, 0x331                    ; 0x1246
    mov al, 0xff                     ; 0x1249
    out dx, al                       ; 0x124b
    jmp near @..io_loc_GMNM.l6       ; 0x124c
@..io_loc_GMNM.l5:
    jmp near @..io_loc_GMNM.l12      ; 0x124f
@..io_loc_GMNM.l6:
    mov cx, 3                        ; 0x1252
@..io_loc_GMNM.l7:
    mov bx, 0x1388                   ; 0x1255
@..io_loc_GMNM.l8:
    mov dx, 0x331                    ; 0x1258
    in al, dx                        ; 0x125b
    and al, 0x80                     ; 0x125c
    jne short @..io_loc_GMNM.l9      ; 0x125e
    mov byte [cs:cseg_121b - IMAGE_BASE], 1 ; 0x1260
    jmp near @..io_loc_GMNM.l10      ; 0x1266
@..io_loc_GMNM.l9:
    dec bx                           ; 0x1269
    jne short @..io_loc_GMNM.l8      ; 0x126a
@..io_loc_GMNM.l10:
    cmp byte [cs:cseg_121b - IMAGE_BASE], 0 ; 0x126c
    je short @..io_loc_GMNM.l11      ; 0x1272
    mov dx, 0x330                    ; 0x1274
    in al, dx                        ; 0x1277
    cmp al, 0xfe                     ; 0x1278
    je short @..io_loc_GMNM.l13      ; 0x127a
    mov byte [cs:cseg_121b - IMAGE_BASE], 0 ; 0x127c
@..io_loc_GMNM.l11:
    loop @..io_loc_GMNM.l7           ; 0x1282
@..io_loc_GMNM.l12:
    mov ax, 0xfff                    ; 0x1284
    jmp near @..io_loc_GMNM.l16      ; 0x1287
@..io_loc_GMNM.l13:
    mov dx, 0x331                    ; 0x128a
@..io_loc_GMNM.l14:
    in al, dx                        ; 0x128d
    and al, 0x40                     ; 0x128e
    jne short @..io_loc_GMNM.l14     ; 0x1290
    mov dx, 0x331                    ; 0x1292
    mov al, 0x3f                     ; 0x1295
    out dx, al                       ; 0x1297
@..io_loc_GMNM.l15:
    mov dx, 0x331                    ; 0x1298
    in al, dx                        ; 0x129b
    and al, 0x80                     ; 0x129c
    jne short @..io_loc_GMNM.l15     ; 0x129e
    mov dx, 0x330                    ; 0x12a0
    in al, dx                        ; 0x12a3
    cmp al, 0xfe                     ; 0x12a4
    jne short @..io_loc_GMNM.l15     ; 0x12a6
    mov ax, 0                        ; 0x12a8
@..io_loc_GMNM.l16:
    pop dx                           ; 0x12ab
    pop cx                           ; 0x12ac
    pop bx                           ; 0x12ad
    ret                              ; 0x12ae
