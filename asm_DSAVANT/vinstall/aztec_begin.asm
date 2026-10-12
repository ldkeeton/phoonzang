aztec_begin:
    mov bp, 0x38e                    ; 0x35d2
    test bp, bp                      ; 0x35d5
    jne short @..aztec_begin.l1      ; 0x35d7
    mov bp, ds                       ; 0x35d9
@..aztec_begin.l1:
    mov word [cs:cseg_35d0 - IMAGE_BASE], ds ; 0x35db
    mov bx, word [psp_top_of_memory] ; 0x35e0
    sub bx, bp                       ; 0x35e4
    cmp bx, strict word 0x1000       ; 0x35e6
    jbe short @..aztec_begin.l2      ; 0x35ea
    lea bx, word [bp + 0x1000]       ; 0x35ec
    mov ax, es                       ; 0x35f0
    sub bx, ax                       ; 0x35f2
    mov ah, 0x4a                     ; 0x35f4
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x35f8
@..aztec_begin.l2:
    mov es, bp                       ; 0x35fb
    mov word [es:dseg_24e4], ds      ; 0x35fd
    mov cl, 4                        ; 0x3602
    shl bx, cl                       ; 0x3604
    cmp word [es:dseg_2518], byte 0  ; 0x3606
    je short @..aztec_begin.l4       ; 0x360c
    mov ax, word [es:dseg_2514]      ; 0x360e
    shl ax, 1                        ; 0x3612
    mov bx, word [es:dseg_2512]      ; 0x3614
    shl bx, cl                       ; 0x3619
    cmp bx, ax                       ; 0x361b
    ja short @..aztec_begin.l3       ; 0x361d
    mov bx, ax                       ; 0x361f
@..aztec_begin.l3:
    add bx, strict word __zdataseg_end ; 0x3621
@..aztec_begin.l4:
    cli                              ; 0x3625
    mov ss, bp                       ; 0x3626
    mov sp, bx                       ; 0x3628
    sti                              ; 0x362a
    test bx, bx                      ; 0x362b
    jne short @..aztec_begin.l5      ; 0x362d
    mov bx, 0xffff                   ; 0x362f
@..aztec_begin.l5:
    mov word [es:dseg_24e0], bx      ; 0x3632
    cmp word [es:dseg_2518], byte 0  ; 0x3637
    je short @..aztec_begin.l7       ; 0x363d
    mov si, word [es:dseg_2516]      ; 0x363f
    mov ax, bx                       ; 0x3644
    inc ax                           ; 0x3646
    mov word [es:dseg_24d4], ax      ; 0x3647
    shl si, cl                       ; 0x364b
    add bx, si                       ; 0x364d
    jae short @..aztec_begin.l6      ; 0x364f
    mov bx, 0xffff                   ; 0x3651
@..aztec_begin.l6:
    mov word [es:dseg_24e0], bx      ; 0x3654
    add bx, byte 0x0f                ; 0x3659
    shr bx, cl                       ; 0x365c
    mov ax, es                       ; 0x365e
    add bx, ax                       ; 0x3660
    mov ax, ds                       ; 0x3662
    sub bx, ax                       ; 0x3664
    mov bp, es                       ; 0x3666
    mov es, ax                       ; 0x3668
    mov ah, 0x4a                     ; 0x366a
    int 0x21 ; DOS resize memory block
    jae short @..aztec_begin.l7      ; 0x366e
    mov al, 0xfe                     ; 0x3670
    jmp near loc_3718                ; 0x3672
@..aztec_begin.l7:
    mov es, bp                       ; 0x3675
    cld                              ; 0x3677
    mov di, bss_2534                 ; 0x3678
    mov cx, __zdataseg_end           ; 0x367b
    sub cx, di                       ; 0x367e
    inc cx                           ; 0x3680
    shr cx, 1                        ; 0x3681
    jcxz @..aztec_begin.l8           ; 0x3683
    sub ax, ax                       ; 0x3685
    rep stosw                        ; 0x3687
@..aztec_begin.l8:
    mov es, word [psp_env_segment]   ; 0x3689
    sub di, di                       ; 0x368d
    mov cx, 0x7fff                   ; 0x368f
@..aztec_begin.l9:
    mov ah, byte [es:di]             ; 0x3692
    cmp ah, 0x3d                     ; 0x3695
    je short @..aztec_begin.l11      ; 0x3698
    test ah, ah                      ; 0x369a
    je short @..aztec_begin.l10      ; 0x369c
    repne scasb                      ; 0x369e
    je short @..aztec_begin.l9       ; 0x36a0
@..aztec_begin.l10:
    mov cl, byte [psp_cmd_tail_len]  ; 0x36a2
    sub ch, ch                       ; 0x36a6
    mov si, 0x81                     ; 0x36a8
    mov ax, 1                        ; 0x36ab
    jmp short @..aztec_begin.l12     ; 0x36ae
@..aztec_begin.l11:
    sub ax, ax                       ; 0x36b0
    stosb                            ; 0x36b2
    mov si, di                       ; 0x36b3
    mov di, es                       ; 0x36b5
    mov ds, di                       ; 0x36b7
@..aztec_begin.l12:
    push ax                          ; 0x36b9
    mov es, bp                       ; 0x36ba
    mov di, word [es:dseg_24d4]      ; 0x36bc
    push di                          ; 0x36c1
    jcxz @..aztec_begin.l14          ; 0x36c2
@..aztec_begin.l13:
    lodsb                            ; 0x36c4
    test al, al                      ; 0x36c5
    je short @..aztec_begin.l14      ; 0x36c7
    stosb                            ; 0x36c9
    loop @..aztec_begin.l13          ; 0x36ca
@..aztec_begin.l14:
    sub al, al                       ; 0x36cc
    stosb                            ; 0x36ce
    mov ds, bp                       ; 0x36cf
    inc di                           ; 0x36d1
    and di, strict word 0xfffe       ; 0x36d2
    mov word [dseg_24d4], di         ; 0x36d6
    mov word [dseg_24dc], di         ; 0x36da
    mov word [dseg_24de], __zdataseg_end ; 0x36de
    cmp word [dseg_2518], byte 0     ; 0x36e4
    jne short @..aztec_begin.l15     ; 0x36e9
    mov word [dseg_24de], di         ; 0x36eb
@..aztec_begin.l15:
    mov ax, word [dseg_24de]         ; 0x36ef
    add ax, word [dseg_2514]         ; 0x36f2
    mov word [dseg_24de], ax         ; 0x36f6
    mov word [dseg_24d8], ds         ; 0x36f9
    mov word [dseg_24da], cs         ; 0x36fd
    call leaf_loc_381d               ; 0x3701
    jb short @..aztec_begin.l16      ; 0x3704
    call aztec_Croot                 ; 0x3706
    jmp short loc_3718               ; 0x3709
@..aztec_begin.l16:
    mov ah, 9                        ; 0x370b
    mov dx, 0x24e6                   ; 0x370d
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x3712
    jmp short loc_3718               ; 0x3714
