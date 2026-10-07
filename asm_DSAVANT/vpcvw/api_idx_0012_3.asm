api_idx_0012_3:
    mov ax, 0xffee                   ; 0x0781
    call ds_dispatch_f40b            ; 0x0784
    cmp word [data_0e32], byte 0     ; 0x0787
    je short @..api_idx_0012_3.l1    ; 0x078c
    jmp near @..api_idx_0012_3.l6    ; 0x078e
@..api_idx_0012_3.l1:
    mov ax, 0xa3                     ; 0x0791
    push ax                          ; 0x0794
    mov ax, 0xb1                     ; 0x0795
    push ax                          ; 0x0798
    mov ax, 0x90                     ; 0x0799
    push ax                          ; 0x079c
    mov ax, 0x9a                     ; 0x079d
    push ax                          ; 0x07a0
    call ds_dispatch_e928            ; 0x07a1
    add sp, byte 8                   ; 0x07a4
    mov word [bp - 0x0010], dx       ; 0x07a7
    mov word [bp - 0x0012], ax       ; 0x07aa
    mov ax, 0x90                     ; 0x07ad
    push ax                          ; 0x07b0
    mov ax, 0x9a                     ; 0x07b1
    push ax                          ; 0x07b4
    call ds_dispatch_e809            ; 0x07b5
    add sp, byte 4                   ; 0x07b8
    mov ax, 7                        ; 0x07bb
    push ax                          ; 0x07be
    mov ax, 0x12                     ; 0x07bf
    push ax                          ; 0x07c2
    call ds_dispatch_e830            ; 0x07c3
    add sp, byte 4                   ; 0x07c6
    mov ax, 0x9c                     ; 0x07c9
    push ax                          ; 0x07cc
    mov ax, 0x9a                     ; 0x07cd
    push ax                          ; 0x07d0
    call ds_dispatch_e809            ; 0x07d1
    add sp, byte 4                   ; 0x07d4
    mov ax, 7                        ; 0x07d7
    push ax                          ; 0x07da
    mov ax, 0x15                     ; 0x07db
    push ax                          ; 0x07de
    call ds_dispatch_e830            ; 0x07df
    add sp, byte 4                   ; 0x07e2
    mov ax, 0x9c                     ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0xa6                     ; 0x07e9
    push ax                          ; 0x07ec
    call ds_dispatch_e809            ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    mov ax, 7                        ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, 0x16                     ; 0x07f7
    push ax                          ; 0x07fa
    call ds_dispatch_e830            ; 0x07fb
    add sp, byte 4                   ; 0x07fe
    mov ax, 0xa3                     ; 0x0801
    push ax                          ; 0x0804
    mov ax, 0xb1                     ; 0x0805
    push ax                          ; 0x0808
    mov ax, 0x90                     ; 0x0809
    push ax                          ; 0x080c
    mov ax, 0x9a                     ; 0x080d
    push ax                          ; 0x0810
    call ds_dispatch_e8da            ; 0x0811
    add sp, byte 8                   ; 0x0814
    mov word [bp - 0x0004], 0xfffe   ; 0x0817
@..api_idx_0012_3.l2:
    cmp word [bp - 0x0004], byte 0xfe ; 0x081c
    jne short @..api_idx_0012_3.l5   ; 0x0820
    mov ax, 1                        ; 0x0822
    push ax                          ; 0x0825
    call ds_dispatch_eb32            ; 0x0826
    pop cx                           ; 0x0829
    sub ah, ah                       ; 0x082a
    mov word [bp - 0x0002], ax       ; 0x082c
    cmp ax, strict word 0x1b         ; 0x082f
    jne short @..api_idx_0012_3.l3   ; 0x0832
    mov word [bp - 0x0004], 0xffff   ; 0x0834
@..api_idx_0012_3.l3:
    cmp ax, strict word 0x30         ; 0x0839
    jl short @..api_idx_0012_3.l4    ; 0x083c
    cmp ax, strict word 0x39         ; 0x083e
    jg short @..api_idx_0012_3.l4    ; 0x0841
    add ax, strict word 0xffd9       ; 0x0843
    mov cx, 0xa                      ; 0x0846
    cwd                              ; 0x0849
    idiv cx                          ; 0x084a
    mov word [bp - 0x0004], dx       ; 0x084c
@..api_idx_0012_3.l4:
    jmp short @..api_idx_0012_3.l2   ; 0x084f
@..api_idx_0012_3.l5:
    mov ax, 1                        ; 0x0851
    push ax                          ; 0x0854
    push word [bp - 0x0010]          ; 0x0855
    push word [bp - 0x0012]          ; 0x0858
    call ds_dispatch_e94f            ; 0x085b
    add sp, byte 6                   ; 0x085e
    mov ax, 0xa3                     ; 0x0861
    push ax                          ; 0x0864
    mov ax, 0xb1                     ; 0x0865
    push ax                          ; 0x0868
    mov ax, 0x90                     ; 0x0869
    push ax                          ; 0x086c
    mov ax, 0x9a                     ; 0x086d
    push ax                          ; 0x0870
    call ds_dispatch_e8da            ; 0x0871
    add sp, byte 8                   ; 0x0874
    mov ax, word [bp - 0x0004]       ; 0x0877
    ret                              ; 0x087a
