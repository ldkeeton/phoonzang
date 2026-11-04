; auto-generated
loc_MPOT:
    push bp                          ; 0x026d
    mov bp, sp                       ; 0x026e
    add sp, byte -2                  ; 0x0270
    push di                          ; 0x0273
    push si                          ; 0x0274
    mov di, 0                        ; 0x0275
    push word [bp + 4]               ; 0x0278
    call aztec_strlen                ; 0x027b
    pop cx                           ; 0x027e
    dec ax                           ; 0x027f
    mov word [bp - 2], ax            ; 0x0280
    jmp short .forward1              ; 0x0283
.back1:
    mov bx, word [bp + 4]            ; 0x0285
    mov al, byte [bx + di]           ; 0x0288
    cbw                              ; 0x028a
    mov si, ax                       ; 0x028b
    add bx, word [bp - 2]            ; 0x028d
    mov al, byte [bx]                ; 0x0290
    mov bx, word [bp + 4]            ; 0x0292
    mov byte [bx + di], al           ; 0x0295
    mov ax, si                       ; 0x0297
    mov cx, word [bp + 4]            ; 0x0299
    add cx, word [bp - 2]            ; 0x029c
    mov bx, cx                       ; 0x029f
    mov byte [bx], al                ; 0x02a1
    dec word [bp - 2]                ; 0x02a3
    inc di                           ; 0x02a6
.forward1:
    cmp di, word [bp - 2]            ; 0x02a7
    jl short .back1                  ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
