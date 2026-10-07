api_idx_0004_15:
    mov ax, 0xfffc                   ; 0x96ce
    call ds_dispatch_f40b            ; 0x96d1
    mov ax, 0x26                     ; 0x96d4
    imul word [bp + 0x4]             ; 0x96d7
    mov bx, ax                       ; 0x96da
    mov al, byte [bx - 0x7b15]       ; 0x96dc
    sub ah, ah                       ; 0x96e0
    push ax                          ; 0x96e2
    push word [bp + 0x4]             ; 0x96e3
    call math_loc_9448               ; 0x96e6
    add sp, byte 4                   ; 0x96e9
    test ax, ax                      ; 0x96ec
    je short @..api_idx_0004_15.l1   ; 0x96ee
    mov ax, 0x26                     ; 0x96f0
    imul word [bp + 0x4]             ; 0x96f3
    mov bx, ax                       ; 0x96f6
    mov al, byte [bx - 0x7b15]       ; 0x96f8
    sub ah, ah                       ; 0x96fc
    push ax                          ; 0x96fe
    add bx, strict word 0x8506       ; 0x96ff
    mov ax, bx                       ; 0x9703
    push ax                          ; 0x9705
    call ds_dispatch_ec74            ; 0x9706
    add sp, byte 4                   ; 0x9709
    test ax, ax                      ; 0x970c
    jne short @..api_idx_0004_15.l1  ; 0x970e
    mov ax, 0x26                     ; 0x9710
    imul word [bp + 0x4]             ; 0x9713
    mov bx, ax                       ; 0x9716
    mov al, byte [bx - 0x7b15]       ; 0x9718
    sub ah, ah                       ; 0x971c
    push ax                          ; 0x971e
    mov ax, 6                        ; 0x971f
    push ax                          ; 0x9722
    mov al, byte [bx - 0x7b15]       ; 0x9723
    sub ah, ah                       ; 0x9727
    push ax                          ; 0x9729
    push word [bp + 0x4]             ; 0x972a
    call api_idx_0002_22             ; 0x972d
    add sp, byte 8                   ; 0x9730
    mov ax, 0x26                     ; 0x9733
    imul word [bp + 0x4]             ; 0x9736
    mov bx, ax                       ; 0x9739
    mov byte [bx - 0x7b16], 2        ; 0x973b
    mov byte [bx - 0x7b13], 0        ; 0x9740
    ret                              ; 0x9745
