api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x54b4
    call ds_aztec_csav               ; 0x54b7
    mov al, byte [bp + 0x4]          ; 0x54ba
    push ax                          ; 0x54bd
    mov ax, 6                        ; 0x54be
    imul word [bp + 0x8]             ; 0x54c1
    mov bx, ax                       ; 0x54c4
    pop ax                           ; 0x54c6
    mov byte [bx - 0x7b5a], al       ; 0x54c7
    mov byte [bx - 0x7b59], 0        ; 0x54cb
    mov ax, 1                        ; 0x54d0
    push ax                          ; 0x54d3
    push word [bp + 0x8]             ; 0x54d4
    mov ax, 0x26                     ; 0x54d7
    imul word [bp + 0x4]             ; 0x54da
    add ax, 0x8502                   ; 0x54dd
    push ax                          ; 0x54e0
    call ds_leaf_loc_3e88            ; 0x54e1
    add sp, byte 6                   ; 0x54e4
    mov ax, 1                        ; 0x54e7
    push ax                          ; 0x54ea
    push word [bp + 0x8]             ; 0x54eb
    mov ax, 0x26                     ; 0x54ee
    imul word [bp + 0x4]             ; 0x54f1
    add ax, 0x850a                   ; 0x54f4
    push ax                          ; 0x54f7
    call ds_leaf_loc_3e88            ; 0x54f8
    add sp, byte 6                   ; 0x54fb
    mov word [bp - 0x0002], 0        ; 0x54fe
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x5503
    push ax                          ; 0x5506
    push word [bp + 0x8]             ; 0x5507
    mov ax, 0x26                     ; 0x550a
    imul word [bp - 0x0002]          ; 0x550d
    add ax, 0x8504                   ; 0x5510
    push ax                          ; 0x5513
    call ds_leaf_loc_3e88            ; 0x5514
    add sp, byte 6                   ; 0x5517
    inc word [bp - 0x0002]           ; 0x551a
    mov ax, word [bp - 0x0002]       ; 0x551d
    cmp ax, strict word 0x16         ; 0x5520
    jl short @..api_idx_0002_5.l1    ; 0x5523
    mov ax, 1                        ; 0x5525
    push ax                          ; 0x5528
    push word [bp + 0x8]             ; 0x5529
    mov ax, 0x26                     ; 0x552c
    imul word [bp + 0x4]             ; 0x552f
    add ax, 0x8504                   ; 0x5532
    push ax                          ; 0x5535
    call ds_leaf_loc_3e88            ; 0x5536
    add sp, byte 6                   ; 0x5539
    cmp word [bp + 0x6], byte 0xff   ; 0x553c
    je short @..api_idx_0002_5.l2    ; 0x5540
    mov ax, 0                        ; 0x5542
    push ax                          ; 0x5545
    push word [bp + 0x8]             ; 0x5546
    mov ax, 0x26                     ; 0x5549
    imul word [bp + 0x6]             ; 0x554c
    add ax, 0x8502                   ; 0x554f
    push ax                          ; 0x5552
    call ds_leaf_loc_3e88            ; 0x5553
    add sp, byte 6                   ; 0x5556
    mov ax, 1                        ; 0x5559
    push ax                          ; 0x555c
    push word [bp + 0x8]             ; 0x555d
    mov ax, 0x26                     ; 0x5560
    imul word [bp + 0x6]             ; 0x5563
    add ax, 0x8504                   ; 0x5566
    push ax                          ; 0x5569
    call ds_leaf_loc_3e88            ; 0x556a
    add sp, byte 6                   ; 0x556d
@..api_idx_0002_5.l2:
    ret                              ; 0x5570
