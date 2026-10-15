; auto-generated
; asm only
loc_QROH:
    push bp                          ; 0x503c
    mov bp, sp                       ; 0x503d
    sub sp, byte 0x0a                ; 0x503f
    push ds                          ; 0x5042
    push es                          ; 0x5043
    push si                          ; 0x5044
    push di                          ; 0x5045
    mov ax, ds                       ; 0x5046
    mov es, ax                       ; 0x5048
    mov bx, word [bp + 0xc]          ; 0x504a
    shl bx, 1                        ; 0x504d
    add bx, strict word 0x4fa3       ; 0x504f
    mov ax, word [cs:bx]             ; 0x5053
    mov word [bp - 0x0008], ax       ; 0x5056
    mov bx, word [bp + 0xc]          ; 0x5059
    shl bx, 1                        ; 0x505c
    shl bx, 1                        ; 0x505e
    add bx, strict word 0x4f8b       ; 0x5060
    mov word [bp - 0x0002], bx       ; 0x5064
    mov ax, word [cs:bx + 0x2]       ; 0x5067
    mov word [bp - 0x0006], ax       ; 0x506b
    mov ax, word [cs:bx]             ; 0x506e
    or ax, ax                        ; 0x5071
    je short @..loc_QROH.l2          ; 0x5073
    dec ax                           ; 0x5075
    shl ax, 1                        ; 0x5076
    shl ax, 1                        ; 0x5078
    mov bx, 0x10fb                   ; 0x507a
    add bx, ax                       ; 0x507d
    mov word [bp - 0x0004], bx       ; 0x507f
    push word [bp - 0x0008]          ; 0x5082
    xor ax, ax                       ; 0x5085
    cmp word [bp - 0x0006], byte 0   ; 0x5087
    je short @..loc_QROH.l1          ; 0x508b
    mov ax, word [cs:bx]             ; 0x508d
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x5090
@..loc_QROH.l1:
    push ax                          ; 0x5095
    xor ax, ax                       ; 0x5096
    push ax                          ; 0x5098
    call far [cs:cseg_010e - IMAGE_BASE] ; 0x5099
    add sp, byte 6                   ; 0x509e
    push word [bp + 0x10]            ; 0x50a1
    push word [bp + 0xe]             ; 0x50a4
    call far [cs:cseg_0116 - IMAGE_BASE] ; 0x50a7
    add sp, byte 4                   ; 0x50ac
    push word [bp + 0x12]            ; 0x50af
    mov bx, word [bp - 0x0004]       ; 0x50b2
    mov ax, word [cs:bx]             ; 0x50b5
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x50b8
    push ax                          ; 0x50bd
    push word [bp - 0x0006]          ; 0x50be
    call far [cs:cseg_0106 - IMAGE_BASE] ; 0x50c1
    add sp, byte 6                   ; 0x50c6
@..loc_QROH.l2:
    pop di                           ; 0x50c9
    pop si                           ; 0x50ca
    pop es                           ; 0x50cb
    pop ds                           ; 0x50cc
    mov sp, bp                       ; 0x50cd
    pop bp                           ; 0x50cf
    ret                              ; 0x50d0
