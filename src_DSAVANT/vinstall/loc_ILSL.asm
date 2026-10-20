; auto-generated
loc_ILSL:
    push bp                          ; 0x0200
    mov bp, sp                       ; 0x0201
    add sp, byte 0xee                ; 0x0203
    mov bx, word [bp + 0x4]          ; 0x0206
    mov al, byte [bx]                ; 0x0209
    cbw                              ; 0x020b
    push ax                          ; 0x020c
    call aztec_toupper               ; 0x020d
    pop cx                           ; 0x0210
    add ax, strict word 0xffbf       ; 0x0211
    mov word [bp - 0x0012], ax       ; 0x0214
    cmp ax, strict word 0            ; 0x0217
    jl short @..loc_ILSL.l3          ; 0x021a
    cmp ax, strict word 0x19         ; 0x021c
    jg short @..loc_ILSL.l3          ; 0x021f
    mov ax, word [bp - 0x0012]       ; 0x0221
    mov word [bp - 0x000a], ax       ; 0x0224
    mov word [bp - 0x0010], 0xe00    ; 0x0227
    lea ax, word [bp - 0x0010]       ; 0x022c
    push ax                          ; 0x022f
    push ax                          ; 0x0230
    mov ax, 0x21                     ; 0x0231
    push ax                          ; 0x0234
    call aztec_sysint                ; 0x0235
    add sp, byte 6                   ; 0x0238
    mov word [bp - 0x0010], 0x1900   ; 0x023b
    lea ax, word [bp - 0x0010]       ; 0x0240
    push ax                          ; 0x0243
    push ax                          ; 0x0244
    mov ax, 0x21                     ; 0x0245
    push ax                          ; 0x0248
    call aztec_sysint                ; 0x0249
    add sp, byte 6                   ; 0x024c
    mov ax, word [bp - 0x0010]       ; 0x024f
    and ax, 0xff                     ; 0x0252
    cmp ax, word [bp - 0x0012]       ; 0x0255
    je short @..loc_ILSL.l2          ; 0x0258
    mov ax, 0xffff                   ; 0x025a
@..loc_ILSL.l1:
    mov sp, bp                       ; 0x025d
    pop bp                           ; 0x025f
    ret                              ; 0x0260
@..loc_ILSL.l2:
    jmp short @..loc_ILSL.l4         ; 0x0261
@..loc_ILSL.l3:
    mov ax, 0xffff                   ; 0x0263
    jmp short @..loc_ILSL.l1         ; 0x0266
@..loc_ILSL.l4:
    mov ax, 0                        ; 0x0268
    jmp short @..loc_ILSL.l1         ; 0x026b
loc_MPOT:
    push bp                          ; 0x026d
    mov bp, sp                       ; 0x026e
    add sp, byte 0xfe                ; 0x0270
    push di                          ; 0x0273
    push si                          ; 0x0274
    mov di, 0                        ; 0x0275
    push word [bp + 0x4]             ; 0x0278
    call aztec_strlen                ; 0x027b
    pop cx                           ; 0x027e
    dec ax                           ; 0x027f
    mov word [bp - 0x0002], ax       ; 0x0280
    jmp short @..loc_MPOT.l2         ; 0x0283
@..loc_MPOT.l1:
    mov bx, word [bp + 0x4]          ; 0x0285
    mov al, byte [bx + di]           ; 0x0288
    cbw                              ; 0x028a
    mov si, ax                       ; 0x028b
    add bx, word [bp - 0x0002]       ; 0x028d
    mov al, byte [bx]                ; 0x0290
    mov bx, word [bp + 0x4]          ; 0x0292
    mov byte [bx + di], al           ; 0x0295
    mov ax, si                       ; 0x0297
    mov cx, word [bp + 0x4]          ; 0x0299
    add cx, word [bp - 0x0002]       ; 0x029c
    mov bx, cx                       ; 0x029f
    mov byte [bx], al                ; 0x02a1
    dec word [bp - 0x0002]           ; 0x02a3
    inc di                           ; 0x02a6
@..loc_MPOT.l2:
    cmp di, word [bp - 0x0002]       ; 0x02a7
    jl short @..loc_MPOT.l1          ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
loc_KOGV:
    push bp                          ; 0x02b2
    mov bp, sp                       ; 0x02b3
    push di                          ; 0x02b5
    push si                          ; 0x02b6
    mov di, word [bp + 0x4]          ; 0x02b7
    mov ax, di                       ; 0x02ba
    cmp ax, strict word 0            ; 0x02bc
    jge short @..loc_KOGV.l1         ; 0x02bf
    neg ax                           ; 0x02c1
    mov word [bp + 0x4], ax          ; 0x02c3
@..loc_KOGV.l1:
    mov si, 0                        ; 0x02c6
@..loc_KOGV.l2:
    mov ax, word [bp + 0x4]          ; 0x02c9
    mov cx, 0xa                      ; 0x02cc
    cwd                              ; 0x02cf
    idiv cx                          ; 0x02d0
    mov ax, dx                       ; 0x02d2
    add ax, strict word 0x30         ; 0x02d4
    mov cx, word [bp + 0x6]          ; 0x02d7
    add cx, si                       ; 0x02da
    mov bx, cx                       ; 0x02dc
    inc si                           ; 0x02de
    mov byte [bx], al                ; 0x02df
    mov ax, word [bp + 0x4]          ; 0x02e1
    mov cx, 0xa                      ; 0x02e4
    cwd                              ; 0x02e7
    idiv cx                          ; 0x02e8
    mov word [bp + 0x4], ax          ; 0x02ea
    cmp ax, strict word 0            ; 0x02ed
    jg short @..loc_KOGV.l2          ; 0x02f0
    cmp di, byte 0                   ; 0x02f2
    jge short @..loc_KOGV.l3         ; 0x02f5
    mov ax, word [bp + 0x6]          ; 0x02f7
    add ax, si                       ; 0x02fa
    mov bx, ax                       ; 0x02fc
    inc si                           ; 0x02fe
    mov byte [bx], 0x2d              ; 0x02ff
@..loc_KOGV.l3:
    mov bx, word [bp + 0x6]          ; 0x0302
    mov byte [bx + si], 0            ; 0x0305
    push word [bp + 0x6]             ; 0x0308
    call loc_MPOT                    ; 0x030b
    pop cx                           ; 0x030e
    pop si                           ; 0x030f
    pop di                           ; 0x0310
    mov sp, bp                       ; 0x0311
    pop bp                           ; 0x0313
    ret                              ; 0x0314

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56
    db 0xfe, 0x89, 0x46, 0xfc, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x72, 0x02
    db 0xeb, 0x0d, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x89, 0x56, 0x06, 0x89, 0x46, 0x04, 0xbe
    db 0x00, 0x00, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xef
    db 0x30, 0x05, 0x30, 0x00, 0x83, 0xd2, 0x00, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0x88, 0x01, 0x8b
    db 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xa4, 0x30, 0x89, 0x56
    db 0x06, 0x89, 0x46, 0x04, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x76, 0x02
    db 0xeb, 0xc0, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x08, 0x75, 0x08, 0x83, 0x7e, 0xfc, 0x00, 0x72, 0x02
    db 0xeb, 0x09, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0xc6, 0x01, 0x2d, 0x8b, 0x5e, 0x08, 0xc6, 0x00
    db 0x00, 0xff, 0x76, 0x08, 0xe8, 0xc1, 0xfe, 0x59, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

