dos_con_loc_1218:
    mov ah, 9                        ; 0x1218
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x121c
    int 0x21 ; DOS function dispatcher
loc_1221:
    mov ax, cs                       ; 0x1221
    mov ds, ax                       ; 0x1223
    mov dx, 0x138c                   ; 0x1225
    mov ah, 9                        ; 0x1228
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x122c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

loc_12bb:
    mov ax, word [bp + 0xc]          ; 0x12bb
    shl ax, 1                        ; 0x12be
    mov si, 0x2c3                    ; 0x12c0
    add si, ax                       ; 0x12c3
    mov ax, word [cs:si]             ; 0x12c5
    dec ax                           ; 0x12c8
    mov cl, 2                        ; 0x12c9
    shl ax, cl                       ; 0x12cb
    mov di, 0x2eb                    ; 0x12cd
    add di, ax                       ; 0x12d0
    mov si, word [cs:di]             ; 0x12d2
    mov ax, word [cs:di + 0x2]       ; 0x12d5
    mov word [cs:bx + 0x2], ax       ; 0x12d9
    mov word [bp - 0x0004], ax       ; 0x12dd
    mov dx, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x12e0
    add dx, word [cs:cseg_11cd - IMAGE_BASE] ; 0x12e5
    mov word [bp - 0x000a], dx       ; 0x12ea
    mov es, dx                       ; 0x12ed
    add word [cs:cseg_11cd - IMAGE_BASE], ax ; 0x12ef
    mov ax, word [cs:cseg_0203 - IMAGE_BASE] ; 0x12f4
    mov ds, ax                       ; 0x12f8
    mov ax, si                       ; 0x12fa
    mov cl, 0xa                      ; 0x12fc
    shr ax, cl                       ; 0x12fe
    mov word [cs:cseg_4540 - IMAGE_BASE], ax ; 0x1300
    call leaf_loc_4442               ; 0x1304
    and si, strict word 0x3ff        ; 0x1307
    mov cl, 4                        ; 0x130b
    shl si, cl                       ; 0x130d
loc_130f:
    test si, 0xc000                  ; 0x130f
    je short loc_1325                ; 0x1313
    inc word [cs:cseg_4540 - IMAGE_BASE] ; 0x1315
    mov ax, word [cs:cseg_4540 - IMAGE_BASE] ; 0x131a
    call leaf_loc_4442               ; 0x131e
    sub si, strict word 0x4000       ; 0x1321
loc_1325:
    xor di, di                       ; 0x1325
    mov cx, 0x10                     ; 0x1327
    rep movsb                        ; 0x132a
    mov ax, es                       ; 0x132c
    inc ax                           ; 0x132e
    mov es, ax                       ; 0x132f
    dec word [bp - 0x0004]           ; 0x1331
    jne short loc_130f               ; 0x1334
    mov ax, word [bp - 0x000a]       ; 0x1336
    mov ds, ax                       ; 0x1339
    mov bx, 0                        ; 0x133b
    mov ax, word [bx]                ; 0x133e
    mov cx, 6                        ; 0x1340
    mul cx                           ; 0x1343
    add ax, strict word 4            ; 0x1345
    mov bx, word [bp - 0x0008]       ; 0x1348
    add bx, strict word 0x27d        ; 0x134b
    mov word [cs:bx], ax             ; 0x134f
    jmp near loc_1209                ; 0x1352
