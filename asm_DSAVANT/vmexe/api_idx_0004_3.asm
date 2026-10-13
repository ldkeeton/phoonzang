; auto-generated
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0979
    call aztec_csav                  ; 0x097c
    mov word [bp - 0x0002], 0        ; 0x097f
@..api_idx_0004_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0984
    cmp ax, word [bss_8468]          ; 0x0987
    jge short @..api_idx_0004_3.l2   ; 0x098b
    shl ax, 1                        ; 0x098d
    mov bx, ax                       ; 0x098f
    mov bx, word [bx - 0x7b96]       ; 0x0991
    mov al, byte [bx + 0x14]         ; 0x0995
    sub ah, ah                       ; 0x0998
    cmp ax, word [bp + 0x4]          ; 0x099a
    jg short @..api_idx_0004_3.l2    ; 0x099d
    inc word [bp - 0x0002]           ; 0x099f
    jmp short @..api_idx_0004_3.l1   ; 0x09a2
@..api_idx_0004_3.l2:
    mov ax, word [bss_8468]          ; 0x09a4
    mov word [bp - 0x0004], ax       ; 0x09a7
    jmp short @..api_idx_0004_3.l4   ; 0x09aa
@..api_idx_0004_3.l3:
    mov ax, word [bp - 0x0004]       ; 0x09ac
    shl ax, 1                        ; 0x09af
    mov bx, ax                       ; 0x09b1
    mov si, word [bx - 0x7b98]       ; 0x09b3
    mov di, word [bx - 0x7b96]       ; 0x09b7
    mov cx, ds                       ; 0x09bb
    mov es, cx                       ; 0x09bd
    mov cx, 0xc                      ; 0x09bf
    rep movsw                        ; 0x09c2
    dec word [bp - 0x0004]           ; 0x09c4
@..api_idx_0004_3.l4:
    mov ax, word [bp - 0x0004]       ; 0x09c7
    cmp ax, word [bp - 0x0002]       ; 0x09ca
    jg short @..api_idx_0004_3.l3    ; 0x09cd
    cmp word [bp - 0x0002], byte 0x0c ; 0x09cf
    jl short @..api_idx_0004_3.l6    ; 0x09d3
@..api_idx_0004_3.l5:
    mov ax, 0                        ; 0x09d5
    push ax                          ; 0x09d8
    call ds_app_0a27                 ; 0x09d9
    pop cx                           ; 0x09dc
    jmp short @..api_idx_0004_3.l5   ; 0x09dd
@..api_idx_0004_3.l6:
    mov al, byte [bp + 0x4]          ; 0x09df
    mov cx, word [bp - 0x0002]       ; 0x09e2
    shl cx, 1                        ; 0x09e5
    mov bx, cx                       ; 0x09e7
    mov bx, word [bx - 0x7b96]       ; 0x09e9
    mov byte [bx + 0x14], al         ; 0x09ed
    mov al, byte [bp + 0x6]          ; 0x09f0
    mov cx, word [bp - 0x0002]       ; 0x09f3
    shl cx, 1                        ; 0x09f6
    mov bx, cx                       ; 0x09f8
    mov bx, word [bx - 0x7b96]       ; 0x09fa
    mov byte [bx + 0x15], al         ; 0x09fe
    mov ax, word [bp + 0x8]          ; 0x0a01
    mov cx, word [bp - 0x0002]       ; 0x0a04
    shl cx, 1                        ; 0x0a07
    mov bx, cx                       ; 0x0a09
    mov bx, word [bx - 0x7b96]       ; 0x0a0b
    mov word [bx], ax                ; 0x0a0f
    mov ax, word [bp + 0xa]          ; 0x0a11
    mov cx, word [bp - 0x0002]       ; 0x0a14
    shl cx, 1                        ; 0x0a17
    mov bx, cx                       ; 0x0a19
    mov bx, word [bx - 0x7b96]       ; 0x0a1b
    mov word [bx + 0x2], ax          ; 0x0a1f
    mov ax, word [bp + 0xc]          ; 0x0a22
    mov cx, word [bp - 0x0002]       ; 0x0a25
    shl cx, 1                        ; 0x0a28
    mov bx, cx                       ; 0x0a2a
    mov bx, word [bx - 0x7b96]       ; 0x0a2c
    mov word [bx + 0x4], ax          ; 0x0a30
    mov ax, word [bp + 0xe]          ; 0x0a33
    mov cx, word [bp - 0x0002]       ; 0x0a36
    shl cx, 1                        ; 0x0a39
    mov bx, cx                       ; 0x0a3b
    mov bx, word [bx - 0x7b96]       ; 0x0a3d
    mov word [bx + 0x6], ax          ; 0x0a41
    mov al, byte [bp + 0x10]         ; 0x0a44
    mov cx, word [bp - 0x0002]       ; 0x0a47
    shl cx, 1                        ; 0x0a4a
    mov bx, cx                       ; 0x0a4c
    mov bx, word [bx - 0x7b96]       ; 0x0a4e
    mov byte [bx + 0x16], al         ; 0x0a52
    mov al, byte [bp + 0x12]         ; 0x0a55
    mov cx, word [bp - 0x0002]       ; 0x0a58
    shl cx, 1                        ; 0x0a5b
    mov bx, cx                       ; 0x0a5d
    mov bx, word [bx - 0x7b96]       ; 0x0a5f
    mov byte [bx + 0x17], al         ; 0x0a63
    push word [bp + 0x14]            ; 0x0a66
    mov ax, word [bp - 0x0002]       ; 0x0a69
    shl ax, 1                        ; 0x0a6c
    mov bx, ax                       ; 0x0a6e
    mov ax, word [bx - 0x7b96]       ; 0x0a70
    add ax, strict word 8            ; 0x0a74
    push ax                          ; 0x0a77
    call aztec_strcpy                ; 0x0a78
    add sp, byte 4                   ; 0x0a7b
    inc word [bss_8468]              ; 0x0a7e
    ret                              ; 0x0a82
