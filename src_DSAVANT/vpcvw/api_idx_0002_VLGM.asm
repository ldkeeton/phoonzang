; auto-generated
api_idx_0002_VLGM:
    mov ax, 0xfffe                   ; 0x8f64
    call aztec_csav                  ; 0x8f67
    mov word [bp - 0x0002], 0        ; 0x8f6a
@..api_idx_0002_VLGM.l1:
    mov ax, 0x248                    ; 0x8f6f
    imul word [bp + 0x4]             ; 0x8f72
    add ax, word [bp - 0x0002]       ; 0x8f75
    mov bx, ax                       ; 0x8f78
    mov al, byte [bx + 0x5d64]       ; 0x8f7a
    sub ah, ah                       ; 0x8f7e
    push ax                          ; 0x8f80
    mov bx, word [bp + 0x6]          ; 0x8f81
    mov si, word [bp - 0x0002]       ; 0x8f84
    mov al, byte [bx + si]           ; 0x8f87
    cbw                              ; 0x8f89
    mov cx, ax                       ; 0x8f8a
    add ax, strict word 0xffbf       ; 0x8f8c
    mov cx, ax                       ; 0x8f8f
    pop ax                           ; 0x8f91
    cmp ax, cx                       ; 0x8f92
    jle short @..api_idx_0002_VLGM.l2 ; 0x8f94
    mov al, byte [bx + si]           ; 0x8f96
    add al, 0xbf                     ; 0x8f98
    push ax                          ; 0x8f9a
    mov ax, 0x248                    ; 0x8f9b
    imul word [bp + 0x4]             ; 0x8f9e
    mov cx, ax                       ; 0x8fa1
    add ax, si                       ; 0x8fa3
    mov bx, ax                       ; 0x8fa5
    pop ax                           ; 0x8fa7
    mov byte [bx + 0x5d64], al       ; 0x8fa8
@..api_idx_0002_VLGM.l2:
    inc word [bp - 0x0002]           ; 0x8fac
    mov ax, word [bp - 0x0002]       ; 0x8faf
    cmp ax, strict word 7            ; 0x8fb2
    jl short @..api_idx_0002_VLGM.l1 ; 0x8fb5
    ret                              ; 0x8fb7
