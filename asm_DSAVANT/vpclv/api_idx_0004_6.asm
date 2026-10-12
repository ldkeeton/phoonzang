api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x34cd
    call ds_aztec_csav               ; 0x34d0
    mov ax, word [dseg_0038]         ; 0x34d3
    mov word [bp - 0x0004], ax       ; 0x34d6
    mov word [bp - 0x0002], 0        ; 0x34d9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x6]          ; 0x34de
    mov si, word [bp - 0x0002]       ; 0x34e1
    cmp byte [bx + si], 0x31         ; 0x34e4
    je short @..api_idx_0004_6.l2    ; 0x34e7
    mov ax, 0x248                    ; 0x34e9
    imul word [bp + 0x4]             ; 0x34ec
    add ax, word [bp - 0x0004]       ; 0x34ef
    add ax, si                       ; 0x34f2
    mov bx, ax                       ; 0x34f4
    cmp byte [bx + 0x5d6c], 0        ; 0x34f6
    jbe short @..api_idx_0004_6.l3   ; 0x34fb
@..api_idx_0004_6.l2:
    mov ax, 1                        ; 0x34fd
    jmp short @..api_idx_0004_6.l4   ; 0x3500
@..api_idx_0004_6.l3:
    mov ax, 0                        ; 0x3502
@..api_idx_0004_6.l4:
    add si, word [bp - 0x0004]       ; 0x3505
    mov cx, si                       ; 0x3508
    shl cx, 1                        ; 0x350a
    mov bx, cx                       ; 0x350c
    mov word [bx - 0x6a68], ax       ; 0x350e
    inc word [bp - 0x0002]           ; 0x3512
    mov ax, word [bp - 0x0002]       ; 0x3515
    cmp ax, strict word 0xa          ; 0x3518
    jl short @..api_idx_0004_6.l1    ; 0x351b
    mov ax, word [dseg_003c]         ; 0x351d
    mov word [bp - 0x0004], ax       ; 0x3520
    mov word [bp - 0x0002], 0        ; 0x3523
@..api_idx_0004_6.l5:
    mov bx, word [bp + 0x8]          ; 0x3528
    mov si, word [bp - 0x0002]       ; 0x352b
    cmp byte [bx + si], 0x31         ; 0x352e
    je short @..api_idx_0004_6.l6    ; 0x3531
    mov ax, 0x248                    ; 0x3533
    imul word [bp + 0x4]             ; 0x3536
    add ax, word [bp - 0x0004]       ; 0x3539
    add ax, si                       ; 0x353c
    mov bx, ax                       ; 0x353e
    cmp byte [bx + 0x5d6c], 0        ; 0x3540
    jbe short @..api_idx_0004_6.l7   ; 0x3545
@..api_idx_0004_6.l6:
    mov ax, 1                        ; 0x3547
    jmp short @..api_idx_0004_6.l8   ; 0x354a
@..api_idx_0004_6.l7:
    mov ax, 0                        ; 0x354c
@..api_idx_0004_6.l8:
    add si, word [bp - 0x0004]       ; 0x354f
    mov cx, si                       ; 0x3552
    shl cx, 1                        ; 0x3554
    mov bx, cx                       ; 0x3556
    mov word [bx - 0x6a68], ax       ; 0x3558
    inc word [bp - 0x0002]           ; 0x355c
    mov ax, word [bp - 0x0002]       ; 0x355f
    cmp ax, strict word 8            ; 0x3562
    jl short @..api_idx_0004_6.l5    ; 0x3565
    mov ax, word [dseg_0040]         ; 0x3567
    mov word [bp - 0x0004], ax       ; 0x356a
    mov word [bp - 0x0002], 0        ; 0x356d
@..api_idx_0004_6.l9:
    mov bx, word [bp + 0xa]          ; 0x3572
    mov si, word [bp - 0x0002]       ; 0x3575
    cmp byte [bx + si], 0x31         ; 0x3578
    je short @..api_idx_0004_6.l10   ; 0x357b
    mov ax, 0x248                    ; 0x357d
    imul word [bp + 0x4]             ; 0x3580
    add ax, word [bp - 0x0004]       ; 0x3583
    add ax, si                       ; 0x3586
    mov bx, ax                       ; 0x3588
    cmp byte [bx + 0x5d6c], 0        ; 0x358a
    jbe short @..api_idx_0004_6.l11  ; 0x358f
@..api_idx_0004_6.l10:
    mov ax, 1                        ; 0x3591
    jmp short @..api_idx_0004_6.l12  ; 0x3594
@..api_idx_0004_6.l11:
    mov ax, 0                        ; 0x3596
@..api_idx_0004_6.l12:
    add si, word [bp - 0x0004]       ; 0x3599
    mov cx, si                       ; 0x359c
    shl cx, 1                        ; 0x359e
    mov bx, cx                       ; 0x35a0
    mov word [bx - 0x6a68], ax       ; 0x35a2
    inc word [bp - 0x0002]           ; 0x35a6
    mov ax, word [bp - 0x0002]       ; 0x35a9
    cmp ax, strict word 6            ; 0x35ac
    jl short @..api_idx_0004_6.l9    ; 0x35af
    mov ax, word [dseg_0044]         ; 0x35b1
    mov word [bp - 0x0004], ax       ; 0x35b4
    mov word [bp - 0x0002], 0        ; 0x35b7
@..api_idx_0004_6.l13:
    mov bx, word [bp + 0xc]          ; 0x35bc
    mov si, word [bp - 0x0002]       ; 0x35bf
    cmp byte [bx + si], 0x31         ; 0x35c2
    je short @..api_idx_0004_6.l14   ; 0x35c5
    mov ax, 0x248                    ; 0x35c7
    imul word [bp + 0x4]             ; 0x35ca
    add ax, word [bp - 0x0004]       ; 0x35cd
    add ax, si                       ; 0x35d0
    mov bx, ax                       ; 0x35d2
    cmp byte [bx + 0x5d6c], 0        ; 0x35d4
    jbe short @..api_idx_0004_6.l15  ; 0x35d9
@..api_idx_0004_6.l14:
    mov ax, 1                        ; 0x35db
    jmp short @..api_idx_0004_6.l16  ; 0x35de
@..api_idx_0004_6.l15:
    mov ax, 0                        ; 0x35e0
@..api_idx_0004_6.l16:
    add si, word [bp - 0x0004]       ; 0x35e3
    mov cx, si                       ; 0x35e6
    shl cx, 1                        ; 0x35e8
    mov bx, cx                       ; 0x35ea
    mov word [bx - 0x6a68], ax       ; 0x35ec
    inc word [bp - 0x0002]           ; 0x35f0
    mov ax, word [bp - 0x0002]       ; 0x35f3
    cmp ax, strict word 0xa          ; 0x35f6
    jl short @..api_idx_0004_6.l13   ; 0x35f9
    ret                              ; 0x35fb
