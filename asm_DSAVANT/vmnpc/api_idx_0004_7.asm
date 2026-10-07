api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x22e7
    db 0xe8, 0x1e, 0xd1 ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x22ed
@..api_idx_0004_7.l1:
    mov word [bp - 0x0004], 0        ; 0x22f2
@..api_idx_0004_7.l2:
    mov ax, 0x248                    ; 0x22f7
    imul word [bp + 0x4]             ; 0x22fa
    push ax                          ; 0x22fd
    mov ax, 0x78                     ; 0x22fe
    imul word [bp - 0x0002]          ; 0x2301
    mov cx, ax                       ; 0x2304
    pop ax                           ; 0x2306
    add ax, cx                       ; 0x2307
    push ax                          ; 0x2309
    mov ax, 0xc                      ; 0x230a
    imul word [bp - 0x0004]          ; 0x230d
    mov cx, ax                       ; 0x2310
    pop ax                           ; 0x2312
    add ax, cx                       ; 0x2313
    mov bx, ax                       ; 0x2315
    cmp word [bx + 0x5c34], byte 0   ; 0x2317
    jne short @..api_idx_0004_7.l3   ; 0x231c
    mov ax, word [bp - 0x0002]       ; 0x231e
    xchg al, ah                      ; 0x2321
    sub al, al                       ; 0x2323
    add ax, word [bp - 0x0004]       ; 0x2325
    ret                              ; 0x2328
