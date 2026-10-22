; auto-generated
loc_337c:
    mov ax, word [bp - 0x002a]       ; 0x337c
    sub word [bp - 0x000e], ax       ; 0x337f
    mov ax, word [bp - 0x0024]       ; 0x3382
    mov bx, 0x140                    ; 0x3385
    mul bx                           ; 0x3388
    add word [bp - 0x000e], ax       ; 0x338a
loc_338d:
    mov ax, word [bp - 0x0022]       ; 0x338d
    mov di, word [bp - 0x000e]       ; 0x3390
    add di, word [bp - 0x001e]       ; 0x3393
    cmp di, ax                       ; 0x3396
    jb short loc_339d                ; 0x3398
    jmp near loc_3490                ; 0x339a
loc_339d:
    push cx                          ; 0x339d
    call leaf_loc_MTKK               ; 0x339e
    mov ax, data_2e2b                ; 0x33a1
    mov word [bp - 0x0034], ax       ; 0x33a4
    mov cx, word [bp - 0x0002]       ; 0x33a7
loc_33aa:
    push cx                          ; 0x33aa
    call leaf_loc_QLNN               ; 0x33ab
    mov bx, word [bp - 0x000c]       ; 0x33ae
    mov al, byte [bx]                ; 0x33b1
    and al, byte [bp - 0x000a]       ; 0x33b3
    jne short loc_33bb               ; 0x33b6
    jmp near loc_3463                ; 0x33b8
loc_33bb:
    mov bx, word [bp - 0x0034]       ; 0x33bb
    mov al, byte [cs:bx]             ; 0x33be
    cmp al, 0xff                     ; 0x33c1
    jne short loc_33cb               ; 0x33c3
    add si, byte 0x40                ; 0x33c5
    jmp near loc_3463                ; 0x33c8
loc_33cb:
    push di                          ; 0x33cb
    push si                          ; 0x33cc
    mov al, 0x80                     ; 0x33cd
    mov byte [bp - 0x0038], al       ; 0x33cf
    mov cx, 8                        ; 0x33d2
loc_33d5:
    cmp di, word [bp - 0x0022]       ; 0x33d5
    jb short loc_33dd                ; 0x33d8
    jmp near loc_345e                ; 0x33da
loc_33dd:
    mov bx, word [bp - 0x0036]       ; 0x33dd
    mov al, byte [cs:bx]             ; 0x33e0
    and al, byte [bp - 0x0038]       ; 0x33e3
    je short loc_33eb                ; 0x33e6
    jmp near loc_3459                ; 0x33e8
loc_33eb:
    push cx                          ; 0x33eb
    push di                          ; 0x33ec
    mov al, 0x80                     ; 0x33ed
    mov byte [bp - 0x0032], al       ; 0x33ef
    mov cx, 8                        ; 0x33f2
loc_33f5:
    mov bx, word [bp - 0x0034]       ; 0x33f5
    mov al, byte [cs:bx]             ; 0x33f8
    and al, byte [bp - 0x0032]       ; 0x33fb
    jne short loc_3451               ; 0x33fe
    mov al, byte [si]                ; 0x3400
    cmp al, 0xff                     ; 0x3402
    je short loc_343d                ; 0x3404
    cmp byte [bp + 0x1e], 2          ; 0x3406
    jne short loc_3422               ; 0x340a
    mov al, byte [es:di]             ; 0x340c
    mov bx, data_381b                ; 0x340f
    add bx, ax                       ; 0x3412
    add al, byte [si]                ; 0x3414
    jb short loc_341d                ; 0x3416
    cmp al, byte [cs:bx]             ; 0x3418
    jb short loc_343a                ; 0x341b
loc_341d:
    mov al, byte [cs:bx]             ; 0x341d
    jmp short loc_343a               ; 0x3420
loc_3422:
    cmp byte [bp - 0x0030], 0        ; 0x3422
    je short loc_343a                ; 0x3426
    mov bx, data_381b                ; 0x3428
    add bx, ax                       ; 0x342b
    add al, byte [bp - 0x0030]       ; 0x342d
    jb short loc_3437                ; 0x3430
    cmp al, byte [cs:bx]             ; 0x3432
    jb short loc_343a                ; 0x3435
loc_3437:
    mov al, byte [cs:bx]             ; 0x3437
loc_343a:
    mov byte [es:di], al             ; 0x343a
loc_343d:
    inc si                           ; 0x343d
    dec di                           ; 0x343e
    ror byte [bp - 0x0032], 1        ; 0x343f
    loop loc_33f5                    ; 0x3442
loc_3444:
    pop di                           ; 0x3444
    pop cx                           ; 0x3445
    add di, strict word 0x140        ; 0x3446
loc_344a:
    ror byte [bp - 0x0038], 1        ; 0x344a
    loop loc_33d5                    ; 0x344d
    jmp short loc_345e               ; 0x344f
loc_3451:
    inc si                           ; 0x3451
    ror byte [bp - 0x0032], 1        ; 0x3452
    loop loc_33f5                    ; 0x3455
    jmp short loc_3444               ; 0x3457
loc_3459:
    add si, byte 8                   ; 0x3459
    jmp short loc_344a               ; 0x345c
loc_345e:
    pop si                           ; 0x345e
    add si, byte 0x40                ; 0x345f
    pop di                           ; 0x3462
loc_3463:
    sub di, byte 8                   ; 0x3463
    add di, word [bp - 0x003c]       ; 0x3466
    rol byte [bp - 0x000a], 1        ; 0x3469
    cmp byte [bp - 0x000a], 1        ; 0x346c
    jne short loc_3475               ; 0x3470
    inc word [bp - 0x000c]           ; 0x3472
loc_3475:
    inc word [bp - 0x0034]           ; 0x3475
    pop cx                           ; 0x3478
    loop loc_3492                    ; 0x3479
    pop cx                           ; 0x347b
    add word [bp - 0x000e], strict word 0xa00 ; 0x347c
    mov ax, word [bp - 0x003e]       ; 0x3481
    sub word [bp - 0x000e], ax       ; 0x3484
    inc word [bp - 0x0036]           ; 0x3487
    mov byte [bp - 0x003a], 0x80     ; 0x348a
    loop loc_3495                    ; 0x348e
loc_3490:
    pop es                           ; 0x3490
    ret                              ; 0x3491
loc_3492:
    jmp near loc_33aa                ; 0x3492
loc_3495:
    jmp near loc_338d                ; 0x3495
