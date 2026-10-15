; auto-generated
api_idx_0008_VIPK:
    mov ax, 0xfff8                   ; 0x29b1
    call aztec_csav                  ; 0x29b4
    mov ax, 0                        ; 0x29b7
    push ax                          ; 0x29ba
    push word [bp + 0x4]             ; 0x29bb
    call api_idx_0004_LRMP           ; 0x29be
    add sp, byte 4                   ; 0x29c1
    mov word [bp - 0x0002], ax       ; 0x29c4
    mov ax, word [bp + 0x4]          ; 0x29c7
    mov word [bp - 0x0008], ax       ; 0x29ca
    mov word [bp - 0x0006], 0        ; 0x29cd
    jmp short @..api_idx_0008_VIPK.l2 ; 0x29d2
@..api_idx_0008_VIPK.l1:
    mov ax, 0                        ; 0x29d4
    push ax                          ; 0x29d7
    push word [bp - 0x0006]          ; 0x29d8
    call api_idx_0004_LRMP           ; 0x29db
    add sp, byte 4                   ; 0x29de
    mov word [bp - 0x0002], ax       ; 0x29e1
    mov ax, word [bp - 0x0006]       ; 0x29e4
    mov word [bp - 0x0008], ax       ; 0x29e7
    inc word [bp - 0x0006]           ; 0x29ea
@..api_idx_0008_VIPK.l2:
    mov ax, word [bp - 0x0006]       ; 0x29ed
    cmp ax, word [bss_69c8]          ; 0x29f0
    jge short @..api_idx_0008_VIPK.l3 ; 0x29f4
    cmp word [bp - 0x0002], byte 0xff ; 0x29f6
    je short @..api_idx_0008_VIPK.l1 ; 0x29fa
@..api_idx_0008_VIPK.l3:
    cmp word [bp - 0x0002], byte 0xff ; 0x29fc
    jne short @..api_idx_0008_VIPK.l6 ; 0x2a00
    mov word [bp - 0x0006], 0        ; 0x2a02
    jmp short @..api_idx_0008_VIPK.l5 ; 0x2a07
@..api_idx_0008_VIPK.l4:
    mov ax, 1                        ; 0x2a09
    push ax                          ; 0x2a0c
    push word [bp - 0x0006]          ; 0x2a0d
    call api_idx_0004_LRMP           ; 0x2a10
    add sp, byte 4                   ; 0x2a13
    mov word [bp - 0x0002], ax       ; 0x2a16
    mov ax, word [bp - 0x0006]       ; 0x2a19
    mov word [bp - 0x0008], ax       ; 0x2a1c
    inc word [bp - 0x0006]           ; 0x2a1f
@..api_idx_0008_VIPK.l5:
    mov ax, word [bp - 0x0006]       ; 0x2a22
    cmp ax, word [bss_69c8]          ; 0x2a25
    jge short @..api_idx_0008_VIPK.l6 ; 0x2a29
    cmp word [bp - 0x0002], byte 0xff ; 0x2a2b
    je short @..api_idx_0008_VIPK.l4 ; 0x2a2f
@..api_idx_0008_VIPK.l6:
    cmp word [bp - 0x0002], byte 0xff ; 0x2a31
    jne short @..api_idx_0008_VIPK.l9 ; 0x2a35
    mov word [bp - 0x0002], 0        ; 0x2a37
    mov word [bp - 0x0006], 0        ; 0x2a3c
    mov word [bp - 0x0008], 0        ; 0x2a41
@..api_idx_0008_VIPK.l7:
    mov ax, 0x78                     ; 0x2a46
    imul word [bp - 0x0006]          ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, 0xc                      ; 0x2a4d
    imul word [bp - 0x0002]          ; 0x2a50
    mov cx, ax                       ; 0x2a53
    pop ax                           ; 0x2a55
    add ax, cx                       ; 0x2a56
    mov bx, ax                       ; 0x2a58
    push word [bx + 0x5c34]          ; 0x2a5a
    call loc_JPTL                    ; 0x2a5e
    pop cx                           ; 0x2a61
    test ax, ax                      ; 0x2a62
    je short @..api_idx_0008_VIPK.l9 ; 0x2a64
    inc word [bp - 0x0002]           ; 0x2a66
    mov ax, word [bp - 0x0002]       ; 0x2a69
    cmp ax, strict word 0xa          ; 0x2a6c
    jne short @..api_idx_0008_VIPK.l8 ; 0x2a6f
    mov word [bp - 0x0002], 0        ; 0x2a71
    inc word [bp - 0x0006]           ; 0x2a76
@..api_idx_0008_VIPK.l8:
    jmp short @..api_idx_0008_VIPK.l7 ; 0x2a79
@..api_idx_0008_VIPK.l9:
    mov ax, word [bp - 0x0002]       ; 0x2a7b
    mov cx, 0x100                    ; 0x2a7e
    cwd                              ; 0x2a81
    idiv cx                          ; 0x2a82
    mov word [bp - 0x0004], ax       ; 0x2a84
    mov word [bp - 0x0006], dx       ; 0x2a87
    mov ax, 1                        ; 0x2a8a
    push ax                          ; 0x2a8d
    mov ax, 0xfffe                   ; 0x2a8e
    push ax                          ; 0x2a91
    mov ax, 0x248                    ; 0x2a92
    imul word [bp - 0x0008]          ; 0x2a95
    push ax                          ; 0x2a98
    mov ax, 0x78                     ; 0x2a99
    imul word [bp - 0x0004]          ; 0x2a9c
    mov cx, ax                       ; 0x2a9f
    pop ax                           ; 0x2aa1
    add ax, cx                       ; 0x2aa2
    push ax                          ; 0x2aa4
    mov ax, 0xc                      ; 0x2aa5
    imul word [bp - 0x0006]          ; 0x2aa8
    mov cx, ax                       ; 0x2aab
    pop ax                           ; 0x2aad
    add ax, cx                       ; 0x2aae
    add ax, 0x5c34                   ; 0x2ab0
    push ax                          ; 0x2ab3
    push word [bp + 0x6]             ; 0x2ab4
    push word [bp - 0x0008]          ; 0x2ab7
    call api_idx_004c_STVP           ; 0x2aba
    add sp, byte 0x0a                ; 0x2abd
    push word [bp + 0x6]             ; 0x2ac0
    call loc_JPTL                    ; 0x2ac3
    pop cx                           ; 0x2ac6
    test ax, ax                      ; 0x2ac7
    je short @..api_idx_0008_VIPK.l10 ; 0x2ac9
    mov ax, word [bp + 0x6]          ; 0x2acb
    add ax, 0xfe70                   ; 0x2ace
    push ax                          ; 0x2ad1
    mov al, byte [bss_91c6]          ; 0x2ad2
    cbw                              ; 0x2ad5
    push ax                          ; 0x2ad6
    mov ax, 0x15                     ; 0x2ad7
    push ax                          ; 0x2ada
    call api_idx_0002_IVLK           ; 0x2adb
    add sp, byte 6                   ; 0x2ade
@..api_idx_0008_VIPK.l10:
    mov ax, 0x95a8                   ; 0x2ae1
    push ax                          ; 0x2ae4
    mov ax, 0x60b                    ; 0x2ae5
    push ax                          ; 0x2ae8
    call ds_app_mem_VKHV             ; 0x2ae9
    add sp, byte 4                   ; 0x2aec
    mov ax, 0x5e                     ; 0x2aef
    push ax                          ; 0x2af2
    mov ax, 0x248                    ; 0x2af3
    imul word [bp - 0x0008]          ; 0x2af6
    add ax, 0x5bf4                   ; 0x2af9
    push ax                          ; 0x2afc
    mov ax, 0x95a8                   ; 0x2afd
    push ax                          ; 0x2b00
    call ds_app_string_VPKQ          ; 0x2b01
    add sp, byte 6                   ; 0x2b04
    cmp word [bp + 0x8], byte 1      ; 0x2b07
    jne short @..api_idx_0008_VIPK.l11 ; 0x2b0b
    mov ax, 1                        ; 0x2b0d
    push ax                          ; 0x2b10
    push ax                          ; 0x2b11
    push ax                          ; 0x2b12
    mov ax, 0x95a8                   ; 0x2b13
    push ax                          ; 0x2b16
    call loc_TJUO                    ; 0x2b17
    add sp, byte 8                   ; 0x2b1a
    jmp short @..api_idx_0008_VIPK.l12 ; 0x2b1d
@..api_idx_0008_VIPK.l11:
    cmp word [bp + 0x8], byte 2      ; 0x2b1f
    jne short @..api_idx_0008_VIPK.l12 ; 0x2b23
    mov ax, word [bss_93d4]          ; 0x2b25
    mov cx, 7                        ; 0x2b28
    shl ax, cl                       ; 0x2b2b
    add ax, 0x91cc                   ; 0x2b2d
    push ax                          ; 0x2b30
    mov ax, 0x5e5                    ; 0x2b31
    push ax                          ; 0x2b34
    call ds_app_mem_VKHV             ; 0x2b35
    add sp, byte 4                   ; 0x2b38
    mov ax, 0x95a8                   ; 0x2b3b
    push ax                          ; 0x2b3e
    call aztec_strlen                ; 0x2b3f
    pop cx                           ; 0x2b42
    mov cx, ax                       ; 0x2b43
    mov ax, 0x1e                     ; 0x2b45
    sub ax, cx                       ; 0x2b48
    mov cx, 2                        ; 0x2b4a
    cwd                              ; 0x2b4d
    idiv cx                          ; 0x2b4e
    mov dx, word [bss_93d4]          ; 0x2b50
    mov cx, 7                        ; 0x2b54
    shl dx, cl                       ; 0x2b57
    mov cx, dx                       ; 0x2b59
    add ax, cx                       ; 0x2b5b
    mov bx, ax                       ; 0x2b5d
    mov byte [bx - 0x6e34], 0        ; 0x2b5f
    mov ax, 0x95a8                   ; 0x2b64
    push ax                          ; 0x2b67
    add cx, strict word 0x91cc       ; 0x2b68
    mov ax, cx                       ; 0x2b6c
    push ax                          ; 0x2b6e
    call ds_string_loc_VOPH          ; 0x2b6f
    add sp, byte 4                   ; 0x2b72
    mov ax, word [bss_93d4]          ; 0x2b75
    shl ax, 1                        ; 0x2b78
    mov bx, ax                       ; 0x2b7a
    mov word [bx - 0x6c34], 0        ; 0x2b7c
    call api_idx_0004_IKJO           ; 0x2b82
    mov ax, 0                        ; 0x2b85
    push ax                          ; 0x2b88
    call ds_app_IPOK                 ; 0x2b89
    pop cx                           ; 0x2b8c
@..api_idx_0008_VIPK.l12:
    ret                              ; 0x2b8d
