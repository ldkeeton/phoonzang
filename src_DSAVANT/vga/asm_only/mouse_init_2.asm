; auto-generated
; asm only
mouse_init_2:
    push bp                          ; 0x126c
    mov bp, sp                       ; 0x126d
    push es                          ; 0x126f
    mov ax, ds                       ; 0x1270
    mov es, ax                       ; 0x1272
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 0 ; 0x1274
    je short @..mouse_init_2.l2      ; 0x127a
    mov byte [cs:cseg_0128 - IMAGE_BASE], 0 ; 0x127c
    mov ax, 0                        ; 0x1282
    int 0x33 ; BIOS mouse
    push ds                          ; 0x1287
    push es                          ; 0x1288
    push di                          ; 0x1289
    push si                          ; 0x128a
    mov si, word [cs:cseg_14b4 - IMAGE_BASE] ; 0x128b
    mov ax, cs                       ; 0x1290
    mov ds, ax                       ; 0x1292
    mov ax, 0xa000                   ; 0x1294
    mov es, ax                       ; 0x1297
    mov di, word [cs:cseg_14bc - IMAGE_BASE] ; 0x1299
    mov si, word [cs:cseg_14b4 - IMAGE_BASE] ; 0x129e
    mov cx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x12a3
@..mouse_init_2.l1:
    push cx                          ; 0x12a8
    push si                          ; 0x12a9
    push di                          ; 0x12aa
    mov cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x12ab
    rep movsb                        ; 0x12b0
    pop di                           ; 0x12b2
    add di, strict word 0x140        ; 0x12b3
    pop si                           ; 0x12b7
    add si, word [cs:cseg_1d5c - IMAGE_BASE] ; 0x12b8
    pop cx                           ; 0x12bd
    loop @..mouse_init_2.l1          ; 0x12be
    pop si                           ; 0x12c0
    pop di                           ; 0x12c1
    pop es                           ; 0x12c2
    pop ds                           ; 0x12c3
@..mouse_init_2.l2:
    pop es                           ; 0x12c4
    mov sp, bp                       ; 0x12c5
    pop bp                           ; 0x12c7
    ret                              ; 0x12c8
