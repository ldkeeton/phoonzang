api_idx_00c2:
    mov ax, 0xff3e                   ; 0x54fb
    call ds_dispatch_f40b            ; 0x54fe
    mov ax, 0x248                    ; 0x5501
    imul word [bp + 0x4]             ; 0x5504
    push ax                          ; 0x5507
    mov ax, 0x78                     ; 0x5508
    imul word [api_idx_0016]         ; 0x550b
    mov cx, ax                       ; 0x550f
    pop ax                           ; 0x5511
    add ax, cx                       ; 0x5512
    push ax                          ; 0x5514
    mov ax, 0xc                      ; 0x5515
    imul word [bp + 0x6]             ; 0x5518
    mov cx, ax                       ; 0x551b
    pop ax                           ; 0x551d
    add ax, cx                       ; 0x551e
    mov bx, ax                       ; 0x5520
    mov al, byte [bx + 0x5c3b]       ; 0x5522
    sub ah, ah                       ; 0x5526
    test ax, data_0002               ; 0x5528
    je short @..api_idx_00c2.l2      ; 0x552b
    call api_idx_0056_2              ; 0x552d
    mov ax, 0x248                    ; 0x5530
    imul word [bp + 0x4]             ; 0x5533
    push ax                          ; 0x5536
    mov ax, 0x78                     ; 0x5537
    imul word [api_idx_0016]         ; 0x553a
    mov cx, ax                       ; 0x553e
    pop ax                           ; 0x5540
    add ax, cx                       ; 0x5541
    push ax                          ; 0x5543
    mov ax, 0xc                      ; 0x5544
    imul word [bp + 0x6]             ; 0x5547
    mov cx, ax                       ; 0x554a
    pop ax                           ; 0x554c
    add ax, cx                       ; 0x554d
    add ax, 0x5c34                   ; 0x554f
    push ax                          ; 0x5552
    push word [bp + 0x4]             ; 0x5553
    call api_idx_0048_2              ; 0x5556
    add sp, byte 4                   ; 0x5559
    mov word [bp - 0x0014], ax       ; 0x555c
    cmp word [bp - 0x0014], byte 0   ; 0x555f
    je short @..api_idx_00c2.l1      ; 0x5563
    push ax                          ; 0x5565
    push word [bp + 0x6]             ; 0x5566
    push word [api_idx_0016]         ; 0x5569
    push word [bp + 0x4]             ; 0x556d
    call api_idx_0010_2              ; 0x5570
    add sp, byte 8                   ; 0x5573
@..api_idx_00c2.l1:
    ret                              ; 0x5576
