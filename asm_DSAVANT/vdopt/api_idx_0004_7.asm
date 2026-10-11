api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x45dd
    call ds_dispatch_f40b            ; 0x45e0
    mov word [bss_9b5e], 5           ; 0x45e3
    mov ax, 1                        ; 0x45e9
    push ax                          ; 0x45ec
    push ax                          ; 0x45ed
    mov ax, 0x7ea                    ; 0x45ee
    push ax                          ; 0x45f1
    push word [bp + 0x4]             ; 0x45f2
    call api_idx_0044                ; 0x45f5
    add sp, byte 8                   ; 0x45f8
    test ax, ax                      ; 0x45fb
    je short @..api_idx_0004_7.l1    ; 0x45fd
    jmp near @..api_idx_0004_7.l4    ; 0x45ff
@..api_idx_0004_7.l1:
    mov ax, word [bss_904e]          ; 0x4602
    mov cx, 0x100                    ; 0x4605
    cwd                              ; 0x4608
    idiv cx                          ; 0x4609
    mov word [bp - 0x0004], ax       ; 0x460b
    mov word [bp - 0x0002], dx       ; 0x460e
    mov ax, 6                        ; 0x4611
    imul dx                          ; 0x4614
    mov bx, ax                       ; 0x4616
    cmp byte [bx + 0x624], 1         ; 0x4618
    jne short @..api_idx_0004_7.l2   ; 0x461d
    call ds_dispatch_ceb1            ; 0x461f
    mov word [bss_9d90], ax          ; 0x4622
    cmp ax, strict word 0xffff       ; 0x4625
    jne short @..api_idx_0004_7.l2   ; 0x4628
@..api_idx_0004_7.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x462a
    jge short @..api_idx_0004_7.l3   ; 0x462e
    jmp near @..api_idx_0004_7.l4    ; 0x4630
@..api_idx_0004_7.l3:
    mov ax, 6                        ; 0x4633
    imul word [bp - 0x0002]          ; 0x4636
    mov bx, ax                       ; 0x4639
    mov al, byte [bx + 0x622]        ; 0x463b
    sub ah, ah                       ; 0x463f
    imul word [bp - 0x0004]          ; 0x4641
    push ax                          ; 0x4644
    mov ax, 0x248                    ; 0x4645
    imul word [bp + 0x4]             ; 0x4648
    mov cx, ax                       ; 0x464b
    mov al, byte [bx + 0x620]        ; 0x464d
    sub ah, ah                       ; 0x4651
    mov dx, ax                       ; 0x4653
    shl ax, 1                        ; 0x4655
    shl ax, 1                        ; 0x4657
    mov dx, ax                       ; 0x4659
    add cx, ax                       ; 0x465b
    mov bx, cx                       ; 0x465d
    pop ax                           ; 0x465f
    sub word [bx + 0x5c1c], ax       ; 0x4660
    push word [bss_9d90]             ; 0x4664
    push word [bp - 0x0004]          ; 0x4668
    push word [bp - 0x0002]          ; 0x466b
    push word [bp + 0x4]             ; 0x466e
    call api_idx_0008                ; 0x4671
    add sp, byte 8                   ; 0x4674
    push word [bp - 0x0004]          ; 0x4677
    call ds_dispatch_b7a9            ; 0x467a
    pop cx                           ; 0x467d
    push ax                          ; 0x467e
    mov ax, 6                        ; 0x467f
    imul word [bp - 0x0002]          ; 0x4682
    mov bx, ax                       ; 0x4685
    mov al, byte [bx + 0x621]        ; 0x4687
    sub ah, ah                       ; 0x468b
    mov cx, ax                       ; 0x468d
    pop ax                           ; 0x468f
    add ax, cx                       ; 0x4690
    add ax, word [bp - 0x0004]       ; 0x4692
    push ax                          ; 0x4695
    mov ax, 0x248                    ; 0x4696
    imul word [bp + 0x4]             ; 0x4699
    mov bx, ax                       ; 0x469c
    pop ax                           ; 0x469e
    sub word [bx + 0x5c10], ax       ; 0x469f
    cmp word [bx + 0x5c10], byte 0   ; 0x46a3
    jge short @..api_idx_0004_7.l4   ; 0x46a8
    mov word [bx + 0x5c10], 0        ; 0x46aa
    mov ax, 6                        ; 0x46b0
    push ax                          ; 0x46b3
    call ds_dispatch_b7a9            ; 0x46b4
    pop cx                           ; 0x46b7
    add ax, strict word 6            ; 0x46b8
    push ax                          ; 0x46bb
    mov ax, 0x248                    ; 0x46bc
    imul word [bp + 0x4]             ; 0x46bf
    mov bx, ax                       ; 0x46c2
    pop ax                           ; 0x46c4
    mov byte [bx + 0x5d5c], al       ; 0x46c5
@..api_idx_0004_7.l4:
    cmp word [bss_90b6], byte 0      ; 0x46c9
    jle short @..api_idx_0004_7.l5   ; 0x46ce
    push word [bss_90b6]             ; 0x46d0
    call api_idx_0058                ; 0x46d4
    pop cx                           ; 0x46d7
@..api_idx_0004_7.l5:
    ret                              ; 0x46d8
loc_46d9:
    pop word [dseg_90b4]             ; 0x46d9
    pop cx                           ; 0x46dd
    mov word [dseg_90b0], sp         ; 0x46de
    mov word [dseg_90b2], bp         ; 0x46e2
    mov word [dseg_90ac], si         ; 0x46e6
    mov word [dseg_90ae], di         ; 0x46ea
    cld                              ; 0x46ee
    mov di, bss_90b6                 ; 0x46ef
    mov cx, 0x9d94                   ; 0x46f2
    sub cx, di                       ; 0x46f5
    shr cx, 1                        ; 0x46f7
    je short @..local.l48            ; 0x46f9
    sub ax, ax                       ; 0x46fb
    rep stosw                        ; 0x46fd
@..local.l48:
    call loc_000e                    ; 0x46ff
    mov bp, word [dseg_90b2]         ; 0x4702
    mov sp, word [dseg_90b0]         ; 0x4706
    mov si, word [dseg_90ac]         ; 0x470a
    mov di, word [dseg_90ae]         ; 0x470e
    push cx                          ; 0x4712
    jmp [dseg_90b4]                  ; 0x4713
