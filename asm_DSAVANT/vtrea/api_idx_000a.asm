api_idx_000a:
    mov ax, 0xfff6                   ; 0x073b
    call ds_dispatch_f40b            ; 0x073e
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
    call ds_dispatch_efd1            ; 0x0787
    add sp, byte 0x16                ; 0x078a
    mov byte [bp - 0x000a], 1        ; 0x078d
    mov ax, word [data_911e]         ; 0x0791
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
    call ds_dispatch_efd1            ; 0x07d7
    add sp, byte 0x16                ; 0x07da
    ret                              ; 0x07dd
