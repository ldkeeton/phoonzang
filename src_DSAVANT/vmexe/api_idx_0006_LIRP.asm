; auto-generated
api_idx_0006_LIRP:
    mov ax, 0xfffa                   ; 0x2c7b
    call aztec_csav                  ; 0x2c7e
    mov word [bss_91d6], 2           ; 0x2c81
    mov word [bp - 4], 0             ; 0x2c87
    cmp word [bp + 0xa], byte 3      ; 0x2c8c
    jne short @..api_idx_0006_LIRP.l3 ; 0x2c90
    cmp word [bp + 0xe], byte 1      ; 0x2c92
    jne short @..api_idx_0006_LIRP.l3 ; 0x2c96
    cmp word [bp + 8], byte 5        ; 0x2c98
    jne short @..api_idx_0006_LIRP.l1 ; 0x2c9c
    mov ax, word [bp + 4]            ; 0x2c9e
    shl ax, 1                        ; 0x2ca1
    mov bx, ax                       ; 0x2ca3
    mov bx, word [bx + party_char]   ; 0x2ca5
    mov al, byte [bx + member_rec.charge + 0x3] ; 0x2ca9
    sub ah, ah                       ; 0x2cad
    mov cx, 5                        ; 0x2caf
    cwd                              ; 0x2cb2
    idiv cx                          ; 0x2cb3
    cmp ax, word [bp + 0x10]         ; 0x2cb5
    jle short @..api_idx_0006_LIRP.l1 ; 0x2cb8
    mov ax, 2                        ; 0x2cba
    push ax                          ; 0x2cbd
    push ax                          ; 0x2cbe
    call api_idx_0004_UONH           ; 0x2cbf
    add sp, byte 4                   ; 0x2cc2
    mov ax, 2                        ; 0x2cc5
    push ax                          ; 0x2cc8
    mov ax, 0x41                     ; 0x2cc9
    push ax                          ; 0x2ccc
    mov ax, MSG_SPELL_DEFLECTED      ; 0x2ccd
    push ax                          ; 0x2cd0
    call api_idx_0050_PLNP           ; 0x2cd1
    add sp, byte 6                   ; 0x2cd4
    push word [bss_9058]             ; 0x2cd7
    call api_idx_0004_QUPL           ; 0x2cdb
    pop cx                           ; 0x2cde
    ret                              ; 0x2cdf
@..api_idx_0006_LIRP.l1:
    cmp word [bp + 8], byte 5        ; 0x2ce0
    jne short @..api_idx_0006_LIRP.l2 ; 0x2ce4
    mov word [bp - 4], 3             ; 0x2ce6
@..api_idx_0006_LIRP.l2:
    cmp word [bp + 8], byte 0xb      ; 0x2ceb
    jne short @..api_idx_0006_LIRP.l3 ; 0x2cef
    mov word [bp - 4], 4             ; 0x2cf1
@..api_idx_0006_LIRP.l3:
    mov word [bp - 2], 0             ; 0x2cf6
    jmp short @..api_idx_0006_LIRP.l6 ; 0x2cfb
@..api_idx_0006_LIRP.l4:
    mov ax, word [bp + 0xc]          ; 0x2cfd
    mov word [bp - 6], ax            ; 0x2d00
    cmp word [bp - 4], byte 0        ; 0x2d03
    jle short @..api_idx_0006_LIRP.l5 ; 0x2d07
    mov ax, 0x2c                     ; 0x2d09
    imul word [bp - 2]               ; 0x2d0c
    mov si, ax                       ; 0x2d0f
    mov ax, word [bp + 4]            ; 0x2d11
    shl ax, 1                        ; 0x2d14
    mov bx, ax                       ; 0x2d16
    mov bx, word [bx + party_char]   ; 0x2d18
    mov ax, word [bx + si]           ; 0x2d1c
    mov cx, word [bp + 0x10]         ; 0x2d1e
    add cx, word [bp - 4]            ; 0x2d21
    cmp ax, cx                       ; 0x2d24
    jle short @..api_idx_0006_LIRP.l5 ; 0x2d26
    mov word [bp - 6], 0xff9c        ; 0x2d28
@..api_idx_0006_LIRP.l5:
    push word [bp + 0x14]            ; 0x2d2d
    push word [bp + 0x12]            ; 0x2d30
    push word [bp + 0x10]            ; 0x2d33
    push word [bp + 0xe]             ; 0x2d36
    push word [bp - 6]               ; 0x2d39
    push word [bp + 0xa]             ; 0x2d3c
    push word [bp + 8]               ; 0x2d3f
    push word [bp + 6]               ; 0x2d42
    push word [bp - 2]               ; 0x2d45
    push word [bp + 4]               ; 0x2d48
    call api_idx_000a_LHTJ           ; 0x2d4b
    add sp, byte 0x14                ; 0x2d4e
    inc word [bp - 2]                ; 0x2d51
@..api_idx_0006_LIRP.l6:
    mov ax, word [bp + 4]            ; 0x2d54
    shl ax, 1                        ; 0x2d57
    mov bx, ax                       ; 0x2d59
    mov bx, word [bx + party_char]   ; 0x2d5b
    mov al, byte [bx + member_rec.item_count] ; 0x2d5f
    sub ah, ah                       ; 0x2d63
    cmp ax, word [bp - 2]            ; 0x2d65
    jg short @..api_idx_0006_LIRP.l4 ; 0x2d68
    ret                              ; 0x2d6a
