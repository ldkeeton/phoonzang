; auto-generated
api_idx_000c_4:
    mov ax, 0xfff4                   ; 0x7708
    call aztec_csav                  ; 0x770b
    mov word [bp - 0x0002], 0        ; 0x770e
@..api_idx_000c_4.l1:
    lea ax, word [bp - 0x000c]       ; 0x7713
    push ax                          ; 0x7716
    mov ax, 0x248                    ; 0x7717
    imul word [bp + 0x4]             ; 0x771a
    mov cx, word [bp - 0x0002]       ; 0x771d
    shl cx, 1                        ; 0x7720
    shl cx, 1                        ; 0x7722
    add ax, cx                       ; 0x7724
    mov bx, ax                       ; 0x7726
    push word [bx + 0x5c1c]          ; 0x7728
    call ds_app_04c4                 ; 0x772c
    add sp, byte 4                   ; 0x772f
    mov ax, 0                        ; 0x7732
    push ax                          ; 0x7735
    mov ax, word [bp - 0x0002]       ; 0x7736
    shl ax, 1                        ; 0x7739
    shl ax, 1                        ; 0x773b
    mov bx, ax                       ; 0x773d
    push word [word bx + 0x6]        ; 0x773f
    call ds_loc_3a6a                 ; 0x7743
    add sp, byte 4                   ; 0x7746
    mov ax, word [bp - 0x0002]       ; 0x7749
    shl ax, 1                        ; 0x774c
    shl ax, 1                        ; 0x774e
    mov bx, ax                       ; 0x7750
    push word [bx + 0x18e]           ; 0x7752
    lea ax, word [bp - 0x000c]       ; 0x7756
    push ax                          ; 0x7759
    call aztec_strlen                ; 0x775a
    pop cx                           ; 0x775d
    mov cx, 6                        ; 0x775e
    imul cx                          ; 0x7761
    mov cx, 2                        ; 0x7763
    cwd                              ; 0x7766
    idiv cx                          ; 0x7767
    mov cx, ax                       ; 0x7769
    mov ax, word [bp - 0x0002]       ; 0x776b
    shl ax, 1                        ; 0x776e
    shl ax, 1                        ; 0x7770
    mov bx, ax                       ; 0x7772
    mov ax, word [bx + 0x18c]        ; 0x7774
    add ax, strict word 9            ; 0x7778
    sub ax, cx                       ; 0x777b
    push ax                          ; 0x777d
    call ds_loc_3a50                 ; 0x777e
    add sp, byte 4                   ; 0x7781
    mov ax, 0                        ; 0x7784
    push ax                          ; 0x7787
    lea ax, word [bp - 0x000c]       ; 0x7788
    push ax                          ; 0x778b
    call ds_string_loc_3a95          ; 0x778c
    add sp, byte 4                   ; 0x778f
    inc word [bp - 0x0002]           ; 0x7792
    mov ax, word [bp - 0x0002]       ; 0x7795
    cmp ax, strict word 6            ; 0x7798
    jge short @..api_idx_000c_4.l2   ; 0x779b
    jmp near @..api_idx_000c_4.l1    ; 0x779d
@..api_idx_000c_4.l2:
    ret                              ; 0x77a0
loc_77a1:
    mov ax, 0                        ; 0x77a1
    call aztec_csav                  ; 0x77a4
    les bx, word [dseg_0002]         ; 0x77a7
    mov ax, word [es:bx]             ; 0x77ab
    mov dx, word [es:bx + 0x2]       ; 0x77ae
    mov word [bss_9090], dx          ; 0x77b2
    mov word [bss_908e], ax          ; 0x77b6
    mov ax, word [bss_908e]          ; 0x77b9
    mov dx, word [bss_9090]          ; 0x77bc
    sub ax, word [bss_908a]          ; 0x77c0
    sbb dx, word [bss_908c]          ; 0x77c4
    mov word [bss_9094], dx          ; 0x77c8
    mov word [bss_9092], ax          ; 0x77cc
    mov ax, word [bss_93d6]          ; 0x77cf
    cwd                              ; 0x77d2
    mov cx, ax                       ; 0x77d3
    mov bx, dx                       ; 0x77d5
    mov ax, word [bss_9092]          ; 0x77d7
    mov dx, word [bss_9094]          ; 0x77da
    cmp bx, dx                       ; 0x77de
    jg short @..loc_77a1.l1          ; 0x77e0
    jne short @..loc_77a1.l2         ; 0x77e2
    cmp cx, ax                       ; 0x77e4
    jbe short @..loc_77a1.l2         ; 0x77e6
@..loc_77a1.l1:
    jmp short @..loc_77a1.l3         ; 0x77e8
@..loc_77a1.l2:
    mov ax, word [bss_908e]          ; 0x77ea
    mov dx, word [bss_9090]          ; 0x77ed
    mov word [bss_908c], dx          ; 0x77f1
    mov word [bss_908a], ax          ; 0x77f5
    call api_idx_000a_2              ; 0x77f8
    push word [bp + 0x4]             ; 0x77fb
    call api_idx_000c_4              ; 0x77fe
    pop cx                           ; 0x7801
    push word [bp + 0x6]             ; 0x7802
    call api_idx_0002_7              ; 0x7805
    pop cx                           ; 0x7808
    mov ax, 1                        ; 0x7809
    push ax                          ; 0x780c
    mov ax, 0x73                     ; 0x780d
    push ax                          ; 0x7810
    mov ax, 0x32                     ; 0x7811
    push ax                          ; 0x7814
    call api_idx_000c_3              ; 0x7815
    add sp, byte 6                   ; 0x7818
    mov ax, 0xc5                     ; 0x781b
    push ax                          ; 0x781e
    mov ax, 0x93                     ; 0x781f
    push ax                          ; 0x7822
    mov ax, 0x73                     ; 0x7823
    push ax                          ; 0x7826
    mov ax, 0x32                     ; 0x7827
    push ax                          ; 0x782a
    call ds_loc_3b21                 ; 0x782b
    add sp, byte 8                   ; 0x782e
@..loc_77a1.l3:
    ret                              ; 0x7831
loc_7832:
    mov ax, 0                        ; 0x7832
    call aztec_csav                  ; 0x7835
    mov ax, word [bp + 0x4]          ; 0x7838
    cmp ax, word [bp + 0x6]          ; 0x783b
    jl short @..loc_7832.l1          ; 0x783e
    inc word [bp + 0x4]              ; 0x7840
@..loc_7832.l1:
    mov ax, word [bp + 0x4]          ; 0x7843
    cmp ax, strict word 0xffff       ; 0x7846
    je short @..loc_7832.l2          ; 0x7849
    cmp ax, word [bp + 0x6]          ; 0x784b
    jl short @..loc_7832.l2          ; 0x784e
    mov ax, word [bp + 0x6]          ; 0x7850
    add ax, word [bp + 0x8]          ; 0x7853
    mov cx, ax                       ; 0x7856
    dec ax                           ; 0x7858
    mov cx, ax                       ; 0x7859
    mov ax, word [bp + 0x4]          ; 0x785b
    cmp cx, ax                       ; 0x785e
    jge short @..loc_7832.l3         ; 0x7860
@..loc_7832.l2:
    mov ax, word [bp + 0x6]          ; 0x7862
    mov word [bp + 0x4], ax          ; 0x7865
@..loc_7832.l3:
    mov ax, word [bp + 0x4]          ; 0x7868
    ret                              ; 0x786b
