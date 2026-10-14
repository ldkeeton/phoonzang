; auto-generated
; asm only
io_loc_GJPH:
    push di                          ; 0x02ba
    push es                          ; 0x02bb
    cld                              ; 0x02bc
    cmp byte [cs:cseg_0421 - IMAGE_BASE], 0 ; 0x02bd
    jne short @..io_loc_GJPH.l1      ; 0x02c3
    in al, 0x21                      ; 0x02c5
    mov byte [cs:cseg_0b8f - IMAGE_BASE], al ; 0x02c7
    cli                              ; 0x02cb
    xor ax, ax                       ; 0x02cc
    mov es, ax                       ; 0x02ce
    mov di, 0x20                     ; 0x02d0
    mov ax, word [es:di]             ; 0x02d3
    mov word [cs:cseg_0c10 - IMAGE_BASE], ax ; 0x02d6
    mov ax, 0xbb4                    ; 0x02da
    stosw                            ; 0x02dd
    mov ax, word [es:di]             ; 0x02de
    mov word [cs:cseg_0c12 - IMAGE_BASE], ax ; 0x02e1
    mov ax, cs                       ; 0x02e5
    stosw                            ; 0x02e7
    sti                              ; 0x02e8
    mov al, 0x34                     ; 0x02e9
    out 0x43, al                     ; 0x02eb
    call leaf_loc_KROT               ; 0x02ed
    in al, 0x40                      ; 0x02f0
    mov ah, al                       ; 0x02f2
    call leaf_loc_KROT               ; 0x02f4
    in al, 0x40                      ; 0x02f7
    xchg al, ah                      ; 0x02f9
    mov word [cs:cseg_0b96 - IMAGE_BASE], ax ; 0x02fb
    mov al, 0x34                     ; 0x02ff
    out 0x43, al                     ; 0x0301
    mov ax, word [cs:cseg_0ba6 - IMAGE_BASE] ; 0x0303
    mov bl, 0x48                     ; 0x0307
    mul bl                           ; 0x0309
    mov word [cs:cseg_0b98 - IMAGE_BASE], ax ; 0x030b
    out 0x40, al                     ; 0x030f
    call leaf_loc_KROT               ; 0x0311
    mov al, ah                       ; 0x0314
    out 0x40, al                     ; 0x0316
@..io_loc_GJPH.l1:
    mov byte [cs:cseg_0421 - IMAGE_BASE], 0xff ; 0x0318
    pop es                           ; 0x031e
    pop di                           ; 0x031f
    ret                              ; 0x0320
    db 0x00
@..bios_disk_loc_RVRG.l2:
    mov ah, 0                        ; 0x0322
    int 0x13 ; BIOS disk: reset disk system
    cmp byte [bp + 0x15], 4          ; 0x0326
    jne short @..bios_disk_loc_RVRG.l3 ; 0x032a
    mov byte [bp + 0x15], 1          ; 0x032c
@..bios_disk_loc_RVRG.l3:
    mov ax, 0x64                     ; 0x0330
    mov word [cs:cseg_0b81 - IMAGE_BASE], ax ; 0x0333
    mov al, byte [bp + 0x15]         ; 0x0337
    mov byte [cs:cseg_0b7d - IMAGE_BASE], al ; 0x033a
    mov byte [cs:cseg_0b90 - IMAGE_BASE], 0 ; 0x033e
    pushf                            ; 0x0344
    pop ax                           ; 0x0345
    test ah, 0x80                    ; 0x0346
    je short @..bios_disk_loc_RVRG.l4 ; 0x0349
    inc byte [cs:cseg_0b90 - IMAGE_BASE] ; 0x034b
@..bios_disk_loc_RVRG.l4:
    mov bl, byte [cs:cseg_0b7d - IMAGE_BASE] ; 0x0350
    shl bl, 1                        ; 0x0355
    xor bh, bh                       ; 0x0357
    jmp [cs:bx + 0x45e]              ; 0x0359
    xchg dx, ax                      ; 0x035e
    push es                          ; 0x035f
    fadd qword [si]                  ; 0x0360
    push 0x6804                      ; 0x0362
    add al, 0xca                     ; 0x0365
    add al, 0x8b                     ; 0x0367
    inc si                           ; 0x0369
    adc byte [data_89a3], ch         ; 0x036a
    or ax, word [bx + si + 0x2e]     ; 0x036e
    mov word [data_0b8b], ax         ; 0x0371
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short loc_0381                ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
loc_0381:
    mov word [cs:data_0b8d], ax      ; 0x0381
    mov dx, word [cs:data_0b89]      ; 0x0385
    mov al, 7                        ; 0x038a
    out dx, al                       ; 0x038c
    mov dx, word [cs:data_0b8b]      ; 0x038d
    in al, dx                        ; 0x0392
    or al, 0xc0                      ; 0x0393
    out dx, al                       ; 0x0395
    mov dx, word [cs:data_0b89]      ; 0x0396
    mov al, 0xa                      ; 0x039b
    out dx, al                       ; 0x039d
    mov dx, word [cs:data_0b8b]      ; 0x039e
    in al, dx                        ; 0x03a3
    or al, 0x10                      ; 0x03a4
    out dx, al                       ; 0x03a6
    mov dx, word [cs:data_0b89]      ; 0x03a7
    mov al, 0xf                      ; 0x03ac
    out dx, al                       ; 0x03ae
    mov dx, word [cs:data_0b8b]      ; 0x03af
    mov al, 0x70                     ; 0x03b4
    out dx, al                       ; 0x03b6
    mov dx, word [cs:data_0b89]      ; 0x03b7
    mov al, 0xe                      ; 0x03bc
    out dx, al                       ; 0x03be
    mov dx, word [cs:data_0b8b]      ; 0x03bf
    mov al, 0x80                     ; 0x03c4
    out dx, al                       ; 0x03c6
    jmp near loc_0592                ; 0x03c7
    jmp near loc_0592                ; 0x03ca
    times 14 db 0
    add al, ch                       ; 0x03db
    or ax, 0xe903                    ; 0x03dd
    mov al, 1                        ; 0x03e0
@..bios_disk_loc_RVRG.l5:
    cmp byte [bp + 0x12], 0          ; 0x03e2
    jne short @..bios_disk_loc_RVRG.l7 ; 0x03e6
    call loc_01b0                    ; 0x03e8
@..bios_disk_loc_RVRG.l6:
    test byte [cs:cseg_0b94 - IMAGE_BASE], 0xff ; 0x03eb
    je short @..bios_disk_loc_RVRG.l6 ; 0x03f1
    jmp near @..bios_disk_loc_RVRG.l12 ; 0x03f3
@..bios_disk_loc_RVRG.l7:
    test byte [bp + 0x14], 2         ; 0x03f6
    je short @..bios_disk_loc_RVRG.l8 ; 0x03fa
    test byte [cs:cseg_0b94 - IMAGE_BASE], 0xff ; 0x03fc
    jne short @..bios_disk_loc_RVRG.l8 ; 0x0402
    jmp near loc_0592                ; 0x0404
@..bios_disk_loc_RVRG.l8:
    cli                              ; 0x0407
    test byte [cs:cseg_0b94 - IMAGE_BASE], 0xff ; 0x0408
    jne short @..bios_disk_loc_RVRG.l9 ; 0x040e
    jmp near loc_04c3                ; 0x0410
@..bios_disk_loc_RVRG.l9:
    xor ax, ax                       ; 0x0413
    mov es, ax                       ; 0x0415
    mov di, 0x20                     ; 0x0417
    cli                              ; 0x041a
    cmp byte [cs:cseg_0421 - IMAGE_BASE], 0 ; 0x041b
data_0421:
cseg_0421:
    jne short @..bios_disk_loc_RVRG.l10 ; 0x0421
    mov byte [cs:cseg_0421 - IMAGE_BASE], 1 ; 0x0423
    in al, 0x21                      ; 0x0429
    mov byte [cs:cseg_0b8f - IMAGE_BASE], al ; 0x042b
    mov ax, word [es:di]             ; 0x042f
    mov word [cs:cseg_0c10 - IMAGE_BASE], ax ; 0x0432
    mov ax, word [es:di + 0x2]       ; 0x0436
    mov word [cs:cseg_0c12 - IMAGE_BASE], ax ; 0x043a
@..bios_disk_loc_RVRG.l10:
    mov al, 0x34                     ; 0x043e
    out 0x43, al                     ; 0x0440
    call leaf_loc_KROT               ; 0x0442
    mov ax, 0x48                     ; 0x0445
    out 0x40, al                     ; 0x0448
    call leaf_loc_KROT               ; 0x044a
    mov al, ah                       ; 0x044d
    out 0x40, al                     ; 0x044f
    cmp byte [cs:cseg_0b90 - IMAGE_BASE], 0 ; 0x0451
    je short @..bios_disk_loc_RVRG.l11 ; 0x0457
    mov bl, byte [cs:cseg_0b7d - IMAGE_BASE] ; 0x0459
    shl bl, 1                        ; 0x045e
    xor bh, bh                       ; 0x0460
    mov dx, word [cs:bx + 0x5a5]     ; 0x0462
    cmp byte [cs:cseg_0b94 - IMAGE_BASE], 0 ; 0x0467
    je short loc_04b5                ; 0x046d
    mov dx, word [cs:bx + 0x5ad]     ; 0x046f
    jmp near loc_04b5                ; 0x0474
@..bios_disk_loc_RVRG.l11:
    mov bl, byte [cs:cseg_0b7d - IMAGE_BASE] ; 0x0477
    shl bl, 1                        ; 0x047c
    xor bh, bh                       ; 0x047e
    mov dx, word [cs:bx + 0x595]     ; 0x0480
    cmp byte [cs:cseg_0b94 - IMAGE_BASE], 0 ; 0x0485
    je short loc_04b5                ; 0x048b
    mov dx, word [cs:bx + 0x59d]     ; 0x048d
    jmp near loc_04b5                ; 0x0492
