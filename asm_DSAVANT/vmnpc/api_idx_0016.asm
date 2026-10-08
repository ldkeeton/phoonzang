api_idx_0016:
    mov ax, 0xffea                   ; 0xa546
    db 0xe8, 0xbf, 0x4e ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0xa54c
    mov word [bp - 0x0004], ax       ; 0xa54f
    mov ax, word [bp + 0x8]          ; 0xa552
    add ax, strict word 5            ; 0xa555
    push ax                          ; 0xa558
    mov ax, 6                        ; 0xa559
    imul word [bp + 0xa]             ; 0xa55c
    add ax, word [bp + 0x6]          ; 0xa55f
    push ax                          ; 0xa562
    push word [bp + 0x8]             ; 0xa563
    push word [bp + 0x6]             ; 0xa566
    db 0xe8, 0xbc, 0x43 ; call 0xe928
    add sp, byte 8                   ; 0xa56c
    mov word [bp - 0x0010], dx       ; 0xa56f
    mov word [bp - 0x0012], ax       ; 0xa572
    push word [bp + 0xe]             ; 0xa575
    push word [bp + 0xc]             ; 0xa578
    db 0xe8, 0xa5, 0x42 ; call 0xe823
    add sp, byte 4                   ; 0xa57e
    push word [bp + 0x8]             ; 0xa581
    push word [bp + 0x6]             ; 0xa584
    db 0xe8, 0x7f, 0x42 ; call 0xe809
    add sp, byte 4                   ; 0xa58a
    mov ax, 0                        ; 0xa58d
    push ax                          ; 0xa590
    push word [bp + 0x4]             ; 0xa591
    db 0xe8, 0xb7, 0x42 ; call 0xe84e
    add sp, byte 4                   ; 0xa597
    mov ax, word [bp + 0x8]          ; 0xa59a
    add ax, strict word 5            ; 0xa59d
    push ax                          ; 0xa5a0
    mov ax, 6                        ; 0xa5a1
    imul word [bp + 0xa]             ; 0xa5a4
    add ax, word [bp + 0x6]          ; 0xa5a7
    push ax                          ; 0xa5aa
    push word [bp + 0x8]             ; 0xa5ab
    push word [bp + 0x6]             ; 0xa5ae
    db 0xe8, 0x26, 0x43 ; call 0xe8da
    add sp, byte 8                   ; 0xa5b4
    push word [bp + 0x4]             ; 0xa5b7
    db 0xe8, 0xd3, 0x54 ; call 0xfa90
    pop cx                           ; 0xa5bd
    mov word [bp - 0x0006], ax       ; 0xa5be
    mov cx, 6                        ; 0xa5c1
    imul cx                          ; 0xa5c4
    add word [bp + 0x6], ax          ; 0xa5c6
@..api_idx_0016.l1:
    mov word [bp - 0x0008], 1        ; 0xa5c9
    mov word [bp - 0x000a], 0        ; 0xa5ce
    mov ax, word [bp + 0x8]          ; 0xa5d3
    add ax, strict word 5            ; 0xa5d6
    push ax                          ; 0xa5d9
    mov ax, word [bp + 0x6]          ; 0xa5da
    add ax, strict word 5            ; 0xa5dd
    push ax                          ; 0xa5e0
    push word [bp + 0x8]             ; 0xa5e1
    push word [bp + 0x6]             ; 0xa5e4
    db 0xe8, 0x3e, 0x43 ; call 0xe928
    add sp, byte 8                   ; 0xa5ea
    mov word [bp - 0x0014], dx       ; 0xa5ed
    mov word [bp - 0x0016], ax       ; 0xa5f0
@..api_idx_0016.l2:
    mov ax, 1                        ; 0xa5f3
    push ax                          ; 0xa5f6
    db 0xe8, 0x56, 0x44 ; call 0xea50
    pop cx                           ; 0xa5fa
    test ax, ax                      ; 0xa5fb
    jne short @..api_idx_0016.l6     ; 0xa5fd
    cmp word [bp - 0x000a], byte 0   ; 0xa5ff
    jne short @..api_idx_0016.l4     ; 0xa603
    call loc_109f                    ; 0xa605
    mov ax, 0                        ; 0xa608
    push ax                          ; 0xa60b
    push word [bp - 0x0014]          ; 0xa60c
    push word [bp - 0x0016]          ; 0xa60f
    db 0xe8, 0x3a, 0x43 ; call 0xe94f
    add sp, byte 6                   ; 0xa615
    cmp word [bp - 0x0008], byte 0   ; 0xa618
    je short @..api_idx_0016.l3      ; 0xa61c
    push word [bp + 0x8]             ; 0xa61e
    push word [bp + 0x6]             ; 0xa621
    db 0xe8, 0xe2, 0x41 ; call 0xe809
    add sp, byte 4                   ; 0xa627
    mov ax, 0                        ; 0xa62a
    push ax                          ; 0xa62d
    mov ax, 3                        ; 0xa62e
    push ax                          ; 0xa631
    db 0xe8, 0xfb, 0x41 ; call 0xe830
    add sp, byte 4                   ; 0xa635
@..api_idx_0016.l3:
    mov ax, word [bp + 0x8]          ; 0xa638
    add ax, strict word 5            ; 0xa63b
    push ax                          ; 0xa63e
    mov ax, word [bp + 0x6]          ; 0xa63f
    add ax, strict word 5            ; 0xa642
    push ax                          ; 0xa645
    push word [bp + 0x8]             ; 0xa646
    push word [bp + 0x6]             ; 0xa649
    db 0xe8, 0x8b, 0x42 ; call 0xe8da
    add sp, byte 8                   ; 0xa64f
    mov ax, word [bp - 0x0008]       ; 0xa652
    inc ax                           ; 0xa655
    mov cx, data_0002                ; 0xa656
    cwd                              ; 0xa659
    idiv cx                          ; 0xa65a
    mov word [bp - 0x0008], dx       ; 0xa65c
    mov word [bp - 0x000a], 5        ; 0xa65f
    jmp short @..api_idx_0016.l5     ; 0xa664
@..api_idx_0016.l4:
    mov ax, 0xa                      ; 0xa666
    push ax                          ; 0xa669
    db 0xe8, 0x1c, 0x3e ; call 0xe489
    pop cx                           ; 0xa66d
    dec word [bp - 0x000a]           ; 0xa66e
@..api_idx_0016.l5:
    jmp short @..api_idx_0016.l2     ; 0xa671
@..api_idx_0016.l6:
    mov ax, 1                        ; 0xa673
    push ax                          ; 0xa676
    push word [bp - 0x0014]          ; 0xa677
    push word [bp - 0x0016]          ; 0xa67a
    db 0xe8, 0xcf, 0x42 ; call 0xe94f
    add sp, byte 6                   ; 0xa680
    mov ax, word [bp + 0x8]          ; 0xa683
    add ax, strict word 5            ; 0xa686
    push ax                          ; 0xa689
    mov ax, word [bp + 0x6]          ; 0xa68a
    add ax, strict word 5            ; 0xa68d
    push ax                          ; 0xa690
    push word [bp + 0x8]             ; 0xa691
    push word [bp + 0x6]             ; 0xa694
    db 0xe8, 0x40, 0x42 ; call 0xe8da
    add sp, byte 8                   ; 0xa69a
    mov ax, 1                        ; 0xa69d
    push ax                          ; 0xa6a0
    db 0xe8, 0x8e, 0x44 ; call 0xeb32
    pop cx                           ; 0xa6a4
    sub ah, ah                       ; 0xa6a5
    mov word [bp - 0x0002], ax       ; 0xa6a7
    cmp ax, strict word 0xd          ; 0xa6aa
    jne short @..api_idx_0016.l7     ; 0xa6ad
    mov bx, word [bp + 0x4]          ; 0xa6af
    mov si, word [bp - 0x0006]       ; 0xa6b2
    mov byte [bx + si], 0            ; 0xa6b5
    db 0xe8, 0x5c, 0x45 ; call 0xec17
    mov ax, 1                        ; 0xa6bb
    push ax                          ; 0xa6be
    push word [bp - 0x0010]          ; 0xa6bf
    push word [bp - 0x0012]          ; 0xa6c2
    db 0xe8, 0x87, 0x42 ; call 0xe94f
    add sp, byte 6                   ; 0xa6c8
    mov ax, 0                        ; 0xa6cb
    ret                              ; 0xa6ce
@..api_idx_0016.l7:
    cmp word [bp - 0x0002], byte 8   ; 0xa6cf
    je short @..api_idx_0016.l8      ; 0xa6d3
    jmp near @..api_idx_0016.l12     ; 0xa6d5
@..api_idx_0016.l8:
    cmp word [bp - 0x0006], byte 0   ; 0xa6d8
    jle short @..api_idx_0016.l9     ; 0xa6dc
    dec word [bp - 0x0006]           ; 0xa6de
    add word [bp + 0x6], byte 0xfa   ; 0xa6e1
    mov ax, 0                        ; 0xa6e5
    push ax                          ; 0xa6e8
    push word [bp - 0x0010]          ; 0xa6e9
    push word [bp - 0x0012]          ; 0xa6ec
    db 0xe8, 0x5d, 0x42 ; call 0xe94f
    add sp, byte 6                   ; 0xa6f2
    push word [bp + 0x8]             ; 0xa6f5
    push word [bp - 0x0004]          ; 0xa6f8
    db 0xe8, 0x0b, 0x41 ; call 0xe809
    add sp, byte 4                   ; 0xa6fe
    mov bx, word [bp + 0x4]          ; 0xa701
    mov si, word [bp - 0x0006]       ; 0xa704
    mov byte [bx + si], 0            ; 0xa707
    mov ax, 0                        ; 0xa70a
    push ax                          ; 0xa70d
    push word [bp + 0x4]             ; 0xa70e
    db 0xe8, 0x3a, 0x41 ; call 0xe84e
    add sp, byte 4                   ; 0xa714
    mov ax, word [bp + 0x8]          ; 0xa717
    add ax, strict word 5            ; 0xa71a
    push ax                          ; 0xa71d
    mov ax, 6                        ; 0xa71e
    imul word [bp + 0xa]             ; 0xa721
    add ax, word [bp - 0x0004]       ; 0xa724
    push ax                          ; 0xa727
    push word [bp + 0x8]             ; 0xa728
    push word [bp - 0x0004]          ; 0xa72b
    db 0xe8, 0xa9, 0x41 ; call 0xe8da
    add sp, byte 8                   ; 0xa731
    jmp short @..api_idx_0016.l11    ; 0xa734
@..api_idx_0016.l9:
    cmp word [bp + 0x12], byte 0     ; 0xa736
    je short @..api_idx_0016.l10     ; 0xa73a
    mov bx, word [bp + 0x4]          ; 0xa73c
    mov byte [bx], 0                 ; 0xa73f
    mov ax, 1                        ; 0xa742
    push ax                          ; 0xa745
    push word [bp - 0x0010]          ; 0xa746
    push word [bp - 0x0012]          ; 0xa749
    db 0xe8, 0x00, 0x42 ; call 0xe94f
    add sp, byte 6                   ; 0xa74f
    mov ax, 0xffff                   ; 0xa752
    ret                              ; 0xa755
@..api_idx_0016.l10:
    mov ax, 0                        ; 0xa756
    push ax                          ; 0xa759
    db 0xe8, 0x83, 0x10 ; call 0xb7e0
    pop cx                           ; 0xa75d
@..api_idx_0016.l11:
    jmp near @..api_idx_0016.l20     ; 0xa75e
@..api_idx_0016.l12:
    mov ax, word [bp - 0x0006]       ; 0xa761
    cmp ax, word [bp + 0xa]          ; 0xa764
    jl short @..api_idx_0016.l17     ; 0xa767
    cmp word [bp + 0x12], byte 0     ; 0xa769
    je short @..api_idx_0016.l13     ; 0xa76d
    mov ax, 0                        ; 0xa76f
    push ax                          ; 0xa772
    db 0xe8, 0x6a, 0x10 ; call 0xb7e0
    pop cx                           ; 0xa776
    jmp short @..api_idx_0016.l16    ; 0xa777
@..api_idx_0016.l13:
    cmp word [bp + 0x10], byte 0     ; 0xa779
    jne short @..api_idx_0016.l14    ; 0xa77d
    mov ax, word [bp - 0x0002]       ; 0xa77f
    cmp ax, strict word 0x20         ; 0xa782
    jl short @..api_idx_0016.l14     ; 0xa785
    cmp ax, strict word 0x7f         ; 0xa787
    jle short @..api_idx_0016.l15    ; 0xa78a
@..api_idx_0016.l14:
    cmp word [bp + 0x10], byte 1     ; 0xa78c
    jne short @..api_idx_0016.l16    ; 0xa790
    mov ax, word [bp - 0x0002]       ; 0xa792
    cmp ax, strict word 0x30         ; 0xa795
    jl short @..api_idx_0016.l16     ; 0xa798
    cmp ax, strict word 0x39         ; 0xa79a
    jg short @..api_idx_0016.l16     ; 0xa79d
@..api_idx_0016.l15:
    mov bx, word [bp + 0x4]          ; 0xa79f
    mov si, word [bp - 0x0006]       ; 0xa7a2
    mov byte [bx + si], 0            ; 0xa7a5
    mov ax, word [bp - 0x0002]       ; 0xa7a8
    mov word [data_b054], ax         ; 0xa7ab
    mov ax, 1                        ; 0xa7ae
    push ax                          ; 0xa7b1
    push word [bp - 0x0010]          ; 0xa7b2
    push word [bp - 0x0012]          ; 0xa7b5
    db 0xe8, 0x94, 0x41 ; call 0xe94f
    add sp, byte 6                   ; 0xa7bb
    mov ax, 1                        ; 0xa7be
    ret                              ; 0xa7c1
@..api_idx_0016.l16:
    jmp near @..api_idx_0016.l20     ; 0xa7c2
@..api_idx_0016.l17:
    cmp word [bp + 0x10], byte 0     ; 0xa7c5
    jne short @..api_idx_0016.l18    ; 0xa7c9
    mov ax, word [bp - 0x0002]       ; 0xa7cb
    cmp ax, strict word 0x20         ; 0xa7ce
    jl short @..api_idx_0016.l18     ; 0xa7d1
    cmp ax, strict word 0x7f         ; 0xa7d3
    jle short @..api_idx_0016.l19    ; 0xa7d6
@..api_idx_0016.l18:
    cmp word [bp + 0x10], byte 1     ; 0xa7d8
    jne short @..api_idx_0016.l20    ; 0xa7dc
    mov ax, word [bp - 0x0002]       ; 0xa7de
    cmp ax, strict word 0x30         ; 0xa7e1
    jl short @..api_idx_0016.l20     ; 0xa7e4
    cmp ax, strict word 0x39         ; 0xa7e6
    jg short @..api_idx_0016.l20     ; 0xa7e9
@..api_idx_0016.l19:
    mov al, byte [bp - 0x0002]       ; 0xa7eb
    mov bx, word [bp + 0x4]          ; 0xa7ee
    mov si, word [bp - 0x0006]       ; 0xa7f1
    mov byte [bx + si], al           ; 0xa7f4
    inc word [bp - 0x0006]           ; 0xa7f6
    push word [bp + 0x8]             ; 0xa7f9
    push word [bp + 0x6]             ; 0xa7fc
    db 0xe8, 0x07, 0x40 ; call 0xe809
    add sp, byte 4                   ; 0xa802
    mov ax, 0                        ; 0xa805
    push ax                          ; 0xa808
    mov al, byte [bp - 0x0002]       ; 0xa809
    sub ah, ah                       ; 0xa80c
    push ax                          ; 0xa80e
    db 0xe8, 0x1e, 0x40 ; call 0xe830
    add sp, byte 4                   ; 0xa812
    mov ax, word [bp + 0x8]          ; 0xa815
    add ax, strict word 5            ; 0xa818
    push ax                          ; 0xa81b
    mov ax, word [bp + 0x6]          ; 0xa81c
    add ax, strict word 5            ; 0xa81f
    push ax                          ; 0xa822
    push word [bp + 0x8]             ; 0xa823
    push word [bp + 0x6]             ; 0xa826
    db 0xe8, 0xae, 0x40 ; call 0xe8da
    add sp, byte 8                   ; 0xa82c
    add word [bp + 0x6], byte 6      ; 0xa82f
@..api_idx_0016.l20:
    jmp near @..api_idx_0016.l1      ; 0xa833
