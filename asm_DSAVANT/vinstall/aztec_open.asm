aztec_open:
    push bp                          ; 0x3381
    mov bp, sp                       ; 0x3382
    push di                          ; 0x3384
    push si                          ; 0x3385
    mov ax, word [bp + 0x6]          ; 0x3386
    and ax, 0xf3                     ; 0x3389
    mov di, ax                       ; 0x338c
    or ax, 0x3d00                    ; 0x338e
    mov di, ax                       ; 0x3391
    test word [bp + 0x6], leaf_loc_0200 ; 0x3393
    je short @..aztec_open.l1        ; 0x3398
    mov di, 0x3c00                   ; 0x339a
@..aztec_open.l1:
    mov ax, 0                        ; 0x339d
    push ax                          ; 0x33a0
    push word [bp + 0x4]             ; 0x33a1
    push di                          ; 0x33a4
    call aztec_sys                   ; 0x33a5
    add sp, byte 6                   ; 0x33a8
    mov si, ax                       ; 0x33ab
    mov ax, si                       ; 0x33ad
    cmp ax, strict word 0xffff       ; 0x33af
    jne short @..aztec_open.l3       ; 0x33b2
    test word [bp + 0x6], 0x100      ; 0x33b4
    je short @..aztec_open.l2        ; 0x33b9
    mov ax, 0                        ; 0x33bb
    push ax                          ; 0x33be
    push word [bp + 0x4]             ; 0x33bf
    mov ax, 0x3c                     ; 0x33c2
    push ax                          ; 0x33c5
    call aztec_sys                   ; 0x33c6
    add sp, byte 6                   ; 0x33c9
    mov si, ax                       ; 0x33cc
@..aztec_open.l2:
    jmp short @..aztec_open.l5       ; 0x33ce
@..aztec_open.l3:
    test word [bp + 0x6], 0x400      ; 0x33d0
    je short @..aztec_open.l5        ; 0x33d5
    push si                          ; 0x33d7
    call aztec_close                 ; 0x33d8
    pop cx                           ; 0x33db
    mov word [data_24d6], 0x13       ; 0x33dc
    mov ax, 0xffff                   ; 0x33e2
@..aztec_open.l4:
    pop si                           ; 0x33e5
    pop di                           ; 0x33e6
    mov sp, bp                       ; 0x33e7
    pop bp                           ; 0x33e9
    ret                              ; 0x33ea
@..aztec_open.l5:
    cmp si, byte 0                   ; 0x33eb
    jl short @..aztec_open.l7        ; 0x33ee
    test word [bp + 0x6], 0x800      ; 0x33f0
    je short @..aztec_open.l6        ; 0x33f5
    mov ax, data_0002                ; 0x33f7
    push ax                          ; 0x33fa
    mov ax, 0                        ; 0x33fb
    mov dx, 0                        ; 0x33fe
    push dx                          ; 0x3401
    push ax                          ; 0x3402
    push si                          ; 0x3403
    call aztec_lseek                 ; 0x3404
    add sp, byte 8                   ; 0x3407
@..aztec_open.l6:
    push si                          ; 0x340a
    call aztec_isatty                ; 0x340b
    pop cx                           ; 0x340e
    mov byte [si + 0x251a], al       ; 0x340f
@..aztec_open.l7:
    mov ax, si                       ; 0x3413
    jmp short @..aztec_open.l4       ; 0x3415

    db 0x57, 0x2b, 0xff, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85
    db 0xdb, 0x79, 0x0b, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0x81, 0xf7, 0x01, 0x00, 0xe8, 0x39
    db 0x00

@..aztec_lrm.l1:
    test di, di                      ; 0x3438
    je short @..aztec_lrm.l2         ; 0x343a
    neg dx                           ; 0x343c
    neg ax                           ; 0x343e
    sbb dx, byte 0                   ; 0x3440
@..aztec_lrm.l2:
    pop di                           ; 0x3443
    ret                              ; 0x3444
