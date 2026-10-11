api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x35de
    call ds_dispatch_f40b            ; 0x35e1
    mov ax, 0                        ; 0x35e4
    push ax                          ; 0x35e7
    call api_idx_0008                ; 0x35e8
    pop cx                           ; 0x35eb
    mov word [bp - 0x0002], ax       ; 0x35ec
    cmp ax, strict word 0xffff       ; 0x35ef
    jne short @..api_idx_0004_6.l4   ; 0x35f2
    cmp word [dseg_5910], byte 0x7f  ; 0x35f4
    jl short @..api_idx_0004_6.l3    ; 0x35f9
    mov ax, 1                        ; 0x35fb
    push ax                          ; 0x35fe
    call api_idx_0008                ; 0x35ff
    pop cx                           ; 0x3602
    mov word [bp - 0x0002], ax       ; 0x3603
    cmp ax, strict word 0xffff       ; 0x3606
    jne short @..api_idx_0004_6.l2   ; 0x3609
@..api_idx_0004_6.l1:
    mov ax, 0                        ; 0x360b
    push ax                          ; 0x360e
    call ds_dispatch_b7e0            ; 0x360f
    pop cx                           ; 0x3612
    jmp short @..api_idx_0004_6.l1   ; 0x3613
@..api_idx_0004_6.l2:
    jmp short @..api_idx_0004_6.l4   ; 0x3615
@..api_idx_0004_6.l3:
    mov ax, word [dseg_5910]         ; 0x3617
    mov word [bp - 0x0002], ax       ; 0x361a
    inc word [dseg_5910]             ; 0x361d
@..api_idx_0004_6.l4:
    mov cx, word [bp - 0x0002]       ; 0x3621
    shl cx, 1                        ; 0x3624
    shl cx, 1                        ; 0x3626
    shl cx, 1                        ; 0x3628
    mov ax, word [dseg_0e0e]         ; 0x362a
    add ax, cx                       ; 0x362d
    mov word [bp - 0x0004], ax       ; 0x362f
    mov al, byte [dseg_830c]         ; 0x3632
    mov bx, word [bp - 0x0004]       ; 0x3635
    mov byte [bx], al                ; 0x3638
    mov bx, word [bp + 0x4]          ; 0x363a
    mov al, byte [bx + 0x7]          ; 0x363d
    mov bx, word [bp - 0x0004]       ; 0x3640
    mov byte [bx + 0x1], al          ; 0x3643
    mov ax, word [dseg_8f3e]         ; 0x3646
    xchg al, ah                      ; 0x3649
    sub al, al                       ; 0x364b
    mov dx, word [dseg_8f42]         ; 0x364d
    mov cx, 4                        ; 0x3651
    shl dx, cl                       ; 0x3654
    mov cx, dx                       ; 0x3656
    add ax, cx                       ; 0x3658
    add ax, word [dseg_8f40]         ; 0x365a
    mov bx, word [bp - 0x0004]       ; 0x365e
    mov word [bx + 0x2], ax          ; 0x3661
    mov bx, word [bp + 0x4]          ; 0x3664
    mov ax, word [bx]                ; 0x3667
    mov bx, word [bp - 0x0004]       ; 0x3669
    mov word [bx + 0x4], ax          ; 0x366c
    mov bx, word [bp + 0x4]          ; 0x366f
    mov al, byte [bx + 0x5]          ; 0x3672
    mov bx, word [bp - 0x0004]       ; 0x3675
    mov byte [bx + 0x7], al          ; 0x3678
    mov bx, word [bp + 0x4]          ; 0x367b
    mov al, byte [bx + 0x6]          ; 0x367e
    mov bx, word [bp - 0x0004]       ; 0x3681
    mov byte [bx + 0x6], al          ; 0x3684
    mov ax, 1                        ; 0x3687
    push ax                          ; 0x368a
    mov ax, word [dseg_8f3e]         ; 0x368b
    mov cx, 6                        ; 0x368e
    shl ax, cl                       ; 0x3691
    mov cx, word [dseg_8f40]         ; 0x3693
    shl cx, 1                        ; 0x3697
    shl cx, 1                        ; 0x3699
    shl cx, 1                        ; 0x369b
    add ax, cx                       ; 0x369d
    add ax, word [dseg_8f42]         ; 0x369f
    push ax                          ; 0x36a3
    mov ax, 0x8bfe                   ; 0x36a4
    push ax                          ; 0x36a7
    call ds_dispatch_ec41            ; 0x36a8
    add sp, byte 6                   ; 0x36ab
    ret                              ; 0x36ae
