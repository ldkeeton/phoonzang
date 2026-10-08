api_idx_000a:
    mov ax, 0xfff6                   ; 0x0456
    call ds_dispatch_f40b            ; 0x0459
    mov ax, word [bp + 0x4]          ; 0x045c
    shl ax, 1                        ; 0x045f
    mov bx, ax                       ; 0x0461
    mov bx, word [bx - 0x7b7e]       ; 0x0463
    cmp byte [bx + 0x19f], 0xff      ; 0x0467
    jne short @..api_idx_000a.l1     ; 0x046c
    ret                              ; 0x046e
@..api_idx_000a.l1:
    mov al, byte [bx + 0x19f]        ; 0x046f
    cbw                              ; 0x0473
    mov word [bp - 0x0002], ax       ; 0x0474
    mov word [bp - 0x000a], 0        ; 0x0477
    cmp word [bp + 0xa], byte 0xff   ; 0x047c
    jne short @..api_idx_000a.l2     ; 0x0480
    mov word [bp + 0xa], 0           ; 0x0482
    mov cx, 0x15e                    ; 0x0487
    imul cx                          ; 0x048a
    mov bx, ax                       ; 0x048c
    mov al, byte [bx + 0x6b75]       ; 0x048e
    sub ah, ah                       ; 0x0492
    cmp ax, 0xfe                     ; 0x0494
    je short @..api_idx_000a.l2      ; 0x0497
    mov word [bp - 0x000a], 1        ; 0x0499
@..api_idx_000a.l2:
    mov ax, 0x15e                    ; 0x049e
    imul word [bp - 0x0002]          ; 0x04a1
    add ax, word [bp + 0xa]          ; 0x04a4
    mov bx, ax                       ; 0x04a7
    mov al, byte [bx + 0x6a1a]       ; 0x04a9
    sub ah, ah                       ; 0x04ad
    mov word [bp - 0x0004], ax       ; 0x04af
    jmp near @..api_idx_000a.l8      ; 0x04b2
