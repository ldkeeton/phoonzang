; auto-generated
api_idx_003a_HOUV:
    mov ax, 0xffc6                   ; 0x94ef
    call aztec_csav                  ; 0x94f2
    mov ax, 0                        ; 0x94f5
    push ax                          ; 0x94f8
    mov ax, 0x34                     ; 0x94f9
    push ax                          ; 0x94fc
    lea ax, word [bp - 0x3a]         ; 0x94fd
    push ax                          ; 0x9500
    call aztec_setmem                ; 0x9501
    add sp, byte 6                   ; 0x9504
    mov word [bp - 0x3a], 1          ; 0x9507
    mov word [bp - 0x38], 1          ; 0x950c
    mov word [bp - 0x36], 1          ; 0x9511
    mov word [bp - 0x30], 1          ; 0x9516
    mov word [bp - 0x2c], 1          ; 0x951b
    mov word [bp - 2], 0             ; 0x9520
@..api_idx_003a_HOUV.l1:
    mov ax, word [bp - 2]            ; 0x9525
    shl ax, 1                        ; 0x9528
    shl ax, 1                        ; 0x952a
    mov bx, ax                       ; 0x952c
    cmp byte [bx + bss_8976 + rec_8976.f_0002], 0x1b ; 0x952e
    jne short @..api_idx_003a_HOUV.l2 ; 0x9533
    mov byte [bx + bss_8976 + rec_8976.f_0002], 8 ; 0x9535
@..api_idx_003a_HOUV.l2:
    push word [bp - 2]               ; 0x953a
    mov ax, 0x26                     ; 0x953d
    imul word [bp + 4]               ; 0x9540
    add ax, slot_records + slot_record.selected_bits + 0x2 ; 0x9543
    push ax                          ; 0x9546
    call test_bit                    ; 0x9547
    add sp, byte 4                   ; 0x954a
    test ax, ax                      ; 0x954d
    je short @..api_idx_003a_HOUV.l3 ; 0x954f
    mov ax, word [bp - 2]            ; 0x9551
    shl ax, 1                        ; 0x9554
    shl ax, 1                        ; 0x9556
    mov bx, ax                       ; 0x9558
    mov al, byte [bx + bss_8976 + rec_8976.f_0002] ; 0x955a
    sub ah, ah                       ; 0x955e
    shl ax, 1                        ; 0x9560
    mov bx, ax                       ; 0x9562
    add bx, bp                       ; 0x9564
    mov word [bx - 0x3a], 1          ; 0x9566
@..api_idx_003a_HOUV.l3:
    inc word [bp - 2]                ; 0x956b
    mov ax, word [bp - 2]            ; 0x956e
    cmp ax, strict word 0x1a         ; 0x9571
    jl short @..api_idx_003a_HOUV.l1 ; 0x9574
    mov word [bp - 2], 0             ; 0x9576
@..api_idx_003a_HOUV.l4:
    push word [bp - 2]               ; 0x957b
    mov ax, 0x26                     ; 0x957e
    imul word [bp + 4]               ; 0x9581
    add ax, slot_records + slot_record.selected_bits + 0x2 ; 0x9584
    push ax                          ; 0x9587
    call test_bit                    ; 0x9588
    add sp, byte 4                   ; 0x958b
    test ax, ax                      ; 0x958e
    je short @..api_idx_003a_HOUV.l5 ; 0x9590
    mov ax, word [bp - 2]            ; 0x9592
    shl ax, 1                        ; 0x9595
    mov bx, ax                       ; 0x9597
    add bx, bp                       ; 0x9599
    mov word [bx - 0x3a], 2          ; 0x959b
@..api_idx_003a_HOUV.l5:
    inc word [bp - 2]                ; 0x95a0
    mov ax, word [bp - 2]            ; 0x95a3
    cmp ax, strict word 0x1a         ; 0x95a6
    jl short @..api_idx_003a_HOUV.l4 ; 0x95a9
    push word [bp + 4]               ; 0x95ab
    call loc_LGQU                    ; 0x95ae
    pop cx                           ; 0x95b1
    test ax, ax                      ; 0x95b2
    je short @..api_idx_003a_HOUV.l6 ; 0x95b4
    ret                              ; 0x95b6
@..api_idx_003a_HOUV.l6:
    mov ax, 0x1a                     ; 0x95b7
    push ax                          ; 0x95ba
    call random_below                ; 0x95bb
    pop cx                           ; 0x95be
    mov word [bp - 2], ax            ; 0x95bf
    shl ax, 1                        ; 0x95c2
    shl ax, 1                        ; 0x95c4
    mov bx, ax                       ; 0x95c6
    mov al, byte [bx + bss_8976]     ; 0x95c8
    sub ah, ah                       ; 0x95cc
    mov word [bp - 4], ax            ; 0x95ce
    mov ax, 0                        ; 0x95d1
    cmp word [bp - 4], byte 0        ; 0x95d4
    jle short @..api_idx_003a_HOUV.l7 ; 0x95d8
    mov ax, 0x26                     ; 0x95da
    imul word [bp + 4]               ; 0x95dd
    mov bx, ax                       ; 0x95e0
    mov al, byte [bx + slot_records] ; 0x95e2
    sub ah, ah                       ; 0x95e6
    mov cx, 0xc                      ; 0x95e8
    imul cx                          ; 0x95eb
    add ax, word [bp - 4]            ; 0x95ed
    mov bx, ax                       ; 0x95f0
    mov al, byte [bx + target_weight] ; 0x95f2
    cbw                              ; 0x95f6
@..api_idx_003a_HOUV.l7:
    mov word [bp - 6], ax            ; 0x95f7
    mov ax, word [bp - 2]            ; 0x95fa
    shl ax, 1                        ; 0x95fd
    mov bx, ax                       ; 0x95ff
    add bx, bp                       ; 0x9601
    cmp word [bx - 0x3a], byte 0     ; 0x9603
    je short @..api_idx_003a_HOUV.l6 ; 0x9607
    mov ax, 0x64                     ; 0x9609
    push ax                          ; 0x960c
    call random_below                ; 0x960d
    pop cx                           ; 0x9610
    add ax, word [bp - 6]            ; 0x9611
    cmp ax, strict word 0xffdd       ; 0x9614
    jl short @..api_idx_003a_HOUV.l6 ; 0x9617
    mov ax, 4                        ; 0x9619
    push ax                          ; 0x961c
    call random_below                ; 0x961d
    pop cx                           ; 0x9620
    test ax, ax                      ; 0x9621
    je short @..api_idx_003a_HOUV.l8 ; 0x9623
    push word [bp - 2]               ; 0x9625
    mov ax, 0x26                     ; 0x9628
    imul word [bp + 4]               ; 0x962b
    add ax, slot_records + slot_record.selected_bits + 0x2 ; 0x962e
    push ax                          ; 0x9631
    call test_bit                    ; 0x9632
    add sp, byte 4                   ; 0x9635
    test ax, ax                      ; 0x9638
    je short @..api_idx_003a_HOUV.l8 ; 0x963a
    jmp near @..api_idx_003a_HOUV.l6 ; 0x963c
@..api_idx_003a_HOUV.l8:
    mov al, byte [bp - 2]            ; 0x963f
    push ax                          ; 0x9642
    mov ax, 0x26                     ; 0x9643
    imul word [bp + 4]               ; 0x9646
    mov bx, ax                       ; 0x9649
    pop ax                           ; 0x964b
    mov byte [bx + slot_records + slot_record.f_0003], al ; 0x964c
    push word [bp + 4]               ; 0x9650
    call loc_QJRN                    ; 0x9653
    pop cx                           ; 0x9656
    ret                              ; 0x9657
