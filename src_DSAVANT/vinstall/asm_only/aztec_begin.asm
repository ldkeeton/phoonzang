; auto-generated
; asm only
__zinsn_35d2:
aztec_begin:
    mov bp, 0x38e                    ; 0x35d2
    test bp, bp                      ; 0x35d5
    jne short @..aztec_begin.notcom  ; 0x35d7
    mov bp, ds                       ; 0x35d9
@..aztec_begin.notcom:
    mov word [cs:cseg_35d0 - IMAGE_BASE], ds ; 0x35db
    mov bx, word [psp_top_of_memory] ; get top segment ; 0x35e0
    sub bx, bp ; compute size of Data seg ; 0x35e4
    cmp bx, strict word 0x1000 ; check if greater than 64K ; 0x35e6
    jbe short @..aztec_begin.smallseg ; 0x35ea
    lea bx, word [bp + 0x1000] ; end address of segment (paragraphs) ; 0x35ec
    mov ax, es                       ; 0x35f0
    sub bx, ax ; compute length of segment ; 0x35f2
    mov ah, 0x4a ; SETBLOCK system call ; 0x35f4
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x35f8
@..aztec_begin.smallseg:
    mov es, bp                       ; 0x35fb
    mov word [es:_PSP], ds           ; 0x35fd
    mov cl, 4                        ; 0x3602
    shl bx, cl                       ; 0x3604
    cmp word [es:_STKLOW], byte 0    ; 0x3606
    je short @..aztec_begin.setstk ; stack goes above heap ; 0x360c
    mov ax, word [es:_STKRED] ; stack goes below heap ; 0x360e
    shl ax, 1 ; allow at least twice the RED zone size ; 0x3612
    mov bx, word [es:dseg_2512]      ; 0x3614
    shl bx, cl ; compute requested stack size ; 0x3619
    cmp bx, ax ; but don't allow too little ; 0x361b
    ja short @..aztec_begin.sizeok   ; 0x361d
    mov bx, ax                       ; 0x361f
@..aztec_begin.sizeok:
    add bx, strict word __zdseg_end  ; 0x3621
@..aztec_begin.setstk:
    cli                              ; 0x3625
    mov ss, bp                       ; 0x3626
    mov sp, bx                       ; 0x3628
    sti                              ; 0x362a
    test bx, bx                      ; 0x362b
    jne short @..aztec_begin.oksav   ; 0x362d
    mov bx, 0xffff                   ; 0x362f
@..aztec_begin.oksav:
    mov word [es:_mtop], bx          ; 0x3632
    cmp word [es:_STKLOW], byte 0 ; stack now set up. before doing anything else, save para addr of PSP for _exit / now adjust heap s... ; 0x3637
    je short @..aztec_begin.heapdone ; 0x363d
    mov si, word [es:dseg_2516]      ; 0x363f
    mov ax, bx                       ; 0x3644
    inc ax                           ; 0x3646
    mov word [es:aztec_MEMRY], ax ; start of heap for later ; 0x3647
    shl si, cl                       ; 0x364b
    add bx, si                       ; 0x364d
    jae short @..aztec_begin.heapok  ; 0x364f
    mov bx, 0xffff                   ; 0x3651
@..aztec_begin.heapok:
    mov word [es:_mtop], bx ; and save as _mtop_ ; 0x3654
    add bx, byte 0x0f                ; 0x3659
    shr bx, cl ; convert to paragraph form ; 0x365c
    mov ax, es                       ; 0x365e
    add bx, ax ; calculate paragraph address of last byte ; 0x3660
    mov ax, ds ; now take the paragrph form and ; 0x3662
    sub bx, ax ; compute length of segment ; 0x3664
    mov bp, es ; save ES ; 0x3666
    mov es, ax                       ; 0x3668
    mov ah, 0x4a ; SETBLOCK system call ; 0x366a
    int 0x21 ; DOS resize memory block
    jae short @..aztec_begin.heapdone ; 0x366e
    mov al, 0xfe                     ; 0x3670
    jmp near @..aztec_impl_exit.exit ; 0x3672
@..aztec_begin.heapdone:
    mov es, bp ; restore ES ; 0x3675
    cld                              ; 0x3677
    mov di, keep ; clear uninitialized data ; 0x3678
    mov cx, __zdseg_end              ; 0x367b
    sub cx, di                       ; 0x367e
    inc cx                           ; 0x3680
    shr cx, 1                        ; 0x3681
    jcxz @..aztec_begin.noclear      ; 0x3683
    sub ax, ax                       ; 0x3685
    rep stosw                        ; 0x3687
@..aztec_begin.noclear:
    mov es, word [psp_env_segment] ; get enviroment segment ; 0x3689
    sub di, di                       ; 0x368d
    mov cx, 0x7fff                   ; 0x368f
@..aztec_begin.arglook:
    mov ah, byte [es:di]             ; 0x3692
    cmp ah, 0x3d ; look for null named env. string ; 0x3695
    je short @..aztec_begin.found_args ; 0x3698
    test ah, ah                      ; 0x369a
    je short @..aztec_begin.no_args  ; 0x369c
    repne scasb ; look for null byte ; 0x369e
    je short @..aztec_begin.arglook  ; 0x36a0
@..aztec_begin.no_args:
    mov cl, byte [psp_cmd_tail_len]  ; 0x36a2
    sub ch, ch                       ; 0x36a6
    mov si, 0x81                     ; 0x36a8
    mov ax, 1                        ; 0x36ab
    jmp short @..aztec_begin.mov_args ; 0x36ae
@..aztec_begin.found_args:
    sub ax, ax                       ; 0x36b0
    stosb ; zap and skip over '=' ; 0x36b2
    mov si, di                       ; 0x36b3
    mov di, es                       ; 0x36b5
    mov ds, di                       ; 0x36b7
@..aztec_begin.mov_args:
    push ax ; first arg # for Croot ; 0x36b9
    mov es, bp ; reload ES with our real dataseg ; 0x36ba
    mov di, word [es:aztec_MEMRY]    ; 0x36bc
    push di ; argp for Croot ; 0x36c1
    jcxz @..aztec_begin.cpy_done     ; 0x36c2
@..aztec_begin.cpy_args:
    lodsb                            ; 0x36c4
    test al, al                      ; 0x36c5
    je short @..aztec_begin.cpy_done ; 0x36c7
    stosb                            ; 0x36c9
    loop @..aztec_begin.cpy_args     ; 0x36ca
@..aztec_begin.cpy_done:
    sub al, al                       ; 0x36cc
    stosb ; null terminate string ; 0x36ce
    mov ds, bp ; set DS, now DS, SS, ES are equal ; 0x36cf
    inc di                           ; 0x36d1
    and di, strict word 0xfffe ; adjust to word boundary ; 0x36d2
    mov word [aztec_MEMRY], di ; save memory allocation info for sbrk() ; 0x36d6
    mov word [_mbot], di             ; 0x36da
    mov word [_sbot], __zdseg_end    ; 0x36de
    cmp word [_STKLOW], byte 0       ; 0x36e4
    jne short @..aztec_begin.nostk   ; 0x36e9
    mov word [_sbot], di             ; 0x36eb
@..aztec_begin.nostk:
    mov ax, word [_sbot]             ; 0x36ef
    add ax, word [_STKRED]           ; 0x36f2
    mov word [_sbot], ax             ; 0x36f6
    mov word [dseg_24d8], ds         ; 0x36f9
    mov word [dseg_24da], cs         ; 0x36fd
    call leaf_loc_UTMK               ; 0x3701
    jb short @..aztec_begin.no_8087  ; 0x3704
    call aztec_Croot ; Croot(argp, first) ; 0x3706
    jmp short @..aztec_impl_exit.exit ; 0x3709
@..aztec_begin.no_8087:
    mov ah, 9 ; dos print message ; 0x370b
    mov dx, dseg_24e6                ; 0x370d
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x3712
    jmp short @..aztec_impl_exit.exit ; 0x3714
