api_idx_0044:
    mov ax, 0xffbc                   ; 0x2988
    call ds_dispatch_f40b            ; 0x298b
    mov word [bp - 0x0002], 0        ; 0x298e
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x2993
    shl ax, 1                        ; 0x2996
    mov bx, ax                       ; 0x2998
    mov word [bx - 0x7cf2], 0        ; 0x299a
    inc word [bp - 0x0002]           ; 0x29a0
    mov ax, word [bp - 0x0002]       ; 0x29a3
    cmp ax, strict word 6            ; 0x29a6
    jl short @..api_idx_0044.l1      ; 0x29a9
    mov word [data_904e], 0xffff     ; 0x29ab
    mov word [bp - 0x0004], 0x32     ; 0x29b1
    mov word [bp - 0x0006], 0x73     ; 0x29b6
    mov word [bp - 0x0008], 0x10d    ; 0x29bb
    mov word [bp - 0x000a], 0xc5     ; 0x29c0
    mov word [bp - 0x000c], 0x95     ; 0x29c5
    mov word [bp - 0x0014], 0x16     ; 0x29ca
    mov ax, 0x909e                   ; 0x29cf
    push ax                          ; 0x29d2
    mov ax, word [bp - 0x000a]       ; 0x29d3
    inc ax                           ; 0x29d6
    push ax                          ; 0x29d7
    mov ax, word [bp - 0x0008]       ; 0x29d8
    inc ax                           ; 0x29db
    push ax                          ; 0x29dc
    mov ax, word [bp - 0x0006]       ; 0x29dd
    dec ax                           ; 0x29e0
    push ax                          ; 0x29e1
    mov ax, word [bp - 0x0004]       ; 0x29e2
    dec ax                           ; 0x29e5
    push ax                          ; 0x29e6
    call ds_dispatch_c283            ; 0x29e7
    add sp, byte 0x0a                ; 0x29ea
    mov word [bp - 0x003a], ax       ; 0x29ed
    push word [bp - 0x000a]          ; 0x29f0
    push word [bp - 0x0008]          ; 0x29f3
    push word [bp - 0x0006]          ; 0x29f6
    push word [bp - 0x0004]          ; 0x29f9
    call ds_dispatch_bc9a            ; 0x29fc
    add sp, byte 8                   ; 0x29ff
    push word [bp - 0x000a]          ; 0x2a02
    push word [bp - 0x0008]          ; 0x2a05
    push word [bp - 0x0006]          ; 0x2a08
    mov ax, 0x95                     ; 0x2a0b
    push ax                          ; 0x2a0e
    call ds_dispatch_bc9a            ; 0x2a0f
    add sp, byte 8                   ; 0x2a12
    call api_idx_000a_3              ; 0x2a15
    push word [bp + 0x4]             ; 0x2a18
    call api_idx_000c_3              ; 0x2a1b
    pop cx                           ; 0x2a1e
    mov ax, 1                        ; 0x2a1f
    push ax                          ; 0x2a22
    mov ax, 0x73                     ; 0x2a23
    push ax                          ; 0x2a26
    mov ax, 0x32                     ; 0x2a27
    push ax                          ; 0x2a2a
    call api_idx_000c_2              ; 0x2a2b
    add sp, byte 6                   ; 0x2a2e
    lea ax, word [bp - 0x0038]       ; 0x2a31
    push ax                          ; 0x2a34
    push word [bp + 0x6]             ; 0x2a35
    call ds_dispatch_b53b            ; 0x2a38
    add sp, byte 4                   ; 0x2a3b
    lea ax, word [bp - 0x0038]       ; 0x2a3e
    push ax                          ; 0x2a41
    push word [bp + 0x8]             ; 0x2a42
    mov ax, 1                        ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 8                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, word [bp - 0x0006]       ; 0x2a4d
    add ax, strict word 6            ; 0x2a50
    push ax                          ; 0x2a53
    mov ax, word [bp - 0x000c]       ; 0x2a54
    add ax, strict word 6            ; 0x2a57
    push ax                          ; 0x2a5a
    call ds_dispatch_c0c1            ; 0x2a5b
    add sp, byte 0x0c                ; 0x2a5e
    lea ax, word [bp - 0x0038]       ; 0x2a61
    push ax                          ; 0x2a64
    mov ax, word [bp + 0x6]          ; 0x2a65
    inc ax                           ; 0x2a68
    push ax                          ; 0x2a69
    call ds_dispatch_b53b            ; 0x2a6a
    add sp, byte 4                   ; 0x2a6d
    lea ax, word [bp - 0x0038]       ; 0x2a70
    push ax                          ; 0x2a73
    mov ax, 1                        ; 0x2a74
    push ax                          ; 0x2a77
    push ax                          ; 0x2a78
    mov ax, 8                        ; 0x2a79
    push ax                          ; 0x2a7c
    mov ax, word [bp - 0x0006]       ; 0x2a7d
    add ax, strict word 6            ; 0x2a80
    push ax                          ; 0x2a83
    mov ax, word [bp - 0x000c]       ; 0x2a84
    add ax, strict word 0x42         ; 0x2a87
    push ax                          ; 0x2a8a
    call ds_dispatch_c0c1            ; 0x2a8b
    add sp, byte 0x0c                ; 0x2a8e
    mov ax, word [bp - 0x0006]       ; 0x2a91
    add ax, strict word 0x14         ; 0x2a94
    push ax                          ; 0x2a97
    mov ax, word [bp - 0x000c]       ; 0x2a98
    add ax, strict word 0x48         ; 0x2a9b
    push ax                          ; 0x2a9e
    call ds_dispatch_e809            ; 0x2a9f
    add sp, byte 4                   ; 0x2aa2
    mov ax, 0                        ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, 0xcd                     ; 0x2aa9
    push ax                          ; 0x2aac
    call ds_dispatch_e823            ; 0x2aad
    add sp, byte 4                   ; 0x2ab0
    mov ax, data_0002                ; 0x2ab3
    push ax                          ; 0x2ab6
    mov ax, 0xa                      ; 0x2ab7
    push ax                          ; 0x2aba
    call ds_dispatch_e830            ; 0x2abb
    add sp, byte 4                   ; 0x2abe
    mov word [bp - 0x003c], 0xffff   ; 0x2ac1
    mov word [bp - 0x003e], 0        ; 0x2ac6
    mov word [bp - 0x0040], 0        ; 0x2acb
    mov word [bp - 0x0002], 0        ; 0x2ad0
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x2ad5
    mov cx, word [bp - 0x0002]       ; 0x2ad8
    cmp cx, word [bp - 0x003e]       ; 0x2adb
    jne short @..api_idx_0044.l3     ; 0x2ade
    mov ax, 1                        ; 0x2ae0
@..api_idx_0044.l3:
    push ax                          ; 0x2ae3
    push cx                          ; 0x2ae4
    mov ax, word [bp - 0x0006]       ; 0x2ae5
    add ax, strict word 0x14         ; 0x2ae8
    push ax                          ; 0x2aeb
    mov ax, word [bp - 0x000c]       ; 0x2aec
    add ax, strict word 0xc          ; 0x2aef
    push ax                          ; 0x2af2
    call math_loc_2731               ; 0x2af3
    add sp, byte 8                   ; 0x2af6
    inc word [bp - 0x0002]           ; 0x2af9
    mov ax, word [bp - 0x0002]       ; 0x2afc
    cmp ax, strict word 7            ; 0x2aff
    jl short @..api_idx_0044.l2      ; 0x2b02
    mov word [bp - 0x0042], 0        ; 0x2b04
    mov ax, 0                        ; 0x2b09
    push ax                          ; 0x2b0c
    push ax                          ; 0x2b0d
    push word [bp - 0x0042]          ; 0x2b0e
    mov ax, word [bp - 0x0006]       ; 0x2b11
    add ax, strict word 0x15         ; 0x2b14
    push ax                          ; 0x2b17
    mov ax, word [bp - 0x000c]       ; 0x2b18
    add ax, strict word 0x5e         ; 0x2b1b
    push ax                          ; 0x2b1e
    call loc_27bd                    ; 0x2b1f
    add sp, byte 0x0a                ; 0x2b22
    push word [bp - 0x0042]          ; 0x2b25
    push word [bp + 0x4]             ; 0x2b28
    call api_idx_0004_4              ; 0x2b2b
    add sp, byte 4                   ; 0x2b2e
    mov word [bp - 0x0044], ax       ; 0x2b31
    mov ax, 7                        ; 0x2b34
    cmp word [bp - 0x0044], byte 7   ; 0x2b37
    jge short @..api_idx_0044.l4     ; 0x2b3b
    mov ax, word [bp - 0x0044]       ; 0x2b3d
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x2b40
    mov word [bp - 0x0018], 0        ; 0x2b43
    mov word [bp - 0x0022], 0xffff   ; 0x2b48
    push ax                          ; 0x2b4d
    push word [bp - 0x0022]          ; 0x2b4e
    push word [bp - 0x0018]          ; 0x2b51
    mov ax, 7                        ; 0x2b54
    push ax                          ; 0x2b57
    mov ax, 0xf                      ; 0x2b58
    push ax                          ; 0x2b5b
    mov ax, word [bp - 0x0006]       ; 0x2b5c
    add ax, strict word 0x22         ; 0x2b5f
    push ax                          ; 0x2b62
    mov ax, word [bp - 0x000c]       ; 0x2b63
    add ax, strict word 6            ; 0x2b66
    push ax                          ; 0x2b69
    call ds_dispatch_bf97            ; 0x2b6a
    add sp, byte 0x0e                ; 0x2b6d
    mov word [bp - 0x0012], 0        ; 0x2b70
    push word [bp - 0x0012]          ; 0x2b75
    mov ax, 7                        ; 0x2b78
    push ax                          ; 0x2b7b
    mov ax, 8                        ; 0x2b7c
    push ax                          ; 0x2b7f
    mov ax, word [bp - 0x0006]       ; 0x2b80
    add ax, strict word 0x22         ; 0x2b83
    push ax                          ; 0x2b86
