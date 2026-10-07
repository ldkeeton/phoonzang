api_idx_0002_22:
    mov ax, 0xfffe                   ; 0x93ab
    call ds_dispatch_f40b            ; 0x93ae
    mov word [bp - 0x0002], 0        ; 0x93b1
@..api_idx_0002_22.l1:
    mov ax, 0xf                      ; 0x93b6
    imul word [bp + 0x4]             ; 0x93b9
    push ax                          ; 0x93bc
    mov ax, 3                        ; 0x93bd
    imul word [bp - 0x0002]          ; 0x93c0
    mov cx, ax                       ; 0x93c3
    pop ax                           ; 0x93c5
    add ax, cx                       ; 0x93c6
    mov bx, ax                       ; 0x93c8
    mov al, byte [bx - 0x77d4]       ; 0x93ca
    cbw                              ; 0x93ce
    cmp ax, word [bp + 0x6]          ; 0x93cf
    jne short @..api_idx_0002_22.l2  ; 0x93d2
    mov al, byte [bx - 0x77d3]       ; 0x93d4
    cbw                              ; 0x93d8
    cmp ax, word [bp + 0x8]          ; 0x93d9
    jne short @..api_idx_0002_22.l2  ; 0x93dc
    mov al, byte [bx - 0x77d2]       ; 0x93de
    cbw                              ; 0x93e2
    cmp ax, word [bp + 0xa]          ; 0x93e3
    jne short @..api_idx_0002_22.l2  ; 0x93e6
    ret                              ; 0x93e8
