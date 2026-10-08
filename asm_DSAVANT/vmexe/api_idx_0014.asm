api_idx_0014:
    mov ax, 0xffec                   ; 0x6476
    call ds_dispatch_f40b            ; 0x6479
    mov bx, word [data_8490]         ; 0x647c
    mov byte [bx + 0xe2], 0          ; 0x6480
    mov word [data_90de], 6          ; 0x6485
    mov word [data_91d8], 0          ; 0x648b
    mov word [data_91da], 0          ; 0x6491
    mov ax, 0x2c                     ; 0x6497
    imul word [data_8462]            ; 0x649a
    mov cx, ax                       ; 0x649e
    mov ax, word [data_8464]         ; 0x64a0
    shl ax, 1                        ; 0x64a3
    mov bx, ax                       ; 0x64a5
    mov ax, word [bx - 0x7b7e]       ; 0x64a7
    add ax, cx                       ; 0x64ab
    mov word [bp - 0x0002], ax       ; 0x64ad
    mov bx, ax                       ; 0x64b0
    cmp byte [bx + 0x22], 2          ; 0x64b2
    jae short @..api_idx_0014.l1     ; 0x64b6
    cmp byte [bx + 0x11], 0          ; 0x64b8
    ja short @..api_idx_0014.l1      ; 0x64bc
    cmp byte [bx + 0x10], 0          ; 0x64be
    jbe short @..api_idx_0014.l2     ; 0x64c2
@..api_idx_0014.l1:
    ret                              ; 0x64c4
@..api_idx_0014.l2:
    mov ax, 1                        ; 0x64c5
    push ax                          ; 0x64c8
    call api_idx_000a_2              ; 0x64c9
    pop cx                           ; 0x64cc
    mov word [bp - 0x0004], 0        ; 0x64cd
    mov word [bp - 0x0006], 0        ; 0x64d2
    mov word [bp - 0x0008], 0        ; 0x64d7
    cmp word [bp - 0x0004], byte 0   ; 0x64dc
    jne short @..api_idx_0014.l3     ; 0x64e0
    mov bx, word [bp - 0x0002]       ; 0x64e2
    cmp byte [bx + 0xf], 0           ; 0x64e5
    jbe short @..api_idx_0014.l3     ; 0x64e9
    mov ax, 0x64                     ; 0x64eb
    push ax                          ; 0x64ee
    call ds_dispatch_b7a9            ; 0x64ef
    pop cx                           ; 0x64f2
    cmp ax, strict word 0x50         ; 0x64f3
    jle short @..api_idx_0014.l3     ; 0x64f6
    mov bx, word [bp - 0x0002]       ; 0x64f8
    cmp byte [bx + 0x1e], 6          ; 0x64fb
    je short @..api_idx_0014.l3      ; 0x64ff
    mov word [bp - 0x0004], 0xc89    ; 0x6501
@..api_idx_0014.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x6506
    jne short @..api_idx_0014.l4     ; 0x650a
    mov bx, word [bp - 0x0002]       ; 0x650c
    cmp byte [bx + 0x15], 0          ; 0x650f
    jbe short @..api_idx_0014.l4     ; 0x6513
    mov ax, 0x64                     ; 0x6515
    push ax                          ; 0x6518
    call ds_dispatch_b7a9            ; 0x6519
    pop cx                           ; 0x651c
    cmp ax, strict word 0x28         ; 0x651d
    jle short @..api_idx_0014.l4     ; 0x6520
    mov ax, 3                        ; 0x6522
    push ax                          ; 0x6525
    call ds_dispatch_b7a9            ; 0x6526
    pop cx                           ; 0x6529
    add ax, 0xc85                    ; 0x652a
    mov word [bp - 0x0004], ax       ; 0x652d
    mov ax, 0x64                     ; 0x6530
    push ax                          ; 0x6533
    call ds_dispatch_b7a9            ; 0x6534
    pop cx                           ; 0x6537
    cmp ax, strict word 0x50         ; 0x6538
    jle short @..api_idx_0014.l4     ; 0x653b
    mov word [bp - 0x0004], 0xc88    ; 0x653d
    mov word [bp - 0x0006], 1        ; 0x6542
@..api_idx_0014.l4:
    cmp word [bp - 0x0004], byte 0   ; 0x6547
    jne short @..api_idx_0014.l5     ; 0x654b
    mov bx, word [bp - 0x0002]       ; 0x654d
    cmp byte [bx + 0x12], 0          ; 0x6550
    jbe short @..api_idx_0014.l5     ; 0x6554
    mov ax, 0x64                     ; 0x6556
    push ax                          ; 0x6559
    call ds_dispatch_b7a9            ; 0x655a
    pop cx                           ; 0x655d
    cmp ax, strict word 0x50         ; 0x655e
    jle short @..api_idx_0014.l5     ; 0x6561
    mov word [bp - 0x0004], 0xc84    ; 0x6563
    mov word [bp - 0x0006], 0        ; 0x6568
@..api_idx_0014.l5:
    cmp word [bp - 0x0004], byte 0   ; 0x656d
    jne short @..api_idx_0014.l6     ; 0x6571
    mov bx, word [bp - 0x0002]       ; 0x6573
    cmp byte [bx + 0x16], 0          ; 0x6576
    jbe short @..api_idx_0014.l6     ; 0x657a
    mov ax, 0x64                     ; 0x657c
    push ax                          ; 0x657f
    call ds_dispatch_b7a9            ; 0x6580
    pop cx                           ; 0x6583
    cmp ax, strict word 0x4b         ; 0x6584
    jle short @..api_idx_0014.l6     ; 0x6587
    mov word [bp - 0x0004], 0xc83    ; 0x6589
    mov word [bp - 0x0006], 0        ; 0x658e
@..api_idx_0014.l6:
    mov ax, word [data_8464]         ; 0x6593
    shl ax, 1                        ; 0x6596
    mov bx, ax                       ; 0x6598
    mov bx, word [bx - 0x7b70]       ; 0x659a
    mov al, byte [bx + 0xe2]         ; 0x659e
    sub ah, ah                       ; 0x65a2
    test ax, 4                       ; 0x65a4
    je short @..api_idx_0014.l7      ; 0x65a7
    mov ax, 0x2c                     ; 0x65a9
    imul word [data_8462]            ; 0x65ac
    mov si, ax                       ; 0x65b0
    mov ax, word [data_8464]         ; 0x65b2
    shl ax, 1                        ; 0x65b5
    mov bx, ax                       ; 0x65b7
    mov bx, word [bx - 0x7b7e]       ; 0x65b9
    mov ax, word [bx + si + 0x2]     ; 0x65bd
    push ax                          ; 0x65c0
    mov ax, word [bx + si + 0x4]     ; 0x65c1
    mov cx, 4                        ; 0x65c4
    cwd                              ; 0x65c7
    idiv cx                          ; 0x65c8
    mov cx, ax                       ; 0x65ca
    pop ax                           ; 0x65cc
    cmp ax, cx                       ; 0x65cd
    jge short @..api_idx_0014.l7     ; 0x65cf
    mov word [bp - 0x0004], 0xc92    ; 0x65d1
    mov word [bp - 0x0008], 1        ; 0x65d6
@..api_idx_0014.l7:
    cmp word [bp - 0x0004], byte 0   ; 0x65db
    jg short @..api_idx_0014.l8      ; 0x65df
    jmp near @..api_idx_0014.l27     ; 0x65e1
@..api_idx_0014.l8:
    mov ax, 4                        ; 0x65e4
    push ax                          ; 0x65e7
    call api_idx_0004_5              ; 0x65e8
    pop cx                           ; 0x65eb
    push word [data_8462]            ; 0x65ec
    push word [data_8464]            ; 0x65f0
    mov ax, 0x90e6                   ; 0x65f4
    push ax                          ; 0x65f7
    call loc_15ab                    ; 0x65f8
    add sp, byte 6                   ; 0x65fb
    mov ax, data_9136                ; 0x65fe
    push ax                          ; 0x6601
    push word [bp - 0x0004]          ; 0x6602
    call ds_dispatch_b53b            ; 0x6605
    add sp, byte 4                   ; 0x6608
    mov byte [data_9186], 0          ; 0x660b
    mov ax, 0                        ; 0x6610
    push ax                          ; 0x6613
    mov ax, 0x43                     ; 0x6614
    push ax                          ; 0x6617
    cmp word [data_8464], byte 0     ; 0x6618
    jne short @..api_idx_0014.l9     ; 0x661d
    mov ax, 1                        ; 0x661f
@..api_idx_0014.l9:
    push ax                          ; 0x6622
    mov ax, data_9186                ; 0x6623
    push ax                          ; 0x6626
    mov ax, data_9136                ; 0x6627
    push ax                          ; 0x662a
    mov ax, 0x90e6                   ; 0x662b
    push ax                          ; 0x662e
    mov ax, 0                        ; 0x662f
    push ax                          ; 0x6632
    call api_idx_0004_4              ; 0x6633
    add sp, byte 0x0e                ; 0x6636
    cmp word [bp - 0x0008], byte 0   ; 0x6639
    jg short @..api_idx_0014.l10     ; 0x663d
    jmp near @..api_idx_0014.l14     ; 0x663f
@..api_idx_0014.l10:
    mov ax, 0x2c                     ; 0x6642
    imul word [data_8462]            ; 0x6645
    mov si, ax                       ; 0x6649
    mov ax, word [data_8464]         ; 0x664b
    shl ax, 1                        ; 0x664e
    mov bx, ax                       ; 0x6650
    mov bx, word [bx - 0x7b7e]       ; 0x6652
    cmp byte [bx + si + 0x2a], 0xff  ; 0x6656
    je short @..api_idx_0014.l11     ; 0x665a
    mov al, byte [bx + si + 0x2a]    ; 0x665c
    cbw                              ; 0x665f
    mov cx, 0xa                      ; 0x6660
    cwd                              ; 0x6663
    idiv cx                          ; 0x6664
    mov word [bp - 0x000e], ax       ; 0x6666
    mov al, byte [bx + si + 0x2a]    ; 0x6669
    cbw                              ; 0x666c
    cwd                              ; 0x666d
    idiv cx                          ; 0x666e
    mov word [bp - 0x0010], dx       ; 0x6670
    mov ax, 6                        ; 0x6673
    imul word [bp - 0x000e]          ; 0x6676
    mov cx, word [bp - 0x0010]       ; 0x6679
    shl cx, 1                        ; 0x667c
    add ax, cx                       ; 0x667e
    mov bx, ax                       ; 0x6680
    mov word [bx - 0x6f36], 0        ; 0x6682
    mov word [data_8320], 0          ; 0x6688
    call loc_1a35                    ; 0x668e
    mov ax, 6                        ; 0x6691
    imul word [bp - 0x000e]          ; 0x6694
    mov cx, word [bp - 0x0010]       ; 0x6697
    shl cx, 1                        ; 0x669a
    add ax, cx                       ; 0x669c
    mov bx, ax                       ; 0x669e
    mov word [bx - 0x7bc6], 0        ; 0x66a0
@..api_idx_0014.l11:
    mov ax, 0x2c                     ; 0x66a6
    imul word [data_8462]            ; 0x66a9
    mov si, ax                       ; 0x66ad
    mov ax, word [data_8464]         ; 0x66af
    shl ax, 1                        ; 0x66b2
    mov bx, ax                       ; 0x66b4
    mov bx, word [bx - 0x7b7e]       ; 0x66b6
    mov byte [bx + si + 0x2a], 0xff  ; 0x66ba
    cmp word [bp - 0x0008], byte 1   ; 0x66be
    jne short @..api_idx_0014.l12    ; 0x66c2
    mov ax, 0x2c                     ; 0x66c4
    imul word [data_8462]            ; 0x66c7
    mov si, ax                       ; 0x66cb
    mov ax, word [data_8464]         ; 0x66cd
    shl ax, 1                        ; 0x66d0
    mov bx, ax                       ; 0x66d2
    mov bx, word [bx - 0x7b7e]       ; 0x66d4
    mov byte [bx + si + 0x22], 3     ; 0x66d8
    mov ax, 0x2c                     ; 0x66dc
    imul word [data_8462]            ; 0x66df
    mov si, ax                       ; 0x66e3
    mov ax, word [data_8464]         ; 0x66e5
    shl ax, 1                        ; 0x66e8
    mov bx, ax                       ; 0x66ea
    mov bx, word [bx - 0x7b7e]       ; 0x66ec
    mov word [bx + si + 0x2], 0      ; 0x66f0
@..api_idx_0014.l12:
    mov word [bp - 0x000e], 0        ; 0x66f5
@..api_idx_0014.l13:
    mov ax, 0x2c                     ; 0x66fa
    imul word [data_8462]            ; 0x66fd
    add ax, word [bp - 0x000e]       ; 0x6701
    mov si, ax                       ; 0x6704
    mov ax, word [data_8464]         ; 0x6706
    shl ax, 1                        ; 0x6709
    mov bx, ax                       ; 0x670b
    mov bx, word [bx - 0x7b7e]       ; 0x670d
    mov byte [bx + si + 0x18], 0     ; 0x6711
    inc word [bp - 0x000e]           ; 0x6715
    mov ax, word [bp - 0x000e]       ; 0x6718
    cmp ax, strict word 4            ; 0x671b
    jl short @..api_idx_0014.l13     ; 0x671e
    push word [data_9058]            ; 0x6720
    call api_idx_0004_5              ; 0x6724
    pop cx                           ; 0x6727
    ret                              ; 0x6728
@..api_idx_0014.l14:
    push word [data_9058]            ; 0x6729
    call api_idx_0004_5              ; 0x672d
    pop cx                           ; 0x6730
    cmp word [bp - 0x0006], byte 0   ; 0x6731
    jne short @..api_idx_0014.l15    ; 0x6735
    mov bx, word [bp - 0x0002]       ; 0x6737
    mov byte [bx + 0x1e], 1          ; 0x673a
    mov bx, word [bp - 0x0002]       ; 0x673e
    mov word [bx + 0xa], 3           ; 0x6741
    mov bx, word [bp - 0x0002]       ; 0x6746
    mov byte [bx + 0x18], 0          ; 0x6749
    mov bx, word [bp - 0x0002]       ; 0x674d
    mov byte [bx + 0x19], 0          ; 0x6750
    mov bx, word [bp - 0x0002]       ; 0x6754
    mov byte [bx + 0x21], 0          ; 0x6757
    ret                              ; 0x675b
@..api_idx_0014.l15:
    mov bx, word [bp - 0x0002]       ; 0x675c
    mov byte [bx + 0x1e], 0          ; 0x675f
    mov bx, word [bp - 0x0002]       ; 0x6763
    mov byte [bx + 0x21], 0          ; 0x6766
    mov bx, word [bp - 0x0002]       ; 0x676a
    mov word [bx + 0xc], 0xffff      ; 0x676d
    mov bx, word [bp - 0x0002]       ; 0x6772
    mov word [bx + 0xa], 0xff        ; 0x6775
    cmp word [data_8464], byte 0     ; 0x677a
    jne short @..api_idx_0014.l19    ; 0x677f
    mov word [bp - 0x0004], 7        ; 0x6781
@..api_idx_0014.l16:
    push word [bp - 0x0004]          ; 0x6786
    mov ax, 0x248                    ; 0x6789
    imul word [data_8462]            ; 0x678c
    add ax, 0x5d33                   ; 0x6790
    push ax                          ; 0x6793
    call ds_dispatch_ec74            ; 0x6794
    add sp, byte 4                   ; 0x6797
    cmp ax, strict word 1            ; 0x679a
    jne short @..api_idx_0014.l17    ; 0x679d
    mov ax, word [bp - 0x0004]       ; 0x679f
    mov bx, word [bp - 0x0002]       ; 0x67a2
    mov word [bx + 0xa], ax          ; 0x67a5
@..api_idx_0014.l17:
    dec word [bp - 0x0004]           ; 0x67a8
    jge short @..api_idx_0014.l16    ; 0x67ab
    mov ax, 0x248                    ; 0x67ad
    imul word [data_8462]            ; 0x67b0
    mov bx, ax                       ; 0x67b4
    mov al, byte [bx + 0x5d48]       ; 0x67b6
    sub ah, ah                       ; 0x67ba
    mov word [bp - 0x0014], ax       ; 0x67bc
    cmp ax, 0xff                     ; 0x67bf
    je short @..api_idx_0014.l18     ; 0x67c2
    mov cx, 0xc                      ; 0x67c4
    imul cx                          ; 0x67c7
    add bx, ax                       ; 0x67c9
    cmp byte [bx + 0x5c38], 3        ; 0x67cb
    jne short @..api_idx_0014.l18    ; 0x67d0
    mov bx, word [bp - 0x0002]       ; 0x67d2
    mov word [bx + 0xa], 8           ; 0x67d5
@..api_idx_0014.l18:
    jmp short @..api_idx_0014.l22    ; 0x67da
@..api_idx_0014.l19:
    mov word [bp - 0x0004], 7        ; 0x67dc
@..api_idx_0014.l20:
    push word [bp - 0x0004]          ; 0x67e1
    mov ax, word [data_8464]         ; 0x67e4
    shl ax, 1                        ; 0x67e7
    mov bx, ax                       ; 0x67e9
    mov ax, word [bx - 0x7b70]       ; 0x67eb
    add ax, strict word 0x53         ; 0x67ef
    push ax                          ; 0x67f2
    call ds_dispatch_ec74            ; 0x67f3
    add sp, byte 4                   ; 0x67f6
    cmp ax, strict word 1            ; 0x67f9
    jne short @..api_idx_0014.l21    ; 0x67fc
    mov ax, word [bp - 0x0004]       ; 0x67fe
    mov bx, word [bp - 0x0002]       ; 0x6801
    mov word [bx + 0xa], ax          ; 0x6804
@..api_idx_0014.l21:
    dec word [bp - 0x0004]           ; 0x6807
    jge short @..api_idx_0014.l20    ; 0x680a
    mov bx, word [bp - 0x0002]       ; 0x680c
    mov al, byte [bx + 0x1c]         ; 0x680f
    sub ah, ah                       ; 0x6812
    mov word [bp - 0x0014], ax       ; 0x6814
    mov ax, word [data_8464]         ; 0x6817
    shl ax, 1                        ; 0x681a
    mov bx, ax                       ; 0x681c
    mov bx, word [bx - 0x7b70]       ; 0x681e
    mov si, word [bp - 0x0014]       ; 0x6822
    cmp byte [bx + si + 0x86], 3     ; 0x6825
    jne short @..api_idx_0014.l22    ; 0x682a
    mov bx, word [bp - 0x0002]       ; 0x682c
    mov word [bx + 0xa], 8           ; 0x682f
@..api_idx_0014.l22:
    mov bx, word [bp - 0x0002]       ; 0x6834
    cmp word [bx + 0xa], strict word 0xff ; 0x6837
    jne short @..api_idx_0014.l23    ; 0x683c
    mov word [bx + 0xa], 8           ; 0x683e
@..api_idx_0014.l23:
    mov bx, word [bp - 0x0002]       ; 0x6843
    mov byte [bx + 0x1c], 0          ; 0x6846
    mov al, byte [data_8464]         ; 0x684a
    mov bx, word [bp - 0x0002]       ; 0x684d
    mov byte [bx + 0x1f], al         ; 0x6850
    mov word [bp - 0x0012], 0        ; 0x6853
@..api_idx_0014.l24:
    mov ax, word [data_8464]         ; 0x6858
    shl ax, 1                        ; 0x685b
    mov bx, ax                       ; 0x685d
    mov bx, word [bx - 0x7b7e]       ; 0x685f
    mov al, byte [bx + 0x1a1]        ; 0x6863
    sub ah, ah                       ; 0x6867
    push ax                          ; 0x6869
    call ds_dispatch_b7a9            ; 0x686a
    pop cx                           ; 0x686d
    mov bx, word [bp - 0x0002]       ; 0x686e
    mov byte [bx + 0x20], al         ; 0x6871
    inc word [bp - 0x0012]           ; 0x6874
    cmp word [bp - 0x0012], byte 0x0a ; 0x6877
    jge short @..api_idx_0014.l25    ; 0x687b
    mov bx, word [bp - 0x0002]       ; 0x687d
    mov al, byte [bx + 0x20]         ; 0x6880
    sub ah, ah                       ; 0x6883
    cmp ax, word [data_8462]         ; 0x6885
    je short @..api_idx_0014.l24     ; 0x6889
    mov cx, 0x2c                     ; 0x688b
    imul cx                          ; 0x688e
    mov si, ax                       ; 0x6890
    mov ax, word [data_8464]         ; 0x6892
    shl ax, 1                        ; 0x6895
    mov bx, ax                       ; 0x6897
    mov bx, word [bx - 0x7b7e]       ; 0x6899
    cmp byte [bx + si + 0x22], 3     ; 0x689d
    jae short @..api_idx_0014.l24    ; 0x68a1
    cmp byte [bx + si + 0x2b], 0     ; 0x68a3
    jne short @..api_idx_0014.l24    ; 0x68a7
@..api_idx_0014.l25:
    mov ax, 1                        ; 0x68a9
    push ax                          ; 0x68ac
    call api_idx_000a_2              ; 0x68ad
    pop cx                           ; 0x68b0
    mov ax, 4                        ; 0x68b1
    push ax                          ; 0x68b4
    call api_idx_0004_5              ; 0x68b5
    pop cx                           ; 0x68b8
    push word [data_8462]            ; 0x68b9
    push word [data_8464]            ; 0x68bd
    mov ax, 0x90e6                   ; 0x68c1
    push ax                          ; 0x68c4
    call loc_15ab                    ; 0x68c5
    add sp, byte 6                   ; 0x68c8
    mov ax, data_9136                ; 0x68cb
    push ax                          ; 0x68ce
    mov ax, 0xc8b                    ; 0x68cf
    push ax                          ; 0x68d2
    call ds_dispatch_b53b            ; 0x68d3
    add sp, byte 4                   ; 0x68d6
    mov byte [data_9186], 0          ; 0x68d9
    mov ax, 0                        ; 0x68de
    push ax                          ; 0x68e1
    mov ax, 0x43                     ; 0x68e2
    push ax                          ; 0x68e5
    cmp word [data_8464], byte 0     ; 0x68e6
    jne short @..api_idx_0014.l26    ; 0x68eb
    mov ax, 1                        ; 0x68ed
@..api_idx_0014.l26:
    push ax                          ; 0x68f0
    mov ax, data_9186                ; 0x68f1
    push ax                          ; 0x68f4
    mov ax, data_9136                ; 0x68f5
    push ax                          ; 0x68f8
    mov ax, 0x90e6                   ; 0x68f9
    push ax                          ; 0x68fc
    mov ax, 0                        ; 0x68fd
    push ax                          ; 0x6900
    call api_idx_0004_4              ; 0x6901
    add sp, byte 0x0e                ; 0x6904
    mov ax, 0                        ; 0x6907
    push ax                          ; 0x690a
    call ds_dispatch_b7e0            ; 0x690b
    pop cx                           ; 0x690e
    push word [data_9058]            ; 0x690f
    call api_idx_0004_5              ; 0x6913
    pop cx                           ; 0x6916
    mov ax, 1                        ; 0x6917
    push ax                          ; 0x691a
    call api_idx_000a_2              ; 0x691b
    pop cx                           ; 0x691e
@..api_idx_0014.l27:
    cmp word [bp - 0x0006], byte 0   ; 0x691f
    jne short @..api_idx_0014.l28    ; 0x6923
    cmp word [data_8464], byte 0     ; 0x6925
    jne short @..api_idx_0014.l28    ; 0x692a
    mov bx, word [bp - 0x0002]       ; 0x692c
    cmp byte [bx + 0x1f], 0          ; 0x692f
    jne short @..api_idx_0014.l28    ; 0x6933
    jmp short @..api_idx_0014.l31    ; 0x6935
@..api_idx_0014.l28:
    mov bx, word [bp - 0x0002]       ; 0x6937
    mov al, byte [bx + 0x20]         ; 0x693a
    sub ah, ah                       ; 0x693d
    mov cx, 0x2c                     ; 0x693f
    imul cx                          ; 0x6942
    mov si, ax                       ; 0x6944
    mov al, byte [bx + 0x1f]         ; 0x6946
    sub ah, ah                       ; 0x6949
    shl ax, 1                        ; 0x694b
    mov bx, ax                       ; 0x694d
    mov bx, word [bx - 0x7b7e]       ; 0x694f
    cmp byte [bx + si + 0x22], 3     ; 0x6953
    jae short @..api_idx_0014.l29    ; 0x6957
    cmp byte [bx + si + 0x2b], 0     ; 0x6959
    je short @..api_idx_0014.l31     ; 0x695d
@..api_idx_0014.l29:
    mov bx, word [bp - 0x0002]       ; 0x695f
    cmp byte [bx + 0x1f], 0          ; 0x6962
    jne short @..api_idx_0014.l30    ; 0x6966
    mov al, byte [bx + 0x20]         ; 0x6968
    sub ah, ah                       ; 0x696b
    push ax                          ; 0x696d
    call api_idx_0004_10             ; 0x696e
    pop cx                           ; 0x6971
    mov bx, word [bp - 0x0002]       ; 0x6972
    mov byte [bx + 0x20], al         ; 0x6975
    jmp short @..api_idx_0014.l31    ; 0x6978
@..api_idx_0014.l30:
    mov bx, word [bp - 0x0002]       ; 0x697a
    mov al, byte [bx + 0x20]         ; 0x697d
    sub ah, ah                       ; 0x6980
    push ax                          ; 0x6982
    mov al, byte [bx + 0x1f]         ; 0x6983
    sub ah, ah                       ; 0x6986
    push ax                          ; 0x6988
    call api_idx_0008_2              ; 0x6989
    add sp, byte 4                   ; 0x698c
    mov bx, word [bp - 0x0002]       ; 0x698f
    mov byte [bx + 0x20], al         ; 0x6992
@..api_idx_0014.l31:
    cmp word [bp - 0x0006], byte 1   ; 0x6995
    jne short @..api_idx_0014.l32    ; 0x6999
    mov bx, word [bp - 0x0002]       ; 0x699b
    mov al, byte [bx + 0x20]         ; 0x699e
    sub ah, ah                       ; 0x69a1
    cmp ax, word [data_8462]         ; 0x69a3
    jne short @..api_idx_0014.l32    ; 0x69a7
    mov byte [bx + 0x1e], 1          ; 0x69a9
    mov bx, word [bp - 0x0002]       ; 0x69ad
    mov word [bx + 0xa], 1           ; 0x69b0
    mov bx, word [bp - 0x0002]       ; 0x69b5
    mov byte [bx + 0x18], 0          ; 0x69b8
    mov bx, word [bp - 0x0002]       ; 0x69bc
    mov byte [bx + 0x19], 0          ; 0x69bf
    mov bx, word [bp - 0x0002]       ; 0x69c3
    mov byte [bx + 0x21], 0          ; 0x69c6
    ret                              ; 0x69ca
@..api_idx_0014.l32:
    cmp word [data_8464], byte 0     ; 0x69cb
    je short @..api_idx_0014.l33     ; 0x69d0
    jmp near @..api_idx_0014.l34     ; 0x69d2
@..api_idx_0014.l33:
    mov ax, 0x248                    ; 0x69d5
    imul word [data_8462]            ; 0x69d8
    mov bx, ax                       ; 0x69dc
    mov al, byte [bx + 0x5d64]       ; 0x69de
    mov bx, word [data_8490]         ; 0x69e2
    mov byte [bx + 0x8c], al         ; 0x69e6
    mov ax, 0x248                    ; 0x69ea
    imul word [data_8462]            ; 0x69ed
    mov bx, ax                       ; 0x69f1
    mov al, byte [bx + 0x5d65]       ; 0x69f3
    mov bx, word [data_8490]         ; 0x69f7
    mov byte [bx + 0x8d], al         ; 0x69fb
    mov ax, 0x248                    ; 0x69ff
    imul word [data_8462]            ; 0x6a02
    mov bx, ax                       ; 0x6a06
    mov al, byte [bx + 0x5d68]       ; 0x6a08
    mov bx, word [data_8490]         ; 0x6a0c
    mov byte [bx + 0x8e], al         ; 0x6a10
    mov ax, 0x248                    ; 0x6a14
    imul word [data_8462]            ; 0x6a17
    mov bx, ax                       ; 0x6a1b
    mov al, byte [bx + 0x5d69]       ; 0x6a1d
    mov bx, word [data_8490]         ; 0x6a21
    mov byte [bx + 0x8f], al         ; 0x6a25
    mov ax, api_idx_0002             ; 0x6a29
    push ax                          ; 0x6a2c
    mov ax, word [data_8490]         ; 0x6a2d
    add ax, 0x9a                     ; 0x6a30
    push ax                          ; 0x6a33
    mov ax, 0x248                    ; 0x6a34
    imul word [data_8462]            ; 0x6a37
    add ax, 0x5d9c                   ; 0x6a3b
    push ax                          ; 0x6a3e
    call ds_dispatch_fedc            ; 0x6a3f
    add sp, byte 6                   ; 0x6a42
    mov ax, 8                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, word [data_8490]         ; 0x6a49
    add ax, 0xc4                     ; 0x6a4c
    push ax                          ; 0x6a4f
    mov ax, 0x248                    ; 0x6a50
    imul word [data_8462]            ; 0x6a53
    add ax, 0x5daa                   ; 0x6a57
    push ax                          ; 0x6a5a
    call ds_dispatch_fedc            ; 0x6a5b
    add sp, byte 6                   ; 0x6a5e
    mov bx, word [data_8490]         ; 0x6a61
    mov al, byte [bx + 0xc4]         ; 0x6a65
    cbw                              ; 0x6a69
    push ax                          ; 0x6a6a
    mov al, byte [bx + 0xc5]         ; 0x6a6b
    cbw                              ; 0x6a6f
    mov cx, ax                       ; 0x6a70
    pop ax                           ; 0x6a72
    add ax, cx                       ; 0x6a73
    push ax                          ; 0x6a75
    mov al, byte [bx + 0xc6]         ; 0x6a76
    cbw                              ; 0x6a7a
    mov cx, ax                       ; 0x6a7b
    pop ax                           ; 0x6a7d
    add ax, cx                       ; 0x6a7e
    mov byte [bx + 0xc4], al         ; 0x6a80
    mov ax, 0x248                    ; 0x6a84
    imul word [data_8462]            ; 0x6a87
    mov bx, ax                       ; 0x6a8b
    mov al, byte [bx + 0x5e39]       ; 0x6a8d
    mov bx, word [data_8490]         ; 0x6a91
    mov byte [bx + 0xd9], al         ; 0x6a95
    mov ax, 0x248                    ; 0x6a99
    imul word [data_8462]            ; 0x6a9c
    mov bx, ax                       ; 0x6aa0
    mov al, byte [bx + 0x5e38]       ; 0x6aa2
    mov bx, word [data_8490]         ; 0x6aa6
    mov byte [bx + 0xdb], al         ; 0x6aaa
    mov ax, 0x248                    ; 0x6aae
    imul word [data_8462]            ; 0x6ab1
    mov bx, ax                       ; 0x6ab5
    mov al, byte [bx + 0x5e37]       ; 0x6ab7
    mov bx, word [data_8490]         ; 0x6abb
    mov byte [bx + 0xda], al         ; 0x6abf
    mov ax, 0x248                    ; 0x6ac3
    imul word [data_8462]            ; 0x6ac6
    mov bx, ax                       ; 0x6aca
    mov al, byte [bx + 0x5e2c]       ; 0x6acc
    mov bx, word [data_8490]         ; 0x6ad0
    mov byte [bx + 0xdc], al         ; 0x6ad4
    mov ax, 0x248                    ; 0x6ad8
    imul word [data_8462]            ; 0x6adb
    mov bx, ax                       ; 0x6adf
    mov al, byte [bx + 0x5e2d]       ; 0x6ae1
    mov bx, word [data_8490]         ; 0x6ae5
    mov byte [bx + 0xd6], al         ; 0x6ae9
    jmp near @..api_idx_0014.l38     ; 0x6aed
@..api_idx_0014.l34:
    mov bx, word [bp - 0x0002]       ; 0x6af0
    cmp byte [bx + 0x1f], 0          ; 0x6af3
    je short @..api_idx_0014.l35     ; 0x6af7
    jmp near @..api_idx_0014.l38     ; 0x6af9
@..api_idx_0014.l35:
    mov al, byte [bx + 0x20]         ; 0x6afc
    sub ah, ah                       ; 0x6aff
    mov cx, 0x248                    ; 0x6b01
    imul cx                          ; 0x6b04
    mov bx, ax                       ; 0x6b06
    mov al, byte [bx + 0x5d64]       ; 0x6b08
    mov bx, word [data_8490]         ; 0x6b0c
    mov byte [bx + 0x8c], al         ; 0x6b10
    mov bx, word [bp - 0x0002]       ; 0x6b14
    mov al, byte [bx + 0x20]         ; 0x6b17
    sub ah, ah                       ; 0x6b1a
    imul cx                          ; 0x6b1c
    mov bx, ax                       ; 0x6b1e
    mov al, byte [bx + 0x5d65]       ; 0x6b20
    mov bx, word [data_8490]         ; 0x6b24
    mov byte [bx + 0x8d], al         ; 0x6b28
    mov bx, word [bp - 0x0002]       ; 0x6b2c
    mov al, byte [bx + 0x20]         ; 0x6b2f
    sub ah, ah                       ; 0x6b32
    imul cx                          ; 0x6b34
    mov bx, ax                       ; 0x6b36
    mov al, byte [bx + 0x5d68]       ; 0x6b38
    mov bx, word [data_8490]         ; 0x6b3c
    mov byte [bx + 0x8e], al         ; 0x6b40
    mov bx, word [bp - 0x0002]       ; 0x6b44
    mov al, byte [bx + 0x20]         ; 0x6b47
    sub ah, ah                       ; 0x6b4a
    imul cx                          ; 0x6b4c
    mov bx, ax                       ; 0x6b4e
    mov al, byte [bx + 0x5d69]       ; 0x6b50
    mov bx, word [data_8490]         ; 0x6b54
    mov byte [bx + 0x8f], al         ; 0x6b58
    mov ax, api_idx_0002             ; 0x6b5c
    push ax                          ; 0x6b5f
    mov ax, word [data_8490]         ; 0x6b60
    add ax, 0x9a                     ; 0x6b63
    push ax                          ; 0x6b66
    mov bx, word [bp - 0x0002]       ; 0x6b67
    mov al, byte [bx + 0x20]         ; 0x6b6a
    sub ah, ah                       ; 0x6b6d
    imul cx                          ; 0x6b6f
    add ax, 0x5d9c                   ; 0x6b71
    push ax                          ; 0x6b74
    call ds_dispatch_fedc            ; 0x6b75
    add sp, byte 6                   ; 0x6b78
    mov ax, 8                        ; 0x6b7b
    push ax                          ; 0x6b7e
    mov ax, word [data_8490]         ; 0x6b7f
    add ax, 0xc4                     ; 0x6b82
    push ax                          ; 0x6b85
    mov bx, word [bp - 0x0002]       ; 0x6b86
    mov al, byte [bx + 0x20]         ; 0x6b89
    sub ah, ah                       ; 0x6b8c
    mov cx, 0x248                    ; 0x6b8e
    imul cx                          ; 0x6b91
    add ax, 0x5daa                   ; 0x6b93
    push ax                          ; 0x6b96
    call ds_dispatch_fedc            ; 0x6b97
    add sp, byte 6                   ; 0x6b9a
    mov word [bp - 0x0004], 0        ; 0x6b9d
@..api_idx_0014.l36:
    cmp word [bp - 0x0004], byte 1   ; 0x6ba2
    je short @..api_idx_0014.l37     ; 0x6ba6
    cmp word [bp - 0x0004], byte 2   ; 0x6ba8
    je short @..api_idx_0014.l37     ; 0x6bac
    mov si, word [bp - 0x0004]       ; 0x6bae
    mov bx, word [data_8490]         ; 0x6bb1
    mov al, byte [bx + si + 0xc4]    ; 0x6bb5
    cbw                              ; 0x6bb9
    push ax                          ; 0x6bba
    mov al, byte [bx + 0xc5]         ; 0x6bbb
    cbw                              ; 0x6bbf
    mov cx, ax                       ; 0x6bc0
    pop ax                           ; 0x6bc2
    add ax, cx                       ; 0x6bc3
    push ax                          ; 0x6bc5
    mov al, byte [bx + 0xc6]         ; 0x6bc6
    cbw                              ; 0x6bca
    mov cx, ax                       ; 0x6bcb
    pop ax                           ; 0x6bcd
    add ax, cx                       ; 0x6bce
    mov byte [bx + si + 0xc4], al    ; 0x6bd0
@..api_idx_0014.l37:
    inc word [bp - 0x0004]           ; 0x6bd4
    mov ax, word [bp - 0x0004]       ; 0x6bd7
    cmp ax, strict word 8            ; 0x6bda
    jl short @..api_idx_0014.l36     ; 0x6bdd
    mov bx, word [bp - 0x0002]       ; 0x6bdf
    mov al, byte [bx + 0x20]         ; 0x6be2
    sub ah, ah                       ; 0x6be5
    mov cx, 0x248                    ; 0x6be7
    imul cx                          ; 0x6bea
    mov bx, ax                       ; 0x6bec
    mov al, byte [bx + 0x5e39]       ; 0x6bee
    mov bx, word [data_8490]         ; 0x6bf2
    mov byte [bx + 0xd9], al         ; 0x6bf6
    mov bx, word [bp - 0x0002]       ; 0x6bfa
    mov al, byte [bx + 0x20]         ; 0x6bfd
    sub ah, ah                       ; 0x6c00
    imul cx                          ; 0x6c02
    mov bx, ax                       ; 0x6c04
    mov al, byte [bx + 0x5e38]       ; 0x6c06
    mov bx, word [data_8490]         ; 0x6c0a
    mov byte [bx + 0xdb], al         ; 0x6c0e
    mov bx, word [bp - 0x0002]       ; 0x6c12
    mov al, byte [bx + 0x20]         ; 0x6c15
    sub ah, ah                       ; 0x6c18
    imul cx                          ; 0x6c1a
    mov bx, ax                       ; 0x6c1c
    mov al, byte [bx + 0x5e37]       ; 0x6c1e
    mov bx, word [data_8490]         ; 0x6c22
    mov byte [bx + 0xda], al         ; 0x6c26
    mov bx, word [bp - 0x0002]       ; 0x6c2a
    mov al, byte [bx + 0x20]         ; 0x6c2d
    sub ah, ah                       ; 0x6c30
    imul cx                          ; 0x6c32
    mov bx, ax                       ; 0x6c34
    mov al, byte [bx + 0x5e2c]       ; 0x6c36
    mov bx, word [data_8490]         ; 0x6c3a
    mov byte [bx + 0xdc], al         ; 0x6c3e
    mov bx, word [bp - 0x0002]       ; 0x6c42
    mov al, byte [bx + 0x20]         ; 0x6c45
    sub ah, ah                       ; 0x6c48
    imul cx                          ; 0x6c4a
    mov bx, ax                       ; 0x6c4c
    mov al, byte [bx + 0x5e2d]       ; 0x6c4e
    mov bx, word [data_8490]         ; 0x6c52
    mov byte [bx + 0xd6], al         ; 0x6c56
@..api_idx_0014.l38:
    mov bx, word [bp - 0x0002]       ; 0x6c5a
    mov al, byte [bx + 0x1e]         ; 0x6c5d
    sub ah, ah                       ; 0x6c60
    jmp near @..api_idx_0014.l39     ; 0x6c62
