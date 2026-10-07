api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x2627
    call ds_dispatch_f40b            ; 0x262a
    mov word [bp - 0x0002], 0        ; 0x262d
@..api_idx_0002_5.l1:
    cmp word [bp + 0x4], byte 0      ; 0x2632
    jl short @..api_idx_0002_5.l2    ; 0x2636
    mov ax, word [bp - 0x0002]       ; 0x2638
    cmp ax, word [bp + 0x4]          ; 0x263b
    jne short @..api_idx_0002_5.l3   ; 0x263e
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x2640
    shl ax, 1                        ; 0x2643
    mov bx, ax                       ; 0x2645
    inc word [bx - 0x7cf2]           ; 0x2647
@..api_idx_0002_5.l3:
    mov ax, 0x14                     ; 0x264b
    imul word [bp - 0x0002]          ; 0x264e
    mov cx, word [bp - 0x0002]       ; 0x2651
    shl cx, 1                        ; 0x2654
    mov bx, cx                       ; 0x2656
    mov cx, word [bx - 0x7cf2]       ; 0x2658
    shl cx, 1                        ; 0x265c
    add ax, cx                       ; 0x265e
    mov bx, ax                       ; 0x2660
    cmp word [bx + 0x1d4], byte 0xff ; 0x2662
    jne short @..api_idx_0002_5.l4   ; 0x2667
    mov ax, word [bp - 0x0002]       ; 0x2669
    shl ax, 1                        ; 0x266c
    mov bx, ax                       ; 0x266e
    mov word [bx - 0x7cf2], 0        ; 0x2670
@..api_idx_0002_5.l4:
    inc word [bp - 0x0002]           ; 0x2676
    mov ax, word [bp - 0x0002]       ; 0x2679
    cmp ax, strict word 6            ; 0x267c
    jl short @..api_idx_0002_5.l1    ; 0x267f
    ret                              ; 0x2681
