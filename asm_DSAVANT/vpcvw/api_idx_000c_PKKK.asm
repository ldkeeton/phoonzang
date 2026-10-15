; auto-generated
api_idx_000c_PKKK:
    mov ax, 0xfff4                   ; 0x037b
    call aztec_csav                  ; 0x037e
    mov ax, word [bp + 0x4]          ; 0x0381
    mov cx, 3                        ; 0x0384
    cwd                              ; 0x0387
    idiv cx                          ; 0x0388
    mov ax, dx                       ; 0x038a
    mov cx, 0x32                     ; 0x038c
    imul cx                          ; 0x038f
    add ax, strict word 4            ; 0x0391
    mov word [bp - 0x0006], ax       ; 0x0394
    mov ax, word [bp + 0x4]          ; 0x0397
    mov cx, 3                        ; 0x039a
    cwd                              ; 0x039d
    idiv cx                          ; 0x039e
    mov cx, 0x27                     ; 0x03a0
    imul cx                          ; 0x03a3
    add ax, strict word 0x70         ; 0x03a5
    mov word [bp - 0x0008], ax       ; 0x03a8
    push ax                          ; 0x03ab
    push word [bp - 0x0006]          ; 0x03ac
    call thunk                       ; 0x03af
    add sp, byte 4                   ; 0x03b2
    mov ax, 5                        ; 0x03b5
    push ax                          ; 0x03b8
    mov ax, word [bp + 0x4]          ; 0x03b9
    shl ax, 1                        ; 0x03bc
    mov bx, ax                       ; 0x03be
    mov al, byte [bx + 0x69bc]       ; 0x03c0
    sub ah, ah                       ; 0x03c4
    push ax                          ; 0x03c6
    call ds_loc_PQIO                 ; 0x03c7
    add sp, byte 4                   ; 0x03ca
    cmp word [bp + 0x8], byte 0      ; 0x03cd
    je short @..api_idx_000c_PKKK.l1 ; 0x03d1
    mov ax, 0x18                     ; 0x03d3
    push ax                          ; 0x03d6
    mov ax, word [bp - 0x0008]       ; 0x03d7
    add ax, strict word 0x24         ; 0x03da
    push ax                          ; 0x03dd
    mov ax, 0x248                    ; 0x03de
    imul word [bp + 0x4]             ; 0x03e1
    add ax, 0x5bf4                   ; 0x03e4
    push ax                          ; 0x03e7
    call aztec_strlen                ; 0x03e8
    pop cx                           ; 0x03eb
    mov cx, 6                        ; 0x03ec
    imul cx                          ; 0x03ef
    add ax, word [bp - 0x0006]       ; 0x03f1
    inc ax                           ; 0x03f4
    inc ax                           ; 0x03f5
    push ax                          ; 0x03f6
    mov ax, word [bp - 0x0008]       ; 0x03f7
    add ax, strict word 0x20         ; 0x03fa
    push ax                          ; 0x03fd
    mov ax, word [bp - 0x0006]       ; 0x03fe
    add ax, strict word 4            ; 0x0401
    push ax                          ; 0x0404
    call thunk_7                     ; 0x0405
    add sp, byte 0x0a                ; 0x0408
@..api_idx_000c_PKKK.l1:
    mov ax, 0                        ; 0x040b
    push ax                          ; 0x040e
    mov ax, 1                        ; 0x040f
    push ax                          ; 0x0412
    call thunk_3                     ; 0x0413
    add sp, byte 4                   ; 0x0416
    mov ax, word [bp - 0x0008]       ; 0x0419
    add ax, strict word 0x20         ; 0x041c
    push ax                          ; 0x041f
    mov ax, word [bp - 0x0006]       ; 0x0420
    add ax, strict word 4            ; 0x0423
    push ax                          ; 0x0426
    call thunk                       ; 0x0427
    add sp, byte 4                   ; 0x042a
    mov ax, 0                        ; 0x042d
    push ax                          ; 0x0430
    mov ax, 0x248                    ; 0x0431
    imul word [bp + 0x4]             ; 0x0434
    add ax, 0x5bf4                   ; 0x0437
    push ax                          ; 0x043a
    call ds_string_loc_PTIK          ; 0x043b
    add sp, byte 4                   ; 0x043e
    mov ax, 0x1b                     ; 0x0441
    push ax                          ; 0x0444
    mov ax, 0x248                    ; 0x0445
    imul word [bp + 0x4]             ; 0x0448
    mov bx, ax                       ; 0x044b
    push word [bx + 0x5c0e]          ; 0x044d
    push word [bx + 0x5c0c]          ; 0x0451
    mov ax, 0x16                     ; 0x0455
    push ax                          ; 0x0458
    mov ax, 3                        ; 0x0459
    push ax                          ; 0x045c
    mov ax, word [bp - 0x0008]       ; 0x045d
    add ax, strict word 7            ; 0x0460
    push ax                          ; 0x0463
    mov ax, word [bp - 0x0006]       ; 0x0464
    add ax, strict word 0x22         ; 0x0467
    push ax                          ; 0x046a
    call ds_app_NHUH                 ; 0x046b
    add sp, byte 0x0e                ; 0x046e
    mov ax, 0x56                     ; 0x0471
    push ax                          ; 0x0474
    mov ax, 0x248                    ; 0x0475
    imul word [bp + 0x4]             ; 0x0478
    mov bx, ax                       ; 0x047b
    push word [bx + 0x5c12]          ; 0x047d
    push word [bx + 0x5c10]          ; 0x0481
    mov ax, 0x16                     ; 0x0485
    push ax                          ; 0x0488
    mov ax, 3                        ; 0x0489
    push ax                          ; 0x048c
    mov ax, word [bp - 0x0008]       ; 0x048d
    add ax, strict word 7            ; 0x0490
    push ax                          ; 0x0493
    mov ax, word [bp - 0x0006]       ; 0x0494
    add ax, strict word 0x26         ; 0x0497
    push ax                          ; 0x049a
    call ds_app_NHUH                 ; 0x049b
    add sp, byte 0x0e                ; 0x049e
    mov word [bp - 0x000a], 0        ; 0x04a1
    mov word [bp - 0x000c], 0        ; 0x04a6
    mov word [bp - 0x0002], 0        ; 0x04ab
@..api_idx_000c_PKKK.l2:
    mov ax, 0x248                    ; 0x04b0
    imul word [bp + 0x4]             ; 0x04b3
    mov cx, word [bp - 0x0002]       ; 0x04b6
    shl cx, 1                        ; 0x04b9
    shl cx, 1                        ; 0x04bb
    add ax, cx                       ; 0x04bd
    mov bx, ax                       ; 0x04bf
    mov ax, word [bx + 0x5c1c]       ; 0x04c1
    add word [bp - 0x000a], ax       ; 0x04c5
    mov ax, word [bx + 0x5c1e]       ; 0x04c8
    add word [bp - 0x000c], ax       ; 0x04cc
    inc word [bp - 0x0002]           ; 0x04cf
    mov ax, word [bp - 0x0002]       ; 0x04d2
    cmp ax, strict word 6            ; 0x04d5
    jl short @..api_idx_000c_PKKK.l2 ; 0x04d8
    mov ax, 0x98                     ; 0x04da
    push ax                          ; 0x04dd
    push word [bp - 0x000c]          ; 0x04de
    push word [bp - 0x000a]          ; 0x04e1
    mov ax, 0x16                     ; 0x04e4
    push ax                          ; 0x04e7
    mov ax, 3                        ; 0x04e8
    push ax                          ; 0x04eb
    mov ax, word [bp - 0x0008]       ; 0x04ec
    add ax, strict word 7            ; 0x04ef
    push ax                          ; 0x04f2
    mov ax, word [bp - 0x0006]       ; 0x04f3
    add ax, strict word 0x2a         ; 0x04f6
    push ax                          ; 0x04f9
    call ds_app_NHUH                 ; 0x04fa
    add sp, byte 0x0e                ; 0x04fd
    cmp word [bp + 0x6], byte 0      ; 0x0500
    je short @..api_idx_000c_PKKK.l3 ; 0x0504
    mov ax, word [bp - 0x0008]       ; 0x0506
    add ax, strict word 0x26         ; 0x0509
    push ax                          ; 0x050c
    mov ax, word [bp - 0x0006]       ; 0x050d
    add ax, strict word 0x2e         ; 0x0510
    push ax                          ; 0x0513
    push word [bp - 0x0008]          ; 0x0514
    push word [bp - 0x0006]          ; 0x0517
    call thunk_4                     ; 0x051a
    add sp, byte 8                   ; 0x051d
@..api_idx_000c_PKKK.l3:
    ret                              ; 0x0520
