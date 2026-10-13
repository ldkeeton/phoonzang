; auto-generated
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x402d
    call aztec_csav                  ; 0x4030
    mov word [bp - 0x0002], 0        ; 0x4033
@..api_idx_0002_7.l1:
    mov ax, 0x248                    ; 0x4038
    imul word [bp + 0x4]             ; 0x403b
    add ax, word [bp - 0x0002]       ; 0x403e
    mov bx, ax                       ; 0x4041
    mov al, byte [bx + 0x5d64]       ; 0x4043
    sub ah, ah                       ; 0x4047
    push ax                          ; 0x4049
    mov bx, word [bp + 0x6]          ; 0x404a
    mov si, word [bp - 0x0002]       ; 0x404d
    mov al, byte [bx + si]           ; 0x4050
    cbw                              ; 0x4052
    mov cx, ax                       ; 0x4053
    add ax, strict word 0xffbf       ; 0x4055
    mov cx, ax                       ; 0x4058
    pop ax                           ; 0x405a
    cmp ax, cx                       ; 0x405b
    jge short @..api_idx_0002_7.l2   ; 0x405d
    mov al, byte [bx + si]           ; 0x405f
    add al, 0xbf                     ; 0x4061
    push ax                          ; 0x4063
    mov ax, 0x248                    ; 0x4064
    imul word [bp + 0x4]             ; 0x4067
    mov cx, ax                       ; 0x406a
    add ax, si                       ; 0x406c
    mov bx, ax                       ; 0x406e
    pop ax                           ; 0x4070
    mov byte [bx + 0x5d64], al       ; 0x4071
@..api_idx_0002_7.l2:
    inc word [bp - 0x0002]           ; 0x4075
    mov ax, word [bp - 0x0002]       ; 0x4078
    cmp ax, strict word 8            ; 0x407b
    jl short @..api_idx_0002_7.l1    ; 0x407e
    ret                              ; 0x4080
