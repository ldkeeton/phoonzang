api_idx_000e:
    mov ax, 0xfff2                   ; 0x06e8
    call ds_dispatch_f40b            ; 0x06eb
    call api_idx_0002_3              ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..api_idx_000e.l1     ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
@..api_idx_000e.l1:
    mov ax, word [bp - 0x000e]       ; 0x06fd
    shl ax, 1                        ; 0x0700
    mov si, ax                       ; 0x0702
    mov bx, word [data_0e12]         ; 0x0704
    mov ax, word [bx + si + 0x1e0]   ; 0x0708
    mov word [bp - 0x0006], ax       ; 0x070c
    mov si, word [bp - 0x000e]       ; 0x070f
    mov al, byte [bx + si + 0xa50]   ; 0x0712
    sub ah, ah                       ; 0x0716
    mov word [bp - 0x0002], ax       ; 0x0718
    mov ax, 5                        ; 0x071b
    push ax                          ; 0x071e
    mov ax, 0                        ; 0x071f
    push ax                          ; 0x0722
    push word [bp - 0x0002]          ; 0x0723
    call ds_dispatch_ed3a            ; 0x0726
    add sp, byte 6                   ; 0x0729
    mov word [bp - 0x0004], ax       ; 0x072c
    mov word [bp - 0x000a], 0        ; 0x072f
    mov ax, word [bp - 0x000e]       ; 0x0734
    shl ax, 1                        ; 0x0737
    mov si, ax                       ; 0x0739
    mov bx, word [data_0e12]         ; 0x073b
    mov ax, word [bx + si + 0x3c0]   ; 0x073f
    mov word [bp - 0x0002], ax       ; 0x0743
    mov ax, data_0002                ; 0x0746
    push ax                          ; 0x0749
    mov ax, word [data_82ee]         ; 0x074a
    shl ax, 1                        ; 0x074d
    push ax                          ; 0x074f
    push word [bp - 0x0002]          ; 0x0750
    call ds_dispatch_ed3a            ; 0x0753
    add sp, byte 6                   ; 0x0756
    cmp ax, strict word 2            ; 0x0759
    jne short @..api_idx_000e.l2     ; 0x075c
    cmp word [bp - 0x0004], byte 0   ; 0x075e
    jne short @..api_idx_000e.l2     ; 0x0762
    mov word [bp - 0x000a], 1        ; 0x0764
@..api_idx_000e.l2:
    mov word [bp - 0x000c], 0        ; 0x0769
    mov ax, word [bp + 0x4]          ; 0x076e
    shl ax, 1                        ; 0x0771
    push ax                          ; 0x0773
    call ds_dispatch_b7a9            ; 0x0774
    pop cx                           ; 0x0777
    push ax                          ; 0x0778
    mov ax, word [bp + 0x4]          ; 0x0779
    shl ax, 1                        ; 0x077c
    push ax                          ; 0x077e
    call ds_dispatch_b7a9            ; 0x077f
    pop cx                           ; 0x0782
    mov cx, ax                       ; 0x0783
    pop ax                           ; 0x0785
    add ax, cx                       ; 0x0786
    push ax                          ; 0x0788
    mov ax, word [bp + 0x4]          ; 0x0789
    shl ax, 1                        ; 0x078c
    push ax                          ; 0x078e
    call ds_dispatch_b7a9            ; 0x078f
    pop cx                           ; 0x0792
    mov cx, ax                       ; 0x0793
    pop ax                           ; 0x0795
    add ax, cx                       ; 0x0796
    inc ax                           ; 0x0798
    inc ax                           ; 0x0799
    inc ax                           ; 0x079a
    mov cx, data_0002                ; 0x079b
    cwd                              ; 0x079e
    idiv cx                          ; 0x079f
    mov word [bp - 0x0008], ax       ; 0x07a1
    cmp ax, word [bp - 0x0004]       ; 0x07a4
    jge short @..api_idx_000e.l3     ; 0x07a7
    mov word [bp - 0x000c], 1        ; 0x07a9
@..api_idx_000e.l3:
    cmp word [bp - 0x000a], byte 0   ; 0x07ae
    je short @..api_idx_000e.l4      ; 0x07b2
    mov word [bp - 0x000c], data_0002 ; 0x07b4
@..api_idx_000e.l4:
    cmp word [bp - 0x000c], byte 0   ; 0x07b9
    jne short @..api_idx_000e.l5     ; 0x07bd
    push word [bp - 0x000e]          ; 0x07bf
    call loc_04b7                    ; 0x07c2
    pop cx                           ; 0x07c5
@..api_idx_000e.l5:
    mov ax, word [bp - 0x000c]       ; 0x07c6
    add ax, 0x841                    ; 0x07c9
    mov word [data_90b6], ax         ; 0x07cc
    mov ax, word [bp - 0x000c]       ; 0x07cf
    mov word [data_90b8], ax         ; 0x07d2
    mov ax, 0                        ; 0x07d5
    ret                              ; 0x07d8
