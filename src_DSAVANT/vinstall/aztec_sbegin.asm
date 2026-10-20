; auto-generated
cseg_35ce:
    db 0x00, 0x00
cseg_35d0:
    db 0x00, 0x00
__zinsn_35d2:
aztec_begin:
    mov bp, 0x38e                    ; 0x35d2
    test bp, bp                      ; 0x35d5
    jne short @..aztec_sbegin.notcom ; 0x35d7
    mov bp, ds                       ; 0x35d9
@..aztec_sbegin.notcom:
    mov word [cs:cseg_35d0 - IMAGE_BASE], ds ; 0x35db
    mov bx, word [psp_top_of_memory] ; 0x35e0
    sub bx, bp                       ; 0x35e4
    cmp bx, strict word 0x1000       ; 0x35e6
    jbe short @..aztec_sbegin.smallseg ; 0x35ea
    lea bx, word [bp + 0x1000]       ; 0x35ec
    mov ax, es                       ; 0x35f0
    sub bx, ax                       ; 0x35f2
    mov ah, 0x4a                     ; 0x35f4
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x35f8
@..aztec_sbegin.smallseg:
    mov es, bp                       ; 0x35fb
    mov word [es:_PSP], ds           ; 0x35fd
    mov cl, 4                        ; 0x3602
    shl bx, cl                       ; 0x3604
    cmp word [es:_STKLOW], byte 0    ; 0x3606
    je short @..aztec_sbegin.setstk  ; 0x360c
    mov ax, word [es:_STKRED]        ; 0x360e
    shl ax, 1                        ; 0x3612
    mov bx, word [es:_STKSIZ]        ; 0x3614
    shl bx, cl                       ; 0x3619
    cmp bx, ax                       ; 0x361b
    ja short @..aztec_sbegin.sizeok  ; 0x361d
    mov bx, ax                       ; 0x361f
@..aztec_sbegin.sizeok:
    add bx, strict word __zdseg_end  ; 0x3621
@..aztec_sbegin.setstk:
    cli                              ; 0x3625
    mov ss, bp                       ; 0x3626
    mov sp, bx                       ; 0x3628
    sti                              ; 0x362a
    test bx, bx                      ; 0x362b
    jne short @..aztec_sbegin.oksav  ; 0x362d
    mov bx, 0xffff                   ; 0x362f
@..aztec_sbegin.oksav:
    mov word [es:_mtop], bx          ; 0x3632
    cmp word [es:_STKLOW], byte 0    ; 0x3637
    je short @..aztec_sbegin.heapdone ; 0x363d
    mov si, word [es:_HEAPSIZ]       ; 0x363f
    mov ax, bx                       ; 0x3644
    inc ax                           ; 0x3646
    mov word [es:aztec_MEMRY], ax    ; 0x3647
    shl si, cl                       ; 0x364b
    add bx, si                       ; 0x364d
    jae short @..aztec_sbegin.heapok ; 0x364f
    mov bx, 0xffff                   ; 0x3651
@..aztec_sbegin.heapok:
    mov word [es:_mtop], bx          ; 0x3654
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
    jae short @..aztec_sbegin.heapdone ; 0x366e
    mov al, 0xfe                     ; 0x3670
    jmp near @..aztec_sbegin.exits   ; 0x3672
@..aztec_sbegin.heapdone:
    mov es, bp                       ; 0x3675
    cld                              ; 0x3677
    mov di, _Uorg                    ; 0x3678
    mov cx, __zdseg_end              ; 0x367b
    sub cx, di                       ; 0x367e
    inc cx                           ; 0x3680
    shr cx, 1                        ; 0x3681
    jcxz @..aztec_sbegin.noclear     ; 0x3683
    sub ax, ax                       ; 0x3685
    rep stosw                        ; 0x3687
@..aztec_sbegin.noclear:
    mov es, word [psp_env_segment]   ; 0x3689
    sub di, di                       ; 0x368d
    mov cx, 0x7fff                   ; 0x368f
@..aztec_sbegin.arglook:
    mov ah, byte [es:di]             ; 0x3692
    cmp ah, 0x3d                     ; 0x3695
    je short @..aztec_sbegin.found_args ; 0x3698
    test ah, ah                      ; 0x369a
    je short @..aztec_sbegin.no_args ; 0x369c
    repne scasb                      ; 0x369e
    je short @..aztec_sbegin.arglook ; 0x36a0
@..aztec_sbegin.no_args:
    mov cl, byte [psp_cmd_tail_len]  ; 0x36a2
    sub ch, ch                       ; 0x36a6
    mov si, 0x81                     ; 0x36a8
    mov ax, 1                        ; 0x36ab
    jmp short @..aztec_sbegin.mov_args ; 0x36ae
@..aztec_sbegin.found_args:
    sub ax, ax                       ; 0x36b0
    stosb                            ; 0x36b2
    mov si, di                       ; 0x36b3
    mov di, es                       ; 0x36b5
    mov ds, di                       ; 0x36b7
@..aztec_sbegin.mov_args:
    push ax                          ; 0x36b9
    mov es, bp                       ; 0x36ba
    mov di, word [es:aztec_MEMRY]    ; 0x36bc
    push di                          ; 0x36c1
    jcxz @..aztec_sbegin.cpy_done    ; 0x36c2
@..aztec_sbegin.cpy_args:
    lodsb                            ; 0x36c4
    test al, al                      ; 0x36c5
    je short @..aztec_sbegin.cpy_done ; 0x36c7
    stosb                            ; 0x36c9
    loop @..aztec_sbegin.cpy_args    ; 0x36ca
@..aztec_sbegin.cpy_done:
    sub al, al                       ; 0x36cc
    stosb                            ; 0x36ce
    mov ds, bp                       ; 0x36cf
    inc di                           ; 0x36d1
    and di, strict word 0xfffe       ; 0x36d2
    mov word [aztec_MEMRY], di       ; 0x36d6
    mov word [_mbot], di             ; 0x36da
    mov word [_sbot], __zdseg_end    ; 0x36de
    cmp word [_STKLOW], byte 0       ; 0x36e4
    jne short @..aztec_sbegin.nostk  ; 0x36e9
    mov word [_sbot], di             ; 0x36eb
@..aztec_sbegin.nostk:
    mov ax, word [_sbot]             ; 0x36ef
    add ax, word [_STKRED]           ; 0x36f2
    mov word [_sbot], ax             ; 0x36f6
    mov word [_dsval], ds            ; 0x36f9
    mov word [_csval], cs            ; 0x36fd
    call aztec_fltinit               ; 0x3701
    jb short @..aztec_sbegin.no_8087 ; 0x3704
    call aztec_Croot                 ; 0x3706
    jmp short @..aztec_sbegin.exits  ; 0x3709
@..aztec_sbegin.no_8087:
    mov ah, 9                        ; 0x370b
    mov dx, bad8087                  ; 0x370d
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x3712
    jmp short @..aztec_sbegin.exits  ; 0x3714
aztec_impl_exit:
    pop ax                           ; 0x3716
    pop ax                           ; 0x3717
@..aztec_sbegin.exits:
    mov ah, 0x4c                     ; 0x3718
    int 0x21 ; DOS exit with return code
loc_HVSK:
    jmp far [cs:cseg_35ce - IMAGE_BASE] ; 0x371c
@..aztec_sbegin.retip:
    db 0x00, 0x00
@..aztec_sbegin.retcs:
    db 0x00, 0x00
    pop word [cs:@..aztec_sbegin.retip - IMAGE_BASE] ; 0x3725
    pop word [cs:@..aztec_sbegin.retcs - IMAGE_BASE] ; 0x372a
    pop ds                           ; 0x372f
    call @..aztec_sbegin.l1          ; 0x3730
    jmp far [cs:@..aztec_sbegin.retip - IMAGE_BASE] ; 0x3733
@..aztec_sbegin.l1:
    push di                          ; 0x3738
    push si                          ; 0x3739
    retf                             ; 0x373a
