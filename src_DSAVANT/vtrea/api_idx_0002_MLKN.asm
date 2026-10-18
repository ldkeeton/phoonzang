; auto-generated
api_idx_0002_MLKN:
    mov ax, 0xfffe                   ; 0x56cc
    call aztec_csav                  ; 0x56cf
    mov al, byte [bp + 0x4]          ; 0x56d2
    push ax                          ; 0x56d5
    mov ax, 6                        ; 0x56d6
    imul word [bp + 0x8]             ; 0x56d9
    mov bx, ax                       ; 0x56dc
    pop ax                           ; 0x56de
    mov byte [bx + bss_84a6], al     ; 0x56df
    mov byte [bx - 0x7b59], 0        ; 0x56e3
    mov ax, 1                        ; 0x56e8
    push ax                          ; 0x56eb
    push word [bp + 0x8]             ; 0x56ec
    mov ax, 0x26                     ; 0x56ef
    imul word [bp + 0x4]             ; 0x56f2
    add ax, 0x8502                   ; 0x56f5
    push ax                          ; 0x56f8
    call set_bitmap_bit              ; 0x56f9
    add sp, byte 6                   ; 0x56fc
    mov ax, 1                        ; 0x56ff
    push ax                          ; 0x5702
    push word [bp + 0x8]             ; 0x5703
    mov ax, 0x26                     ; 0x5706
    imul word [bp + 0x4]             ; 0x5709
    add ax, 0x850a                   ; 0x570c
    push ax                          ; 0x570f
    call set_bitmap_bit              ; 0x5710
    add sp, byte 6                   ; 0x5713
    mov word [bp - 0x0002], 0        ; 0x5716
@..api_idx_0002_MLKN.l1:
    mov ax, 0                        ; 0x571b
    push ax                          ; 0x571e
    push word [bp + 0x8]             ; 0x571f
    mov ax, 0x26                     ; 0x5722
    imul word [bp - 0x0002]          ; 0x5725
    add ax, 0x8504                   ; 0x5728
    push ax                          ; 0x572b
    call set_bitmap_bit              ; 0x572c
    add sp, byte 6                   ; 0x572f
    inc word [bp - 0x0002]           ; 0x5732
    mov ax, word [bp - 0x0002]       ; 0x5735
    cmp ax, strict word 0x16         ; 0x5738
    jl short @..api_idx_0002_MLKN.l1 ; 0x573b
    mov ax, 1                        ; 0x573d
    push ax                          ; 0x5740
    push word [bp + 0x8]             ; 0x5741
    mov ax, 0x26                     ; 0x5744
    imul word [bp + 0x4]             ; 0x5747
    add ax, 0x8504                   ; 0x574a
    push ax                          ; 0x574d
    call set_bitmap_bit              ; 0x574e
    add sp, byte 6                   ; 0x5751
    cmp word [bp + 0x6], byte 0xff   ; 0x5754
    je short @..api_idx_0002_MLKN.l2 ; 0x5758
    mov ax, 0                        ; 0x575a
    push ax                          ; 0x575d
    push word [bp + 0x8]             ; 0x575e
    mov ax, 0x26                     ; 0x5761
    imul word [bp + 0x6]             ; 0x5764
    add ax, 0x8502                   ; 0x5767
    push ax                          ; 0x576a
    call set_bitmap_bit              ; 0x576b
    add sp, byte 6                   ; 0x576e
    mov ax, 1                        ; 0x5771
    push ax                          ; 0x5774
    push word [bp + 0x8]             ; 0x5775
    mov ax, 0x26                     ; 0x5778
    imul word [bp + 0x6]             ; 0x577b
    add ax, 0x8504                   ; 0x577e
    push ax                          ; 0x5781
    call set_bitmap_bit              ; 0x5782
    add sp, byte 6                   ; 0x5785
@..api_idx_0002_MLKN.l2:
    ret                              ; 0x5788
