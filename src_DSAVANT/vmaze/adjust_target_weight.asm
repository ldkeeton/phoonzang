; auto-generated
adjust_target_weight:
    mov ax, 0                        ; 0x9658
    call aztec_csav                  ; 0x965b
    mov ax, 0x64                     ; 0x965e
    push ax                          ; 0x9661
    mov ax, 0xff9c                   ; 0x9662
    push ax                          ; 0x9665
    mov ax, 0x26                     ; 0x9666
    imul word [bp + 4]               ; 0x9669
    mov bx, ax                       ; 0x966c
    mov al, byte [bx + slot_records] ; 0x966e
    sub ah, ah                       ; 0x9672
    mov cx, 0xc                      ; 0x9674
    imul cx                          ; 0x9677
    push ax                          ; 0x9679
    mov ax, 0x26                     ; 0x967a
    imul word [bp + 6]               ; 0x967d
    mov bx, ax                       ; 0x9680
    mov al, byte [bx + slot_records] ; 0x9682
    sub ah, ah                       ; 0x9686
    mov cx, ax                       ; 0x9688
    pop ax                           ; 0x968a
    add ax, cx                       ; 0x968b
    mov bx, ax                       ; 0x968d
    mov al, byte [bx + target_weight] ; 0x968f
    cbw                              ; 0x9693
    add ax, word [bp + 8]            ; 0x9694
    push ax                          ; 0x9697
    call clamp_between               ; 0x9698
    add sp, byte 6                   ; 0x969b
    push ax                          ; 0x969e
    mov ax, 0x26                     ; 0x969f
    imul word [bp + 4]               ; 0x96a2
    mov bx, ax                       ; 0x96a5
    mov al, byte [bx + slot_records] ; 0x96a7
    sub ah, ah                       ; 0x96ab
    mov cx, 0xc                      ; 0x96ad
    imul cx                          ; 0x96b0
    mov cx, ax                       ; 0x96b2
    mov ax, 0x26                     ; 0x96b4
    imul word [bp + 6]               ; 0x96b7
    mov bx, ax                       ; 0x96ba
    mov al, byte [bx + slot_records] ; 0x96bc
    sub ah, ah                       ; 0x96c0
    mov dx, ax                       ; 0x96c2
    add cx, ax                       ; 0x96c4
    mov bx, cx                       ; 0x96c6
    pop ax                           ; 0x96c8
    mov byte [bx + target_weight], al ; 0x96c9
    ret                              ; 0x96cd
