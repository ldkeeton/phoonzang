api_idx_003a:
    mov ax, 0xffc6                   ; 0x94ef
    call ds_dispatch_f40b            ; 0x94f2
    mov ax, 0                        ; 0x94f5
    push ax                          ; 0x94f8
    mov ax, 0x34                     ; 0x94f9
    push ax                          ; 0x94fc
    lea ax, word [bp - 0x003a]       ; 0x94fd
    push ax                          ; 0x9500
    call ds_dispatch_f306            ; 0x9501
    add sp, byte 6                   ; 0x9504
    mov word [bp - 0x003a], 1        ; 0x9507
    mov word [bp - 0x0038], 1        ; 0x950c
    mov word [bp - 0x0036], 1        ; 0x9511
    mov word [bp - 0x0030], 1        ; 0x9516
    mov word [bp - 0x002c], 1        ; 0x951b
    mov word [bp - 0x0002], 0        ; 0x9520
@..api_idx_003a.l1:
    mov ax, word [bp - 0x0002]       ; 0x9525
    shl ax, 1                        ; 0x9528
    shl ax, 1                        ; 0x952a
    mov bx, ax                       ; 0x952c
    cmp byte [bx - 0x7688], 0x1b     ; 0x952e
    jne short @..api_idx_003a.l2     ; 0x9533
    mov byte [bx - 0x7688], 8        ; 0x9535
@..api_idx_003a.l2:
    push word [bp - 0x0002]          ; 0x953a
    mov ax, 0x26                     ; 0x953d
    imul word [bp + 0x4]             ; 0x9540
    add ax, 0x8506                   ; 0x9543
    push ax                          ; 0x9546
    call ds_dispatch_ec74            ; 0x9547
    add sp, byte 4                   ; 0x954a
    test ax, ax                      ; 0x954d
    je short @..api_idx_003a.l3      ; 0x954f
    mov ax, word [bp - 0x0002]       ; 0x9551
    shl ax, 1                        ; 0x9554
    shl ax, 1                        ; 0x9556
    mov bx, ax                       ; 0x9558
    mov al, byte [bx - 0x7688]       ; 0x955a
    sub ah, ah                       ; 0x955e
    shl ax, 1                        ; 0x9560
    mov bx, ax                       ; 0x9562
    add bx, bp                       ; 0x9564
    mov word [bx - 0x003a], 1        ; 0x9566
@..api_idx_003a.l3:
    inc word [bp - 0x0002]           ; 0x956b
    mov ax, word [bp - 0x0002]       ; 0x956e
    cmp ax, strict word 0x1a         ; 0x9571
    jl short @..api_idx_003a.l1      ; 0x9574
    mov word [bp - 0x0002], 0        ; 0x9576
@..api_idx_003a.l4:
    push word [bp - 0x0002]          ; 0x957b
    mov ax, 0x26                     ; 0x957e
    imul word [bp + 0x4]             ; 0x9581
    add ax, 0x8506                   ; 0x9584
    push ax                          ; 0x9587
    call ds_dispatch_ec74            ; 0x9588
    add sp, byte 4                   ; 0x958b
    test ax, ax                      ; 0x958e
    je short @..api_idx_003a.l5      ; 0x9590
    mov ax, word [bp - 0x0002]       ; 0x9592
    shl ax, 1                        ; 0x9595
    mov bx, ax                       ; 0x9597
    add bx, bp                       ; 0x9599
    mov word [bx - 0x003a], 2        ; 0x959b
@..api_idx_003a.l5:
    inc word [bp - 0x0002]           ; 0x95a0
    mov ax, word [bp - 0x0002]       ; 0x95a3
    cmp ax, strict word 0x1a         ; 0x95a6
    jl short @..api_idx_003a.l4      ; 0x95a9
    push word [bp + 0x4]             ; 0x95ab
    call math_loc_94a6               ; 0x95ae
    pop cx                           ; 0x95b1
    test ax, ax                      ; 0x95b2
    je short @..api_idx_003a.l6      ; 0x95b4
    ret                              ; 0x95b6
