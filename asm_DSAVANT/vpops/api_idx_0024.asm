api_idx_0024:
    mov ax, 0xffdc                   ; 0x45f3
    call ds_dispatch_f40b            ; 0x45f6
    mov word [bp - 0x001e], 0        ; 0x45f9
    mov word [bp - 0x0020], 0        ; 0x45fe
    mov word [bp - 0x0022], 0        ; 0x4603
    mov word [bp - 0x0024], 0        ; 0x4608
    mov word [bp - 0x0004], 0        ; 0x460d
    jmp short @..api_idx_0024.l3     ; 0x4612
@..api_idx_0024.l1:
    push word [bp - 0x0004]          ; 0x4614
    call ds_dispatch_ca85            ; 0x4617
    pop cx                           ; 0x461a
    test ax, ax                      ; 0x461b
    je short @..api_idx_0024.l2      ; 0x461d
    mov ax, 0x2c                     ; 0x461f
    imul word [bp - 0x0004]          ; 0x4622
    mov si, ax                       ; 0x4625
    mov bx, word [data_8482]         ; 0x4627
    mov ax, word [bx + si + 0x2]     ; 0x462b
    cwd                              ; 0x462e
    add word [bp - 0x0020], ax       ; 0x462f
    adc word [bp - 0x001e], dx       ; 0x4632
@..api_idx_0024.l2:
    inc word [bp - 0x0004]           ; 0x4635
@..api_idx_0024.l3:
    mov bx, word [data_8482]         ; 0x4638
    mov al, byte [bx + 0x1a1]        ; 0x463c
    sub ah, ah                       ; 0x4640
    cmp ax, word [bp - 0x0004]       ; 0x4642
    jg short @..api_idx_0024.l1      ; 0x4645
    mov word [bp - 0x0004], 0        ; 0x4647
    jmp short @..api_idx_0024.l5     ; 0x464c
@..api_idx_0024.l4:
    mov ax, 0x2c                     ; 0x464e
    imul word [bp - 0x0004]          ; 0x4651
    mov si, ax                       ; 0x4654
    mov bx, word [data_848e]         ; 0x4656
    mov ax, word [bx + si + 0x2]     ; 0x465a
    cwd                              ; 0x465d
    add word [bp - 0x0020], ax       ; 0x465e
    adc word [bp - 0x001e], dx       ; 0x4661
    inc word [bp - 0x0004]           ; 0x4664
@..api_idx_0024.l5:
    mov bx, word [data_848e]         ; 0x4667
    mov al, byte [bx + 0x1a1]        ; 0x466b
    sub ah, ah                       ; 0x466f
    cmp ax, word [bp - 0x0004]       ; 0x4671
    jg short @..api_idx_0024.l4      ; 0x4674
    mov word [bp - 0x0004], 1        ; 0x4676
    jmp short @..api_idx_0024.l9     ; 0x467b
@..api_idx_0024.l6:
    mov word [bp - 0x0006], 0        ; 0x467d
    jmp short @..api_idx_0024.l8     ; 0x4682
@..api_idx_0024.l7:
    mov ax, 0x2c                     ; 0x4684
    imul word [bp - 0x0006]          ; 0x4687
    mov si, ax                       ; 0x468a
    mov ax, word [bp - 0x0004]       ; 0x468c
    shl ax, 1                        ; 0x468f
    mov bx, ax                       ; 0x4691
    mov bx, word [bx - 0x7b7e]       ; 0x4693
    mov ax, word [bx + si + 0x2]     ; 0x4697
    cwd                              ; 0x469a
    add word [bp - 0x0024], ax       ; 0x469b
    adc word [bp - 0x0022], dx       ; 0x469e
    inc word [bp - 0x0006]           ; 0x46a1
@..api_idx_0024.l8:
    mov ax, word [bp - 0x0004]       ; 0x46a4
    shl ax, 1                        ; 0x46a7
    mov bx, ax                       ; 0x46a9
    mov bx, word [bx - 0x7b7e]       ; 0x46ab
    mov al, byte [bx + 0x1a1]        ; 0x46af
    sub ah, ah                       ; 0x46b3
    cmp ax, word [bp - 0x0006]       ; 0x46b5
    jg short @..api_idx_0024.l7      ; 0x46b8
    inc word [bp - 0x0004]           ; 0x46ba
@..api_idx_0024.l9:
    mov ax, word [bp - 0x0004]       ; 0x46bd
    cmp ax, word [data_8466]         ; 0x46c0
    jle short @..api_idx_0024.l6     ; 0x46c4
    cmp word [bp + 0x4], byte 6      ; 0x46c6
    jne short @..api_idx_0024.l10    ; 0x46ca
    mov ax, word [bp - 0x0024]       ; 0x46cc
    mov dx, word [bp - 0x0022]       ; 0x46cf
    push ax                          ; 0x46d2
    xchg dx, ax                      ; 0x46d3
    mov bx, 0x64                     ; 0x46d4
    mul bx                           ; 0x46d7
    mov cx, ax                       ; 0x46d9
    pop ax                           ; 0x46db
    mul bx                           ; 0x46dc
    add dx, cx                       ; 0x46de
    mov cx, word [bp - 0x0020]       ; 0x46e0
    mov bx, word [bp - 0x001e]       ; 0x46e3
    call ds_dispatch_f99f            ; 0x46e6
    mov cx, 0x19                     ; 0x46e9
    mov bx, 0                        ; 0x46ec
    call ds_dispatch_f99f            ; 0x46ef
    push ax                          ; 0x46f2
    xchg dx, ax                      ; 0x46f3
    mov bx, 5                        ; 0x46f4
    mul bx                           ; 0x46f7
    mov cx, ax                       ; 0x46f9
    pop ax                           ; 0x46fb
    mul bx                           ; 0x46fc
    add dx, cx                       ; 0x46fe
    add ax, strict word 0xffec       ; 0x4700
    adc dx, byte 0xff                ; 0x4703
    mov word [bp - 0x001c], ax       ; 0x4706
    jmp short @..api_idx_0024.l11    ; 0x4709
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0020]       ; 0x470b
    mov dx, word [bp - 0x001e]       ; 0x470e
    push ax                          ; 0x4711
    xchg dx, ax                      ; 0x4712
    mov bx, 0x64                     ; 0x4713
    mul bx                           ; 0x4716
    mov cx, ax                       ; 0x4718
    pop ax                           ; 0x471a
    mul bx                           ; 0x471b
    add dx, cx                       ; 0x471d
    mov cx, word [bp - 0x0024]       ; 0x471f
    mov bx, word [bp - 0x0022]       ; 0x4722
    call ds_dispatch_f99f            ; 0x4725
    mov cx, 0x19                     ; 0x4728
    mov bx, 0                        ; 0x472b
    call ds_dispatch_f99f            ; 0x472e
    push ax                          ; 0x4731
    xchg dx, ax                      ; 0x4732
    mov bx, 5                        ; 0x4733
    mul bx                           ; 0x4736
    mov cx, ax                       ; 0x4738
    pop ax                           ; 0x473a
    mul bx                           ; 0x473b
    add dx, cx                       ; 0x473d
    add ax, strict word 0xffec       ; 0x473f
    adc dx, byte 0xff                ; 0x4742
    mov word [bp - 0x001c], ax       ; 0x4745
@..api_idx_0024.l11:
    mov ax, word [bp + 0x4]          ; 0x4748
    shl ax, 1                        ; 0x474b
    mov bx, ax                       ; 0x474d
    mov bx, word [bx - 0x7b70]       ; 0x474f
    mov al, byte [bx + 0xe2]         ; 0x4753
    sub ah, ah                       ; 0x4757
    test ax, 1                       ; 0x4759
    je short @..api_idx_0024.l13     ; 0x475c
    cmp word [bp - 0x001c], byte 0   ; 0x475e
    jge short @..api_idx_0024.l12    ; 0x4762
    mov word [bp - 0x001c], 0        ; 0x4764
@..api_idx_0024.l12:
    mov ax, word [bp + 0x4]          ; 0x4769
    shl ax, 1                        ; 0x476c
    mov bx, ax                       ; 0x476e
    mov bx, word [bx - 0x7b7e]       ; 0x4770
    mov ax, word [bx + 0x4]          ; 0x4774
    shl ax, 1                        ; 0x4777
    mov cx, word [bx + 0x2]          ; 0x4779
    inc cx                           ; 0x477c
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    add word [bp - 0x001c], ax       ; 0x4780
    mov ax, word [bp - 0x001c]       ; 0x4783
    shl ax, 1                        ; 0x4786
    add ax, strict word 0xa          ; 0x4788
    mov word [bp - 0x001c], ax       ; 0x478b
@..api_idx_0024.l13:
    mov word [bp - 0x0002], 0        ; 0x478e
    jmp near @..api_idx_0024.l71     ; 0x4793
@..api_idx_0024.l14:
    mov ax, 0x2c                     ; 0x4796
    imul word [bp - 0x0002]          ; 0x4799
    mov cx, ax                       ; 0x479c
    mov ax, word [bp + 0x4]          ; 0x479e
    shl ax, 1                        ; 0x47a1
    mov bx, ax                       ; 0x47a3
    mov ax, word [bx - 0x7b7e]       ; 0x47a5
    add ax, cx                       ; 0x47a9
    mov word [bp - 0x0008], ax       ; 0x47ab
    mov ax, 0xa                      ; 0x47ae
    push ax                          ; 0x47b1
    call ds_dispatch_b7a9            ; 0x47b2
    pop cx                           ; 0x47b5
    push ax                          ; 0x47b6
    mov ax, 0x2c                     ; 0x47b7
    imul word [bp - 0x0002]          ; 0x47ba
    mov si, ax                       ; 0x47bd
    mov ax, word [bp + 0x4]          ; 0x47bf
    shl ax, 1                        ; 0x47c2
    mov bx, ax                       ; 0x47c4
    mov bx, word [bx - 0x7b7e]       ; 0x47c6
    mov al, byte [bx + si + 0x29]    ; 0x47ca
    cbw                              ; 0x47cd
    mov cx, ax                       ; 0x47ce
    pop ax                           ; 0x47d0
    add ax, cx                       ; 0x47d1
    push ax                          ; 0x47d3
    mov ax, word [bp + 0x4]          ; 0x47d4
    shl ax, 1                        ; 0x47d7
    mov bx, ax                       ; 0x47d9
    mov bx, word [bx - 0x7b70]       ; 0x47db
    mov al, byte [bx + 0xd9]         ; 0x47df
    sub ah, ah                       ; 0x47e3
    mov cx, ax                       ; 0x47e5
    pop ax                           ; 0x47e7
    add ax, cx                       ; 0x47e8
    mov word [bp - 0x000a], ax       ; 0x47ea
    cmp ax, strict word 1            ; 0x47ed
    jge short @..api_idx_0024.l15    ; 0x47f0
