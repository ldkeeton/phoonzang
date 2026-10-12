api_idx_0004:
    mov ax, 0xfffc                   ; 0x0a27
    call ds_aztec_csav               ; 0x0a2a
    mov word [bp - 0x0002], 0        ; 0x0a2d
@..api_idx_0004.l1:
    mov ax, word [bp - 0x0002]       ; 0x0a32
    cmp ax, word [bss_8468]          ; 0x0a35
    jge short @..api_idx_0004.l2     ; 0x0a39
    shl ax, 1                        ; 0x0a3b
    mov bx, ax                       ; 0x0a3d
    mov bx, word [bx - 0x7b96]       ; 0x0a3f
    mov al, byte [bx + 0x14]         ; 0x0a43
    sub ah, ah                       ; 0x0a46
    cmp ax, word [bp + 0x4]          ; 0x0a48
    jg short @..api_idx_0004.l2      ; 0x0a4b
    inc word [bp - 0x0002]           ; 0x0a4d
    jmp short @..api_idx_0004.l1     ; 0x0a50
@..api_idx_0004.l2:
    mov ax, word [bss_8468]          ; 0x0a52
    mov word [bp - 0x0004], ax       ; 0x0a55
    jmp short @..api_idx_0004.l4     ; 0x0a58
@..api_idx_0004.l3:
    mov ax, word [bp - 0x0004]       ; 0x0a5a
    shl ax, 1                        ; 0x0a5d
    mov bx, ax                       ; 0x0a5f
    mov si, word [bx - 0x7b98]       ; 0x0a61
    mov di, word [bx - 0x7b96]       ; 0x0a65
    mov cx, ds                       ; 0x0a69
    mov es, cx                       ; 0x0a6b
    mov cx, 0xc                      ; 0x0a6d
    rep movsw                        ; 0x0a70
    dec word [bp - 0x0004]           ; 0x0a72
@..api_idx_0004.l4:
    mov ax, word [bp - 0x0004]       ; 0x0a75
    cmp ax, word [bp - 0x0002]       ; 0x0a78
    jg short @..api_idx_0004.l3      ; 0x0a7b
    cmp word [bp - 0x0002], byte 0x0c ; 0x0a7d
    jl short @..api_idx_0004.l6      ; 0x0a81
@..api_idx_0004.l5:
    mov ax, 0                        ; 0x0a83
    push ax                          ; 0x0a86
    call ds_app_0a27                 ; 0x0a87
    pop cx                           ; 0x0a8a
    jmp short @..api_idx_0004.l5     ; 0x0a8b
@..api_idx_0004.l6:
    mov al, byte [bp + 0x4]          ; 0x0a8d
    mov cx, word [bp - 0x0002]       ; 0x0a90
    shl cx, 1                        ; 0x0a93
    mov bx, cx                       ; 0x0a95
    mov bx, word [bx - 0x7b96]       ; 0x0a97
    mov byte [bx + 0x14], al         ; 0x0a9b
    mov al, byte [bp + 0x6]          ; 0x0a9e
    mov cx, word [bp - 0x0002]       ; 0x0aa1
    shl cx, 1                        ; 0x0aa4
    mov bx, cx                       ; 0x0aa6
    mov bx, word [bx - 0x7b96]       ; 0x0aa8
    mov byte [bx + 0x15], al         ; 0x0aac
    mov ax, word [bp + 0x8]          ; 0x0aaf
    mov cx, word [bp - 0x0002]       ; 0x0ab2
    shl cx, 1                        ; 0x0ab5
    mov bx, cx                       ; 0x0ab7
    mov bx, word [bx - 0x7b96]       ; 0x0ab9
    mov word [bx], ax                ; 0x0abd
    mov ax, word [bp + 0xa]          ; 0x0abf
    mov cx, word [bp - 0x0002]       ; 0x0ac2
    shl cx, 1                        ; 0x0ac5
    mov bx, cx                       ; 0x0ac7
    mov bx, word [bx - 0x7b96]       ; 0x0ac9
    mov word [bx + 0x2], ax          ; 0x0acd
    mov ax, word [bp + 0xc]          ; 0x0ad0
    mov cx, word [bp - 0x0002]       ; 0x0ad3
    shl cx, 1                        ; 0x0ad6
    mov bx, cx                       ; 0x0ad8
    mov bx, word [bx - 0x7b96]       ; 0x0ada
    mov word [bx + 0x4], ax          ; 0x0ade
    mov ax, word [bp + 0xe]          ; 0x0ae1
    mov cx, word [bp - 0x0002]       ; 0x0ae4
    shl cx, 1                        ; 0x0ae7
    mov bx, cx                       ; 0x0ae9
    mov bx, word [bx - 0x7b96]       ; 0x0aeb
    mov word [bx + 0x6], ax          ; 0x0aef
    mov al, byte [bp + 0x10]         ; 0x0af2
    mov cx, word [bp - 0x0002]       ; 0x0af5
    shl cx, 1                        ; 0x0af8
    mov bx, cx                       ; 0x0afa
    mov bx, word [bx - 0x7b96]       ; 0x0afc
    mov byte [bx + 0x16], al         ; 0x0b00
    mov al, byte [bp + 0x12]         ; 0x0b03
    mov cx, word [bp - 0x0002]       ; 0x0b06
    shl cx, 1                        ; 0x0b09
    mov bx, cx                       ; 0x0b0b
    mov bx, word [bx - 0x7b96]       ; 0x0b0d
    mov byte [bx + 0x17], al         ; 0x0b11
    push word [bp + 0x14]            ; 0x0b14
    mov ax, word [bp - 0x0002]       ; 0x0b17
    shl ax, 1                        ; 0x0b1a
    mov bx, ax                       ; 0x0b1c
    mov ax, word [bx - 0x7b96]       ; 0x0b1e
    add ax, strict word 8            ; 0x0b22
    push ax                          ; 0x0b25
    call ds_aztec_strcpy             ; 0x0b26
    add sp, byte 4                   ; 0x0b29
    inc word [bss_8468]              ; 0x0b2c
    ret                              ; 0x0b30
