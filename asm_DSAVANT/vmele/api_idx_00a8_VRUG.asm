; auto-generated
api_idx_00a8_VRUG:
    mov ax, 0xff58                   ; 0x041d
    call aztec_csav                  ; 0x0420
    mov ax, word [bp + 0x4]          ; 0x0423
    shl ax, 1                        ; 0x0426
    mov bx, ax                       ; 0x0428
    mov bx, word [bx - 0x7b70]       ; 0x042a
    cmp byte [bx + 0xe5], 2          ; 0x042e
    jge short @..api_idx_00a8_VRUG.l1 ; 0x0433
    mov ax, 0xffff                   ; 0x0435
    ret                              ; 0x0438
@..api_idx_00a8_VRUG.l1:
    mov al, byte [bx + 0xe5]         ; 0x0439
    cbw                              ; 0x043d
    mov word [bp - 0x000a], ax       ; 0x043e
    mov word [bp - 0x0002], 0        ; 0x0441
@..api_idx_00a8_VRUG.l2:
    mov word [bp - 0x0004], 0        ; 0x0446
@..api_idx_00a8_VRUG.l3:
    mov ax, 0xc                      ; 0x044b
    imul word [bp - 0x0002]          ; 0x044e
    mov cx, word [bp - 0x0004]       ; 0x0451
    shl cx, 1                        ; 0x0454
    add ax, cx                       ; 0x0456
    mov bx, ax                       ; 0x0458
    add bx, bp                       ; 0x045a
    mov word [bx - 0x009c], 0xffff   ; 0x045c
    inc word [bp - 0x0004]           ; 0x0462
    mov ax, word [bp - 0x0004]       ; 0x0465
    cmp ax, strict word 6            ; 0x0468
    jl short @..api_idx_00a8_VRUG.l3 ; 0x046b
    inc word [bp - 0x0002]           ; 0x046d
    mov ax, word [bp - 0x0002]       ; 0x0470
    cmp ax, strict word 0xc          ; 0x0473
    jl short @..api_idx_00a8_VRUG.l2 ; 0x0476
    mov word [bp - 0x0090], 0xffff   ; 0x0478
    mov word [bp - 0x008e], 0x5e     ; 0x047e
    mov word [bp - 0x008c], 0x5e     ; 0x0484
    mov word [bp - 0x008a], 0x5f     ; 0x048a
    mov word [bp - 0x0088], 0x60     ; 0x0490
    mov word [bp - 0x0086], 0x60     ; 0x0496
    mov word [bp - 0x0084], 0x3c     ; 0x049c
    mov word [bp - 0x0082], 0x3d     ; 0x04a2
    mov word [bp - 0x0080], 0x3d     ; 0x04a8
    mov word [bp - 0x007e], 0x3e     ; 0x04ad
    mov word [bp - 0x007c], 0x3f     ; 0x04b2
    mov word [bp - 0x007a], 0x40     ; 0x04b7
    mov word [bp - 0x0078], 0x42     ; 0x04bc
    mov word [bp - 0x0076], 0x42     ; 0x04c1
    mov word [bp - 0x0074], 0x43     ; 0x04c6
    mov word [bp - 0x0072], 0x44     ; 0x04cb
    mov word [bp - 0x0070], 0x45     ; 0x04d0
    mov word [bp - 0x006e], 0x46     ; 0x04d5
    mov word [bp - 0x006c], 0x4d     ; 0x04da
    mov word [bp - 0x006a], 0x4d     ; 0x04df
    mov word [bp - 0x0068], 0x4e     ; 0x04e4
    mov word [bp - 0x0066], 0x4f     ; 0x04e9
    mov word [bp - 0x0064], 0x50     ; 0x04ee
    mov word [bp - 0x0062], 0x50     ; 0x04f3
    mov word [bp - 0x0060], 0xffff   ; 0x04f8
    mov word [bp - 0x005e], 0x48     ; 0x04fd
    mov word [bp - 0x005c], 0x49     ; 0x0502
    mov word [bp - 0x005a], 0x4a     ; 0x0507
    mov word [bp - 0x0058], 0x4b     ; 0x050c
    mov word [bp - 0x0056], 0x4b     ; 0x0511
    mov word [bp - 0x0054], 0x52     ; 0x0516
    mov word [bp - 0x0052], 0x53     ; 0x051b
    mov word [bp - 0x0050], 0x54     ; 0x0520
    mov word [bp - 0x004e], 0x56     ; 0x0525
    mov word [bp - 0x004c], 0x55     ; 0x052a
    mov word [bp - 0x004a], 0x57     ; 0x052f
    mov word [bp - 0x0048], 0x58     ; 0x0534
    mov word [bp - 0x0046], 0x59     ; 0x0539
    mov word [bp - 0x0044], 0x5a     ; 0x053e
    mov word [bp - 0x0042], 0x5b     ; 0x0543
    mov word [bp - 0x0040], 0x5c     ; 0x0548
    mov word [bp - 0x003e], 0x69     ; 0x054d
    mov ax, word [bss_5b6e]          ; 0x0552
    mov cx, 2                        ; 0x0555
    cwd                              ; 0x0558
    idiv cx                          ; 0x0559
    mov ax, dx                       ; 0x055b
    test ax, ax                      ; 0x055d
    jne short @..api_idx_00a8_VRUG.l4 ; 0x055f
    mov word [bp - 0x003c], 0xffff   ; 0x0561
    mov word [bp - 0x003a], 0x62     ; 0x0566
    mov word [bp - 0x0038], 0x63     ; 0x056b
    mov word [bp - 0x0036], 0x63     ; 0x0570
    mov word [bp - 0x0034], 0x64     ; 0x0575
    mov word [bp - 0x0032], 0x64     ; 0x057a
@..api_idx_00a8_VRUG.l4:
    mov word [bp - 0x0002], 0        ; 0x057f
@..api_idx_00a8_VRUG.l5:
    mov ax, 0xc                      ; 0x0584
    imul word [bp - 0x000a]          ; 0x0587
    mov cx, word [bp - 0x0002]       ; 0x058a
    shl cx, 1                        ; 0x058d
    add ax, cx                       ; 0x058f
    mov bx, ax                       ; 0x0591
    add bx, bp                       ; 0x0593
    mov ax, word [bx - 0x009c]       ; 0x0595
    cmp ax, word [bp + 0x6]          ; 0x0599
    je short @..api_idx_00a8_VRUG.l6 ; 0x059c
    jmp near @..api_idx_00a8_VRUG.l9 ; 0x059e
@..api_idx_00a8_VRUG.l6:
    mov ax, 0                        ; 0x05a1
    push ax                          ; 0x05a4
    mov ax, 0xc                      ; 0x05a5
    push ax                          ; 0x05a8
    lea ax, word [bp - 0x00a8]       ; 0x05a9
    push ax                          ; 0x05ad
    call aztec_setmem                ; 0x05ae
    add sp, byte 6                   ; 0x05b1
    mov bx, word [bp - 0x000a]       ; 0x05b4
    add bx, bp                       ; 0x05b7
    mov byte [bx - 0x00a8], 1        ; 0x05b9
    mov ax, 5                        ; 0x05be
    push ax                          ; 0x05c1
    mov ax, 0                        ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, word [bp - 0x0002]       ; 0x05c6
    dec ax                           ; 0x05c9
    push ax                          ; 0x05ca
    call clamp                       ; 0x05cb
    add sp, byte 6                   ; 0x05ce
    mov word [bp - 0x0008], ax       ; 0x05d1
    mov word [bp - 0x0006], 0        ; 0x05d4
@..api_idx_00a8_VRUG.l7:
    mov ax, 8                        ; 0x05d9
    push ax                          ; 0x05dc
    call ds_app_GGUI                 ; 0x05dd
    pop cx                           ; 0x05e0
    inc ax                           ; 0x05e1
    mov word [bp - 0x000c], ax       ; 0x05e2
    mov bx, word [bp - 0x000c]       ; 0x05e5
    add bx, bp                       ; 0x05e8
    cmp byte [bx - 0x00a8], 0        ; 0x05ea
    jne short @..api_idx_00a8_VRUG.l7 ; 0x05ef
    mov bx, word [bp - 0x000c]       ; 0x05f1
    add bx, bp                       ; 0x05f4
    mov byte [bx - 0x00a8], 1        ; 0x05f6
    inc word [bp - 0x0006]           ; 0x05fb
    mov ax, 0xc                      ; 0x05fe
    imul word [bp - 0x000a]          ; 0x0601
    add ax, word [bp - 0x000c]       ; 0x0604
    mov bx, ax                       ; 0x0607
    cmp byte [bx - 0x7622], 0x23     ; 0x0609
    jle short @..api_idx_00a8_VRUG.l8 ; 0x060e
    mov ax, 0xc                      ; 0x0610
    imul word [bp - 0x000c]          ; 0x0613
    mov cx, word [bp - 0x0008]       ; 0x0616
    shl cx, 1                        ; 0x0619
    add ax, cx                       ; 0x061b
    mov bx, ax                       ; 0x061d
    add bx, bp                       ; 0x061f
    cmp word [bx - 0x009c], byte 0xff ; 0x0621
    je short @..api_idx_00a8_VRUG.l8 ; 0x0626
    mov ax, word [bx - 0x009c]       ; 0x0628
    ret                              ; 0x062c
@..api_idx_00a8_VRUG.l8:
    cmp word [bp - 0x0006], byte 3   ; 0x062d
    jl short @..api_idx_00a8_VRUG.l7 ; 0x0631
    mov ax, 0xffff                   ; 0x0633
    ret                              ; 0x0636
@..api_idx_00a8_VRUG.l9:
    inc word [bp - 0x0002]           ; 0x0637
    mov ax, word [bp - 0x0002]       ; 0x063a
    cmp ax, strict word 6            ; 0x063d
    jge short @..api_idx_00a8_VRUG.l10 ; 0x0640
    jmp near @..api_idx_00a8_VRUG.l5 ; 0x0642
@..api_idx_00a8_VRUG.l10:
    mov ax, 0xffff                   ; 0x0645
    ret                              ; 0x0648
