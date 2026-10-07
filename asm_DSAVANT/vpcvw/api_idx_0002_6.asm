api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x4573
    call ds_dispatch_f40b            ; 0x4576
    mov word [bp - 0x0002], 0xffff   ; 0x4579
    mov bx, word [bp + 0x6]          ; 0x457e
    mov al, byte [bx + 0x38]         ; 0x4581
    sub ah, ah                       ; 0x4584
    jmp near @..api_idx_0002_6.l1    ; 0x4586
    mov word [bp - 0x0002], 0        ; 0x4589
    mov bx, word [bp + 0x6]          ; 0x458e
    mov al, byte [bx + 0x37]         ; 0x4591
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 8                       ; 0x4596
    je short loc_45a0                ; 0x4599
    mov word [bp - 0x0002], 0xfffe   ; 0x459b
    jmp near @..api_idx_0002_6.l2    ; 0x45a0
    mov word [bp - 0x0002], 1        ; 0x45a3
    jmp near @..api_idx_0002_6.l2    ; 0x45a8
    mov word [bp - 0x0002], data_0002 ; 0x45ab
    jmp short @..api_idx_0002_6.l2   ; 0x45b0
    mov word [bp - 0x0002], 3        ; 0x45b2
    jmp short @..api_idx_0002_6.l2   ; 0x45b7
    mov word [bp - 0x0002], 4        ; 0x45b9
    jmp short @..api_idx_0002_6.l2   ; 0x45be
    mov word [bp - 0x0002], 5        ; 0x45c0
    jmp short @..api_idx_0002_6.l2   ; 0x45c5
    mov word [bp - 0x0002], 6        ; 0x45c7
    jmp short @..api_idx_0002_6.l2   ; 0x45cc
    mov word [bp - 0x0002], 7        ; 0x45ce
    jmp short @..api_idx_0002_6.l2   ; 0x45d3
    mov word [bp - 0x0002], 1        ; 0x45d5
    jmp short @..api_idx_0002_6.l2   ; 0x45da
    mov bx, word [bp + 0x6]          ; 0x45dc
    mov al, byte [bx + 0x37]         ; 0x45df
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 8                       ; 0x45e4
    je short loc_45ee                ; 0x45e7
    mov word [bp - 0x0002], 1        ; 0x45e9
    jmp short @..api_idx_0002_6.l2   ; 0x45ee
    rcl byte [di - 0x6a30], 1        ; 0x45f0
    rcl byte [di - 0x6a30], 1        ; 0x45f4
    jmp far 0xf995:0xf295            ; 0x45f8
    xchg bp, ax                      ; 0x45fd
    add byte [bp - 0x69f9], dl       ; 0x45fe
    push cs                          ; 0x4602
    xchg si, ax                      ; 0x4603
    adc ax, 0x1c96                   ; 0x4604
    xchg si, ax                      ; 0x4607
    rcl byte [di - 0x69dd], 1        ; 0x4608
    and dx, word [bp - 0x69dd]       ; 0x460c
    db 0xd0, 0x95
@..api_idx_0002_6.l1:
    cmp ax, strict word 0x11         ; 0x4612
    jae short @..api_idx_0002_6.l2   ; 0x4615
    xchg bx, ax                      ; 0x4617
    shl bx, 1                        ; 0x4618
    jmp [cs:bx - 0x69c9]             ; 0x461a
@..api_idx_0002_6.l2:
    mov ax, 0x248                    ; 0x461f
    imul word [bp + 0x4]             ; 0x4622
    mov bx, ax                       ; 0x4625
    mov al, byte [bx + 0x5e2d]       ; 0x4627
    sub ah, ah                       ; 0x462b
    push ax                          ; 0x462d
    mov ax, word [bp + 0x6]          ; 0x462e
    add ax, strict word 0x32         ; 0x4631
    push ax                          ; 0x4634
    call ds_dispatch_ec74            ; 0x4635
    add sp, byte 4                   ; 0x4638
    cmp ax, strict word 1            ; 0x463b
    jne short @..api_idx_0002_6.l3   ; 0x463e
    mov ax, 0x248                    ; 0x4640
    imul word [bp + 0x4]             ; 0x4643
    mov bx, ax                       ; 0x4646
    mov al, byte [bx + 0x5e2b]       ; 0x4648
    sub ah, ah                       ; 0x464c
    push ax                          ; 0x464e
    mov ax, word [bp + 0x6]          ; 0x464f
    add ax, strict word 0x34         ; 0x4652
    push ax                          ; 0x4655
    call ds_dispatch_ec74            ; 0x4656
    add sp, byte 4                   ; 0x4659
    cmp ax, strict word 1            ; 0x465c
    jne short @..api_idx_0002_6.l3   ; 0x465f
    mov ax, 0x248                    ; 0x4661
    imul word [bp + 0x4]             ; 0x4664
    mov bx, ax                       ; 0x4667
    mov al, byte [bx + 0x5e2c]       ; 0x4669
    sub ah, ah                       ; 0x466d
    push ax                          ; 0x466f
    mov ax, word [bp + 0x6]          ; 0x4670
    add ax, strict word 0x36         ; 0x4673
    push ax                          ; 0x4676
    call ds_dispatch_ec74            ; 0x4677
    add sp, byte 4                   ; 0x467a
    cmp ax, strict word 1            ; 0x467d
    je short @..api_idx_0002_6.l4    ; 0x4680
@..api_idx_0002_6.l3:
    mov word [bp - 0x0002], 0xffff   ; 0x4682
@..api_idx_0002_6.l4:
    mov ax, word [bp - 0x0002]       ; 0x4687
    ret                              ; 0x468a
