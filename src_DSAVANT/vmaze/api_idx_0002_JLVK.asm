; auto-generated
api_idx_0002_JLVK:
    mov ax, 0xfffe                   ; 0x93ab
    call aztec_csav                  ; 0x93ae
    mov word [bp - 0x0002], 0        ; 0x93b1
@..api_idx_0002_JLVK.l1:
    mov ax, 0xf                      ; 0x93b6
    imul word [bp + 0x4]             ; 0x93b9
    push ax                          ; 0x93bc
    mov ax, 3                        ; 0x93bd
    imul word [bp - 0x0002]          ; 0x93c0
    mov cx, ax                       ; 0x93c3
    pop ax                           ; 0x93c5
    add ax, cx                       ; 0x93c6
    mov bx, ax                       ; 0x93c8
    mov al, byte [bx + bss_882c]     ; 0x93ca
    cbw                              ; 0x93ce
    cmp ax, word [bp + 0x6]          ; 0x93cf
    jne short @..api_idx_0002_JLVK.l2 ; 0x93d2
    mov al, byte [bx - 0x77d3]       ; 0x93d4
    cbw                              ; 0x93d8
    cmp ax, word [bp + 0x8]          ; 0x93d9
    jne short @..api_idx_0002_JLVK.l2 ; 0x93dc
    mov al, byte [bx - 0x77d2]       ; 0x93de
    cbw                              ; 0x93e2
    cmp ax, word [bp + 0xa]          ; 0x93e3
    jne short @..api_idx_0002_JLVK.l2 ; 0x93e6
    ret                              ; 0x93e8
@..api_idx_0002_JLVK.l2:
    inc word [bp - 0x0002]           ; 0x93e9
    mov ax, word [bp - 0x0002]       ; 0x93ec
    cmp ax, strict word 5            ; 0x93ef
    jl short @..api_idx_0002_JLVK.l1 ; 0x93f2
    mov al, byte [bp + 0x6]          ; 0x93f4
    push ax                          ; 0x93f7
    mov ax, 0xf                      ; 0x93f8
    imul word [bp + 0x4]             ; 0x93fb
    mov cx, ax                       ; 0x93fe
    mov ax, 0x26                     ; 0x9400
    imul word [bp + 0x4]             ; 0x9403
    mov bx, ax                       ; 0x9406
    mov al, byte [bx - 0x7b02]       ; 0x9408
    sub ah, ah                       ; 0x940c
    mov dx, 3                        ; 0x940e
    imul dx                          ; 0x9411
    mov dx, ax                       ; 0x9413
    add cx, ax                       ; 0x9415
    mov bx, cx                       ; 0x9417
    pop ax                           ; 0x9419
    mov byte [bx + bss_882c], al     ; 0x941a
    mov al, byte [bp + 0x8]          ; 0x941e
    mov byte [bx - 0x77d3], al       ; 0x9421
    mov al, byte [bp + 0xa]          ; 0x9425
    mov byte [bx - 0x77d2], al       ; 0x9428
    mov ax, 0x26                     ; 0x942c
    imul word [bp + 0x4]             ; 0x942f
    mov bx, ax                       ; 0x9432
    mov al, byte [bx - 0x7b02]       ; 0x9434
    sub ah, ah                       ; 0x9438
    inc ax                           ; 0x943a
    mov cx, 5                        ; 0x943b
    cwd                              ; 0x943e
    idiv cx                          ; 0x943f
    mov ax, dx                       ; 0x9441
    mov byte [bx - 0x7b02], al       ; 0x9443
    ret                              ; 0x9447
