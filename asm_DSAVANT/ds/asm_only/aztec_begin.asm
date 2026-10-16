; auto-generated
; asm only
aztec_begin:
    mov bp, 0xff6                    ; 0x4d3a
    test bp, bp                      ; 0x4d3d
    jne short @..aztec_begin.notcom  ; 0x4d3f
    mov bp, ds                       ; 0x4d41
@..aztec_begin.notcom:
    mov word [cs:cseg_4d38 - IMAGE_BASE], ds ; 0x4d43
    mov bx, word [psp_top_of_memory] ; get top segment ; 0x4d48
    sub bx, bp ; compute size of Data seg ; 0x4d4c
    cmp bx, strict word 0x1000 ; check if greater than 64K ; 0x4d4e
    jbe short @..aztec_begin.smallseg ; 0x4d52
    lea bx, word [bp + 0x1000] ; end address of segment (paragraphs) ; 0x4d54
    mov ax, es                       ; 0x4d58
    sub bx, ax ; compute length of segment ; 0x4d5a
    mov ah, 0x4a ; SETBLOCK system call ; 0x4d5c
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x4d60
@..aztec_begin.smallseg:
    mov es, bp                       ; 0x4d63
    mov word [es:_PSP], ds           ; 0x4d65
    mov cl, 4                        ; 0x4d6a
    shl bx, cl                       ; 0x4d6c
    cmp word [es:_STKLOW], byte 0    ; 0x4d6e
    je short @..aztec_begin.setstk ; stack goes above heap ; 0x4d74
    mov ax, word [es:_STKRED] ; stack goes below heap ; 0x4d76
    shl ax, 1 ; allow at least twice the RED zone size ; 0x4d7a
    mov bx, word [es:dseg_0cd4]      ; 0x4d7c
    shl bx, cl ; compute requested stack size ; 0x4d81
    cmp bx, ax ; but don't allow too little ; 0x4d83
    ja short @..aztec_begin.sizeok   ; 0x4d85
    mov bx, ax                       ; 0x4d87
@..aztec_begin.sizeok:
    add bx, strict word __zdseg_end  ; 0x4d89
@..aztec_begin.setstk:
    cli                              ; 0x4d8d
    mov ss, bp                       ; 0x4d8e
    mov sp, bx                       ; 0x4d90
    sti                              ; 0x4d92
    test bx, bx                      ; 0x4d93
    jne short @..aztec_begin.oksav   ; 0x4d95
    mov bx, 0xffff                   ; 0x4d97
@..aztec_begin.oksav:
    mov word [es:_mtop], bx          ; 0x4d9a
    cmp word [es:_STKLOW], byte 0 ; stack now set up. before doing anything else, save para addr of PSP for _exit / now adjust heap s... ; 0x4d9f
    je short @..aztec_begin.heapdone ; 0x4da5
    mov si, word [es:dseg_0cd8]      ; 0x4da7
    mov ax, bx                       ; 0x4dac
    inc ax                           ; 0x4dae
    mov word [es:aztec_MEMRY], ax ; start of heap for later ; 0x4daf
    shl si, cl                       ; 0x4db3
    add bx, si                       ; 0x4db5
    jae short @..aztec_begin.heapok  ; 0x4db7
    mov bx, 0xffff                   ; 0x4db9
@..aztec_begin.heapok:
    mov word [es:_mtop], bx ; and save as _mtop_ ; 0x4dbc
    add bx, byte 0x0f                ; 0x4dc1
    shr bx, cl ; convert to paragraph form ; 0x4dc4
    mov ax, es                       ; 0x4dc6
    add bx, ax ; calculate paragraph address of last byte ; 0x4dc8
    mov ax, ds ; now take the paragrph form and ; 0x4dca
    sub bx, ax ; compute length of segment ; 0x4dcc
    mov bp, es ; save ES ; 0x4dce
    mov es, ax                       ; 0x4dd0
    mov ah, 0x4a ; SETBLOCK system call ; 0x4dd2
    int 0x21 ; DOS resize memory block
    jae short @..aztec_begin.heapdone ; 0x4dd6
    mov al, 0xfe                     ; 0x4dd8
    jmp near @..aztec_impl_exit.exit ; 0x4dda
@..aztec_begin.heapdone:
    mov es, bp ; restore ES ; 0x4ddd
    cld                              ; 0x4ddf
    mov di, bss_0cf6 ; clear uninitialized data ; 0x4de0
    mov cx, __zdseg_end              ; 0x4de3
    sub cx, di                       ; 0x4de6
    inc cx                           ; 0x4de8
    shr cx, 1                        ; 0x4de9
    jcxz @..aztec_begin.noclear      ; 0x4deb
    sub ax, ax                       ; 0x4ded
    rep stosw                        ; 0x4def
@..aztec_begin.noclear:
    mov es, word [psp_env_segment] ; get enviroment segment ; 0x4df1
    sub di, di                       ; 0x4df5
    mov cx, 0x7fff                   ; 0x4df7
@..aztec_begin.arglook:
    mov ah, byte [es:di]             ; 0x4dfa
    cmp ah, 0x3d ; look for null named env. string ; 0x4dfd
    je short @..aztec_begin.found_args ; 0x4e00
    test ah, ah                      ; 0x4e02
    je short @..aztec_begin.no_args  ; 0x4e04
    repne scasb ; look for null byte ; 0x4e06
    je short @..aztec_begin.arglook  ; 0x4e08
@..aztec_begin.no_args:
    mov cl, byte [psp_cmd_tail_len]  ; 0x4e0a
    sub ch, ch                       ; 0x4e0e
    mov si, 0x81                     ; 0x4e10
    mov ax, 1                        ; 0x4e13
    jmp short @..aztec_begin.mov_args ; 0x4e16
@..aztec_begin.found_args:
    sub ax, ax                       ; 0x4e18
    stosb ; zap and skip over '=' ; 0x4e1a
    mov si, di                       ; 0x4e1b
    mov di, es                       ; 0x4e1d
    mov ds, di                       ; 0x4e1f
@..aztec_begin.mov_args:
    push ax ; first arg # for Croot ; 0x4e21
    mov es, bp ; reload ES with our real dataseg ; 0x4e22
    mov di, word [es:aztec_MEMRY]    ; 0x4e24
    push di ; argp for Croot ; 0x4e29
    jcxz @..aztec_begin.cpy_done     ; 0x4e2a
@..aztec_begin.cpy_args:
    lodsb                            ; 0x4e2c
    test al, al                      ; 0x4e2d
    je short @..aztec_begin.cpy_done ; 0x4e2f
    stosb                            ; 0x4e31
    loop @..aztec_begin.cpy_args     ; 0x4e32
@..aztec_begin.cpy_done:
    sub al, al                       ; 0x4e34
    stosb ; null terminate string ; 0x4e36
    mov ds, bp ; set DS, now DS, SS, ES are equal ; 0x4e37
    inc di                           ; 0x4e39
    and di, strict word 0xfffe ; adjust to word boundary ; 0x4e3a
    mov word [aztec_MEMRY], di ; save memory allocation info for sbrk() ; 0x4e3e
    mov word [_mbot], di             ; 0x4e42
    mov word [_sbot], __zdseg_end    ; 0x4e46
    cmp word [_STKLOW], byte 0       ; 0x4e4c
    jne short @..aztec_begin.nostk   ; 0x4e51
    mov word [_sbot], di             ; 0x4e53
@..aztec_begin.nostk:
    mov ax, word [_sbot]             ; 0x4e57
    add ax, word [_STKRED]           ; 0x4e5a
    mov word [_sbot], ax             ; 0x4e5e
    mov word [dseg_0c74], ds         ; 0x4e61
    mov word [dseg_0c76], cs         ; 0x4e65
    call ds_leaf_loc_UTMK            ; 0x4e69
    jb short @..aztec_begin.no_8087  ; 0x4e6c
    call aztec_Croot ; Croot(argp, first) ; 0x4e6e
    jmp short @..aztec_impl_exit.exit ; 0x4e71
@..aztec_begin.no_8087:
    mov ah, 9 ; dos print message ; 0x4e73
    mov dx, 0xc82                    ; 0x4e75
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x4e7a
    jmp short @..aztec_impl_exit.exit ; 0x4e7c
