; auto-generated
api_idx_0002_SLJI:
    mov ax, 0xfffe                   ; 0x4270
    call aztec_csav                  ; 0x4273
    mov ax, word [bp + 0x6]          ; 0x4276
    shl ax, 1                        ; 0x4279
    mov bx, ax                       ; 0x427b
    mov ax, word [bx - 0x6a10]       ; 0x427d
    cwd                              ; 0x4281
    idiv word [bp + 0x8]             ; 0x4282
    push ax                          ; 0x4285
    mov ax, 0x248                    ; 0x4286
    imul word [bp + 0x4]             ; 0x4289
    mov bx, ax                       ; 0x428c
    mov ax, word [bx + 0x5c18]       ; 0x428e
    dec ax                           ; 0x4292
    mov cx, 2                        ; 0x4293
    cwd                              ; 0x4296
    idiv cx                          ; 0x4297
    mov cx, ax                       ; 0x4299
    pop ax                           ; 0x429b
    sub ax, cx                       ; 0x429c
    mov word [bp - 0x0002], ax       ; 0x429e
    add bx, word [bp + 0xa]          ; 0x42a1
    mov al, byte [bx + 0x5d6c]       ; 0x42a4
    sub ah, ah                       ; 0x42a8
    push ax                          ; 0x42aa
    mov ax, 0x248                    ; 0x42ab
    imul word [bp + 0x4]             ; 0x42ae
    mov bx, ax                       ; 0x42b1
    mov cx, word [bx + 0x5c18]       ; 0x42b3
    shl cx, 1                        ; 0x42b7
    shl cx, 1                        ; 0x42b9
    shl cx, 1                        ; 0x42bb
    pop ax                           ; 0x42bd
    cmp ax, cx                       ; 0x42be
    jle short @..api_idx_0002_SLJI.l1 ; 0x42c0
    mov word [bp - 0x0002], 0        ; 0x42c2
@..api_idx_0002_SLJI.l1:
    add ax, word [bp - 0x0002]       ; 0x42c7
    cmp ax, strict word 0x64         ; 0x42ca
    jle short @..api_idx_0002_SLJI.l2 ; 0x42cd
    mov word [bp - 0x0002], 0        ; 0x42cf
@..api_idx_0002_SLJI.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x42d4
    jge short @..api_idx_0002_SLJI.l3 ; 0x42d8
    mov word [bp - 0x0002], 0        ; 0x42da
@..api_idx_0002_SLJI.l3:
    mov ax, word [bp + 0x6]          ; 0x42df
    shl ax, 1                        ; 0x42e2
    mov bx, ax                       ; 0x42e4
    mov ax, word [bx - 0x6a10]       ; 0x42e6
    cmp ax, word [bp - 0x0002]       ; 0x42ea
    jge short @..api_idx_0002_SLJI.l4 ; 0x42ed
    mov word [bp - 0x0002], ax       ; 0x42ef
@..api_idx_0002_SLJI.l4:
    mov ax, word [bp - 0x0002]       ; 0x42f2
    sub word [bx - 0x6a10], ax       ; 0x42f5
    mov al, byte [bp - 0x0002]       ; 0x42f9
    push ax                          ; 0x42fc
    mov ax, 0x248                    ; 0x42fd
    imul word [bp + 0x4]             ; 0x4300
    mov cx, ax                       ; 0x4303
    add ax, word [bp + 0xa]          ; 0x4305
    mov bx, ax                       ; 0x4308
    pop ax                           ; 0x430a
    add byte [bx + 0x5d6c], al       ; 0x430b
    ret                              ; 0x430f
