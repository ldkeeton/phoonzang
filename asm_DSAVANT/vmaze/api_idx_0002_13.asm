api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x73b6
    call ds_dispatch_f40b            ; 0x73b9
    mov ax, word [data_8d12]         ; 0x73bc
    shl ax, 1                        ; 0x73bf
    mov si, ax                       ; 0x73c1
    mov bx, word [data_0e12]         ; 0x73c3
    mov ax, word [bx + si]           ; 0x73c7
    mov word [bp - 0x0002], ax       ; 0x73c9
    jmp short @..api_idx_0002_13.l1  ; 0x73cc
    mov ax, 0x11                     ; 0x73ce
    push ax                          ; 0x73d1
    call loc_6ac7                    ; 0x73d2
    pop cx                           ; 0x73d5
    push word [data_8d12]            ; 0x73d6
    call api_idx_0004_10             ; 0x73da
    pop cx                           ; 0x73dd
    jmp short @..api_idx_0002_13.l2  ; 0x73de
    mov ax, 0x804                    ; 0x73e0
    push ax                          ; 0x73e3
    call api_idx_0050                ; 0x73e4
    pop cx                           ; 0x73e7
    mov ax, 8                        ; 0x73e8
    push ax                          ; 0x73eb
    db 0xe8, 0xf1, 0x43 ; call ds_dispatch_b7e0
    pop cx                           ; 0x73ef
    mov ax, 8                        ; 0x73f0
    push ax                          ; 0x73f3
    call api_idx_0006_2              ; 0x73f4
    pop cx                           ; 0x73f7
    mov word [data_91b2], 1          ; 0x73f8
    push word [data_8d12]            ; 0x73fe
    call api_idx_0004_10             ; 0x7402
    pop cx                           ; 0x7405
    jmp short @..api_idx_0002_13.l2  ; 0x7406
    mov ax, 8                        ; 0x7408
    push ax                          ; 0x740b
    db 0xe8, 0xd1, 0x43 ; call ds_dispatch_b7e0
    pop cx                           ; 0x740f
    push word [data_8d12]            ; 0x7410
    call api_idx_0004_10             ; 0x7414
    pop cx                           ; 0x7417
    jmp short @..api_idx_0002_13.l2  ; 0x7418
    sbb ax, 0x15c4                   ; 0x741a
    les sp, word [bx]                ; 0x741d
    les di, word [si - 0x003c]       ; 0x741f
    dec di                           ; 0x7422
    les cx, word [bx - 0x003c]       ; 0x7423
    dec di                           ; 0x7426
    db 0xc4
@..api_idx_0002_13.l1:
    cmp ax, strict word 7            ; 0x7428
    jae short @..api_idx_0002_13.l2  ; 0x742b
    xchg bx, ax                      ; 0x742d
    shl bx, 1                        ; 0x742e
    jmp [cs:bx - 0x3b9f]             ; 0x7430
@..api_idx_0002_13.l2:
    ret                              ; 0x7435
