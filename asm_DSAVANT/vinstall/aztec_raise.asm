aztec_raise:
    push bp                          ; 0x02b2
    mov bp, sp                       ; 0x02b3
    push di                          ; 0x02b5
    push si                          ; 0x02b6
    mov di, word [bp + 0x4]          ; 0x02b7
    mov ax, di                       ; 0x02ba
    cmp ax, strict word 0            ; 0x02bc
    jge short @..aztec_raise.l1      ; 0x02bf
    neg ax                           ; 0x02c1
    mov word [bp + 0x4], ax          ; 0x02c3
@..aztec_raise.l1:
    mov si, 0                        ; 0x02c6
@..aztec_raise.l2:
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
    jg short @..aztec_raise.l2       ; 0x02f0
    cmp di, byte 0                   ; 0x02f2
    jge short @..aztec_raise.l3      ; 0x02f5
    mov ax, word [bp + 0x6]          ; 0x02f7
    add ax, si                       ; 0x02fa
    mov bx, ax                       ; 0x02fc
    inc si                           ; 0x02fe
    mov byte [bx], 0x2d              ; 0x02ff
@..aztec_raise.l3:
    mov bx, word [bp + 0x6]          ; 0x0302
    mov byte [bx + si], 0            ; 0x0305
    push word [bp + 0x6]             ; 0x0308
    call loc_026d                    ; 0x030b
    pop cx                           ; 0x030e
    pop si                           ; 0x030f
    pop di                           ; 0x0310
    mov sp, bp                       ; 0x0311
    pop bp                           ; 0x0313
    ret                              ; 0x0314
