; auto-generated
cseg_4d36:
    db 0x00, 0x00
cseg_4d38:
    db 0x00, 0x00
__zinsn_4d3a:
aztec_begin:
    mov bp, 0xff6                    ; 0x4d3a
    test bp, bp                      ; 0x4d3d
    jne short @..aztec_sbegin.notcom ; 0x4d3f
    mov bp, ds                       ; 0x4d41
@..aztec_sbegin.notcom:
    mov word [cs:cseg_4d38 - IMAGE_BASE], ds ; 0x4d43
    mov bx, word [psp_top_of_memory] ; 0x4d48
    sub bx, bp                       ; 0x4d4c
    cmp bx, strict word 0x1000       ; 0x4d4e
    jbe short @..aztec_sbegin.smallseg ; 0x4d52
    lea bx, word [bp + 0x1000]       ; 0x4d54
    mov ax, es                       ; 0x4d58
    sub bx, ax                       ; 0x4d5a
    mov ah, 0x4a                     ; 0x4d5c
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x4d60
@..aztec_sbegin.smallseg:
    mov es, bp                       ; 0x4d63
    mov word [es:_PSP], ds           ; 0x4d65
    mov cl, 4                        ; 0x4d6a
    shl bx, cl                       ; 0x4d6c
    cmp word [es:_STKLOW], byte 0    ; 0x4d6e
    je short @..aztec_sbegin.setstk  ; 0x4d74
    mov ax, word [es:_STKRED]        ; 0x4d76
    shl ax, 1                        ; 0x4d7a
    mov bx, word [es:_STKSIZ]        ; 0x4d7c
    shl bx, cl                       ; 0x4d81
    cmp bx, ax                       ; 0x4d83
    ja short @..aztec_sbegin.sizeok  ; 0x4d85
    mov bx, ax                       ; 0x4d87
@..aztec_sbegin.sizeok:
    add bx, strict word __zdseg_end  ; 0x4d89
@..aztec_sbegin.setstk:
    cli                              ; 0x4d8d
    mov ss, bp                       ; 0x4d8e
    mov sp, bx                       ; 0x4d90
    sti                              ; 0x4d92
    test bx, bx                      ; 0x4d93
    jne short @..aztec_sbegin.oksav  ; 0x4d95
    mov bx, 0xffff                   ; 0x4d97
@..aztec_sbegin.oksav:
    mov word [es:_mtop], bx          ; 0x4d9a
    cmp word [es:_STKLOW], byte 0    ; 0x4d9f
    je short @..aztec_sbegin.heapdone ; 0x4da5
    mov si, word [es:_HEAPSIZ]       ; 0x4da7
    mov ax, bx                       ; 0x4dac
    inc ax                           ; 0x4dae
    mov word [es:aztec_MEMRY], ax    ; 0x4daf
    shl si, cl                       ; 0x4db3
    add bx, si                       ; 0x4db5
    jae short @..aztec_sbegin.heapok ; 0x4db7
    mov bx, 0xffff                   ; 0x4db9
@..aztec_sbegin.heapok:
    mov word [es:_mtop], bx          ; 0x4dbc
    add bx, byte 0x0f                ; 0x4dc1
    shr bx, cl                       ; 0x4dc4
    mov ax, es                       ; 0x4dc6
    add bx, ax                       ; 0x4dc8
    mov ax, ds                       ; 0x4dca
    sub bx, ax                       ; 0x4dcc
    mov bp, es                       ; 0x4dce
    mov es, ax                       ; 0x4dd0
    mov ah, 0x4a                     ; 0x4dd2
    int 0x21 ; DOS resize memory block
    jae short @..aztec_sbegin.heapdone ; 0x4dd6
    mov al, 0xfe                     ; 0x4dd8
    jmp near @..aztec_sbegin.exits   ; 0x4dda
@..aztec_sbegin.heapdone:
    mov es, bp                       ; 0x4ddd
    cld                              ; 0x4ddf
    mov di, bss_0cf6                 ; 0x4de0
    mov cx, __zdseg_end              ; 0x4de3
    sub cx, di                       ; 0x4de6
    inc cx                           ; 0x4de8
    shr cx, 1                        ; 0x4de9
    jcxz @..aztec_sbegin.noclear     ; 0x4deb
    sub ax, ax                       ; 0x4ded
    rep stosw                        ; 0x4def
@..aztec_sbegin.noclear:
    mov es, word [psp_env_segment]   ; 0x4df1
    sub di, di                       ; 0x4df5
    mov cx, 0x7fff                   ; 0x4df7
@..aztec_sbegin.arglook:
    mov ah, byte [es:di]             ; 0x4dfa
    cmp ah, 0x3d                     ; 0x4dfd
    je short @..aztec_sbegin.found_args ; 0x4e00
    test ah, ah                      ; 0x4e02
    je short @..aztec_sbegin.no_args ; 0x4e04
    repne scasb                      ; 0x4e06
    je short @..aztec_sbegin.arglook ; 0x4e08
@..aztec_sbegin.no_args:
    mov cl, byte [psp_cmd_tail_len]  ; 0x4e0a
    sub ch, ch                       ; 0x4e0e
    mov si, 0x81                     ; 0x4e10
    mov ax, 1                        ; 0x4e13
    jmp short @..aztec_sbegin.mov_args ; 0x4e16
@..aztec_sbegin.found_args:
    sub ax, ax                       ; 0x4e18
    stosb                            ; 0x4e1a
    mov si, di                       ; 0x4e1b
    mov di, es                       ; 0x4e1d
    mov ds, di                       ; 0x4e1f
@..aztec_sbegin.mov_args:
    push ax                          ; 0x4e21
    mov es, bp                       ; 0x4e22
    mov di, word [es:aztec_MEMRY]    ; 0x4e24
    push di                          ; 0x4e29
    jcxz @..aztec_sbegin.cpy_done    ; 0x4e2a
@..aztec_sbegin.cpy_args:
    lodsb                            ; 0x4e2c
    test al, al                      ; 0x4e2d
    je short @..aztec_sbegin.cpy_done ; 0x4e2f
    stosb                            ; 0x4e31
    loop @..aztec_sbegin.cpy_args    ; 0x4e32
@..aztec_sbegin.cpy_done:
    sub al, al                       ; 0x4e34
    stosb                            ; 0x4e36
    mov ds, bp                       ; 0x4e37
    inc di                           ; 0x4e39
    and di, strict word 0xfffe       ; 0x4e3a
    mov word [aztec_MEMRY], di       ; 0x4e3e
    mov word [_mbot], di             ; 0x4e42
    mov word [_sbot], __zdseg_end    ; 0x4e46
    cmp word [_STKLOW], byte 0       ; 0x4e4c
    jne short @..aztec_sbegin.nostk  ; 0x4e51
    mov word [_sbot], di             ; 0x4e53
@..aztec_sbegin.nostk:
    mov ax, word [_sbot]             ; 0x4e57
    add ax, word [_STKRED]           ; 0x4e5a
    mov word [_sbot], ax             ; 0x4e5e
    mov word [_dsval], ds            ; 0x4e61
    mov word [_csval], cs            ; 0x4e65
    call aztec_fltinit               ; 0x4e69
    jb short @..aztec_sbegin.no_8087 ; 0x4e6c
    call aztec_Croot                 ; 0x4e6e
    jmp short @..aztec_sbegin.exits  ; 0x4e71
@..aztec_sbegin.no_8087:
    mov ah, 9                        ; 0x4e73
    mov dx, bad8087                  ; 0x4e75
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x4e7a
    jmp short @..aztec_sbegin.exits  ; 0x4e7c
aztec_impl_exit:
    pop ax                           ; 0x4e7e
    pop ax                           ; 0x4e7f
@..aztec_sbegin.exits:
    mov ah, 0x4c                     ; 0x4e80
    int 0x21 ; DOS exit with return code
ds_loc_QOUK:
    jmp far [cs:cseg_4d36 - IMAGE_BASE] ; 0x4e84
@..aztec_sbegin.retip:
    add byte [bx + si], al           ; 0x4e89
@..aztec_sbegin.retcs:
    add byte [bx + si], al           ; 0x4e8b
    pop word [cs:@..aztec_sbegin.retip - IMAGE_BASE] ; 0x4e8d
    pop word [cs:@..aztec_sbegin.retcs - IMAGE_BASE] ; 0x4e92
    pop ds                           ; 0x4e97
    call @..aztec_sbegin.l1          ; 0x4e98
    jmp far [cs:@..aztec_sbegin.retip - IMAGE_BASE] ; 0x4e9b
@..aztec_sbegin.l1:
    push di                          ; 0x4ea0
    push si                          ; 0x4ea1
    retf                             ; 0x4ea2
