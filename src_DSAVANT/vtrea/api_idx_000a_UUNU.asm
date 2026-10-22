; auto-generated
api_idx_000a_UUNU:
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
    call gfx_draw_text               ; 0x0787
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
    call gfx_draw_text               ; 0x07d7
    add sp, byte 0x16                ; 0x07da
    ret                              ; 0x07dd
loc_SPML:
    mov ax, 0                        ; 0x07de
    call aztec_csav                  ; 0x07e1
    mov ax, 0                        ; 0x07e4
    push ax                          ; 0x07e7
    push ax                          ; 0x07e8
    mov ax, word [bss_906c]          ; 0x07e9
    shl ax, 1                        ; 0x07ec
    shl ax, 1                        ; 0x07ee
    mov bx, ax                       ; 0x07f0
    push word [bx + bss_9062]        ; 0x07f2
    push word [bx + bss_9060]        ; 0x07f6
    call gfx_restore_screen          ; 0x07fa
    add sp, byte 8                   ; 0x07fd
    cmp word [bss_9114], byte 1      ; 0x0800
    jne short @..loc_SPML.l1         ; 0x0805
    call api_idx_000a_UUNU           ; 0x0807
    jmp short @..loc_SPML.l2         ; 0x080a
@..loc_SPML.l1:
    call api_idx_000e_TIOP           ; 0x080c
@..loc_SPML.l2:
    call ds_app_JKOJ                 ; 0x080f
    cmp word [bss_911a], byte 0      ; 0x0812
    jl short @..loc_SPML.l3          ; 0x0817
    push word [bss_9120]             ; 0x0819
    push word [bss_9122]             ; 0x081d
    call loc_GRQV                    ; 0x0821
    add sp, byte 4                   ; 0x0824
    mov word [bss_911a], 0xffff      ; 0x0827
@..loc_SPML.l3:
    cmp word [bss_9116], byte 0      ; 0x082d
    jl short @..loc_SPML.l4          ; 0x0832
    push word [bss_9116]             ; 0x0834
    call api_idx_0010_PVHV           ; 0x0838
    pop cx                           ; 0x083b
    mov word [bss_9116], ax          ; 0x083c
@..loc_SPML.l4:
    push word [bss_911c]             ; 0x083f
    mov ax, 0xf7                     ; 0x0843
    push ax                          ; 0x0846
    mov ax, 0x20                     ; 0x0847
    push ax                          ; 0x084a
    mov ax, 0x48                     ; 0x084b
    push ax                          ; 0x084e
    call gfx_show_area               ; 0x084f
    add sp, byte 8                   ; 0x0852
    cmp word [bss_9118], byte 0      ; 0x0855
    je short @..loc_SPML.l5          ; 0x085a
    mov ax, 5                        ; 0x085c
    push ax                          ; 0x085f
    call play_sound_effect           ; 0x0860
    pop cx                           ; 0x0863
    mov word [bss_9118], 0           ; 0x0864
@..loc_SPML.l5:
    ret                              ; 0x086a
