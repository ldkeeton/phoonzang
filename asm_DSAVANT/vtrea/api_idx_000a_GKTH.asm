; auto-generated
api_idx_000a_GKTH:
    mov ax, 0xfff6                   ; 0x073b
    call aztec_csav                  ; 0x073e
    mov byte [bp - 0x000a], 1        ; 0x0741
    mov byte [bp - 0x0009], 4        ; 0x0745
    mov byte [bp - 0x0008], 0        ; 0x0749
    mov ax, 0                        ; 0x074d
    push ax                          ; 0x0750
    push ax                          ; 0x0751
    lea ax, word [bp - 0x000a]       ; 0x0752
    push ax                          ; 0x0755
    mov ax, 0                        ; 0x0756
    push ax                          ; 0x0759
    mov ax, 0x8f                     ; 0x075a
    push ax                          ; 0x075d
    mov ax, 0x21                     ; 0x075e
    push ax                          ; 0x0761
    mov ax, 0xf8                     ; 0x0762
    push ax                          ; 0x0765
    mov ax, 0x48                     ; 0x0766
    push ax                          ; 0x0769
    mov al, byte [bp - 0x000a]       ; 0x076a
    sub ah, ah                       ; 0x076d
    mov bx, ax                       ; 0x076f
    mov al, byte [bx + 0x6eb5]       ; 0x0771
    sub ah, ah                       ; 0x0775
    inc ax                           ; 0x0777
    push ax                          ; 0x0778
    shl bx, 1                        ; 0x0779
    mov al, byte [bx + 0x6e6c]       ; 0x077b
    sub ah, ah                       ; 0x077f
    inc ax                           ; 0x0781
    push ax                          ; 0x0782
    mov ax, 3                        ; 0x0783
    push ax                          ; 0x0786
    call thunk_28                    ; 0x0787
    add sp, byte 0x16                ; 0x078a
    mov byte [bp - 0x000a], 1        ; 0x078d
    mov ax, word [bss_911e]          ; 0x0791
    inc ax                           ; 0x0794
    inc ax                           ; 0x0795
    mov byte [bp - 0x0009], al       ; 0x0796
    mov byte [bp - 0x0008], 0        ; 0x0799
    mov ax, 0                        ; 0x079d
    push ax                          ; 0x07a0
    push ax                          ; 0x07a1
    lea ax, word [bp - 0x000a]       ; 0x07a2
    push ax                          ; 0x07a5
    mov ax, 0                        ; 0x07a6
    push ax                          ; 0x07a9
    mov ax, 0x8f                     ; 0x07aa
    push ax                          ; 0x07ad
    mov ax, 0x21                     ; 0x07ae
    push ax                          ; 0x07b1
    mov ax, 0xf8                     ; 0x07b2
    push ax                          ; 0x07b5
    mov ax, 0x48                     ; 0x07b6
    push ax                          ; 0x07b9
    mov al, byte [bp - 0x000a]       ; 0x07ba
    sub ah, ah                       ; 0x07bd
    mov bx, ax                       ; 0x07bf
    mov al, byte [bx + 0x7f1d]       ; 0x07c1
    sub ah, ah                       ; 0x07c5
    inc ax                           ; 0x07c7
    push ax                          ; 0x07c8
    shl bx, 1                        ; 0x07c9
    mov al, byte [bx + 0x7ed4]       ; 0x07cb
    sub ah, ah                       ; 0x07cf
    inc ax                           ; 0x07d1
    push ax                          ; 0x07d2
    mov ax, 0xf                      ; 0x07d3
    push ax                          ; 0x07d6
    call thunk_28                    ; 0x07d7
    add sp, byte 0x16                ; 0x07da
    ret                              ; 0x07dd
loc_07de:
    mov ax, 0                        ; 0x07de
    call aztec_csav                  ; 0x07e1
    mov ax, 0                        ; 0x07e4
    push ax                          ; 0x07e7
    push ax                          ; 0x07e8
    mov ax, word [bss_906c]          ; 0x07e9
    shl ax, 1                        ; 0x07ec
    shl ax, 1                        ; 0x07ee
    mov bx, ax                       ; 0x07f0
    push word [bx - 0x6f9e]          ; 0x07f2
    push word [bx - 0x6fa0]          ; 0x07f6
    call thunk_12                    ; 0x07fa
    add sp, byte 8                   ; 0x07fd
    cmp word [bss_9114], byte 1      ; 0x0800
    jne short @..loc_07de.l1         ; 0x0805
    call api_idx_000a_GKTH           ; 0x0807
    jmp short @..loc_07de.l2         ; 0x080a
@..loc_07de.l1:
    call api_idx_000e_QTQU           ; 0x080c
@..loc_07de.l2:
    call ds_app_NLKG                 ; 0x080f
    cmp word [bss_911a], byte 0      ; 0x0812
    jl short @..loc_07de.l3          ; 0x0817
    push word [bss_9120]             ; 0x0819
    push word [bss_9122]             ; 0x081d
    call loc_0111                    ; 0x0821
    add sp, byte 4                   ; 0x0824
    mov word [bss_911a], 0xffff      ; 0x0827
@..loc_07de.l3:
    cmp word [bss_9116], byte 0      ; 0x082d
    jl short @..loc_07de.l4          ; 0x0832
    push word [bss_9116]             ; 0x0834
    call api_idx_0010_SVTT           ; 0x0838
    pop cx                           ; 0x083b
    mov word [bss_9116], ax          ; 0x083c
@..loc_07de.l4:
    push word [bss_911c]             ; 0x083f
    mov ax, 0xf7                     ; 0x0843
    push ax                          ; 0x0846
    mov ax, 0x20                     ; 0x0847
    push ax                          ; 0x084a
    mov ax, 0x48                     ; 0x084b
    push ax                          ; 0x084e
    call thunk_4                     ; 0x084f
    add sp, byte 8                   ; 0x0852
    cmp word [bss_9118], byte 0      ; 0x0855
    je short @..loc_07de.l5          ; 0x085a
    mov ax, 5                        ; 0x085c
    push ax                          ; 0x085f
    call ds_app_IPOK                 ; 0x0860
    pop cx                           ; 0x0863
    mov word [bss_9118], 0           ; 0x0864
@..loc_07de.l5:
    ret                              ; 0x086a
loc_086b:
    mov ax, 0                        ; 0x086b
    call aztec_csav                  ; 0x086e
    les bx, word [dseg_0002]         ; 0x0871
    mov ax, word [es:bx]             ; 0x0875
    mov dx, word [es:bx + 0x2]       ; 0x0878
    sub ax, word [bss_908a]          ; 0x087c
    sbb dx, word [bss_908c]          ; 0x0880
    push ax                          ; 0x0884
    push dx                          ; 0x0885
    mov ax, word [bss_9124]          ; 0x0886
    cwd                              ; 0x0889
    mov cx, ax                       ; 0x088a
    mov bx, dx                       ; 0x088c
    pop dx                           ; 0x088e
    pop ax                           ; 0x088f
    cmp dx, bx                       ; 0x0890
    jl short @..loc_086b.l1          ; 0x0892
    jne short @..loc_086b.l2         ; 0x0894
    cmp ax, cx                       ; 0x0896
    jae short @..loc_086b.l2         ; 0x0898
@..loc_086b.l1:
    jmp short @..loc_086b.l4         ; 0x089a
@..loc_086b.l2:
    mov ax, word [bss_906c]          ; 0x089c
    inc ax                           ; 0x089f
    mov cx, 2                        ; 0x08a0
    cwd                              ; 0x08a3
    idiv cx                          ; 0x08a4
    mov word [bss_906c], dx          ; 0x08a6
    mov ax, word [bss_82e8]          ; 0x08aa
    inc ax                           ; 0x08ad
    cwd                              ; 0x08ae
    idiv cx                          ; 0x08af
    mov word [bss_82e8], dx          ; 0x08b1
    mov ax, word [bss_911e]          ; 0x08b5
    inc ax                           ; 0x08b8
    mov cx, 3                        ; 0x08b9
    cwd                              ; 0x08bc
    idiv cx                          ; 0x08bd
    mov word [bss_911e], dx          ; 0x08bf
    cmp word [bss_9116], byte 0      ; 0x08c3
    jl short @..loc_086b.l3          ; 0x08c8
    inc word [bss_9116]              ; 0x08ca
@..loc_086b.l3:
    les bx, word [dseg_0002]         ; 0x08ce
    mov ax, word [es:bx]             ; 0x08d2
    mov dx, word [es:bx + 0x2]       ; 0x08d5
    mov word [bss_908c], dx          ; 0x08d9
    mov word [bss_908a], ax          ; 0x08dd
    call loc_07de                    ; 0x08e0
    mov ax, 1                        ; 0x08e3
    ret                              ; 0x08e6
@..loc_086b.l4:
    mov ax, 0                        ; 0x08e7
    ret                              ; 0x08ea
