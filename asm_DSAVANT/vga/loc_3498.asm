; auto-generated
loc_3498:
    mov ax, word [bp - 0x0004]       ; 0x3498
    mov cx, 0xa00                    ; 0x349b
    mul cx                           ; 0x349e
    sub ax, 0x140                    ; 0x34a0
    add ax, word [bp - 0x0006]       ; 0x34a3
    mov word [bp - 0x000e], ax       ; 0x34a6
    mov si, word [bx]                ; 0x34a9
    add si, bx                       ; 0x34ab
    mov word [bp - 0x000a], 1        ; 0x34ad
    lea ax, word [bx + 0x4]          ; 0x34b2
    mov word [bp - 0x000c], ax       ; 0x34b5
    mov cx, word [bp - 0x0004]       ; 0x34b8
    mov byte [bp - 0x003a], 0x80     ; 0x34bb
    mov ax, word [bp - 0x0028]       ; 0x34bf
    add word [bp - 0x000e], ax       ; 0x34c2
    mov ax, word [bp - 0x002c]       ; 0x34c5
    mov bx, 0x140                    ; 0x34c8
    mul bx                           ; 0x34cb
    sub word [bp - 0x000e], ax       ; 0x34cd
loc_34d0:
    mov ax, word [bp - 0x002e]       ; 0x34d0
    mov di, word [bp - 0x000e]       ; 0x34d3
    cmp ax, di                       ; 0x34d6
    jbe short loc_34dd               ; 0x34d8
    jmp near loc_35d0                ; 0x34da
loc_34dd:
    push cx                          ; 0x34dd
    call leaf_loc_MTKK               ; 0x34de
    mov ax, data_2e2b                ; 0x34e1
    mov word [bp - 0x0034], ax       ; 0x34e4
    mov cx, word [bp - 0x0002]       ; 0x34e7
loc_34ea:
    push cx                          ; 0x34ea
    call leaf_loc_GLTQ               ; 0x34eb
    mov bx, word [bp - 0x000c]       ; 0x34ee
    mov al, byte [bx]                ; 0x34f1
    and al, byte [bp - 0x000a]       ; 0x34f3
    jne short loc_34fb               ; 0x34f6
    jmp near loc_35a3                ; 0x34f8
loc_34fb:
    mov bx, word [bp - 0x0034]       ; 0x34fb
    mov al, byte [cs:bx]             ; 0x34fe
    cmp al, 0xff                     ; 0x3501
    jne short loc_350b               ; 0x3503
    add si, byte 0x40                ; 0x3505
    jmp near loc_35a3                ; 0x3508
loc_350b:
    push di                          ; 0x350b
    push si                          ; 0x350c
    mov al, 0x80                     ; 0x350d
    mov byte [bp - 0x0038], al       ; 0x350f
    mov cx, 8                        ; 0x3512
loc_3515:
    cmp word [bp - 0x002e], di       ; 0x3515
    jbe short loc_351d               ; 0x3518
    jmp near loc_359e                ; 0x351a
loc_351d:
    mov bx, word [bp - 0x0036]       ; 0x351d
    mov al, byte [cs:bx]             ; 0x3520
    and al, byte [bp - 0x0038]       ; 0x3523
    je short loc_352b                ; 0x3526
    jmp near loc_3599                ; 0x3528
loc_352b:
    push cx                          ; 0x352b
    push di                          ; 0x352c
    mov al, 0x80                     ; 0x352d
    mov byte [bp - 0x0032], al       ; 0x352f
    mov cx, 8                        ; 0x3532
loc_3535:
    mov bx, word [bp - 0x0034]       ; 0x3535
    mov al, byte [cs:bx]             ; 0x3538
    and al, byte [bp - 0x0032]       ; 0x353b
    jne short loc_3591               ; 0x353e
    mov al, byte [si]                ; 0x3540
    cmp al, 0xff                     ; 0x3542
    je short loc_357d                ; 0x3544
    cmp byte [bp + 0x1e], 2          ; 0x3546
    jne short loc_3562               ; 0x354a
    mov al, byte [es:di]             ; 0x354c
    mov bx, data_381b                ; 0x354f
    add bx, ax                       ; 0x3552
    add al, byte [si]                ; 0x3554
    jb short loc_355d                ; 0x3556
    cmp al, byte [cs:bx]             ; 0x3558
    jb short loc_357a                ; 0x355b
loc_355d:
    mov al, byte [cs:bx]             ; 0x355d
    jmp short loc_357a               ; 0x3560
loc_3562:
    cmp byte [bp - 0x0030], 0        ; 0x3562
    je short loc_357a                ; 0x3566
    mov bx, data_381b                ; 0x3568
    add bx, ax                       ; 0x356b
    add al, byte [bp - 0x0030]       ; 0x356d
    jb short loc_3577                ; 0x3570
    cmp al, byte [cs:bx]             ; 0x3572
    jb short loc_357a                ; 0x3575
loc_3577:
    mov al, byte [cs:bx]             ; 0x3577
loc_357a:
    mov byte [es:di], al             ; 0x357a
loc_357d:
    inc si                           ; 0x357d
    inc di                           ; 0x357e
    ror byte [bp - 0x0032], 1        ; 0x357f
    loop loc_3535                    ; 0x3582
loc_3584:
    pop di                           ; 0x3584
    sub di, strict word 0x140        ; 0x3585
    pop cx                           ; 0x3589
loc_358a:
    ror byte [bp - 0x0038], 1        ; 0x358a
    loop loc_3515                    ; 0x358d
    jmp short loc_359e               ; 0x358f
loc_3591:
    inc si                           ; 0x3591
    ror byte [bp - 0x0032], 1        ; 0x3592
    loop loc_3535                    ; 0x3595
    jmp short loc_3584               ; 0x3597
loc_3599:
    add si, byte 8                   ; 0x3599
    jmp short loc_358a               ; 0x359c
loc_359e:
    pop si                           ; 0x359e
    add si, byte 0x40                ; 0x359f
    pop di                           ; 0x35a2
loc_35a3:
    add di, byte 8                   ; 0x35a3
    sub di, word [bp - 0x003c]       ; 0x35a6
    rol byte [bp - 0x000a], 1        ; 0x35a9
    cmp byte [bp - 0x000a], 1        ; 0x35ac
    jne short loc_35b5               ; 0x35b0
    inc word [bp - 0x000c]           ; 0x35b2
loc_35b5:
    inc word [bp - 0x0034]           ; 0x35b5
    pop cx                           ; 0x35b8
    loop loc_35d2                    ; 0x35b9
    pop cx                           ; 0x35bb
    sub word [bp - 0x000e], strict word 0xa00 ; 0x35bc
    mov ax, word [bp - 0x003e]       ; 0x35c1
    add word [bp - 0x000e], ax       ; 0x35c4
    inc word [bp - 0x0036]           ; 0x35c7
    mov byte [bp - 0x003a], 0x80     ; 0x35ca
    loop loc_35d5                    ; 0x35ce
loc_35d0:
    pop es                           ; 0x35d0
    ret                              ; 0x35d1
loc_35d2:
    jmp near loc_34ea                ; 0x35d2
loc_35d5:
    jmp near loc_34d0                ; 0x35d5
