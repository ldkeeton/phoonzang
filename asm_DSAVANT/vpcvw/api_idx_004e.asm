api_idx_004e:
    mov ax, 0xffb2                   ; 0x42e3
    call ds_aztec_csav               ; 0x42e6
    mov ax, 0                        ; 0x42e9
    push ax                          ; 0x42ec
    mov bx, word [bp + 0x4]          ; 0x42ed
    push word [bx]                   ; 0x42f0
    lea ax, word [bp - 0x004a]       ; 0x42f2
    push ax                          ; 0x42f5
    mov ax, 1                        ; 0x42f6
    push ax                          ; 0x42f9
    call ds_app_file_0883            ; 0x42fa
    add sp, byte 8                   ; 0x42fd
    mov bx, word [bp + 0x6]          ; 0x4300
    mov al, byte [bx + 0x6]          ; 0x4303
    sub ah, ah                       ; 0x4306
    push ax                          ; 0x4308
    mov bx, word [bp + 0x4]          ; 0x4309
    mov al, byte [bx + 0x6]          ; 0x430c
    sub ah, ah                       ; 0x430f
    mov cx, ax                       ; 0x4311
    pop ax                           ; 0x4313
    add ax, cx                       ; 0x4314
    cmp ax, word [bp - 0x0024]       ; 0x4316
    jge short @..api_idx_004e.l1     ; 0x4319
    jmp short @..api_idx_004e.l2     ; 0x431b
@..api_idx_004e.l1:
    mov ax, word [bp - 0x0024]       ; 0x431d
@..api_idx_004e.l2:
    mov word [bp - 0x004c], ax       ; 0x4320
    push ax                          ; 0x4323
    mov al, byte [bx + 0x6]          ; 0x4324
    sub ah, ah                       ; 0x4327
    mov cx, ax                       ; 0x4329
    pop ax                           ; 0x432b
    sub ax, cx                       ; 0x432c
    mov word [bp - 0x004e], ax       ; 0x432e
    mov al, byte [bx + 0x6]          ; 0x4331
    sub ah, ah                       ; 0x4334
    mov cx, ax                       ; 0x4336
    mov ax, word [bp - 0x004e]       ; 0x4338
    add cx, ax                       ; 0x433b
    mov ax, cx                       ; 0x433d
    mov byte [bx + 0x6], al          ; 0x433f
    mov bx, word [bp + 0x6]          ; 0x4342
    mov al, byte [bx + 0x6]          ; 0x4345
    sub ah, ah                       ; 0x4348
    sub ax, word [bp - 0x004e]       ; 0x434a
    mov byte [bx + 0x6], al          ; 0x434d
    cmp byte [bx + 0x6], 0           ; 0x4350
    ja short @..api_idx_004e.l3      ; 0x4354
    mov word [bx], 0                 ; 0x4356
@..api_idx_004e.l3:
    ret                              ; 0x435a
