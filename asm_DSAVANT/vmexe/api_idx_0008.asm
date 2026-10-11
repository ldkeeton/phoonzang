api_idx_0008:
    mov ax, 0xfff8                   ; 0x0257
    call ds_dispatch_f40b            ; 0x025a
    push word [bp + 0x4]             ; 0x025d
    call ds_dispatch_ca85            ; 0x0260
    pop cx                           ; 0x0263
    test ax, ax                      ; 0x0264
    jne short @..api_idx_0008.l1     ; 0x0266
    jmp near @..api_idx_0008.l4      ; 0x0268
@..api_idx_0008.l1:
    mov ax, 0x2c                     ; 0x026b
    imul word [bp + 0x4]             ; 0x026e
    mov si, ax                       ; 0x0271
    mov bx, word [dseg_8482]         ; 0x0273
    cmp byte [bx + si + 0x2b], 1     ; 0x0277
    je short @..api_idx_0008.l2      ; 0x027b
    cmp byte [bx + si + 0x2b], 3     ; 0x027d
    je short @..api_idx_0008.l2      ; 0x0281
    jmp near @..api_idx_0008.l4      ; 0x0283
@..api_idx_0008.l2:
    mov ax, 0                        ; 0x0286
    push ax                          ; 0x0289
    push word [bp + 0x4]             ; 0x028a
    call ds_dispatch_cb3a            ; 0x028d
    add sp, byte 4                   ; 0x0290
    mov ax, word [bp + 0x4]          ; 0x0293
    mov cx, 2                        ; 0x0296
    cwd                              ; 0x0299
    idiv cx                          ; 0x029a
    mov ax, dx                       ; 0x029c
    mov cx, 0xfc                     ; 0x029e
    imul cx                          ; 0x02a1
    add ax, strict word 5            ; 0x02a3
    mov word [bp - 0x0006], ax       ; 0x02a6
    mov ax, word [bp + 0x4]          ; 0x02a9
    mov cx, 2                        ; 0x02ac
    cwd                              ; 0x02af
    idiv cx                          ; 0x02b0
    mov cx, 0x2d                     ; 0x02b2
    imul cx                          ; 0x02b5
    add ax, strict word 0x12         ; 0x02b7
    mov word [bp - 0x0008], ax       ; 0x02ba
    add ax, strict word 0x15         ; 0x02bd
    push ax                          ; 0x02c0
    mov ax, word [bp - 0x0006]       ; 0x02c1
    add ax, strict word 0x1c         ; 0x02c4
    push ax                          ; 0x02c7
    call ds_dispatch_e809            ; 0x02c8
    add sp, byte 4                   ; 0x02cb
    mov ax, 6                        ; 0x02ce
    push ax                          ; 0x02d1
    mov ax, 0xb                      ; 0x02d2
    push ax                          ; 0x02d5
    call ds_dispatch_e830            ; 0x02d6
    add sp, byte 4                   ; 0x02d9
    cmp word [bp + 0x6], byte 0      ; 0x02dc
    je short @..api_idx_0008.l3      ; 0x02e0
    mov ax, word [bp - 0x0008]       ; 0x02e2
    add ax, strict word 0x2b         ; 0x02e5
    push ax                          ; 0x02e8
    mov ax, word [bp - 0x0006]       ; 0x02e9
    add ax, strict word 0x3b         ; 0x02ec
    push ax                          ; 0x02ef
    push word [bp - 0x0008]          ; 0x02f0
    push word [bp - 0x0006]          ; 0x02f3
    call ds_dispatch_e8da            ; 0x02f6
    add sp, byte 8                   ; 0x02f9
@..api_idx_0008.l3:
    jmp short @..api_idx_0008.l5     ; 0x02fc
@..api_idx_0008.l4:
    push word [bp + 0x6]             ; 0x02fe
    push word [bp + 0x4]             ; 0x0301
    call ds_dispatch_cb3a            ; 0x0304
    add sp, byte 4                   ; 0x0307
@..api_idx_0008.l5:
    ret                              ; 0x030a
