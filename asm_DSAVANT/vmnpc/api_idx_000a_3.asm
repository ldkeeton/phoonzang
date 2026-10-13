api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x93e7
    call ds_aztec_csav               ; 0x93ea
    mov ax, word [bp + 0x4]          ; 0x93ed
    mov word [bp - 0x000a], ax       ; 0x93f0
    mov word [bp - 0x0006], 0        ; 0x93f3
    mov word [bp - 0x0004], 1        ; 0x93f8
@..api_idx_000a_3.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x93fd
    jne short @..api_idx_000a_3.l2   ; 0x9401
    jmp near @..api_idx_000a_3.l22   ; 0x9403
@..api_idx_000a_3.l2:
    mov bx, word [bp - 0x000a]       ; 0x9406
    mov al, byte [bx]                ; 0x9409
    sub ah, ah                       ; 0x940b
    jmp near @..api_idx_000a_3.l14   ; 0x940d
@..api_idx_000a_3.l3:
    mov ax, 0                        ; 0x9410
    push ax                          ; 0x9413
    mov ax, 0xa4                     ; 0x9414
    push ax                          ; 0x9417
    mov ax, 0x12e                    ; 0x9418
    push ax                          ; 0x941b
    call ds_loc_4338                 ; 0x941c
    add sp, byte 6                   ; 0x941f
    mov ax, 0                        ; 0x9422
    mov dx, 0                        ; 0x9425
    push dx                          ; 0x9428
    push ax                          ; 0x9429
    call ds_app_io_0af6              ; 0x942a
    add sp, byte 4                   ; 0x942d
@..api_idx_000a_3.l4:
    call ds_app_0d36                 ; 0x9430
    test ax, ax                      ; 0x9433
    jne short @..api_idx_000a_3.l5   ; 0x9435
    call api_idx_0006_2              ; 0x9437
    jmp short @..api_idx_000a_3.l4   ; 0x943a
@..api_idx_000a_3.l5:
    push word [bss_0e2c]             ; 0x943c
    push word [bss_0e2a]             ; 0x9440
    call ds_app_io_0af6              ; 0x9444
    add sp, byte 4                   ; 0x9447
    mov ax, 0                        ; 0x944a
    push ax                          ; 0x944d
    mov ax, 0xa4                     ; 0x944e
    push ax                          ; 0x9451
    mov ax, 0x12e                    ; 0x9452
    push ax                          ; 0x9455
    call ds_loc_432b                 ; 0x9456
    add sp, byte 6                   ; 0x9459
    mov bx, word [bp - 0x000a]       ; 0x945c
    cmp byte [bx], 0x40              ; 0x945f
    jne short @..api_idx_000a_3.l6   ; 0x9462
    call api_idx_0004_2              ; 0x9464
    call api_idx_0004_2              ; 0x9467
    mov word [bp - 0x0006], 0        ; 0x946a
@..api_idx_000a_3.l6:
    inc word [bp - 0x000a]           ; 0x946f
    jmp near @..api_idx_000a_3.l21   ; 0x9472
@..api_idx_000a_3.l7:
    mov ax, 1                        ; 0x9475
    push ax                          ; 0x9478
    mov ax, 0x36                     ; 0x9479
    push ax                          ; 0x947c
    call api_idx_0004_5              ; 0x947d
    add sp, byte 4                   ; 0x9480
    inc word [bp - 0x000a]           ; 0x9483
    jmp near @..api_idx_000a_3.l21   ; 0x9486
@..api_idx_000a_3.l8:
    call api_idx_0004_2              ; 0x9489
    mov word [bp - 0x0006], 0        ; 0x948c
    inc word [bp - 0x000a]           ; 0x9491
    jmp near @..api_idx_000a_3.l21   ; 0x9494
@..api_idx_000a_3.l9:
    push word [bp + 0x6]             ; 0x9497
    mov ax, word [bss_93d4]          ; 0x949a
    mov cx, 7                        ; 0x949d
    shl ax, cl                       ; 0x94a0
    add ax, 0x91cc                   ; 0x94a2
    push ax                          ; 0x94a5
    call ds_aztec_strcpy             ; 0x94a6
    add sp, byte 4                   ; 0x94a9
    mov ax, word [bss_93d4]          ; 0x94ac
    shl ax, 1                        ; 0x94af
    mov bx, ax                       ; 0x94b1
    mov word [bx - 0x6c34], 2        ; 0x94b3
    call api_idx_000e_2              ; 0x94b9
    mov bx, word [bp + 0x6]          ; 0x94bc
    mov byte [bx], 0                 ; 0x94bf
    mov word [bp - 0x0006], 1        ; 0x94c2
    inc word [bp - 0x000a]           ; 0x94c7
    jmp near @..api_idx_000a_3.l21   ; 0x94ca
@..api_idx_000a_3.l10:
    mov word [bp - 0x0002], 0        ; 0x94cd
@..api_idx_000a_3.l11:
    mov ax, word [bp - 0x0002]       ; 0x94d2
    mov cx, 7                        ; 0x94d5
    shl ax, cl                       ; 0x94d8
    mov bx, ax                       ; 0x94da
    mov byte [bx - 0x6e34], 0        ; 0x94dc
    mov ax, word [bp - 0x0002]       ; 0x94e1
    shl ax, 1                        ; 0x94e4
    mov bx, ax                       ; 0x94e6
    mov word [bx - 0x6c34], 0        ; 0x94e8
    inc word [bp - 0x0002]           ; 0x94ee
    mov ax, word [bp - 0x0002]       ; 0x94f1
    cmp ax, strict word 4            ; 0x94f4
    jl short @..api_idx_000a_3.l11   ; 0x94f7
    mov word [bss_93d4], 0           ; 0x94f9
    mov word [bp - 0x0006], 0        ; 0x94ff
    mov ax, 3                        ; 0x9504
    push ax                          ; 0x9507
    call api_idx_0006                ; 0x9508
    pop cx                           ; 0x950b
    mov ax, 3                        ; 0x950c
    push ax                          ; 0x950f
    call loc_0c96                    ; 0x9510
    pop cx                           ; 0x9513
    inc word [bp - 0x000a]           ; 0x9514
    jmp short @..api_idx_000a_3.l21  ; 0x9517
@..api_idx_000a_3.l12:
    inc word [bp - 0x000a]           ; 0x9519
    mov bx, word [bp - 0x000a]       ; 0x951c
    mov al, byte [bx]                ; 0x951f
    sub ah, ah                       ; 0x9521
    mov word [bp - 0x0008], ax       ; 0x9523
    push ax                          ; 0x9526
    call loc_742e                    ; 0x9527
    pop cx                           ; 0x952a
    inc word [bp - 0x000a]           ; 0x952b
    jmp short @..api_idx_000a_3.l21  ; 0x952e
@..api_idx_000a_3.l13:
    mov word [bp - 0x0004], 0        ; 0x9530
    jmp short @..api_idx_000a_3.l21  ; 0x9535
@..api_idx_000a_3.l14:
    cmp ax, strict word 0x21         ; 0x9537
    jne short @..api_idx_000a_3.l15  ; 0x953a
    jmp near @..api_idx_000a_3.l8    ; 0x953c
@..api_idx_000a_3.l15:
    cmp ax, strict word 0x25         ; 0x953f
    jne short @..api_idx_000a_3.l16  ; 0x9542
    jmp near @..api_idx_000a_3.l7    ; 0x9544
@..api_idx_000a_3.l16:
    cmp ax, strict word 0x26         ; 0x9547
    jne short @..api_idx_000a_3.l17  ; 0x954a
    jmp near @..api_idx_000a_3.l9    ; 0x954c
@..api_idx_000a_3.l17:
    cmp ax, strict word 0x40         ; 0x954f
    jne short @..api_idx_000a_3.l18  ; 0x9552
    jmp near @..api_idx_000a_3.l3    ; 0x9554
@..api_idx_000a_3.l18:
    cmp ax, strict word 0x5b         ; 0x9557
    jne short @..api_idx_000a_3.l19  ; 0x955a
    jmp near @..api_idx_000a_3.l3    ; 0x955c
@..api_idx_000a_3.l19:
    cmp ax, strict word 0x5d         ; 0x955f
    jne short @..api_idx_000a_3.l20  ; 0x9562
    jmp near @..api_idx_000a_3.l10   ; 0x9564
@..api_idx_000a_3.l20:
    cmp ax, strict word 0x7e         ; 0x9567
    je short @..api_idx_000a_3.l12   ; 0x956a
    jmp short @..api_idx_000a_3.l13  ; 0x956c
@..api_idx_000a_3.l21:
    jmp near @..api_idx_000a_3.l1    ; 0x956e
@..api_idx_000a_3.l22:
    cmp word [bp - 0x0006], byte 0   ; 0x9571
    je short @..api_idx_000a_3.l23   ; 0x9575
    call api_idx_0004_2              ; 0x9577
@..api_idx_000a_3.l23:
    push word [bp - 0x000a]          ; 0x957a
    push word [bp + 0x4]             ; 0x957d
    call ds_aztec_strcpy             ; 0x9580
    add sp, byte 4                   ; 0x9583
    ret                              ; 0x9586
loc_9587:
    mov ax, 0xfea8                   ; 0x9587
    call ds_aztec_csav               ; 0x958a
    mov ax, word [bp + 0x4]          ; 0x958d
    mov word [bp - 0x0008], ax       ; 0x9590
    push ax                          ; 0x9593
    call ds_aztec_strlen             ; 0x9594
    pop cx                           ; 0x9597
    mov word [bp - 0x0004], ax       ; 0x9598
    mov bx, word [bp + 0x4]          ; 0x959b
    mov si, ax                       ; 0x959e
    mov byte [bx + si + 0x1], 0      ; 0x95a0
    mov byte [bp - 0x0088], 0        ; 0x95a4
@..loc_9587.l1:
    mov bx, word [bp - 0x0008]       ; 0x95a9
    cmp byte [bx], 0                 ; 0x95ac
    jne short @..loc_9587.l2         ; 0x95af
    jmp near @..loc_9587.l7          ; 0x95b1
@..loc_9587.l2:
    mov ax, 0x20                     ; 0x95b4
    push ax                          ; 0x95b7
    push bx                          ; 0x95b8
    call ds_strlen                   ; 0x95b9
    add sp, byte 4                   ; 0x95bc
    mov word [bp - 0x0002], ax       ; 0x95bf
    push ax                          ; 0x95c2
    cmp ax, strict word 0            ; 0x95c3
    pop ax                           ; 0x95c6
    jge short @..loc_9587.l3         ; 0x95c7
    push word [bp - 0x0008]          ; 0x95c9
    call ds_aztec_strlen             ; 0x95cc
    pop cx                           ; 0x95cf
@..loc_9587.l3:
    mov word [bp - 0x0006], ax       ; 0x95d0
    push ax                          ; 0x95d3
    push word [bp - 0x0008]          ; 0x95d4
    lea ax, word [bp - 0x0158]       ; 0x95d7
    push ax                          ; 0x95db
    call aztec_strncpy               ; 0x95dc
    add sp, byte 6                   ; 0x95df
    mov bx, word [bp - 0x0006]       ; 0x95e2
    add bx, bp                       ; 0x95e5
    mov byte [bx - 0x0158], 0        ; 0x95e7
    lea ax, word [bp - 0x0088]       ; 0x95ec
    push ax                          ; 0x95f0
    lea ax, word [bp - 0x0158]       ; 0x95f1
    push ax                          ; 0x95f5
    call api_idx_000a_3              ; 0x95f6
    add sp, byte 4                   ; 0x95f9
    lea ax, word [bp - 0x0088]       ; 0x95fc
    push ax                          ; 0x9600
    lea ax, word [bp - 0x0108]       ; 0x9601
    push ax                          ; 0x9605
    call ds_aztec_strcpy             ; 0x9606
    add sp, byte 4                   ; 0x9609
    cmp byte [bp - 0x0088], 0        ; 0x960c
    je short @..loc_9587.l4          ; 0x9611
    mov ax, 0x90ee                   ; 0x9613
    push ax                          ; 0x9616
    lea ax, word [bp - 0x0108]       ; 0x9617
    push ax                          ; 0x961b
    call ds_string_loc_4574          ; 0x961c
    add sp, byte 4                   ; 0x961f
@..loc_9587.l4:
    lea ax, word [bp - 0x0158]       ; 0x9622
    push ax                          ; 0x9626
    lea ax, word [bp - 0x0108]       ; 0x9627
    push ax                          ; 0x962b
    call ds_string_loc_4574          ; 0x962c
    add sp, byte 4                   ; 0x962f
    mov ax, 2                        ; 0x9632
    push ax                          ; 0x9635
    lea ax, word [bp - 0x0108]       ; 0x9636
    push ax                          ; 0x963a
    call ds_loc_3aca                 ; 0x963b
    add sp, byte 4                   ; 0x963e
    mov word [bp - 0x0004], ax       ; 0x9641
    cmp ax, 0xb8                     ; 0x9644
    jle short @..loc_9587.l5         ; 0x9647
    lea ax, word [bp - 0x0088]       ; 0x9649
    push ax                          ; 0x964d
    mov ax, word [bss_93d4]          ; 0x964e
    mov cx, 7                        ; 0x9651
    shl ax, cl                       ; 0x9654
    add ax, 0x91cc                   ; 0x9656
    push ax                          ; 0x9659
    call ds_aztec_strcpy             ; 0x965a
    add sp, byte 4                   ; 0x965d
    mov ax, word [bss_93d4]          ; 0x9660
    shl ax, 1                        ; 0x9663
    mov bx, ax                       ; 0x9665
    mov word [bx - 0x6c34], 2        ; 0x9667
    call api_idx_000e_2              ; 0x966d
    call api_idx_0004_2              ; 0x9670
    lea ax, word [bp - 0x0158]       ; 0x9673
    push ax                          ; 0x9677
    lea ax, word [bp - 0x0088]       ; 0x9678
    push ax                          ; 0x967c
    call ds_aztec_strcpy             ; 0x967d
    add sp, byte 4                   ; 0x9680
    jmp short @..loc_9587.l6         ; 0x9683
@..loc_9587.l5:
    lea ax, word [bp - 0x0108]       ; 0x9685
    push ax                          ; 0x9689
    lea ax, word [bp - 0x0088]       ; 0x968a
    push ax                          ; 0x968e
    call ds_aztec_strcpy             ; 0x968f
    add sp, byte 4                   ; 0x9692
@..loc_9587.l6:
    mov ax, word [bp - 0x0006]       ; 0x9695
    add word [bp - 0x0008], ax       ; 0x9698
    add word [bp - 0x0008], byte 1   ; 0x969b
    jmp near @..loc_9587.l1          ; 0x969f
@..loc_9587.l7:
    lea ax, word [bp - 0x0088]       ; 0x96a2
    push ax                          ; 0x96a6
    mov ax, word [bss_93d4]          ; 0x96a7
    mov cx, 7                        ; 0x96aa
    shl ax, cl                       ; 0x96ad
    add ax, 0x91cc                   ; 0x96af
    push ax                          ; 0x96b2
    call ds_aztec_strcpy             ; 0x96b3
    add sp, byte 4                   ; 0x96b6
    mov ax, word [bss_93d4]          ; 0x96b9
    shl ax, 1                        ; 0x96bc
    mov bx, ax                       ; 0x96be
    mov word [bx - 0x6c34], 2        ; 0x96c0
    ret                              ; 0x96c6
