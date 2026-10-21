; auto-generated
api_idx_005e_RKOR:
    mov ax, 0xffa2                   ; 0x0649
    call aztec_csav                  ; 0x064c
    mov word [bp - 0x0002], 0xf      ; 0x064f
@..api_idx_005e_RKOR.l1:
    mov bx, word [bp - 0x0002]       ; 0x0654
    mov al, byte [bx + 0x5b48]       ; 0x0657
    sub ah, ah                       ; 0x065b
    cmp ax, word [bp + 0x4]          ; 0x065d
    jne short @..api_idx_005e_RKOR.l2 ; 0x0660
    mov ax, 0                        ; 0x0662
    ret                              ; 0x0665
@..api_idx_005e_RKOR.l2:
    inc word [bp - 0x0002]           ; 0x0666
    mov ax, word [bp - 0x0002]       ; 0x0669
    cmp ax, strict word 0x12         ; 0x066c
    jl short @..api_idx_005e_RKOR.l1 ; 0x066f
    mov ax, dseg_9098                ; 0x0671
    push ax                          ; 0x0674
    lea ax, word [bp - 0x005e]       ; 0x0675
    push ax                          ; 0x0678
    call aztec_strcpy                ; 0x0679
    add sp, byte 4                   ; 0x067c
    mov ax, word [bp + 0x4]          ; 0x067f
    mov cx, 0xa                      ; 0x0682
    cwd                              ; 0x0685
    idiv cx                          ; 0x0686
    add ax, strict word 0x30         ; 0x0688
    mov byte [bp - 0x005b], al       ; 0x068b
    add dx, byte 0x30                ; 0x068e
    mov ax, dx                       ; 0x0691
    mov byte [bp - 0x005a], al       ; 0x0693
    mov ax, 0                        ; 0x0696
    push ax                          ; 0x0699
    mov ax, 1                        ; 0x069a
    push ax                          ; 0x069d
    lea ax, word [bp - 0x005e]       ; 0x069e
    push ax                          ; 0x06a1
    call data_file_path              ; 0x06a2
    add sp, byte 4                   ; 0x06a5
    push ax                          ; 0x06a8
    call aztec_open                  ; 0x06a9
    add sp, byte 4                   ; 0x06ac
    mov word [bp - 0x0004], ax       ; 0x06af
    cmp ax, strict word 0xffff       ; 0x06b2
    jne short @..api_idx_005e_RKOR.l3 ; 0x06b5
    mov ax, 0xffff                   ; 0x06b7
    ret                              ; 0x06ba
@..api_idx_005e_RKOR.l3:
    mov ax, 2                        ; 0x06bb
    push ax                          ; 0x06be
    mov ax, 0                        ; 0x06bf
    mov dx, 0                        ; 0x06c2
    push dx                          ; 0x06c5
    push ax                          ; 0x06c6
    push word [bp - 0x0004]          ; 0x06c7
    call aztec_lseek                 ; 0x06ca
    add sp, byte 8                   ; 0x06cd
    mov word [bp - 0x0006], dx       ; 0x06d0
    mov word [bp - 0x0008], ax       ; 0x06d3
    push word [bp - 0x0004]          ; 0x06d6
    call aztec_close                 ; 0x06d9
    pop cx                           ; 0x06dc
    mov word [bp - 0x000a], 0        ; 0x06dd
    mov word [bp - 0x000c], 0x2800   ; 0x06e2
    mov ax, 0                        ; 0x06e7
    push ax                          ; 0x06ea
    mov ax, 2                        ; 0x06eb
    push ax                          ; 0x06ee
    call gfx_get_free_space          ; 0x06ef
    add sp, byte 4                   ; 0x06f2
    mov cx, word [bp - 0x0008]       ; 0x06f5
    mov bx, word [bp - 0x0006]       ; 0x06f8
    add cx, word [bp - 0x000c]       ; 0x06fb
    adc bx, word [bp - 0x000a]       ; 0x06fe
    cmp dx, bx                       ; 0x0701
    jl short @..api_idx_005e_RKOR.l4 ; 0x0703
    jne short @..api_idx_005e_RKOR.l5 ; 0x0705
    cmp ax, cx                       ; 0x0707
    ja short @..api_idx_005e_RKOR.l5 ; 0x0709
@..api_idx_005e_RKOR.l4:
    jmp short @..api_idx_005e_RKOR.l6 ; 0x070b
@..api_idx_005e_RKOR.l5:
    mov ax, 0                        ; 0x070d
    ret                              ; 0x0710
@..api_idx_005e_RKOR.l6:
    cmp byte [screen_store_1_enabled], 1 ; 0x0711
    jne short @..api_idx_005e_RKOR.l9 ; 0x0716
    mov ax, 0                        ; 0x0718
    push ax                          ; 0x071b
    mov ax, 1                        ; 0x071c
    push ax                          ; 0x071f
    call gfx_get_free_space          ; 0x0720
    add sp, byte 4                   ; 0x0723
    cmp dx, word [bp - 0x000a]       ; 0x0726
    jl short @..api_idx_005e_RKOR.l7 ; 0x0729
    jne short @..api_idx_005e_RKOR.l8 ; 0x072b
    cmp ax, word [bp - 0x000c]       ; 0x072d
    ja short @..api_idx_005e_RKOR.l8 ; 0x0730
@..api_idx_005e_RKOR.l7:
    jmp short @..api_idx_005e_RKOR.l9 ; 0x0732
@..api_idx_005e_RKOR.l8:
    mov word [bp - 0x000a], 0        ; 0x0734
    mov word [bp - 0x000c], 0        ; 0x0739
    jmp short @..api_idx_005e_RKOR.l12 ; 0x073e
@..api_idx_005e_RKOR.l9:
    cmp byte [screen_store_disk_enabled], 1 ; 0x0740
    jne short @..api_idx_005e_RKOR.l12 ; 0x0745
    mov al, byte [screen_store_drive] ; 0x0747
    sub ah, ah                       ; 0x074a
    add ax, strict word 0xffc0       ; 0x074c
    mov word [bp - 0x000e], ax       ; 0x074f
    cmp ax, strict word 1            ; 0x0752
    jl short @..api_idx_005e_RKOR.l12 ; 0x0755
    cmp ax, strict word 0x1a         ; 0x0757
    jg short @..api_idx_005e_RKOR.l12 ; 0x075a
    push ax                          ; 0x075c
    mov ax, 3                        ; 0x075d
    push ax                          ; 0x0760
    call gfx_get_free_space          ; 0x0761
    add sp, byte 4                   ; 0x0764
    cmp dx, word [bp - 0x000a]       ; 0x0767
    jl short @..api_idx_005e_RKOR.l10 ; 0x076a
    jne short @..api_idx_005e_RKOR.l11 ; 0x076c
    cmp ax, word [bp - 0x000c]       ; 0x076e
    ja short @..api_idx_005e_RKOR.l11 ; 0x0771
@..api_idx_005e_RKOR.l10:
    jmp short @..api_idx_005e_RKOR.l12 ; 0x0773
@..api_idx_005e_RKOR.l11:
    mov word [bp - 0x000a], 0        ; 0x0775
    mov word [bp - 0x000c], 0        ; 0x077a
@..api_idx_005e_RKOR.l12:
    mov ax, 0                        ; 0x077f
    push ax                          ; 0x0782
    mov ax, 2                        ; 0x0783
    push ax                          ; 0x0786
    call gfx_get_free_space          ; 0x0787
    add sp, byte 4                   ; 0x078a
    mov cx, word [bp - 0x0008]       ; 0x078d
    mov bx, word [bp - 0x0006]       ; 0x0790
    add cx, word [bp - 0x000c]       ; 0x0793
    adc bx, word [bp - 0x000a]       ; 0x0796
    cmp dx, bx                       ; 0x0799
    jl short @..api_idx_005e_RKOR.l13 ; 0x079b
    jne short @..api_idx_005e_RKOR.l14 ; 0x079d
    cmp ax, cx                       ; 0x079f
    ja short @..api_idx_005e_RKOR.l14 ; 0x07a1
@..api_idx_005e_RKOR.l13:
    jmp short @..api_idx_005e_RKOR.l15 ; 0x07a3
@..api_idx_005e_RKOR.l14:
    mov ax, 0                        ; 0x07a5
    ret                              ; 0x07a8
@..api_idx_005e_RKOR.l15:
    mov ax, 0xffff                   ; 0x07a9
    ret                              ; 0x07ac
