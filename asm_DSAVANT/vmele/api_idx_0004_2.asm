api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x02c2
    call ds_dispatch_f40b            ; 0x02c5
    mov word [bp - 0x0004], 0x20     ; 0x02c8
    mov word [bp - 0x0002], 0        ; 0x02cd
    jmp short @..api_idx_0004_2.l3   ; 0x02d2
@..api_idx_0004_2.l1:
    cmp word [bp - 0x0004], byte 0x20 ; 0x02d4
    je short @..api_idx_0004_2.l2    ; 0x02d8
    mov bx, word [bp + 0x4]          ; 0x02da
    mov si, word [bp - 0x0002]       ; 0x02dd
    cmp byte [bx + si], 0x41         ; 0x02e0
    jb short @..api_idx_0004_2.l2    ; 0x02e3
    cmp byte [bx + si], 0x5a         ; 0x02e5
    ja short @..api_idx_0004_2.l2    ; 0x02e8
    add byte [bx + si], 0x20         ; 0x02ea
@..api_idx_0004_2.l2:
    mov bx, word [bp + 0x4]          ; 0x02ed
    mov si, word [bp - 0x0002]       ; 0x02f0
    mov al, byte [bx + si]           ; 0x02f3
    sub ah, ah                       ; 0x02f5
    mov word [bp - 0x0004], ax       ; 0x02f7
    inc word [bp - 0x0002]           ; 0x02fa
@..api_idx_0004_2.l3:
    push word [bp + 0x4]             ; 0x02fd
    call ds_dispatch_fa90            ; 0x0300
    pop cx                           ; 0x0303
    cmp ax, word [bp - 0x0002]       ; 0x0304
    jg short @..api_idx_0004_2.l1    ; 0x0307
    ret                              ; 0x0309
