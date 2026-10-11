api_idx_0004:
    mov ax, 0xfffc                   ; 0x062d
    db 0xe8, 0xd8, 0xed ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x0633
@..api_idx_0004.l1:
    mov ax, word [bp - 0x0002]       ; 0x0638
    cmp ax, word [dseg_8468]         ; 0x063b
    jge short @..api_idx_0004.l2     ; 0x063f
    shl ax, 1                        ; 0x0641
    mov bx, ax                       ; 0x0643
    mov bx, word [bx - 0x7b96]       ; 0x0645
    mov al, byte [bx + 0x14]         ; 0x0649
    sub ah, ah                       ; 0x064c
    cmp ax, word [bp + 0x4]          ; 0x064e
    jg short @..api_idx_0004.l2      ; 0x0651
    inc word [bp - 0x0002]           ; 0x0653
    jmp short @..api_idx_0004.l1     ; 0x0656
@..api_idx_0004.l2:
    mov ax, word [dseg_8468]         ; 0x0658
    mov word [bp - 0x0004], ax       ; 0x065b
    jmp short @..api_idx_0004.l4     ; 0x065e
@..api_idx_0004.l3:
    mov ax, word [bp - 0x0004]       ; 0x0660
    shl ax, 1                        ; 0x0663
    mov bx, ax                       ; 0x0665
    mov si, word [bx - 0x7b98]       ; 0x0667
    mov di, word [bx - 0x7b96]       ; 0x066b
    mov cx, ds                       ; 0x066f
    mov es, cx                       ; 0x0671
    mov cx, 0xc                      ; 0x0673
    rep movsw                        ; 0x0676
    dec word [bp - 0x0004]           ; 0x0678
@..api_idx_0004.l4:
    mov ax, word [bp - 0x0004]       ; 0x067b
    cmp ax, word [bp - 0x0002]       ; 0x067e
    jg short @..api_idx_0004.l3      ; 0x0681
    mov al, byte [bp + 0x4]          ; 0x0683
    mov cx, word [bp - 0x0002]       ; 0x0686
    shl cx, 1                        ; 0x0689
    mov bx, cx                       ; 0x068b
    mov bx, word [bx - 0x7b96]       ; 0x068d
    mov byte [bx + 0x14], al         ; 0x0691
    mov al, byte [bp + 0x6]          ; 0x0694
    mov cx, word [bp - 0x0002]       ; 0x0697
    shl cx, 1                        ; 0x069a
    mov bx, cx                       ; 0x069c
    mov bx, word [bx - 0x7b96]       ; 0x069e
    mov byte [bx + 0x15], al         ; 0x06a2
    mov ax, word [bp + 0x8]          ; 0x06a5
    mov cx, word [bp - 0x0002]       ; 0x06a8
    shl cx, 1                        ; 0x06ab
    mov bx, cx                       ; 0x06ad
    mov bx, word [bx - 0x7b96]       ; 0x06af
    mov word [bx], ax                ; 0x06b3
    mov ax, word [bp + 0xa]          ; 0x06b5
    mov cx, word [bp - 0x0002]       ; 0x06b8
    shl cx, 1                        ; 0x06bb
    mov bx, cx                       ; 0x06bd
    mov bx, word [bx - 0x7b96]       ; 0x06bf
    mov word [bx + 0x2], ax          ; 0x06c3
    mov ax, word [bp + 0xc]          ; 0x06c6
    mov cx, word [bp - 0x0002]       ; 0x06c9
    shl cx, 1                        ; 0x06cc
    mov bx, cx                       ; 0x06ce
    mov bx, word [bx - 0x7b96]       ; 0x06d0
    mov word [bx + 0x4], ax          ; 0x06d4
    mov ax, word [bp + 0xe]          ; 0x06d7
    mov cx, word [bp - 0x0002]       ; 0x06da
    shl cx, 1                        ; 0x06dd
    mov bx, cx                       ; 0x06df
    mov bx, word [bx - 0x7b96]       ; 0x06e1
    mov word [bx + 0x6], ax          ; 0x06e5
    mov al, byte [bp + 0x10]         ; 0x06e8
    mov cx, word [bp - 0x0002]       ; 0x06eb
    shl cx, 1                        ; 0x06ee
    mov bx, cx                       ; 0x06f0
    mov bx, word [bx - 0x7b96]       ; 0x06f2
    mov byte [bx + 0x16], al         ; 0x06f6
    mov al, byte [bp + 0x12]         ; 0x06f9
    mov cx, word [bp - 0x0002]       ; 0x06fc
    shl cx, 1                        ; 0x06ff
    mov bx, cx                       ; 0x0701
    mov bx, word [bx - 0x7b96]       ; 0x0703
    mov byte [bx + 0x17], al         ; 0x0707
    push word [bp + 0x14]            ; 0x070a
    mov ax, word [bp - 0x0002]       ; 0x070d
    shl ax, 1                        ; 0x0710
    mov bx, ax                       ; 0x0712
    mov ax, word [bx - 0x7b96]       ; 0x0714
    add ax, strict word 8            ; 0x0718
    push ax                          ; 0x071b
    call 0xf364                      ; 0x071c
    add sp, byte 4                   ; 0x071f
    inc word [dseg_8468]             ; 0x0722
    ret                              ; 0x0726
