api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0382
    call ds_dispatch_f40b            ; 0x0385
    push word [bp + 0xc]             ; 0x0388
    push word [bp + 0xa]             ; 0x038b
    push word [bp + 0x8]             ; 0x038e
    push word [bp + 0x6]             ; 0x0391
    push word [bp + 0x4]             ; 0x0394
    call api_idx_0006                ; 0x0397
    add sp, byte 0x0a                ; 0x039a
    mov word [bp - 0x0002], ax       ; 0x039d
    cmp ax, strict word 0xffff       ; 0x03a0
    jne short @..api_idx_0004_3.l2   ; 0x03a3
    mov ax, word [dseg_590e]         ; 0x03a5
    mov word [bp - 0x0002], ax       ; 0x03a8
    inc word [dseg_590e]             ; 0x03ab
    mov ax, word [dseg_590e]         ; 0x03af
    cmp ax, 0x200                    ; 0x03b2
    jl short @..api_idx_0004_3.l2    ; 0x03b5
@..api_idx_0004_3.l1:
    mov ax, 0                        ; 0x03b7
    push ax                          ; 0x03ba
    call ds_dispatch_b7e0            ; 0x03bb
    pop cx                           ; 0x03be
    jmp short @..api_idx_0004_3.l1   ; 0x03bf
@..api_idx_0004_3.l2:
    mov ax, 6                        ; 0x03c1
    imul word [bp - 0x0002]          ; 0x03c4
    mov cx, ax                       ; 0x03c7
    mov ax, word [dseg_0e10]         ; 0x03c9
    add ax, cx                       ; 0x03cc
    mov word [bp - 0x0004], ax       ; 0x03ce
    mov al, byte [bp + 0x4]          ; 0x03d1
    mov bx, word [bp - 0x0004]       ; 0x03d4
    mov byte [bx], al                ; 0x03d7
    mov al, byte [bp + 0x6]          ; 0x03d9
    mov bx, word [bp - 0x0004]       ; 0x03dc
    mov byte [bx + 0x1], al          ; 0x03df
    mov ax, word [bp + 0x8]          ; 0x03e2
    xchg al, ah                      ; 0x03e5
    sub al, al                       ; 0x03e7
    mov dx, word [bp + 0xa]          ; 0x03e9
    mov cx, 4                        ; 0x03ec
    shl dx, cl                       ; 0x03ef
    mov cx, dx                       ; 0x03f1
    add ax, cx                       ; 0x03f3
    add ax, word [bp + 0xc]          ; 0x03f5
    mov bx, word [bp - 0x0004]       ; 0x03f8
    mov word [bx + 0x2], ax          ; 0x03fb
    mov ax, word [bp + 0x6]          ; 0x03fe
    jmp short @..api_idx_0004_3.l3   ; 0x0401
    mov ax, word [bp + 0xe]          ; 0x0403
    mov cx, 4                        ; 0x0406
    shl ax, cl                       ; 0x0409
    add ax, word [bp + 0x10]         ; 0x040b
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    mov dx, word [bp + 0x12]         ; 0x0412
    shl dx, cl                       ; 0x0415
    db 0x8b, 0xca ; mov cx, dx
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp + 0x14]         ; 0x041b
    mov bx, word [bp - 0x0004]       ; 0x041e
    mov word [bx + 0x4], ax          ; 0x0421
    jmp short @..api_idx_0004_3.l4   ; 0x0424
    mov ax, word [bp + 0xe]          ; 0x0426
    mov bx, word [bp - 0x0004]       ; 0x0429
    mov word [bx + 0x4], ax          ; 0x042c
    jmp short @..api_idx_0004_3.l4   ; 0x042f
    mov ax, word [bp + 0xe]          ; 0x0431
    db 0x86, 0xe0 ; xchg al, ah
    db 0x2a, 0xc0 ; sub al, al
    add ax, word [bp + 0x10]         ; 0x0438
    mov bx, word [bp - 0x0004]       ; 0x043b
    mov word [bx + 0x4], ax          ; 0x043e
    jmp short @..api_idx_0004_3.l4   ; 0x0441
    mov ax, word [bp + 0x8]          ; 0x0443
    mov bx, word [bp - 0x0004]       ; 0x0446
    mov word [bx + 0x2], ax          ; 0x0449
    mov ax, word [bp + 0xe]          ; 0x044c
    mov bx, word [bp - 0x0004]       ; 0x044f
    mov word [bx + 0x4], ax          ; 0x0452
    jmp short @..api_idx_0004_3.l4   ; 0x0455
    dec dx                           ; 0x0457
    push sp                          ; 0x0458
    insw                             ; 0x0459
    push sp                          ; 0x045a
    insw                             ; 0x045b
    push sp                          ; 0x045c
    insw                             ; 0x045d
    push sp                          ; 0x045e
    insw                             ; 0x045f
    push sp                          ; 0x0460
    js short loc_04b7                ; 0x0461
    db 0x8a, 0x54
@..api_idx_0004_3.l3:
    cmp ax, strict word 7            ; 0x0465
    jae short @..api_idx_0004_3.l4   ; 0x0468
    xchg bx, ax                      ; 0x046a
    shl bx, 1                        ; 0x046b
    jmp [cs:bx + 0x549e]             ; 0x046d
@..api_idx_0004_3.l4:
    ret                              ; 0x0472
