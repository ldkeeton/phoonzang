; auto-generated
; asm only
leaf_loc_3360:
    xor ax, ax                       ; 0x3360
    mov word [bp - 0x003c], ax       ; 0x3362
    mov dl, 0x80                     ; 0x3365
    mov bx, word [bp - 0x0034]       ; 0x3367
    mov cx, 8                        ; 0x336a
@..leaf_loc_3360.l1:
    mov al, byte [cs:bx]             ; 0x336d
    and al, dl                       ; 0x3370
    je short @..leaf_loc_3360.l2     ; 0x3372
    inc word [bp - 0x003c]           ; 0x3374
@..leaf_loc_3360.l2:
    ror dl, 1                        ; 0x3377
    loop @..leaf_loc_3360.l1         ; 0x3379
    ret                              ; 0x337b
@..graphics_loc_31d9.l28:
    mov ax, word [bp - 0x002a]       ; 0x337c
    sub word [bp - 0x000e], ax       ; 0x337f
    mov ax, word [bp - 0x0024]       ; 0x3382
    mov bx, 0x140                    ; 0x3385
    mul bx                           ; 0x3388
    add word [bp - 0x000e], ax       ; 0x338a
@..graphics_loc_31d9.l29:
    mov ax, word [bp - 0x0022]       ; 0x338d
    mov di, word [bp - 0x000e]       ; 0x3390
    add di, word [bp - 0x001e]       ; 0x3393
    cmp di, ax                       ; 0x3396
    jb short @..graphics_loc_31d9.l30 ; 0x3398
    jmp near @..graphics_loc_31d9.l50 ; 0x339a
@..graphics_loc_31d9.l30:
    push cx                          ; 0x339d
    call leaf_loc_3340               ; 0x339e
    mov ax, data_2e2b                ; 0x33a1
    mov word [bp - 0x0034], ax       ; 0x33a4
    mov cx, word [bp - 0x0002]       ; 0x33a7
@..graphics_loc_31d9.l31:
    push cx                          ; 0x33aa
    call leaf_loc_3360               ; 0x33ab
    mov bx, word [bp - 0x000c]       ; 0x33ae
    mov al, byte [bx]                ; 0x33b1
    and al, byte [bp - 0x000a]       ; 0x33b3
    jne short @..graphics_loc_31d9.l32 ; 0x33b6
    jmp near @..graphics_loc_31d9.l48 ; 0x33b8
@..graphics_loc_31d9.l32:
    mov bx, word [bp - 0x0034]       ; 0x33bb
    mov al, byte [cs:bx]             ; 0x33be
    cmp al, 0xff                     ; 0x33c1
    jne short @..graphics_loc_31d9.l33 ; 0x33c3
    add si, byte 0x40                ; 0x33c5
    jmp near @..graphics_loc_31d9.l48 ; 0x33c8
@..graphics_loc_31d9.l33:
    push di                          ; 0x33cb
    push si                          ; 0x33cc
    mov al, 0x80                     ; 0x33cd
    mov byte [bp - 0x0038], al       ; 0x33cf
    mov cx, 8                        ; 0x33d2
@..graphics_loc_31d9.l34:
    cmp di, word [bp - 0x0022]       ; 0x33d5
    jb short @..graphics_loc_31d9.l35 ; 0x33d8
    jmp near @..graphics_loc_31d9.l47 ; 0x33da
@..graphics_loc_31d9.l35:
    mov bx, word [bp - 0x0036]       ; 0x33dd
    mov al, byte [cs:bx]             ; 0x33e0
    and al, byte [bp - 0x0038]       ; 0x33e3
    je short @..graphics_loc_31d9.l36 ; 0x33e6
    jmp near @..graphics_loc_31d9.l46 ; 0x33e8
@..graphics_loc_31d9.l36:
    push cx                          ; 0x33eb
    push di                          ; 0x33ec
    mov al, 0x80                     ; 0x33ed
    mov byte [bp - 0x0032], al       ; 0x33ef
    mov cx, 8                        ; 0x33f2
@..graphics_loc_31d9.l37:
    mov bx, word [bp - 0x0034]       ; 0x33f5
    mov al, byte [cs:bx]             ; 0x33f8
    and al, byte [bp - 0x0032]       ; 0x33fb
    jne short @..graphics_loc_31d9.l45 ; 0x33fe
    mov al, byte [si]                ; 0x3400
    cmp al, 0xff                     ; 0x3402
    je short @..graphics_loc_31d9.l42 ; 0x3404
    cmp byte [bp + 0x1e], 2          ; 0x3406
    jne short @..graphics_loc_31d9.l39 ; 0x340a
    mov al, byte [es:di]             ; 0x340c
    mov bx, data_381b                ; 0x340f
    add bx, ax                       ; 0x3412
    add al, byte [si]                ; 0x3414
    jb short @..graphics_loc_31d9.l38 ; 0x3416
    cmp al, byte [cs:bx]             ; 0x3418
    jb short @..graphics_loc_31d9.l41 ; 0x341b
@..graphics_loc_31d9.l38:
    mov al, byte [cs:bx]             ; 0x341d
    jmp short @..graphics_loc_31d9.l41 ; 0x3420
@..graphics_loc_31d9.l39:
    cmp byte [bp - 0x0030], 0        ; 0x3422
    je short @..graphics_loc_31d9.l41 ; 0x3426
    mov bx, data_381b                ; 0x3428
    add bx, ax                       ; 0x342b
    add al, byte [bp - 0x0030]       ; 0x342d
    jb short @..graphics_loc_31d9.l40 ; 0x3430
    cmp al, byte [cs:bx]             ; 0x3432
    jb short @..graphics_loc_31d9.l41 ; 0x3435
@..graphics_loc_31d9.l40:
    mov al, byte [cs:bx]             ; 0x3437
@..graphics_loc_31d9.l41:
    mov byte [es:di], al             ; 0x343a
@..graphics_loc_31d9.l42:
    inc si                           ; 0x343d
    dec di                           ; 0x343e
    ror byte [bp - 0x0032], 1        ; 0x343f
    loop @..graphics_loc_31d9.l37    ; 0x3442
@..graphics_loc_31d9.l43:
    pop di                           ; 0x3444
    pop cx                           ; 0x3445
    add di, strict word 0x140        ; 0x3446
@..graphics_loc_31d9.l44:
    ror byte [bp - 0x0038], 1        ; 0x344a
    loop @..graphics_loc_31d9.l34    ; 0x344d
    jmp short @..graphics_loc_31d9.l47 ; 0x344f
@..graphics_loc_31d9.l45:
    inc si                           ; 0x3451
    ror byte [bp - 0x0032], 1        ; 0x3452
    loop @..graphics_loc_31d9.l37    ; 0x3455
    jmp short @..graphics_loc_31d9.l43 ; 0x3457
@..graphics_loc_31d9.l46:
    add si, byte 8                   ; 0x3459
    jmp short @..graphics_loc_31d9.l44 ; 0x345c
@..graphics_loc_31d9.l47:
    pop si                           ; 0x345e
    add si, byte 0x40                ; 0x345f
    pop di                           ; 0x3462
@..graphics_loc_31d9.l48:
    sub di, byte 8                   ; 0x3463
    add di, word [bp - 0x003c]       ; 0x3466
    rol byte [bp - 0x000a], 1        ; 0x3469
    cmp byte [bp - 0x000a], 1        ; 0x346c
    jne short @..graphics_loc_31d9.l49 ; 0x3470
    inc word [bp - 0x000c]           ; 0x3472
@..graphics_loc_31d9.l49:
    inc word [bp - 0x0034]           ; 0x3475
    pop cx                           ; 0x3478
    loop @..graphics_loc_31d9.l51    ; 0x3479
    pop cx                           ; 0x347b
    add word [bp - 0x000e], strict word 0xa00 ; 0x347c
    mov ax, word [bp - 0x003e]       ; 0x3481
    sub word [bp - 0x000e], ax       ; 0x3484
    inc word [bp - 0x0036]           ; 0x3487
    mov byte [bp - 0x003a], 0x80     ; 0x348a
    loop @..graphics_loc_31d9.l52    ; 0x348e
@..graphics_loc_31d9.l50:
    pop es                           ; 0x3490
    ret                              ; 0x3491
@..graphics_loc_31d9.l51:
    jmp near @..graphics_loc_31d9.l31 ; 0x3492
@..graphics_loc_31d9.l52:
    jmp near @..graphics_loc_31d9.l29 ; 0x3495
@..graphics_loc_31d9.l53:
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
@..graphics_loc_31d9.l54:
    mov ax, word [bp - 0x002e]       ; 0x34d0
    mov di, word [bp - 0x000e]       ; 0x34d3
    cmp ax, di                       ; 0x34d6
    jbe short @..graphics_loc_31d9.l55 ; 0x34d8
    jmp near @..graphics_loc_31d9.l75 ; 0x34da
@..graphics_loc_31d9.l55:
    push cx                          ; 0x34dd
    call leaf_loc_3340               ; 0x34de
    mov ax, data_2e2b                ; 0x34e1
    mov word [bp - 0x0034], ax       ; 0x34e4
    mov cx, word [bp - 0x0002]       ; 0x34e7
@..graphics_loc_31d9.l56:
    push cx                          ; 0x34ea
    call leaf_loc_3360               ; 0x34eb
    mov bx, word [bp - 0x000c]       ; 0x34ee
    mov al, byte [bx]                ; 0x34f1
    and al, byte [bp - 0x000a]       ; 0x34f3
    jne short @..graphics_loc_31d9.l57 ; 0x34f6
    jmp near @..graphics_loc_31d9.l73 ; 0x34f8
@..graphics_loc_31d9.l57:
    mov bx, word [bp - 0x0034]       ; 0x34fb
    mov al, byte [cs:bx]             ; 0x34fe
    cmp al, 0xff                     ; 0x3501
    jne short @..graphics_loc_31d9.l58 ; 0x3503
    add si, byte 0x40                ; 0x3505
    jmp near @..graphics_loc_31d9.l73 ; 0x3508
@..graphics_loc_31d9.l58:
    push di                          ; 0x350b
    push si                          ; 0x350c
    mov al, 0x80                     ; 0x350d
    mov byte [bp - 0x0038], al       ; 0x350f
    mov cx, 8                        ; 0x3512
@..graphics_loc_31d9.l59:
    cmp word [bp - 0x002e], di       ; 0x3515
    jbe short @..graphics_loc_31d9.l60 ; 0x3518
    jmp near @..graphics_loc_31d9.l72 ; 0x351a
@..graphics_loc_31d9.l60:
    mov bx, word [bp - 0x0036]       ; 0x351d
    mov al, byte [cs:bx]             ; 0x3520
    and al, byte [bp - 0x0038]       ; 0x3523
    je short @..graphics_loc_31d9.l61 ; 0x3526
    jmp near @..graphics_loc_31d9.l71 ; 0x3528
@..graphics_loc_31d9.l61:
    push cx                          ; 0x352b
    push di                          ; 0x352c
    mov al, 0x80                     ; 0x352d
    mov byte [bp - 0x0032], al       ; 0x352f
    mov cx, 8                        ; 0x3532
@..graphics_loc_31d9.l62:
    mov bx, word [bp - 0x0034]       ; 0x3535
    mov al, byte [cs:bx]             ; 0x3538
    and al, byte [bp - 0x0032]       ; 0x353b
    jne short @..graphics_loc_31d9.l70 ; 0x353e
    mov al, byte [si]                ; 0x3540
    cmp al, 0xff                     ; 0x3542
    je short @..graphics_loc_31d9.l67 ; 0x3544
    cmp byte [bp + 0x1e], 2          ; 0x3546
    jne short @..graphics_loc_31d9.l64 ; 0x354a
    mov al, byte [es:di]             ; 0x354c
    mov bx, data_381b                ; 0x354f
    add bx, ax                       ; 0x3552
    add al, byte [si]                ; 0x3554
    jb short @..graphics_loc_31d9.l63 ; 0x3556
    cmp al, byte [cs:bx]             ; 0x3558
    jb short @..graphics_loc_31d9.l66 ; 0x355b
@..graphics_loc_31d9.l63:
    mov al, byte [cs:bx]             ; 0x355d
    jmp short @..graphics_loc_31d9.l66 ; 0x3560
@..graphics_loc_31d9.l64:
    cmp byte [bp - 0x0030], 0        ; 0x3562
    je short @..graphics_loc_31d9.l66 ; 0x3566
    mov bx, data_381b                ; 0x3568
    add bx, ax                       ; 0x356b
    add al, byte [bp - 0x0030]       ; 0x356d
    jb short @..graphics_loc_31d9.l65 ; 0x3570
    cmp al, byte [cs:bx]             ; 0x3572
    jb short @..graphics_loc_31d9.l66 ; 0x3575
@..graphics_loc_31d9.l65:
    mov al, byte [cs:bx]             ; 0x3577
@..graphics_loc_31d9.l66:
    mov byte [es:di], al             ; 0x357a
@..graphics_loc_31d9.l67:
    inc si                           ; 0x357d
    inc di                           ; 0x357e
    ror byte [bp - 0x0032], 1        ; 0x357f
    loop @..graphics_loc_31d9.l62    ; 0x3582
@..graphics_loc_31d9.l68:
    pop di                           ; 0x3584
    sub di, strict word 0x140        ; 0x3585
    pop cx                           ; 0x3589
@..graphics_loc_31d9.l69:
    ror byte [bp - 0x0038], 1        ; 0x358a
    loop @..graphics_loc_31d9.l59    ; 0x358d
    jmp short @..graphics_loc_31d9.l72 ; 0x358f
@..graphics_loc_31d9.l70:
    inc si                           ; 0x3591
    ror byte [bp - 0x0032], 1        ; 0x3592
    loop @..graphics_loc_31d9.l62    ; 0x3595
    jmp short @..graphics_loc_31d9.l68 ; 0x3597
@..graphics_loc_31d9.l71:
    add si, byte 8                   ; 0x3599
    jmp short @..graphics_loc_31d9.l69 ; 0x359c
@..graphics_loc_31d9.l72:
    pop si                           ; 0x359e
    add si, byte 0x40                ; 0x359f
    pop di                           ; 0x35a2
@..graphics_loc_31d9.l73:
    add di, byte 8                   ; 0x35a3
    sub di, word [bp - 0x003c]       ; 0x35a6
    rol byte [bp - 0x000a], 1        ; 0x35a9
    cmp byte [bp - 0x000a], 1        ; 0x35ac
    jne short @..graphics_loc_31d9.l74 ; 0x35b0
    inc word [bp - 0x000c]           ; 0x35b2
@..graphics_loc_31d9.l74:
    inc word [bp - 0x0034]           ; 0x35b5
    pop cx                           ; 0x35b8
    loop @..graphics_loc_31d9.l76    ; 0x35b9
    pop cx                           ; 0x35bb
    sub word [bp - 0x000e], strict word 0xa00 ; 0x35bc
    mov ax, word [bp - 0x003e]       ; 0x35c1
    add word [bp - 0x000e], ax       ; 0x35c4
    inc word [bp - 0x0036]           ; 0x35c7
    mov byte [bp - 0x003a], 0x80     ; 0x35ca
    loop @..graphics_loc_31d9.l77    ; 0x35ce
@..graphics_loc_31d9.l75:
    pop es                           ; 0x35d0
    ret                              ; 0x35d1
@..graphics_loc_31d9.l76:
    jmp near @..graphics_loc_31d9.l56 ; 0x35d2
@..graphics_loc_31d9.l77:
    jmp near @..graphics_loc_31d9.l54 ; 0x35d5
@..graphics_loc_31d9.l78:
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
@..graphics_loc_31d9.l79:
    mov ax, word [bp - 0x002e]       ; 0x3610
    mov di, word [bp - 0x000e]       ; 0x3613
    add di, word [bp - 0x001e]       ; 0x3616
    cmp ax, di                       ; 0x3619
    jb short @..graphics_loc_31d9.l80 ; 0x361b
    jmp near @..graphics_loc_31d9.l100 ; 0x361d
@..graphics_loc_31d9.l80:
    push cx                          ; 0x3620
    call leaf_loc_3340               ; 0x3621
    mov ax, data_2e2b                ; 0x3624
    mov word [bp - 0x0034], ax       ; 0x3627
    mov cx, word [bp - 0x0002]       ; 0x362a
@..graphics_loc_31d9.l81:
    push cx                          ; 0x362d
    call leaf_loc_3360               ; 0x362e
    mov bx, word [bp - 0x000c]       ; 0x3631
    mov al, byte [bx]                ; 0x3634
    and al, byte [bp - 0x000a]       ; 0x3636
    jne short @..graphics_loc_31d9.l82 ; 0x3639
    jmp near @..graphics_loc_31d9.l98 ; 0x363b
@..graphics_loc_31d9.l82:
    mov bx, word [bp - 0x0034]       ; 0x363e
    mov al, byte [cs:bx]             ; 0x3641
    cmp al, 0xff                     ; 0x3644
    jne short @..graphics_loc_31d9.l83 ; 0x3646
    add si, byte 0x40                ; 0x3648
    jmp near @..graphics_loc_31d9.l98 ; 0x364b
@..graphics_loc_31d9.l83:
    push di                          ; 0x364e
    push si                          ; 0x364f
    mov al, 0x80                     ; 0x3650
    mov byte [bp - 0x0038], al       ; 0x3652
    mov cx, 8                        ; 0x3655
@..graphics_loc_31d9.l84:
    cmp word [bp - 0x002e], di       ; 0x3658
    jbe short @..graphics_loc_31d9.l85 ; 0x365b
    jmp near @..graphics_loc_31d9.l97 ; 0x365d
@..graphics_loc_31d9.l85:
    mov bx, word [bp - 0x0036]       ; 0x3660
    mov al, byte [cs:bx]             ; 0x3663
    and al, byte [bp - 0x0038]       ; 0x3666
    je short @..graphics_loc_31d9.l86 ; 0x3669
    jmp near @..graphics_loc_31d9.l96 ; 0x366b
@..graphics_loc_31d9.l86:
    push cx                          ; 0x366e
    push di                          ; 0x366f
    mov al, 0x80                     ; 0x3670
    mov byte [bp - 0x0032], al       ; 0x3672
    mov cx, 8                        ; 0x3675
@..graphics_loc_31d9.l87:
    mov bx, word [bp - 0x0034]       ; 0x3678
    mov al, byte [cs:bx]             ; 0x367b
    and al, byte [bp - 0x0032]       ; 0x367e
    jne short @..graphics_loc_31d9.l95 ; 0x3681
    mov al, byte [si]                ; 0x3683
    cmp al, 0xff                     ; 0x3685
    je short @..graphics_loc_31d9.l92 ; 0x3687
    cmp byte [bp + 0x1e], 2          ; 0x3689
    jne short @..graphics_loc_31d9.l89 ; 0x368d
    mov al, byte [es:di]             ; 0x368f
    mov bx, data_381b                ; 0x3692
    add bx, ax                       ; 0x3695
    add al, byte [si]                ; 0x3697
    jb short @..graphics_loc_31d9.l88 ; 0x3699
    cmp al, byte [cs:bx]             ; 0x369b
    jb short @..graphics_loc_31d9.l91 ; 0x369e
@..graphics_loc_31d9.l88:
    mov al, byte [cs:bx]             ; 0x36a0
    jmp short @..graphics_loc_31d9.l91 ; 0x36a3
@..graphics_loc_31d9.l89:
    cmp byte [bp - 0x0030], 0        ; 0x36a5
    je short @..graphics_loc_31d9.l91 ; 0x36a9
    mov bx, data_381b                ; 0x36ab
    add bx, ax                       ; 0x36ae
    add al, byte [bp - 0x0030]       ; 0x36b0
    jb short @..graphics_loc_31d9.l90 ; 0x36b3
    cmp al, byte [cs:bx]             ; 0x36b5
    jb short @..graphics_loc_31d9.l91 ; 0x36b8
@..graphics_loc_31d9.l90:
    mov al, byte [cs:bx]             ; 0x36ba
@..graphics_loc_31d9.l91:
    mov byte [es:di], al             ; 0x36bd
@..graphics_loc_31d9.l92:
    inc si                           ; 0x36c0
    dec di                           ; 0x36c1
    ror byte [bp - 0x0032], 1        ; 0x36c2
    loop @..graphics_loc_31d9.l87    ; 0x36c5
@..graphics_loc_31d9.l93:
    pop di                           ; 0x36c7
    sub di, strict word 0x140        ; 0x36c8
    pop cx                           ; 0x36cc
@..graphics_loc_31d9.l94:
    ror byte [bp - 0x0038], 1        ; 0x36cd
    loop @..graphics_loc_31d9.l84    ; 0x36d0
    jmp short @..graphics_loc_31d9.l97 ; 0x36d2
@..graphics_loc_31d9.l95:
    inc si                           ; 0x36d4
    ror byte [bp - 0x0032], 1        ; 0x36d5
    loop @..graphics_loc_31d9.l87    ; 0x36d8
    jmp short @..graphics_loc_31d9.l93 ; 0x36da
@..graphics_loc_31d9.l96:
    add si, byte 8                   ; 0x36dc
    jmp short @..graphics_loc_31d9.l94 ; 0x36df
@..graphics_loc_31d9.l97:
    pop si                           ; 0x36e1
    add si, byte 0x40                ; 0x36e2
    pop di                           ; 0x36e5
@..graphics_loc_31d9.l98:
    sub di, byte 8                   ; 0x36e6
    add di, word [bp - 0x003c]       ; 0x36e9
    rol byte [bp - 0x000a], 1        ; 0x36ec
    cmp byte [bp - 0x000a], 1        ; 0x36ef
    jne short @..graphics_loc_31d9.l99 ; 0x36f3
    inc word [bp - 0x000c]           ; 0x36f5
@..graphics_loc_31d9.l99:
    inc word [bp - 0x0034]           ; 0x36f8
    pop cx                           ; 0x36fb
    loop @..graphics_loc_31d9.l101   ; 0x36fc
    pop cx                           ; 0x36fe
    sub word [bp - 0x000e], strict word 0xa00 ; 0x36ff
    mov ax, word [bp - 0x003e]       ; 0x3704
    add word [bp - 0x000e], ax       ; 0x3707
    inc word [bp - 0x0036]           ; 0x370a
    mov byte [bp - 0x003a], 0x80     ; 0x370d
    loop @..graphics_loc_31d9.l102   ; 0x3711
@..graphics_loc_31d9.l100:
    pop es                           ; 0x3713
    ret                              ; 0x3714
@..graphics_loc_31d9.l101:
    jmp near @..graphics_loc_31d9.l81 ; 0x3715
@..graphics_loc_31d9.l102:
    jmp near @..graphics_loc_31d9.l79 ; 0x3718

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

@..dos_write_file_2.l1:
    mov ax, cs                       ; 0x381b
    mov ds, ax                       ; 0x381d
    mov dx, 0x392b                   ; 0x381f
