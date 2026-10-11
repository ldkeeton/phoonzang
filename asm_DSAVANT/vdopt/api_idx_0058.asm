api_idx_0058:
    mov ax, 0xffa8                   ; 0x0565
    call ds_dispatch_f40b            ; 0x0568
    lea ax, word [bp - 0x0058]       ; 0x056b
    push ax                          ; 0x056e
    push word [bp + 0x4]             ; 0x056f
    call ds_dispatch_b53b            ; 0x0572
    add sp, byte 4                   ; 0x0575
    mov ax, 0x98                     ; 0x0578
    push ax                          ; 0x057b
    mov ax, 0x13f                    ; 0x057c
    push ax                          ; 0x057f
    mov ax, 0x92                     ; 0x0580
    push ax                          ; 0x0583
    mov ax, 0                        ; 0x0584
    push ax                          ; 0x0587
    call ds_dispatch_e8da            ; 0x0588
    add sp, byte 8                   ; 0x058b
    lea ax, word [bp - 0x0058]       ; 0x058e
    push ax                          ; 0x0591
    call ds_dispatch_fa90            ; 0x0592
    pop cx                           ; 0x0595
    mov cx, 6                        ; 0x0596
    imul cx                          ; 0x0599
    mov cx, 2                        ; 0x059b
    cwd                              ; 0x059e
    idiv cx                          ; 0x059f
    mov cx, ax                       ; 0x05a1
    mov ax, 0xa1                     ; 0x05a3
    sub ax, cx                       ; 0x05a6
    mov word [bp - 0x0002], ax       ; 0x05a8
    lea ax, word [bp - 0x0058]       ; 0x05ab
    push ax                          ; 0x05ae
    call ds_dispatch_fa90            ; 0x05af
    pop cx                           ; 0x05b2
    mov cx, 6                        ; 0x05b3
    imul cx                          ; 0x05b6
    mov cx, ax                       ; 0x05b8
    mov ax, word [bp - 0x0002]       ; 0x05ba
    add cx, ax                       ; 0x05bd
    mov word [bp - 0x0004], cx       ; 0x05bf
    mov ax, 0x98                     ; 0x05c2
    push ax                          ; 0x05c5
    push cx                          ; 0x05c6
    mov ax, 0x92                     ; 0x05c7
    push ax                          ; 0x05ca
    push word [bp - 0x0002]          ; 0x05cb
    call ds_dispatch_e928            ; 0x05ce
    add sp, byte 8                   ; 0x05d1
    mov word [bp - 0x0006], dx       ; 0x05d4
    mov word [bp - 0x0008], ax       ; 0x05d7
    mov ax, 0                        ; 0x05da
    push ax                          ; 0x05dd
    mov ax, 0x16                     ; 0x05de
    push ax                          ; 0x05e1
    call ds_dispatch_e823            ; 0x05e2
    add sp, byte 4                   ; 0x05e5
    mov ax, 0x92                     ; 0x05e8
    push ax                          ; 0x05eb
    push word [bp - 0x0002]          ; 0x05ec
    call ds_dispatch_e809            ; 0x05ef
    add sp, byte 4                   ; 0x05f2
    mov ax, 0                        ; 0x05f5
    push ax                          ; 0x05f8
    lea ax, word [bp - 0x0058]       ; 0x05f9
    push ax                          ; 0x05fc
    call ds_dispatch_e84e            ; 0x05fd
    add sp, byte 4                   ; 0x0600
    mov ax, 0x98                     ; 0x0603
    push ax                          ; 0x0606
    push word [bp - 0x0004]          ; 0x0607
    mov ax, 0x92                     ; 0x060a
    push ax                          ; 0x060d
    push word [bp - 0x0002]          ; 0x060e
    call ds_dispatch_e8da            ; 0x0611
    add sp, byte 8                   ; 0x0614
    cmp word [dseg_90b8], byte 0     ; 0x0617
    je short @..api_idx_0058.l1      ; 0x061c
    mov ax, 0                        ; 0x061e
    push ax                          ; 0x0621
    call ds_dispatch_b7e0            ; 0x0622
    pop cx                           ; 0x0625
@..api_idx_0058.l1:
    mov ax, word [dseg_905a]         ; 0x0626
    mov cx, 2                        ; 0x0629
    cwd                              ; 0x062c
    idiv cx                          ; 0x062d
    push ax                          ; 0x062f
    call api_idx_0004_2              ; 0x0630
    pop cx                           ; 0x0633
    mov ax, 1                        ; 0x0634
    push ax                          ; 0x0637
    push word [bp - 0x0006]          ; 0x0638
    push word [bp - 0x0008]          ; 0x063b
    call ds_dispatch_e94f            ; 0x063e
    add sp, byte 6                   ; 0x0641
    mov ax, 0x98                     ; 0x0644
    push ax                          ; 0x0647
    mov ax, 0x13f                    ; 0x0648
    push ax                          ; 0x064b
    mov ax, 0x92                     ; 0x064c
    push ax                          ; 0x064f
    mov ax, 0                        ; 0x0650
    push ax                          ; 0x0653
    call ds_dispatch_e8da            ; 0x0654
    add sp, byte 8                   ; 0x0657
    ret                              ; 0x065a
