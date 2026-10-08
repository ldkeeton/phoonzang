api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0504
    call ds_dispatch_f40b            ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov bx, ax                       ; 0x050f
    mov bx, word [bx - 0x7b7e]       ; 0x0511
    cmp byte [bx + 0x19f], 0xff      ; 0x0515
    jne short @..api_idx_000a_2.l1   ; 0x051a
    ret                              ; 0x051c
@..api_idx_000a_2.l1:
    mov al, byte [bx + 0x19f]        ; 0x051d
    cbw                              ; 0x0521
    mov word [bp - 0x0002], ax       ; 0x0522
    mov word [bp - 0x000a], 0        ; 0x0525
    cmp word [bp + 0xa], byte 0xff   ; 0x052a
    jne short @..api_idx_000a_2.l2   ; 0x052e
    mov word [bp + 0xa], 0           ; 0x0530
    mov cx, 0x15e                    ; 0x0535
    imul cx                          ; 0x0538
    mov bx, ax                       ; 0x053a
    mov al, byte [bx + 0x6b75]       ; 0x053c
    sub ah, ah                       ; 0x0540
    cmp ax, 0xfe                     ; 0x0542
    je short @..api_idx_000a_2.l2    ; 0x0545
    mov word [bp - 0x000a], 1        ; 0x0547
@..api_idx_000a_2.l2:
    mov ax, 0x15e                    ; 0x054c
    imul word [bp - 0x0002]          ; 0x054f
    add ax, word [bp + 0xa]          ; 0x0552
    mov bx, ax                       ; 0x0555
    mov al, byte [bx + 0x6a1a]       ; 0x0557
    sub ah, ah                       ; 0x055b
    mov word [bp - 0x0004], ax       ; 0x055d
    jmp near @..api_idx_000a_2.l8    ; 0x0560
