; auto-generated
api_idx_0004_NRKR:
    mov ax, 0xfffc                   ; 0x73f6
    call aztec_csav                  ; 0x73f9
    mov ax, 0x64                     ; 0x73fc
    push ax                          ; 0x73ff
    call random_below                ; 0x7400
    pop cx                           ; 0x7403
    mov word [bp - 4], ax            ; 0x7404
    mov word [bp - 2], 0             ; 0x7407
.back1:
    mov bx, word [bp + 4]            ; 0x740c
    mov si, word [bp - 2]            ; 0x740f
    mov al, byte [bx + si]           ; 0x7412
    sub ah, ah                       ; 0x7414
    cmp ax, word [bp - 4]            ; 0x7416
    jle short .forward1              ; 0x7419
    mov ax, si                       ; 0x741b
    ret                              ; 0x741d
.forward1:
    mov al, byte [bx + si]           ; 0x741e
    sub ah, ah                       ; 0x7420
    sub word [bp - 4], ax            ; 0x7422
    inc word [bp - 2]                ; 0x7425
    mov ax, word [bp - 2]            ; 0x7428
    cmp ax, strict word 8            ; 0x742b
    jl short .back1                  ; 0x742e
    mov ax, 4                        ; 0x7430
    ret                              ; 0x7433
