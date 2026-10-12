api_idx_005e:
    mov ax, 0xffa2                   ; 0x34bc
    call ds_aztec_csav               ; 0x34bf
    mov word [bp - 0x0002], 0xf      ; 0x34c2
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x34c7
    mov al, byte [bx + 0x5b48]       ; 0x34ca
    sub ah, ah                       ; 0x34ce
    cmp ax, word [bp + 0x4]          ; 0x34d0
    jne short @..api_idx_005e.l2     ; 0x34d3
    mov ax, 0                        ; 0x34d5
    ret                              ; 0x34d8
@..api_idx_005e.l2:
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 0x12         ; 0x34df
    jl short @..api_idx_005e.l1      ; 0x34e2
    mov ax, 0x90a6                   ; 0x34e4
    push ax                          ; 0x34e7
    lea ax, word [bp - 0x005e]       ; 0x34e8
    push ax                          ; 0x34eb
    call ds_aztec_strcpy             ; 0x34ec
    add sp, byte 4                   ; 0x34ef
    mov ax, word [bp + 0x4]          ; 0x34f2
    mov cx, 0xa                      ; 0x34f5
    cwd                              ; 0x34f8
    idiv cx                          ; 0x34f9
    add ax, strict word 0x30         ; 0x34fb
    mov byte [bp - 0x005b], al       ; 0x34fe
    add dx, byte 0x30                ; 0x3501
    mov ax, dx                       ; 0x3504
    mov byte [bp - 0x005a], al       ; 0x3506
    mov ax, 0                        ; 0x3509
    push ax                          ; 0x350c
    mov ax, 1                        ; 0x350d
    push ax                          ; 0x3510
    lea ax, word [bp - 0x005e]       ; 0x3511
    push ax                          ; 0x3514
    call ds_app_23a8                 ; 0x3515
    add sp, byte 4                   ; 0x3518
    push ax                          ; 0x351b
    call ds_aztec_open               ; 0x351c
    add sp, byte 4                   ; 0x351f
    mov word [bp - 0x0004], ax       ; 0x3522
    cmp ax, strict word 0xffff       ; 0x3525
    jne short @..api_idx_005e.l3     ; 0x3528
    mov ax, 0xffff                   ; 0x352a
    ret                              ; 0x352d
@..api_idx_005e.l3:
    mov ax, 2                        ; 0x352e
    push ax                          ; 0x3531
    mov ax, 0                        ; 0x3532
    mov dx, 0                        ; 0x3535
    push dx                          ; 0x3538
    push ax                          ; 0x3539
    push word [bp - 0x0004]          ; 0x353a
    call ds_aztec_lseek              ; 0x353d
    add sp, byte 8                   ; 0x3540
    mov word [bp - 0x0006], dx       ; 0x3543
    mov word [bp - 0x0008], ax       ; 0x3546
    push word [bp - 0x0004]          ; 0x3549
    call ds_aztec_close              ; 0x354c
    pop cx                           ; 0x354f
    mov word [bp - 0x000a], 0        ; 0x3550
    mov word [bp - 0x000c], 0x2800   ; 0x3555
    mov ax, 0                        ; 0x355a
    push ax                          ; 0x355d
    mov ax, 2                        ; 0x355e
    push ax                          ; 0x3561
    call ds_loc_3b62                 ; 0x3562
    add sp, byte 4                   ; 0x3565
    mov cx, word [bp - 0x0008]       ; 0x3568
    mov bx, word [bp - 0x0006]       ; 0x356b
    add cx, word [bp - 0x000c]       ; 0x356e
    adc bx, word [bp - 0x000a]       ; 0x3571
    cmp dx, bx                       ; 0x3574
    jl short @..api_idx_005e.l4      ; 0x3576
    jne short @..api_idx_005e.l5     ; 0x3578
    cmp ax, cx                       ; 0x357a
    ja short @..api_idx_005e.l5      ; 0x357c
@..api_idx_005e.l4:
    jmp short @..api_idx_005e.l6     ; 0x357e
@..api_idx_005e.l5:
    mov ax, 0                        ; 0x3580
    ret                              ; 0x3583
@..api_idx_005e.l6:
    cmp byte [bss_5962], 1           ; 0x3584
    jne short @..api_idx_005e.l9     ; 0x3589
    mov ax, 0                        ; 0x358b
    push ax                          ; 0x358e
    mov ax, 1                        ; 0x358f
    push ax                          ; 0x3592
    call ds_loc_3b62                 ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp dx, word [bp - 0x000a]       ; 0x3599
    jl short @..api_idx_005e.l7      ; 0x359c
    jne short @..api_idx_005e.l8     ; 0x359e
    cmp ax, word [bp - 0x000c]       ; 0x35a0
    ja short @..api_idx_005e.l8      ; 0x35a3
@..api_idx_005e.l7:
    jmp short @..api_idx_005e.l9     ; 0x35a5
@..api_idx_005e.l8:
    mov word [bp - 0x000a], 0        ; 0x35a7
    mov word [bp - 0x000c], 0        ; 0x35ac
    jmp short @..api_idx_005e.l12    ; 0x35b1
@..api_idx_005e.l9:
    cmp byte [bss_5963], 1           ; 0x35b3
    jne short @..api_idx_005e.l12    ; 0x35b8
    mov al, byte [bss_5964]          ; 0x35ba
    sub ah, ah                       ; 0x35bd
    add ax, strict word 0xffc0       ; 0x35bf
    mov word [bp - 0x000e], ax       ; 0x35c2
    cmp ax, strict word 1            ; 0x35c5
    jl short @..api_idx_005e.l12     ; 0x35c8
    cmp ax, strict word 0x1a         ; 0x35ca
    jg short @..api_idx_005e.l12     ; 0x35cd
    push ax                          ; 0x35cf
    mov ax, 3                        ; 0x35d0
    push ax                          ; 0x35d3
    call ds_loc_3b62                 ; 0x35d4
    add sp, byte 4                   ; 0x35d7
    cmp dx, word [bp - 0x000a]       ; 0x35da
    jl short @..api_idx_005e.l10     ; 0x35dd
    jne short @..api_idx_005e.l11    ; 0x35df
    cmp ax, word [bp - 0x000c]       ; 0x35e1
    ja short @..api_idx_005e.l11     ; 0x35e4
@..api_idx_005e.l10:
    jmp short @..api_idx_005e.l12    ; 0x35e6
@..api_idx_005e.l11:
    mov word [bp - 0x000a], 0        ; 0x35e8
    mov word [bp - 0x000c], 0        ; 0x35ed
@..api_idx_005e.l12:
    mov ax, 0                        ; 0x35f2
    push ax                          ; 0x35f5
    mov ax, 2                        ; 0x35f6
    push ax                          ; 0x35f9
    call ds_loc_3b62                 ; 0x35fa
    add sp, byte 4                   ; 0x35fd
    mov cx, word [bp - 0x0008]       ; 0x3600
    mov bx, word [bp - 0x0006]       ; 0x3603
    add cx, word [bp - 0x000c]       ; 0x3606
    adc bx, word [bp - 0x000a]       ; 0x3609
    cmp dx, bx                       ; 0x360c
    jl short @..api_idx_005e.l13     ; 0x360e
    jne short @..api_idx_005e.l14    ; 0x3610
    cmp ax, cx                       ; 0x3612
    ja short @..api_idx_005e.l14     ; 0x3614
@..api_idx_005e.l13:
    jmp short @..api_idx_005e.l15    ; 0x3616
@..api_idx_005e.l14:
    mov ax, 0                        ; 0x3618
    ret                              ; 0x361b
@..api_idx_005e.l15:
    mov ax, 0xffff                   ; 0x361c
    ret                              ; 0x361f
