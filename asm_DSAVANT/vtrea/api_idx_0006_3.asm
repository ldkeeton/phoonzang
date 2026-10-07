api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x3706
    call ds_dispatch_f40b            ; 0x3709
    call api_idx_0006_2              ; 0x370c
    mov word [bp - 0x0002], ax       ; 0x370f
    test ax, ax                      ; 0x3712
    je short @..api_idx_0006_3.l1    ; 0x3714
    mov ax, 0                        ; 0x3716
    push ax                          ; 0x3719
    push word [data_8d08]            ; 0x371a
    push word [data_8d06]            ; 0x371e
    call ds_dispatch_e94f            ; 0x3722
    add sp, byte 6                   ; 0x3725
    mov ax, 0xb9                     ; 0x3728
    push ax                          ; 0x372b
    mov ax, 0x131                    ; 0x372c
    push ax                          ; 0x372f
    call ds_dispatch_e809            ; 0x3730
    add sp, byte 4                   ; 0x3733
    mov ax, 4                        ; 0x3736
    push ax                          ; 0x3739
    mov bx, word [bp - 0x0002]       ; 0x373a
    mov al, byte [bx + 0x7]          ; 0x373d
    sub ah, ah                       ; 0x3740
    push ax                          ; 0x3742
    call ds_dispatch_e830            ; 0x3743
    add sp, byte 4                   ; 0x3746
    mov ax, 0xc4                     ; 0x3749
    push ax                          ; 0x374c
    mov ax, 0x13c                    ; 0x374d
    push ax                          ; 0x3750
    mov ax, 0xb9                     ; 0x3751
    push ax                          ; 0x3754
    mov ax, 0x131                    ; 0x3755
    push ax                          ; 0x3758
    call ds_dispatch_e8da            ; 0x3759
    add sp, byte 8                   ; 0x375c
    mov ax, 1                        ; 0x375f
    ret                              ; 0x3762
