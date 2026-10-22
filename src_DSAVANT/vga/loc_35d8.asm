; auto-generated
loc_35d8:
    mov ax, word [bp - 0x0004]       ; 0x35d8
    mov cx, 0xa00                    ; 0x35db
    mul cx                           ; 0x35de
    sub ax, 0x140                    ; 0x35e0
    add ax, word [bp - 0x0006]       ; 0x35e3
    mov word [bp - 0x000e], ax       ; 0x35e6
    mov si, word [bx]                ; 0x35e9
    add si, bx                       ; 0x35eb
    mov word [bp - 0x000a], 1        ; 0x35ed
    lea ax, word [bx + 0x4]          ; 0x35f2
    mov word [bp - 0x000c], ax       ; 0x35f5
    mov cx, word [bp - 0x0004]       ; 0x35f8
    mov byte [bp - 0x003a], 0x80     ; 0x35fb
    mov ax, word [bp - 0x002a]       ; 0x35ff
    sub word [bp - 0x000e], ax       ; 0x3602
    mov ax, word [bp - 0x002c]       ; 0x3605
    mov bx, 0x140                    ; 0x3608
    mul bx                           ; 0x360b
    sub word [bp - 0x000e], ax       ; 0x360d
loc_3610:
    mov ax, word [bp - 0x002e]       ; 0x3610
    mov di, word [bp - 0x000e]       ; 0x3613
    add di, word [bp - 0x001e]       ; 0x3616
    cmp ax, di                       ; 0x3619
    jb short loc_3620                ; 0x361b
    jmp near loc_3713                ; 0x361d
loc_3620:
    push cx                          ; 0x3620
    call leaf_loc_MTKK               ; 0x3621
    mov ax, data_2e2b                ; 0x3624
    mov word [bp - 0x0034], ax       ; 0x3627
    mov cx, word [bp - 0x0002]       ; 0x362a
loc_362d:
    push cx                          ; 0x362d
    call leaf_loc_QLNN               ; 0x362e
    mov bx, word [bp - 0x000c]       ; 0x3631
    mov al, byte [bx]                ; 0x3634
    and al, byte [bp - 0x000a]       ; 0x3636
    jne short loc_363e               ; 0x3639
    jmp near loc_36e6                ; 0x363b
loc_363e:
    mov bx, word [bp - 0x0034]       ; 0x363e
    mov al, byte [cs:bx]             ; 0x3641
    cmp al, 0xff                     ; 0x3644
    jne short loc_364e               ; 0x3646
    add si, byte 0x40                ; 0x3648
    jmp near loc_36e6                ; 0x364b
loc_364e:
    push di                          ; 0x364e
    push si                          ; 0x364f
    mov al, 0x80                     ; 0x3650
    mov byte [bp - 0x0038], al       ; 0x3652
    mov cx, 8                        ; 0x3655
loc_3658:
    cmp word [bp - 0x002e], di       ; 0x3658
    jbe short loc_3660               ; 0x365b
    jmp near loc_36e1                ; 0x365d
loc_3660:
    mov bx, word [bp - 0x0036]       ; 0x3660
    mov al, byte [cs:bx]             ; 0x3663
    and al, byte [bp - 0x0038]       ; 0x3666
    je short loc_366e                ; 0x3669
    jmp near loc_36dc                ; 0x366b
loc_366e:
    push cx                          ; 0x366e
    push di                          ; 0x366f
    mov al, 0x80                     ; 0x3670
    mov byte [bp - 0x0032], al       ; 0x3672
    mov cx, 8                        ; 0x3675
loc_3678:
    mov bx, word [bp - 0x0034]       ; 0x3678
    mov al, byte [cs:bx]             ; 0x367b
    and al, byte [bp - 0x0032]       ; 0x367e
    jne short loc_36d4               ; 0x3681
    mov al, byte [si]                ; 0x3683
    cmp al, 0xff                     ; 0x3685
    je short loc_36c0                ; 0x3687
    cmp byte [bp + 0x1e], 2          ; 0x3689
    jne short loc_36a5               ; 0x368d
    mov al, byte [es:di]             ; 0x368f
    mov bx, data_381b                ; 0x3692
    add bx, ax                       ; 0x3695
    add al, byte [si]                ; 0x3697
    jb short loc_36a0                ; 0x3699
    cmp al, byte [cs:bx]             ; 0x369b
    jb short loc_36bd                ; 0x369e
loc_36a0:
    mov al, byte [cs:bx]             ; 0x36a0
    jmp short loc_36bd               ; 0x36a3
loc_36a5:
    cmp byte [bp - 0x0030], 0        ; 0x36a5
    je short loc_36bd                ; 0x36a9
    mov bx, data_381b                ; 0x36ab
    add bx, ax                       ; 0x36ae
    add al, byte [bp - 0x0030]       ; 0x36b0
    jb short loc_36ba                ; 0x36b3
    cmp al, byte [cs:bx]             ; 0x36b5
    jb short loc_36bd                ; 0x36b8
loc_36ba:
    mov al, byte [cs:bx]             ; 0x36ba
loc_36bd:
    mov byte [es:di], al             ; 0x36bd
loc_36c0:
    inc si                           ; 0x36c0
    dec di                           ; 0x36c1
    ror byte [bp - 0x0032], 1        ; 0x36c2
    loop loc_3678                    ; 0x36c5
loc_36c7:
    pop di                           ; 0x36c7
    sub di, strict word 0x140        ; 0x36c8
    pop cx                           ; 0x36cc
loc_36cd:
    ror byte [bp - 0x0038], 1        ; 0x36cd
    loop loc_3658                    ; 0x36d0
    jmp short loc_36e1               ; 0x36d2
loc_36d4:
    inc si                           ; 0x36d4
    ror byte [bp - 0x0032], 1        ; 0x36d5
    loop loc_3678                    ; 0x36d8
    jmp short loc_36c7               ; 0x36da
loc_36dc:
    add si, byte 8                   ; 0x36dc
    jmp short loc_36cd               ; 0x36df
loc_36e1:
    pop si                           ; 0x36e1
    add si, byte 0x40                ; 0x36e2
    pop di                           ; 0x36e5
loc_36e6:
    sub di, byte 8                   ; 0x36e6
    add di, word [bp - 0x003c]       ; 0x36e9
    rol byte [bp - 0x000a], 1        ; 0x36ec
    cmp byte [bp - 0x000a], 1        ; 0x36ef
    jne short loc_36f8               ; 0x36f3
    inc word [bp - 0x000c]           ; 0x36f5
loc_36f8:
    inc word [bp - 0x0034]           ; 0x36f8
    pop cx                           ; 0x36fb
    loop loc_3715                    ; 0x36fc
    pop cx                           ; 0x36fe
    sub word [bp - 0x000e], strict word 0xa00 ; 0x36ff
    mov ax, word [bp - 0x003e]       ; 0x3704
    add word [bp - 0x000e], ax       ; 0x3707
    inc word [bp - 0x0036]           ; 0x370a
    mov byte [bp - 0x003a], 0x80     ; 0x370d
    loop loc_3718                    ; 0x3711
loc_3713:
    pop es                           ; 0x3713
    ret                              ; 0x3714
loc_3715:
    jmp near loc_362d                ; 0x3715
loc_3718:
    jmp near loc_3610                ; 0x3718
__zdata_381b:

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

