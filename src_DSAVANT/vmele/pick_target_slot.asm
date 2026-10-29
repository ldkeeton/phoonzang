; auto-generated
pick_target_slot:
    mov ax, 0xff58                   ; 0x041d
    call aztec_csav                  ; 0x0420
    mov ax, word [bp + 4]            ; 0x0423
    shl ax, 1                        ; 0x0426
    mov bx, ax                       ; 0x0428
    mov bx, word [bx + party_char_ext] ; 0x042a
    cmp byte [bx + member_ext.class_id], 2 ; 0x042e
    jge short .forward1              ; 0x0433
    mov ax, 0xffff                   ; 0x0435
    ret                              ; 0x0438
.forward1:
    mov al, byte [bx + 0xe5]         ; 0x0439
    cbw                              ; 0x043d
    mov word [bp - 0xa], ax          ; 0x043e
    mov word [bp - 2], 0             ; 0x0441
.back1:
    mov word [bp - 4], 0             ; 0x0446
.back2:
    mov ax, 0xc                      ; 0x044b
    imul word [bp - 2]               ; 0x044e
    mov cx, word [bp - 4]            ; 0x0451
    shl cx, 1                        ; 0x0454
    add ax, cx                       ; 0x0456
    mov bx, ax                       ; 0x0458
    add bx, bp                       ; 0x045a
    mov word [bx - 0x9c], 0xffff     ; 0x045c
    inc word [bp - 4]                ; 0x0462
    mov ax, word [bp - 4]            ; 0x0465
    cmp ax, strict word 6            ; 0x0468
    jl short .back2                  ; 0x046b
    inc word [bp - 2]                ; 0x046d
    mov ax, word [bp - 2]            ; 0x0470
    cmp ax, strict word 0xc          ; 0x0473
    jl short .back1                  ; 0x0476
    mov word [bp - 0x90], 0xffff     ; 0x0478
    mov word [bp - 0x8e], 0x5e       ; 0x047e
    mov word [bp - 0x8c], 0x5e       ; 0x0484
    mov word [bp - 0x8a], 0x5f       ; 0x048a
    mov word [bp - 0x88], 0x60       ; 0x0490
    mov word [bp - 0x86], 0x60       ; 0x0496
    mov word [bp - 0x84], 0x3c       ; 0x049c
    mov word [bp - 0x82], 0x3d       ; 0x04a2
    mov word [bp - 0x80], 0x3d       ; 0x04a8
    mov word [bp - 0x7e], 0x3e       ; 0x04ad
    mov word [bp - 0x7c], 0x3f       ; 0x04b2
    mov word [bp - 0x7a], 0x40       ; 0x04b7
    mov word [bp - 0x78], 0x42       ; 0x04bc
    mov word [bp - 0x76], 0x42       ; 0x04c1
    mov word [bp - 0x74], 0x43       ; 0x04c6
    mov word [bp - 0x72], 0x44       ; 0x04cb
    mov word [bp - 0x70], 0x45       ; 0x04d0
    mov word [bp - 0x6e], 0x46       ; 0x04d5
    mov word [bp - 0x6c], 0x4d       ; 0x04da
    mov word [bp - 0x6a], 0x4d       ; 0x04df
    mov word [bp - 0x68], 0x4e       ; 0x04e4
    mov word [bp - 0x66], 0x4f       ; 0x04e9
    mov word [bp - 0x64], 0x50       ; 0x04ee
    mov word [bp - 0x62], 0x50       ; 0x04f3
    mov word [bp - 0x60], 0xffff     ; 0x04f8
    mov word [bp - 0x5e], 0x48       ; 0x04fd
    mov word [bp - 0x5c], 0x49       ; 0x0502
    mov word [bp - 0x5a], 0x4a       ; 0x0507
    mov word [bp - 0x58], 0x4b       ; 0x050c
    mov word [bp - 0x56], 0x4b       ; 0x0511
    mov word [bp - 0x54], 0x52       ; 0x0516
    mov word [bp - 0x52], 0x53       ; 0x051b
    mov word [bp - 0x50], 0x54       ; 0x0520
    mov word [bp - 0x4e], 0x56       ; 0x0525
    mov word [bp - 0x4c], 0x55       ; 0x052a
    mov word [bp - 0x4a], 0x57       ; 0x052f
    mov word [bp - 0x48], 0x58       ; 0x0534
    mov word [bp - 0x46], 0x59       ; 0x0539
    mov word [bp - 0x44], 0x5a       ; 0x053e
    mov word [bp - 0x42], 0x5b       ; 0x0543
    mov word [bp - 0x40], 0x5c       ; 0x0548
    mov word [bp - 0x3e], 0x69       ; 0x054d
    mov ax, word [maze_variant]      ; 0x0552
    mov cx, 2                        ; 0x0555
    cwd                              ; 0x0558
    idiv cx                          ; 0x0559
    mov ax, dx                       ; 0x055b
    test ax, ax                      ; 0x055d
    jne short .forward2              ; 0x055f
    mov word [bp - 0x3c], 0xffff     ; 0x0561
    mov word [bp - 0x3a], 0x62       ; 0x0566
    mov word [bp - 0x38], 0x63       ; 0x056b
    mov word [bp - 0x36], 0x63       ; 0x0570
    mov word [bp - 0x34], 0x64       ; 0x0575
    mov word [bp - 0x32], 0x64       ; 0x057a
.forward2:
    mov word [bp - 2], 0             ; 0x057f
.back3:
    mov ax, 0xc                      ; 0x0584
    imul word [bp - 0xa]             ; 0x0587
    mov cx, word [bp - 2]            ; 0x058a
    shl cx, 1                        ; 0x058d
    add ax, cx                       ; 0x058f
    mov bx, ax                       ; 0x0591
    add bx, bp                       ; 0x0593
    mov ax, word [bx - 0x9c]         ; 0x0595
    cmp ax, word [bp + 6]            ; 0x0599
    je short .forward3               ; 0x059c
    jmp near .forward5               ; 0x059e
.forward3:
    mov ax, 0                        ; 0x05a1
    push ax                          ; 0x05a4
    mov ax, 0xc                      ; 0x05a5
    push ax                          ; 0x05a8
    lea ax, word [bp - 0xa8]         ; 0x05a9
    push ax                          ; 0x05ad
    call aztec_setmem                ; 0x05ae
    add sp, byte 6                   ; 0x05b1
    mov bx, word [bp - 0xa]          ; 0x05b4
    add bx, bp                       ; 0x05b7
    mov byte [bx - 0xa8], 1          ; 0x05b9
    mov ax, 5                        ; 0x05be
    push ax                          ; 0x05c1
    mov ax, 0                        ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, word [bp - 2]            ; 0x05c6
    dec ax                           ; 0x05c9
    push ax                          ; 0x05ca
    call clamp_between               ; 0x05cb
    add sp, byte 6                   ; 0x05ce
    mov word [bp - 8], ax            ; 0x05d1
    mov word [bp - 6], 0             ; 0x05d4
.back4:
    mov ax, 8                        ; 0x05d9
    push ax                          ; 0x05dc
    call random_below                ; 0x05dd
    pop cx                           ; 0x05e0
    inc ax                           ; 0x05e1
    mov word [bp - 0xc], ax          ; 0x05e2
    mov bx, word [bp - 0xc]          ; 0x05e5
    add bx, bp                       ; 0x05e8
    cmp byte [bx - 0xa8], 0          ; 0x05ea
    jne short .back4                 ; 0x05ef
    mov bx, word [bp - 0xc]          ; 0x05f1
    add bx, bp                       ; 0x05f4
    mov byte [bx - 0xa8], 1          ; 0x05f6
    inc word [bp - 6]                ; 0x05fb
    mov ax, 0xc                      ; 0x05fe
    imul word [bp - 0xa]             ; 0x0601
    add ax, word [bp - 0xc]          ; 0x0604
    mov bx, ax                       ; 0x0607
    cmp byte [bx + faction_attitudes], 0x23 ; 0x0609
    jle short .forward4              ; 0x060e
    mov ax, 0xc                      ; 0x0610
    imul word [bp - 0xc]             ; 0x0613
    mov cx, word [bp - 8]            ; 0x0616
    shl cx, 1                        ; 0x0619
    add ax, cx                       ; 0x061b
    mov bx, ax                       ; 0x061d
    add bx, bp                       ; 0x061f
    cmp word [bx - 0x9c], byte -1    ; 0x0621
    je short .forward4               ; 0x0626
    mov ax, word [bx - 0x9c]         ; 0x0628
    ret                              ; 0x062c
.forward4:
    cmp word [bp - 6], byte 3        ; 0x062d
    jl short .back4                  ; 0x0631
    mov ax, 0xffff                   ; 0x0633
    ret                              ; 0x0636
.forward5:
    inc word [bp - 2]                ; 0x0637
    mov ax, word [bp - 2]            ; 0x063a
    cmp ax, strict word 6            ; 0x063d
    jge short .forward6              ; 0x0640
    jmp near .back3                  ; 0x0642
.forward6:
    mov ax, 0xffff                   ; 0x0645
    ret                              ; 0x0648
