; auto-generated
api_idx_0006:
    mov ax, 0xfffa                   ; 0x030c
    call aztec_csav                  ; 0x030f
    mov ax, word [bp + 0x8]          ; 0x0312
    xchg al, ah                      ; 0x0315
    sub al, al                       ; 0x0317
    mov dx, word [bp + 0xa]          ; 0x0319
    mov cx, 4                        ; 0x031c
    shl dx, cl                       ; 0x031f
    mov cx, dx                       ; 0x0321
    add ax, cx                       ; 0x0323
    add ax, word [bp + 0xc]          ; 0x0325
    mov word [bp - 0x0004], ax       ; 0x0328
    mov ax, word [bss_0e10]          ; 0x032b
    mov word [bp - 0x0006], ax       ; 0x032e
    mov word [bp - 0x0002], 0        ; 0x0331
    jmp short @..api_idx_0006.l5     ; 0x0336
@..api_idx_0006.l1:
    mov bx, word [bp - 0x0006]       ; 0x0338
    mov al, byte [bx]                ; 0x033b
    sub ah, ah                       ; 0x033d
    cmp ax, word [bp + 0x4]          ; 0x033f
    jne short @..api_idx_0006.l4     ; 0x0342
    mov al, byte [bx + 0x1]          ; 0x0344
    sub ah, ah                       ; 0x0347
    cmp ax, word [bp + 0x6]          ; 0x0349
    jne short @..api_idx_0006.l4     ; 0x034c
    cmp word [bp + 0x6], byte 6      ; 0x034e
    jne short @..api_idx_0006.l3     ; 0x0352
    mov ax, word [bx + 0x2]          ; 0x0354
    cmp ax, word [bp + 0x8]          ; 0x0357
    jne short @..api_idx_0006.l2     ; 0x035a
    mov ax, word [bp - 0x0002]       ; 0x035c
    ret                              ; 0x035f
@..api_idx_0006.l2:
    jmp short @..api_idx_0006.l4     ; 0x0360
@..api_idx_0006.l3:
    mov ax, word [bx + 0x2]          ; 0x0362
    cmp ax, word [bp - 0x0004]       ; 0x0365
    jne short @..api_idx_0006.l4     ; 0x0368
    mov ax, word [bp - 0x0002]       ; 0x036a
    ret                              ; 0x036d
@..api_idx_0006.l4:
    add word [bp - 0x0006], byte 6   ; 0x036e
    inc word [bp - 0x0002]           ; 0x0372
@..api_idx_0006.l5:
    mov ax, word [bp - 0x0002]       ; 0x0375
    cmp ax, word [bss_590e]          ; 0x0378
    jl short @..api_idx_0006.l1      ; 0x037c
    mov ax, 0xffff                   ; 0x037e
    ret                              ; 0x0381
