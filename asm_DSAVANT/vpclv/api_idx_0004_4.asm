; auto-generated
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2717
    call aztec_csav                  ; 0x271a
    mov ax, word [bp + 0x6]          ; 0x271d
    mov cx, 5                        ; 0x2720
    cwd                              ; 0x2723
    idiv cx                          ; 0x2724
    mov cx, 0xd                      ; 0x2726
    imul cx                          ; 0x2729
    mov cx, 6                        ; 0x272b
    imul cx                          ; 0x272e
    push ax                          ; 0x2730
    mov ax, word [bp + 0x6]          ; 0x2731
    mov cx, 5                        ; 0x2734
    cwd                              ; 0x2737
    idiv cx                          ; 0x2738
    mov cx, ax                       ; 0x273a
    pop ax                           ; 0x273c
    add ax, cx                       ; 0x273d
    add ax, strict word 4            ; 0x273f
    mov word [bp - 0x0002], ax       ; 0x2742
    shl dx, 1                        ; 0x2745
    mov ax, dx                       ; 0x2747
    mov cx, 6                        ; 0x2749
    imul cx                          ; 0x274c
    push ax                          ; 0x274e
    mov ax, word [bp + 0x6]          ; 0x274f
    mov cx, 5                        ; 0x2752
    cwd                              ; 0x2755
    idiv cx                          ; 0x2756
    mov cx, dx                       ; 0x2758
    shl cx, 1                        ; 0x275a
    pop ax                           ; 0x275c
    add ax, cx                       ; 0x275d
    add ax, strict word 0x72         ; 0x275f
    mov word [bp - 0x0004], ax       ; 0x2762
    push ax                          ; 0x2765
    push word [bp - 0x0002]          ; 0x2766
    call thunk                       ; 0x2769
    add sp, byte 4                   ; 0x276c
    mov ax, 4                        ; 0x276f
    push ax                          ; 0x2772
    mov bx, word [bp + 0x8]          ; 0x2773
    mov al, byte [bx + 0x5]          ; 0x2776
    sub ah, ah                       ; 0x2779
    push ax                          ; 0x277b
    call ds_loc_3a77                 ; 0x277c
    add sp, byte 4                   ; 0x277f
    push word [bp + 0xc]             ; 0x2782
    push word [bp - 0x0004]          ; 0x2785
    mov ax, word [bp - 0x0002]       ; 0x2788
    add ax, strict word 0xe          ; 0x278b
    push ax                          ; 0x278e
    push word [bp + 0xa]             ; 0x278f
    call api_idx_002a                ; 0x2792
    add sp, byte 8                   ; 0x2795
    mov bx, word [bp + 0x8]          ; 0x2798
    mov al, byte [bx + 0x4]          ; 0x279b
    sub ah, ah                       ; 0x279e
    mov bx, ax                       ; 0x27a0
    cmp byte [bx + 0x60e], 1         ; 0x27a2
    jne short @..api_idx_0004_4.l1   ; 0x27a7
    mov ax, word [bp - 0x0004]       ; 0x27a9
    add ax, strict word 6            ; 0x27ac
    push ax                          ; 0x27af
    mov ax, word [bp - 0x0002]       ; 0x27b0
    add ax, strict word 0x38         ; 0x27b3
    push ax                          ; 0x27b6
    call thunk                       ; 0x27b7
    add sp, byte 4                   ; 0x27ba
    mov ax, 0                        ; 0x27bd
    push ax                          ; 0x27c0
    mov ax, 2                        ; 0x27c1
    push ax                          ; 0x27c4
    call thunk_3                     ; 0x27c5
    add sp, byte 4                   ; 0x27c8
    mov ax, 0                        ; 0x27cb
    push ax                          ; 0x27ce
    mov ax, 3                        ; 0x27cf
    push ax                          ; 0x27d2
    mov bx, word [bp + 0x8]          ; 0x27d3
    mov al, byte [bx + 0x6]          ; 0x27d6
    sub ah, ah                       ; 0x27d9
    push ax                          ; 0x27db
    call ds_app_052e                 ; 0x27dc
    add sp, byte 6                   ; 0x27df
@..api_idx_0004_4.l1:
    ret                              ; 0x27e2
