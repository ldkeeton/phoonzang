; auto-generated
api_idx_000a_LHTJ:
    mov ax, 0xfff6                   ; 0x2998
    call aztec_csav                  ; 0x299b
    mov word [bss_91d6], 2           ; 0x299e
    cmp word [bp + 0x12], byte 0     ; 0x29a4
    jle short .forward1              ; 0x29a8
    push word [bp + 0x12]            ; 0x29aa
    push word [bp + 0xa]             ; 0x29ad
    push word [bp + 4]               ; 0x29b0
    call loc_QUJT                    ; 0x29b3
    add sp, byte 6                   ; 0x29b6
    mov word [bp - 8], ax            ; 0x29b9
    jmp short .forward2              ; 0x29bc
.forward1:
    mov ax, word [bp + 0x12]         ; 0x29be
    mov word [bp - 8], ax            ; 0x29c1
.forward2:
    cmp word [bp + 0x14], byte 0     ; 0x29c4
    jle short .forward3              ; 0x29c8
    push word [bp + 0x14]            ; 0x29ca
    push word [bp + 0xa]             ; 0x29cd
    push word [bp + 4]               ; 0x29d0
    call loc_QUJT                    ; 0x29d3
    add sp, byte 6                   ; 0x29d6
    mov word [bp - 0xa], ax          ; 0x29d9
    jmp short .forward4              ; 0x29dc
.forward3:
    mov ax, word [bp + 0x14]         ; 0x29de
    mov word [bp - 0xa], ax          ; 0x29e1
.forward4:
    mov ax, word [bp - 8]            ; 0x29e4
    cmp ax, word [bp + 0x12]         ; 0x29e7
    jne short .forward5              ; 0x29ea
    mov ax, word [bp - 0xa]          ; 0x29ec
    cmp ax, word [bp + 0x14]         ; 0x29ef
    je short .forward6               ; 0x29f2
.forward5:
    mov ax, MSG_SPELL_REDUCED        ; 0x29f4
    push ax                          ; 0x29f7
    call loc_PKMT                    ; 0x29f8
    pop cx                           ; 0x29fb
.forward6:
    lea ax, word [bp - 6]            ; 0x29fc
    push ax                          ; 0x29ff
    lea ax, word [bp - 4]            ; 0x2a00
    push ax                          ; 0x2a03
    push word [bp + 6]               ; 0x2a04
    push word [bp + 4]               ; 0x2a07
    call api_idx_0006_OMUL           ; 0x2a0a
    add sp, byte 8                   ; 0x2a0d
    mov ax, word [bp - 4]            ; 0x2a10
    mov word [bp - 2], ax            ; 0x2a13
    jmp short .forward10             ; 0x2a16
.back1:
    cmp word [bp + 0x10], byte 1     ; 0x2a18
    jne short .forward7              ; 0x2a1c
    mov ax, 1                        ; 0x2a1e
    push ax                          ; 0x2a21
    mov ax, 0xd4a                    ; 0x2a22
    push ax                          ; 0x2a25
    push word [bp + 0xe]             ; 0x2a26
    push word [bp + 0xc]             ; 0x2a29
    push word [bp + 0xa]             ; 0x2a2c
    push word [bp + 8]               ; 0x2a2f
    push word [bp - 2]               ; 0x2a32
    push word [bp + 4]               ; 0x2a35
    call api_idx_0002_UTVG           ; 0x2a38
    add sp, byte 0x10                ; 0x2a3b
    jmp short .forward8              ; 0x2a3e
.forward7:
    mov ax, 1                        ; 0x2a40
    push ax                          ; 0x2a43
    mov ax, 0xd4a                    ; 0x2a44
    push ax                          ; 0x2a47
    push word [bp + 0x16]            ; 0x2a48
    push word [bp - 0xa]             ; 0x2a4b
    push word [bp - 8]               ; 0x2a4e
    push word [bp + 0xe]             ; 0x2a51
    push word [bp + 0xc]             ; 0x2a54
    push word [bp + 0xa]             ; 0x2a57
    push word [bp + 8]               ; 0x2a5a
    push word [bp - 2]               ; 0x2a5d
    push word [bp + 4]               ; 0x2a60
    call api_idx_0006_QJOL           ; 0x2a63
    add sp, byte 0x16                ; 0x2a66
.forward8:
    cmp word [bp + 4], byte 0        ; 0x2a69
    jne short .forward9              ; 0x2a6d
    mov ax, 0                        ; 0x2a6f
    push ax                          ; 0x2a72
    push word [bp - 2]               ; 0x2a73
    call api_idx_0004_MLLS           ; 0x2a76
    add sp, byte 4                   ; 0x2a79
.forward9:
    inc word [bp - 2]                ; 0x2a7c
.forward10:
    mov ax, word [bp - 4]            ; 0x2a7f
    add ax, word [bp - 6]            ; 0x2a82
    cmp ax, word [bp - 2]            ; 0x2a85
    jg short .back1                  ; 0x2a88
    ret                              ; 0x2a8a
