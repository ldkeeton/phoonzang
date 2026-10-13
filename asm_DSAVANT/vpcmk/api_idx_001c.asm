api_idx_001c:
    mov ax, 0xffe4                   ; 0x5580
    call aztec_csav                  ; 0x5583
    mov ax, word [bp + 0x6]          ; 0x5586
    mov word [bp - 0x000c], ax       ; 0x5589
    mov ax, word [bp + 0x8]          ; 0x558c
    mov word [bp - 0x000a], ax       ; 0x558f
    mov word [bp - 0x0008], 0        ; 0x5592
    mov ax, word [bp + 0xa]          ; 0x5597
    mov word [bp - 0x0006], ax       ; 0x559a
    mov word [bp - 0x001c], 0        ; 0x559d
    mov word [bp - 0x001a], 5        ; 0x55a2
    mov word [bp - 0x0018], 3        ; 0x55a7
    mov word [bp - 0x0016], 4        ; 0x55ac
    mov word [bp - 0x0014], 0        ; 0x55b1
    mov word [bp - 0x0012], 0        ; 0x55b6
    mov word [bp - 0x0010], 1        ; 0x55bb
    mov word [bp - 0x000e], 2        ; 0x55c0
    mov word [bp - 0x0002], 0        ; 0x55c5
@..api_idx_001c.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x55ca
    jne short @..api_idx_001c.l2     ; 0x55ce
    jmp near @..api_idx_001c.l4      ; 0x55d0
@..api_idx_001c.l2:
    mov ax, 0x248                    ; 0x55d3
    imul word [bp + 0x4]             ; 0x55d6
    mov cx, word [bp - 0x0002]       ; 0x55d9
    shl cx, 1                        ; 0x55dc
    shl cx, 1                        ; 0x55de
    mov bx, cx                       ; 0x55e0
    add bx, bp                       ; 0x55e2
    mov cx, word [bx - 0x001c]       ; 0x55e4
    add ax, cx                       ; 0x55e7
    mov bx, ax                       ; 0x55e9
    mov al, byte [bx + 0x5d64]       ; 0x55eb
    sub ah, ah                       ; 0x55ef
    push ax                          ; 0x55f1
    mov ax, 0x248                    ; 0x55f2
    imul word [bp + 0x4]             ; 0x55f5
    mov cx, word [bp - 0x0002]       ; 0x55f8
    shl cx, 1                        ; 0x55fb
    shl cx, 1                        ; 0x55fd
    mov bx, cx                       ; 0x55ff
    add bx, bp                       ; 0x5601
    mov cx, word [bx - 0x001a]       ; 0x5603
    add ax, cx                       ; 0x5606
    mov bx, ax                       ; 0x5608
    mov al, byte [bx + 0x5d64]       ; 0x560a
    sub ah, ah                       ; 0x560e
    mov cx, ax                       ; 0x5610
    pop ax                           ; 0x5612
    add ax, cx                       ; 0x5613
    mov cx, 6                        ; 0x5615
    cwd                              ; 0x5618
    idiv cx                          ; 0x5619
    mov cx, word [bp - 0x0002]       ; 0x561b
    shl cx, 1                        ; 0x561e
    mov bx, cx                       ; 0x5620
    add bx, bp                       ; 0x5622
    mov cx, word [bx - 0x000c]       ; 0x5624
    add ax, cx                       ; 0x5627
    dec ax                           ; 0x5629
    dec ax                           ; 0x562a
    dec ax                           ; 0x562b
    mov word [bx - 0x000c], ax       ; 0x562c
    cmp word [bx - 0x000c], byte 1   ; 0x562f
    jge short @..api_idx_001c.l3     ; 0x5633
    mov word [bx - 0x000c], 1        ; 0x5635
@..api_idx_001c.l3:
    mov ax, word [bx - 0x000c]       ; 0x563a
    mov cx, 2                        ; 0x563d
    cwd                              ; 0x5640
    idiv cx                          ; 0x5641
    mov word [bp - 0x0004], ax       ; 0x5643
    mov cx, word [bx - 0x000c]       ; 0x5646
    sub cx, ax                       ; 0x5649
    mov ax, cx                       ; 0x564b
    inc ax                           ; 0x564d
    push ax                          ; 0x564e
    call ds_app_09f0                 ; 0x564f
    pop cx                           ; 0x5652
    mov cx, ax                       ; 0x5653
    mov ax, word [bp - 0x0004]       ; 0x5655
    add cx, ax                       ; 0x5658
    mov ax, word [bp - 0x0002]       ; 0x565a
    shl ax, 1                        ; 0x565d
    mov bx, ax                       ; 0x565f
    mov word [bx - 0x69f8], cx       ; 0x5661
@..api_idx_001c.l4:
    inc word [bp - 0x0002]           ; 0x5665
    mov ax, word [bp - 0x0002]       ; 0x5668
    cmp ax, strict word 4            ; 0x566b
    jge short @..api_idx_001c.l5     ; 0x566e
    jmp near @..api_idx_001c.l1      ; 0x5670
@..api_idx_001c.l5:
    mov word [bss_960c], 0           ; 0x5673
    mov ax, word [dseg_0040]         ; 0x5679
    mov word [bp - 0x0002], ax       ; 0x567c
    jmp short @..api_idx_001c.l8     ; 0x567f
@..api_idx_001c.l6:
    mov ax, 0x248                    ; 0x5681
    imul word [bp + 0x4]             ; 0x5684
    add ax, word [bp - 0x0002]       ; 0x5687
    mov bx, ax                       ; 0x568a
    cmp byte [bx + 0x5d6c], 0        ; 0x568c
    jbe short @..api_idx_001c.l7     ; 0x5691
    mov ax, 2                        ; 0x5693
    push ax                          ; 0x5696
    call ds_app_09f0                 ; 0x5697
    pop cx                           ; 0x569a
    add ax, word [bss_960c]          ; 0x569b
    inc ax                           ; 0x569f
    mov word [bss_960c], ax          ; 0x56a0
@..api_idx_001c.l7:
    inc word [bp - 0x0002]           ; 0x56a3
@..api_idx_001c.l8:
    mov ax, word [bp - 0x0002]       ; 0x56a6
    cmp ax, word [dseg_0042]         ; 0x56a9
    jle short @..api_idx_001c.l6     ; 0x56ad
    ret                              ; 0x56af
