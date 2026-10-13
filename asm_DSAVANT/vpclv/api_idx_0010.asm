api_idx_0010:
    mov ax, 0xfff0                   ; 0x03cd
    call aztec_csav                  ; 0x03d0
    lea ax, word [bp - 0x000c]       ; 0x03d3
    push ax                          ; 0x03d6
    lea ax, word [bp - 0x000a]       ; 0x03d7
    push ax                          ; 0x03da
    mov ax, word [bp + 0x4]          ; 0x03db
    shl ax, 1                        ; 0x03de
    mov bx, ax                       ; 0x03e0
    push word [bx + 0x69bc]          ; 0x03e2
    mov ax, 5                        ; 0x03e6
    push ax                          ; 0x03e9
    call ds_loc_39f6                 ; 0x03ea
    add sp, byte 8                   ; 0x03ed
    mov word [bp - 0x0006], dx       ; 0x03f0
    mov word [bp - 0x0008], ax       ; 0x03f3
    mov ax, word [bp - 0x000a]       ; 0x03f6
    mov word [bp - 0x000e], ax       ; 0x03f9
    mov word [bp - 0x0004], 0        ; 0x03fc
    jmp near @..api_idx_0010.l7      ; 0x0401
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0        ; 0x0404
    jmp near @..api_idx_0010.l5      ; 0x0409
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]       ; 0x040c
    mov si, word [bp - 0x000e]       ; 0x040f
    mov al, byte [es:bx + si]        ; 0x0412
    sub ah, ah                       ; 0x0415
    mov word [bp - 0x0010], ax       ; 0x0417
    cmp ax, 0xff                     ; 0x041a
    jne short @..api_idx_0010.l3     ; 0x041d
    jmp near @..api_idx_0010.l4      ; 0x041f
@..api_idx_0010.l3:
    mov ax, 0xffff                   ; 0x0422
    push ax                          ; 0x0425
    push word [bp - 0x0010]          ; 0x0426
    call api_idx_0002_3              ; 0x0429
    add sp, byte 4                   ; 0x042c
    push ax                          ; 0x042f
    mov ax, word [bp - 0x0004]       ; 0x0430
    shl ax, 1                        ; 0x0433
    add ax, word [bp + 0x8]          ; 0x0435
    push ax                          ; 0x0438
    mov ax, word [bp - 0x0002]       ; 0x0439
    shl ax, 1                        ; 0x043c
    add ax, word [bp + 0x6]          ; 0x043e
    push ax                          ; 0x0441
    call ds_loc_3b3b                 ; 0x0442
    add sp, byte 6                   ; 0x0445
    push word [bp - 0x0010]          ; 0x0448
    mov ax, word [bp - 0x0004]       ; 0x044b
    shl ax, 1                        ; 0x044e
    add ax, word [bp + 0x8]          ; 0x0450
    push ax                          ; 0x0453
    mov ax, word [bp - 0x0002]       ; 0x0454
    shl ax, 1                        ; 0x0457
    add ax, word [bp + 0x6]          ; 0x0459
    inc ax                           ; 0x045c
    push ax                          ; 0x045d
    call ds_loc_3b3b                 ; 0x045e
    add sp, byte 6                   ; 0x0461
    push word [bp - 0x0010]          ; 0x0464
    mov ax, word [bp - 0x0004]       ; 0x0467
    shl ax, 1                        ; 0x046a
    add ax, word [bp + 0x8]          ; 0x046c
    inc ax                           ; 0x046f
    push ax                          ; 0x0470
    mov ax, word [bp - 0x0002]       ; 0x0471
    shl ax, 1                        ; 0x0474
    add ax, word [bp + 0x6]          ; 0x0476
    push ax                          ; 0x0479
    call ds_loc_3b3b                 ; 0x047a
    add sp, byte 6                   ; 0x047d
    mov ax, 1                        ; 0x0480
    push ax                          ; 0x0483
    push word [bp - 0x0010]          ; 0x0484
    call api_idx_0002_3              ; 0x0487
    add sp, byte 4                   ; 0x048a
    push ax                          ; 0x048d
    mov ax, word [bp - 0x0004]       ; 0x048e
    shl ax, 1                        ; 0x0491
    add ax, word [bp + 0x8]          ; 0x0493
    inc ax                           ; 0x0496
    push ax                          ; 0x0497
    mov ax, word [bp - 0x0002]       ; 0x0498
    shl ax, 1                        ; 0x049b
    add ax, word [bp + 0x6]          ; 0x049d
    inc ax                           ; 0x04a0
    push ax                          ; 0x04a1
    call ds_loc_3b3b                 ; 0x04a2
    add sp, byte 6                   ; 0x04a5
@..api_idx_0010.l4:
    inc word [bp - 0x000e]           ; 0x04a8
    inc word [bp - 0x0002]           ; 0x04ab
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]       ; 0x04ae
    cmp ax, word [bp - 0x000a]       ; 0x04b1
    jge short @..api_idx_0010.l6     ; 0x04b4
    jmp near @..api_idx_0010.l2      ; 0x04b6
@..api_idx_0010.l6:
    inc word [bp - 0x0004]           ; 0x04b9
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]       ; 0x04bc
    dec ax                           ; 0x04bf
    dec ax                           ; 0x04c0
    cmp ax, word [bp - 0x0004]       ; 0x04c1
    jle short @..api_idx_0010.l8     ; 0x04c4
    jmp near @..api_idx_0010.l1      ; 0x04c6
@..api_idx_0010.l8:
    ret                              ; 0x04c9
