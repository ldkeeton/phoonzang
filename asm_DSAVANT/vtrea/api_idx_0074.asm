api_idx_0074:
    mov ax, 0xff8c                   ; 0x66eb
    call ds_dispatch_f40b            ; 0x66ee
    mov word [data_911c], 0x8d       ; 0x66f1
    mov word [data_904e], 0xffff     ; 0x66f7
    mov word [bp - 0x0006], 0x37     ; 0x66fd
    mov word [bp - 0x0008], 0x8f     ; 0x6702
    mov word [bp - 0x000a], 0x108    ; 0x6707
    mov word [bp - 0x000c], 0xc5     ; 0x670c
    mov ax, 0x90ee                   ; 0x6711
    push ax                          ; 0x6714
    mov ax, word [bp - 0x000c]       ; 0x6715
    inc ax                           ; 0x6718
    push ax                          ; 0x6719
    mov ax, word [bp - 0x000a]       ; 0x671a
    inc ax                           ; 0x671d
    push ax                          ; 0x671e
    mov ax, word [bp - 0x0008]       ; 0x671f
    dec ax                           ; 0x6722
    push ax                          ; 0x6723
    mov ax, word [bp - 0x0006]       ; 0x6724
    dec ax                           ; 0x6727
    push ax                          ; 0x6728
    call ds_dispatch_c283            ; 0x6729
    add sp, byte 0x0a                ; 0x672c
    mov word [bp - 0x0024], ax       ; 0x672f
    push word [bp - 0x000c]          ; 0x6732
    push word [bp - 0x000a]          ; 0x6735
    push word [bp - 0x0008]          ; 0x6738
    push word [bp - 0x0006]          ; 0x673b
    call ds_dispatch_bc9a            ; 0x673e
    add sp, byte 8                   ; 0x6741
    lea ax, word [bp - 0x004c]       ; 0x6744
    push ax                          ; 0x6747
    push word [bp + 0x6]             ; 0x6748
    call ds_dispatch_b53b            ; 0x674b
    add sp, byte 4                   ; 0x674e
    mov ax, 0xc2                     ; 0x6751
    push ax                          ; 0x6754
    mov ax, 0x1c                     ; 0x6755
    push ax                          ; 0x6758
    call ds_dispatch_e823            ; 0x6759
    add sp, byte 4                   ; 0x675c
    mov ax, word [bp - 0x0008]       ; 0x675f
    add ax, strict word 9            ; 0x6762
    push ax                          ; 0x6765
    lea ax, word [bp - 0x004c]       ; 0x6766
    push ax                          ; 0x6769
    call ds_dispatch_fa90            ; 0x676a
    pop cx                           ; 0x676d
    mov cx, ax                       ; 0x676e
    mov ax, 0xc                      ; 0x6770
    sub ax, cx                       ; 0x6773
    mov cx, 6                        ; 0x6775
    imul cx                          ; 0x6778
    mov cx, data_0002                ; 0x677a
    cwd                              ; 0x677d
    idiv cx                          ; 0x677e
    add ax, word [bp - 0x0006]       ; 0x6780
    add ax, strict word 9            ; 0x6783
    push ax                          ; 0x6786
    call ds_dispatch_e809            ; 0x6787
    add sp, byte 4                   ; 0x678a
    mov ax, 0                        ; 0x678d
    push ax                          ; 0x6790
    lea ax, word [bp - 0x004c]       ; 0x6791
    push ax                          ; 0x6794
    call ds_dispatch_e84e            ; 0x6795
    add sp, byte 4                   ; 0x6798
    lea ax, word [bp - 0x0074]       ; 0x679b
    push ax                          ; 0x679e
    mov ax, word [bp + 0x6]          ; 0x679f
    inc ax                           ; 0x67a2
    push ax                          ; 0x67a3
    call ds_dispatch_b53b            ; 0x67a4
    add sp, byte 4                   ; 0x67a7
    lea ax, word [bp - 0x0074]       ; 0x67aa
    push ax                          ; 0x67ad
    push word [bp + 0x8]             ; 0x67ae
    mov ax, 1                        ; 0x67b1
    push ax                          ; 0x67b4
    mov ax, 0xc                      ; 0x67b5
    push ax                          ; 0x67b8
    mov ax, word [bp - 0x0008]       ; 0x67b9
    add ax, strict word 0x16         ; 0x67bc
    push ax                          ; 0x67bf
    mov ax, word [bp - 0x0006]       ; 0x67c0
    add ax, strict word 8            ; 0x67c3
    push ax                          ; 0x67c6
    call ds_dispatch_c0c1            ; 0x67c7
    add sp, byte 0x0c                ; 0x67ca
    lea ax, word [bp - 0x004c]       ; 0x67cd
    push ax                          ; 0x67d0
    mov ax, word [bp + 0x6]          ; 0x67d1
    inc ax                           ; 0x67d4
    inc ax                           ; 0x67d5
    push ax                          ; 0x67d6
    call ds_dispatch_b53b            ; 0x67d7
    add sp, byte 4                   ; 0x67da
    lea ax, word [bp - 0x004c]       ; 0x67dd
    push ax                          ; 0x67e0
    push word [bp + 0xa]             ; 0x67e1
    mov ax, 1                        ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0xc                      ; 0x67e8
    push ax                          ; 0x67eb
    mov ax, word [bp - 0x0008]       ; 0x67ec
    add ax, strict word 0x26         ; 0x67ef
    push ax                          ; 0x67f2
    mov ax, word [bp - 0x0006]       ; 0x67f3
    add ax, strict word 8            ; 0x67f6
    push ax                          ; 0x67f9
    call ds_dispatch_c0c1            ; 0x67fa
    add sp, byte 0x0c                ; 0x67fd
    lea ax, word [bp - 0x004c]       ; 0x6800
    push ax                          ; 0x6803
    mov ax, word [bp + 0x6]          ; 0x6804
    inc ax                           ; 0x6807
    inc ax                           ; 0x6808
    inc ax                           ; 0x6809
    push ax                          ; 0x680a
    call ds_dispatch_b53b            ; 0x680b
    add sp, byte 4                   ; 0x680e
    mov ax, 0xc2                     ; 0x6811
    push ax                          ; 0x6814
    mov ax, 1                        ; 0x6815
    push ax                          ; 0x6818
    call ds_dispatch_e823            ; 0x6819
    add sp, byte 4                   ; 0x681c
    mov ax, word [bp - 0x0008]       ; 0x681f
    add ax, strict word 6            ; 0x6822
    push ax                          ; 0x6825
    lea ax, word [bp - 0x004c]       ; 0x6826
    push ax                          ; 0x6829
    call ds_dispatch_fa90            ; 0x682a
    pop cx                           ; 0x682d
    mov cx, 6                        ; 0x682e
    imul cx                          ; 0x6831
    mov cx, data_0002                ; 0x6833
    cwd                              ; 0x6836
    idiv cx                          ; 0x6837
    mov cx, ax                       ; 0x6839
    mov ax, word [bp - 0x0006]       ; 0x683b
    add ax, 0x93                     ; 0x683e
    sub ax, cx                       ; 0x6841
    push ax                          ; 0x6843
    call ds_dispatch_e809            ; 0x6844
    add sp, byte 4                   ; 0x6847
    mov ax, 0                        ; 0x684a
    push ax                          ; 0x684d
    lea ax, word [bp - 0x004c]       ; 0x684e
    push ax                          ; 0x6851
    call ds_dispatch_e84e            ; 0x6852
    add sp, byte 4                   ; 0x6855
    lea ax, word [bp - 0x004c]       ; 0x6858
    push ax                          ; 0x685b
    mov ax, word [bp + 0x6]          ; 0x685c
    add ax, strict word 4            ; 0x685f
    push ax                          ; 0x6862
    call ds_dispatch_b53b            ; 0x6863
    add sp, byte 4                   ; 0x6866
    mov ax, 0xc2                     ; 0x6869
    push ax                          ; 0x686c
    mov ax, 0x9b                     ; 0x686d
    push ax                          ; 0x6870
    call ds_dispatch_e823            ; 0x6871
    add sp, byte 4                   ; 0x6874
    mov ax, word [bp - 0x0008]       ; 0x6877
    add ax, strict word 0x1e         ; 0x687a
    push ax                          ; 0x687d
    lea ax, word [bp - 0x004c]       ; 0x687e
    push ax                          ; 0x6881
    call ds_dispatch_fa90            ; 0x6882
    pop cx                           ; 0x6885
    mov cx, 6                        ; 0x6886
    imul cx                          ; 0x6889
    mov cx, data_0002                ; 0x688b
    cwd                              ; 0x688e
    idiv cx                          ; 0x688f
    mov cx, ax                       ; 0x6891
    mov ax, word [bp - 0x0006]       ; 0x6893
    add ax, 0x93                     ; 0x6896
    sub ax, cx                       ; 0x6899
    push ax                          ; 0x689b
    call ds_dispatch_e809            ; 0x689c
    add sp, byte 4                   ; 0x689f
    mov ax, 0                        ; 0x68a2
    push ax                          ; 0x68a5
    lea ax, word [bp - 0x004c]       ; 0x68a6
    push ax                          ; 0x68a9
    call ds_dispatch_e84e            ; 0x68aa
    add sp, byte 4                   ; 0x68ad
    mov word [bp - 0x0002], 0        ; 0x68b0
@..api_idx_0074.l1:
    mov ax, word [bp - 0x0008]       ; 0x68b5
    add ax, strict word 0x15         ; 0x68b8
    push ax                          ; 0x68bb
    mov ax, word [bp - 0x0002]       ; 0x68bc
    shl ax, 1                        ; 0x68bf
    shl ax, 1                        ; 0x68c1
    shl ax, 1                        ; 0x68c3
    add ax, word [bp - 0x0006]       ; 0x68c5
    add ax, strict word 0x60         ; 0x68c8
    push ax                          ; 0x68cb
    mov ax, word [bp - 0x0008]       ; 0x68cc
    add ax, strict word 0xf          ; 0x68cf
    push ax                          ; 0x68d2
    mov ax, word [bp - 0x0002]       ; 0x68d3
    shl ax, 1                        ; 0x68d6
    shl ax, 1                        ; 0x68d8
    shl ax, 1                        ; 0x68da
    add ax, word [bp - 0x0006]       ; 0x68dc
    add ax, strict word 0x5c         ; 0x68df
    push ax                          ; 0x68e2
    call ds_dispatch_bd98            ; 0x68e3
    add sp, byte 8                   ; 0x68e6
