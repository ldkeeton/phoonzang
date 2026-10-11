api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x27ab
    call ds_dispatch_f40b            ; 0x27ae
    cmp word [dseg_8f20], byte 0     ; 0x27b1
    jg short @..api_idx_000e_3.l1    ; 0x27b6
    jmp near @..api_idx_000e_3.l8    ; 0x27b8
@..api_idx_000e_3.l1:
    mov ax, word [dseg_82ee]         ; 0x27bb
    mov cx, word [dseg_8f20]         ; 0x27be
    dec cx                           ; 0x27c2
    sub ax, cx                       ; 0x27c3
    add ax, strict word 6            ; 0x27c5
    mov cx, 4                        ; 0x27c8
    cwd                              ; 0x27cb
    idiv cx                          ; 0x27cc
    mov word [bp - 0x0002], dx       ; 0x27ce
    mov ax, dx                       ; 0x27d1
    jmp short @..api_idx_000e_3.l6   ; 0x27d3
@..api_idx_000e_3.l2:
    mov byte [bp - 0x000e], 1        ; 0x27d5
    mov byte [bp - 0x000d], 2        ; 0x27d9
    mov ax, 5                        ; 0x27dd
    cmp word [bp - 0x0002], byte 0   ; 0x27e0
    jne short @..api_idx_000e_3.l3   ; 0x27e4
    mov ax, 4                        ; 0x27e6
@..api_idx_000e_3.l3:
    mov byte [bp - 0x000c], al       ; 0x27e9
    mov byte [bp - 0x000b], 0        ; 0x27ec
    mov word [bp - 0x0004], 0        ; 0x27f0
    jmp short @..api_idx_000e_3.l7   ; 0x27f5
@..api_idx_000e_3.l4:
    mov byte [bp - 0x000e], 3        ; 0x27f7
    mov byte [bp - 0x000d], 0        ; 0x27fb
    mov ax, 0                        ; 0x27ff
    cmp word [bp - 0x0002], byte 3   ; 0x2802
    jne short @..api_idx_000e_3.l5   ; 0x2806
    mov ax, 1                        ; 0x2808
@..api_idx_000e_3.l5:
    mov word [bp - 0x0004], ax       ; 0x280b
    jmp short @..api_idx_000e_3.l7   ; 0x280e
@..api_idx_000e_3.l6:
    cmp ax, strict word 0            ; 0x2810
    je short @..api_idx_000e_3.l2    ; 0x2813
    cmp ax, strict word 1            ; 0x2815
    je short @..api_idx_000e_3.l4    ; 0x2818
    cmp ax, strict word 2            ; 0x281a
    je short @..api_idx_000e_3.l2    ; 0x281d
    cmp ax, strict word 3            ; 0x281f
    je short @..api_idx_000e_3.l4    ; 0x2822
@..api_idx_000e_3.l7:
    lea ax, word [bp - 0x000e]       ; 0x2824
    push ax                          ; 0x2827
    mov ax, 0                        ; 0x2828
    push ax                          ; 0x282b
    push word [bp - 0x0004]          ; 0x282c
    mov ax, 0xf8                     ; 0x282f
    push ax                          ; 0x2832
    mov ax, 0x48                     ; 0x2833
    push ax                          ; 0x2836
    mov al, byte [bp - 0x000e]       ; 0x2837
    sub ah, ah                       ; 0x283a
    mov bx, ax                       ; 0x283c
    mov al, byte [bx + 0x6eb5]       ; 0x283e
    sub ah, ah                       ; 0x2842
    inc ax                           ; 0x2844
    push ax                          ; 0x2845
    shl bx, 1                        ; 0x2846
    mov ax, bx                       ; 0x2848
    add ax, word [bp - 0x0004]       ; 0x284a
    mov bx, ax                       ; 0x284d
    mov al, byte [bx + 0x6e6c]       ; 0x284f
    sub ah, ah                       ; 0x2853
    inc ax                           ; 0x2855
    push ax                          ; 0x2856
    mov ax, 3                        ; 0x2857
    push ax                          ; 0x285a
    mov ax, 0x1b                     ; 0x285b
    push ax                          ; 0x285e
    call api_idx_0004_6              ; 0x285f
    add sp, byte 0x12                ; 0x2862
@..api_idx_000e_3.l8:
    cmp word [dseg_8f20], byte 0xff  ; 0x2865
    jne short @..api_idx_000e_3.l9   ; 0x286a
    mov byte [bp - 0x000e], 1        ; 0x286c
    mov byte [bp - 0x000d], 0        ; 0x2870
    lea ax, word [bp - 0x000e]       ; 0x2874
    push ax                          ; 0x2877
    mov ax, 0                        ; 0x2878
    push ax                          ; 0x287b
    push ax                          ; 0x287c
    mov ax, 0xf8                     ; 0x287d
    push ax                          ; 0x2880
    mov ax, 0x48                     ; 0x2881
    push ax                          ; 0x2884
    mov al, byte [dseg_7b04]         ; 0x2885
    sub ah, ah                       ; 0x2888
    push ax                          ; 0x288a
    mov al, byte [dseg_7abc]         ; 0x288b
    sub ah, ah                       ; 0x288e
    push ax                          ; 0x2890
    mov ax, 0xc                      ; 0x2891
    push ax                          ; 0x2894
    mov ax, 0x1c                     ; 0x2895
    push ax                          ; 0x2898
    call api_idx_0004_6              ; 0x2899
    add sp, byte 0x12                ; 0x289c
@..api_idx_000e_3.l9:
    ret                              ; 0x289f
loc_28a0:
    mov ax, 0                        ; 0x28a0
    call ds_dispatch_f40b            ; 0x28a3
    mov ax, word [bp + 0x4]          ; 0x28a6
    shl ax, 1                        ; 0x28a9
    mov bx, ax                       ; 0x28ab
    mov bx, word [bx - 0x7b96]       ; 0x28ad
    mov al, byte [bx + 0x14]         ; 0x28b1
    sub ah, ah                       ; 0x28b4
    cmp ax, 0xff                     ; 0x28b6
    je short @..local.l58            ; 0x28b9
    mov al, byte [bx + 0x17]         ; 0x28bb
    sub ah, ah                       ; 0x28be
    push ax                          ; 0x28c0
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    add bx, byte 8                   ; 0x28c5
    mov ax, bx                       ; 0x28c8
    push ax                          ; 0x28ca
    mov ax, word [bp + 0x4]          ; 0x28cb
    shl ax, 1                        ; 0x28ce
    mov bx, ax                       ; 0x28d0
    mov bx, word [bx - 0x7b96]       ; 0x28d2
    mov al, byte [bx + 0x16]         ; 0x28d6
    sub ah, ah                       ; 0x28d9
    push ax                          ; 0x28db
    mov ax, 0x8e                     ; 0x28dc
    push ax                          ; 0x28df
    mov ax, 0x21                     ; 0x28e0
    push ax                          ; 0x28e3
    push word [bx + 0x6]             ; 0x28e4
    push word [bx + 0x4]             ; 0x28e7
    push word [bx + 0x2]             ; 0x28ea
    push word [bx]                   ; 0x28ed
    mov al, byte [bx + 0x15]         ; 0x28ef
    sub ah, ah                       ; 0x28f2
    push ax                          ; 0x28f4
    call ds_dispatch_efd1            ; 0x28f5
    add sp, byte 0x16                ; 0x28f8
@..local.l58:
    ret                              ; 0x28fb
