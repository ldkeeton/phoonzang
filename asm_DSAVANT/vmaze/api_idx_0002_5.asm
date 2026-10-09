api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x03ea
    call ds_dispatch_f40b            ; 0x03ed
    mov word [data_91a6], 0          ; 0x03f0
    mov ax, word [data_830c]         ; 0x03f6
    jmp short @..api_idx_0002_5.l1   ; 0x03f9
    mov word [bp - 0x0002], 1        ; 0x03fb
    jmp short @..api_idx_0002_5.l2   ; 0x0400
    mov word [bp - 0x0002], 2        ; 0x0402
    jmp short @..api_idx_0002_5.l2   ; 0x0407
    mov word [bp - 0x0002], 3        ; 0x0409
    jmp short @..api_idx_0002_5.l2   ; 0x040e
    mov word [data_91a6], 1          ; 0x0410
    mov word [bp - 0x0002], 4        ; 0x0416
    jmp short @..api_idx_0002_5.l2   ; 0x041b
    mov word [bp - 0x0002], 5        ; 0x041d
    jmp short @..api_idx_0002_5.l2   ; 0x0422
    mov word [bp - 0x0002], 6        ; 0x0424

    db 0xeb
    db 'MITITITITITITIT]TkTkTkTkTkTITPTBTPTBTPTPTPTPTdTBTBTdTBTWTdTBTBTPT'

@..api_idx_0002_5.l1:
    cmp ax, strict word 0x20         ; 0x046b
    jae short @..api_idx_0002_5.l2   ; 0x046e
    xchg bx, ax                      ; 0x0470
    shl bx, 1                        ; 0x0471
    jmp [cs:bx + 0x5472]             ; 0x0473
@..api_idx_0002_5.l2:
    cmp word [data_5b70], byte 0     ; 0x0478
    je short @..api_idx_0002_5.l3    ; 0x047d
    mov ax, word [bp - 0x0002]       ; 0x047f
    cmp ax, word [data_5b6e]         ; 0x0482
    jne short @..api_idx_0002_5.l3   ; 0x0486
    jmp near @..api_idx_0002_5.l5    ; 0x0488
@..api_idx_0002_5.l3:
    call ds_dispatch_c145            ; 0x048b
    mov ax, word [bp - 0x0002]       ; 0x048e
    mov word [data_5b6e], ax         ; 0x0491
    jmp near @..api_idx_0002_5.l4    ; 0x0494
    mov ax, 0                        ; 0x0497
    push ax                          ; 0x049a
    mov ax, 0x90a0                   ; 0x049b
    push ax                          ; 0x049e
    call api_idx_0002_4              ; 0x049f
    add sp, byte 4                   ; 0x04a2
    mov ax, 5                        ; 0x04a5
    push ax                          ; 0x04a8
    mov ax, 0x90ad                   ; 0x04a9
    push ax                          ; 0x04ac
    call api_idx_0002_4              ; 0x04ad
    add sp, byte 4                   ; 0x04b0
    mov ax, 5                        ; 0x04b3
    push ax                          ; 0x04b6
    mov ax, 6                        ; 0x04b7
    push ax                          ; 0x04ba
    db 0xe8, 0x5e, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04be
    mov ax, 9                        ; 0x04c1
    push ax                          ; 0x04c4
    mov ax, 0xf                      ; 0x04c5
    push ax                          ; 0x04c8
    db 0xe8, 0x50, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04cc
    mov ax, 0xa                      ; 0x04cf
    push ax                          ; 0x04d2
    mov ax, 0x10                     ; 0x04d3
    push ax                          ; 0x04d6
    db 0xe8, 0x42, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04da
    mov ax, 0xd                      ; 0x04dd
    push ax                          ; 0x04e0
    mov ax, 0x39                     ; 0x04e1
    push ax                          ; 0x04e4
    db 0xe8, 0x34, 0xd1 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x04e8
    mov word [data_5b6c], 0          ; 0x04eb
    jmp near @..api_idx_0002_5.l5    ; 0x04f1
    mov ax, 1                        ; 0x04f4
    push ax                          ; 0x04f7
    mov ax, 0x90ba                   ; 0x04f8
    push ax                          ; 0x04fb
    call api_idx_0002_4              ; 0x04fc
    add sp, byte 4                   ; 0x04ff
    mov ax, 4                        ; 0x0502
    push ax                          ; 0x0505
    mov ax, 0x90c7                   ; 0x0506
    push ax                          ; 0x0509
    call api_idx_0002_4              ; 0x050a
    add sp, byte 4                   ; 0x050d
    mov ax, 6                        ; 0x0510
    push ax                          ; 0x0513
    mov ax, 0x90d4                   ; 0x0514
    push ax                          ; 0x0517
    call api_idx_0002_4              ; 0x0518
    add sp, byte 4                   ; 0x051b
    mov ax, 0xd                      ; 0x051e
    push ax                          ; 0x0521
    mov ax, 0x3a                     ; 0x0522
    push ax                          ; 0x0525
    db 0xe8, 0xf3, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0529
    mov word [data_5b6c], 1          ; 0x052c
    jmp near @..api_idx_0002_5.l5    ; 0x0532
    mov ax, 2                        ; 0x0535
    push ax                          ; 0x0538
    mov ax, 0x90e1                   ; 0x0539
    push ax                          ; 0x053c
    call api_idx_0002_4              ; 0x053d
    add sp, byte 4                   ; 0x0540
    mov ax, 4                        ; 0x0543
    push ax                          ; 0x0546
    mov ax, 0x90ee                   ; 0x0547
    push ax                          ; 0x054a
    call api_idx_0002_4              ; 0x054b
    add sp, byte 4                   ; 0x054e
    mov ax, 5                        ; 0x0551
    push ax                          ; 0x0554
    mov ax, 0x90fb                   ; 0x0555
    push ax                          ; 0x0558
    call api_idx_0002_4              ; 0x0559
    add sp, byte 4                   ; 0x055c
    mov ax, 6                        ; 0x055f
    push ax                          ; 0x0562
    mov ax, 0x9108                   ; 0x0563
    push ax                          ; 0x0566
    call api_idx_0002_4              ; 0x0567
    add sp, byte 4                   ; 0x056a
    mov ax, 5                        ; 0x056d
    push ax                          ; 0x0570
    mov ax, 8                        ; 0x0571
    push ax                          ; 0x0574
    db 0xe8, 0xa4, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0578
    mov ax, 0xa                      ; 0x057b
    push ax                          ; 0x057e
    mov ax, 0x10                     ; 0x057f
    push ax                          ; 0x0582
    db 0xe8, 0x96, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0586
    mov ax, 0xb                      ; 0x0589
    push ax                          ; 0x058c
    mov ax, 0x11                     ; 0x058d
    push ax                          ; 0x0590
    db 0xe8, 0x88, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0594
    mov ax, 0xc                      ; 0x0597
    push ax                          ; 0x059a
    mov ax, 0x3b                     ; 0x059b
    push ax                          ; 0x059e
    db 0xe8, 0x7a, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x05a2
    mov word [data_5b6c], 2          ; 0x05a5
    jmp near @..api_idx_0002_5.l5    ; 0x05ab
    mov ax, 1                        ; 0x05ae
    push ax                          ; 0x05b1
    mov ax, 0x9115                   ; 0x05b2
    push ax                          ; 0x05b5
    call api_idx_0002_4              ; 0x05b6
    add sp, byte 4                   ; 0x05b9
    mov ax, 4                        ; 0x05bc
    push ax                          ; 0x05bf
    mov ax, 0x9122                   ; 0x05c0
    push ax                          ; 0x05c3
    call api_idx_0002_4              ; 0x05c4
    add sp, byte 4                   ; 0x05c7
    mov ax, 0xd                      ; 0x05ca
    push ax                          ; 0x05cd
    mov ax, 0x3a                     ; 0x05ce
    push ax                          ; 0x05d1
    db 0xe8, 0x47, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x05d5
    mov word [data_5b6c], 1          ; 0x05d8
    jmp near @..api_idx_0002_5.l5    ; 0x05de
    mov ax, 2                        ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, 0x912f                   ; 0x05e5
    push ax                          ; 0x05e8
    call api_idx_0002_4              ; 0x05e9
    add sp, byte 4                   ; 0x05ec
    mov ax, 4                        ; 0x05ef
    push ax                          ; 0x05f2
    mov ax, 0x913c                   ; 0x05f3
    push ax                          ; 0x05f6
    call api_idx_0002_4              ; 0x05f7
    add sp, byte 4                   ; 0x05fa
    mov ax, 5                        ; 0x05fd
    push ax                          ; 0x0600
    mov ax, 0x9149                   ; 0x0601
    push ax                          ; 0x0604
    call api_idx_0002_4              ; 0x0605
    add sp, byte 4                   ; 0x0608
    mov ax, 0xa                      ; 0x060b
    push ax                          ; 0x060e
    mov ax, 0x10                     ; 0x060f
    push ax                          ; 0x0612
    db 0xe8, 0x06, 0xd0 ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0616
    mov ax, 0xb                      ; 0x0619
    push ax                          ; 0x061c
    mov ax, 0x36                     ; 0x061d
    push ax                          ; 0x0620
    db 0xe8, 0xf8, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0624
    mov ax, 0xc                      ; 0x0627
    push ax                          ; 0x062a
    mov ax, 0x3b                     ; 0x062b
    push ax                          ; 0x062e
    db 0xe8, 0xea, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0632
    mov ax, 9                        ; 0x0635
    push ax                          ; 0x0638
    mov ax, 0x53                     ; 0x0639
    push ax                          ; 0x063c
    db 0xe8, 0xdc, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x0640
    mov ax, 0xd                      ; 0x0643
    push ax                          ; 0x0646
    mov ax, 0x38                     ; 0x0647
    push ax                          ; 0x064a
    db 0xe8, 0xce, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x064e
    mov word [data_5b6c], 2          ; 0x0651
    jmp short @..api_idx_0002_5.l5   ; 0x0657
    mov ax, 1                        ; 0x0659
    push ax                          ; 0x065c
    mov ax, 0x9156                   ; 0x065d
    push ax                          ; 0x0660
    call api_idx_0002_4              ; 0x0661
    add sp, byte 4                   ; 0x0664
    mov ax, 4                        ; 0x0667
    push ax                          ; 0x066a
    mov ax, 0x9163                   ; 0x066b
    push ax                          ; 0x066e
    call api_idx_0002_4              ; 0x066f
    add sp, byte 4                   ; 0x0672
    mov ax, 5                        ; 0x0675
    push ax                          ; 0x0678
    mov ax, 0x9170                   ; 0x0679
    push ax                          ; 0x067c
    call api_idx_0002_4              ; 0x067d
    add sp, byte 4                   ; 0x0680
    mov ax, 0xc                      ; 0x0683
    push ax                          ; 0x0686
    mov ax, 0x3b                     ; 0x0687
    push ax                          ; 0x068a
    db 0xe8, 0x8e, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x068e
    mov ax, 9                        ; 0x0691
    push ax                          ; 0x0694
    mov ax, 0x53                     ; 0x0695
    push ax                          ; 0x0698
    db 0xe8, 0x80, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x069c
    mov ax, 0xd                      ; 0x069f
    push ax                          ; 0x06a2
    mov ax, 0x3a                     ; 0x06a3
    push ax                          ; 0x06a6
    db 0xe8, 0x72, 0xcf ; call ds_dispatch_d61c
    add sp, byte 4                   ; 0x06aa
    mov word [data_5b6c], 1          ; 0x06ad
    jmp short @..api_idx_0002_5.l5   ; 0x06b3
    pop ss                           ; 0x06b5
    push di                          ; 0x06b6
    ficom word [si + 0x3b]           ; 0x06b7
    push bp                          ; 0x06ba
    jl short loc_0712                ; 0x06bb
    cmc                              ; 0x06bd
    push bp                          ; 0x06be
    sub byte [bp - 0x0060], dl       ; 0x06bf
    push si                          ; 0x06c2
@..api_idx_0002_5.l4:
    cmp ax, strict word 7            ; 0x06c3
    jae short @..api_idx_0002_5.l5   ; 0x06c6
    xchg bx, ax                      ; 0x06c8
    shl bx, 1                        ; 0x06c9
    jmp [cs:bx + 0x56fc]             ; 0x06cb
@..api_idx_0002_5.l5:
    call loc_0344                    ; 0x06d0
    mov word [data_5b70], 1          ; 0x06d3
    ret                              ; 0x06d9
