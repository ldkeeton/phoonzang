leaf_loc_8827:
    mov word [bp - 0x0064], 1        ; 0x8827
    mov word [bp - 0x009a], 1        ; 0x882c
    inc word [bp - 0x005c]           ; 0x8832
    inc word [bp - 0x005c]           ; 0x8835
    jmp short loc_8859               ; 0x8838
jumptable_883a:
    dw leaf_loc_87b7 - IMAGE_BASE + 0x5055     ; 0x883a
    dw leaf_loc_87ba - IMAGE_BASE + 0x5055     ; 0x883c
    dw leaf_loc_87c9 - IMAGE_BASE + 0x5055     ; 0x883e
    dw leaf_loc_87d5 - IMAGE_BASE + 0x5055     ; 0x8840
    dw leaf_loc_87e5 - IMAGE_BASE + 0x5055     ; 0x8842
    dw leaf_loc_87f8 - IMAGE_BASE + 0x5055     ; 0x8844
    dw leaf_loc_8800 - IMAGE_BASE + 0x5055     ; 0x8846
    dw leaf_loc_8813 - IMAGE_BASE + 0x5055     ; 0x8848
    dw leaf_loc_8827 - IMAGE_BASE + 0x5055     ; 0x884a
@..api_idx_00ac.l74:
    cmp ax, strict word 9            ; 0x884c
    jae short loc_8859               ; 0x884f
    xchg bx, ax                      ; 0x8851
    shl bx, 1                        ; 0x8852
    jmp [cs:bx - 0x277f]             ; 0x8854
loc_8859:
    mov ax, 0x2c                     ; 0x8859
    imul word [bp - 0x0050]          ; 0x885c
    mov si, ax                       ; 0x885f
    mov ax, word [bp - 0x004e]       ; 0x8861
    shl ax, 1                        ; 0x8864
    mov bx, ax                       ; 0x8866
    mov bx, word [bx - 0x7b7e]       ; 0x8868
    cmp byte [bx + si + 0x1e], 6     ; 0x886c
    jne short loc_8887               ; 0x8870
    mov ax, 0xa                      ; 0x8872
    cmp word [bp - 0x005a], byte 0x0a ; 0x8875
    jle short loc_887e               ; 0x8879
    mov ax, word [bp - 0x005a]       ; 0x887b
loc_887e:
    mov word [bp - 0x005a], ax       ; 0x887e
    mov word [bp - 0x009a], 2        ; 0x8881
loc_8887:
    cmp byte [bx + si + 0x12], 0     ; 0x8887
    je short loc_8890                ; 0x888b
    jmp near loc_8b64                ; 0x888d
loc_8890:
    cmp byte [bx + si + 0x10], 0     ; 0x8890
    je short loc_8899                ; 0x8894
    jmp near loc_8b64                ; 0x8896
loc_8899:
    cmp byte [bx + si + 0x11], 0     ; 0x8899
    je short loc_88a2                ; 0x889d
    jmp near loc_8b64                ; 0x889f
loc_88a2:
    cmp byte [bx + si + 0x22], 0     ; 0x88a2
    je short loc_88ab                ; 0x88a6
    jmp near loc_8b64                ; 0x88a8
loc_88ab:
    cmp byte [bx + si + 0x1e], 1     ; 0x88ab
    je short loc_88b4                ; 0x88af
    jmp near loc_8b2c                ; 0x88b1
loc_88b4:
    mov ax, word [bx + si + 0xa]     ; 0x88b4
    jmp near loc_8b0d                ; 0x88b7
loc_88ba:
    cmp word [bp - 0x004e], byte 0   ; 0x88ba
    jne short loc_88eb               ; 0x88be
    mov ax, 0x248                    ; 0x88c0
    imul word [bp - 0x0050]          ; 0x88c3
    mov bx, ax                       ; 0x88c6
    mov al, byte [bx + 0x5d74]       ; 0x88c8
    sub ah, ah                       ; 0x88cc
    mov cx, 0xa                      ; 0x88ce
    cwd                              ; 0x88d1
    idiv cx                          ; 0x88d2
    inc ax                           ; 0x88d4
    sub word [bp - 0x005a], ax       ; 0x88d5
    mov ax, 2                        ; 0x88d8
    push ax                          ; 0x88db
    mov ax, 8                        ; 0x88dc
    push ax                          ; 0x88df
    push word [bp - 0x0050]          ; 0x88e0
    call loc_1bf4                    ; 0x88e3
    add sp, byte 6                   ; 0x88e6
    jmp short loc_890a               ; 0x88e9
loc_88eb:
    mov ax, 0x2c                     ; 0x88eb
    imul word [bp - 0x0050]          ; 0x88ee
    mov si, ax                       ; 0x88f1
    mov ax, word [bp - 0x004e]       ; 0x88f3
    shl ax, 1                        ; 0x88f6
    mov bx, ax                       ; 0x88f8
    mov bx, word [bx - 0x7b7e]       ; 0x88fa
    mov ax, word [bx + si]           ; 0x88fe
    mov cx, 4                        ; 0x8900
    cwd                              ; 0x8903
    idiv cx                          ; 0x8904
    inc ax                           ; 0x8906
    sub word [bp - 0x005a], ax       ; 0x8907
loc_890a:
    mov word [bp - 0x009a], 1        ; 0x890a
    jmp near loc_8b2a                ; 0x8910
loc_8913:
    dec word [bp - 0x005a]           ; 0x8913
    dec word [bp - 0x005a]           ; 0x8916
    mov word [bp - 0x009a], 1        ; 0x8919
    jmp near loc_8b2a                ; 0x891f
loc_8922:
    cmp word [bp + 0x8], byte 4      ; 0x8922
    jne short loc_892b               ; 0x8926
    jmp near loc_8b04                ; 0x8928
loc_892b:
    cmp word [bp + 0x8], byte 8      ; 0x892b
    jne short loc_8934               ; 0x892f
    jmp near loc_8b04                ; 0x8931
loc_8934:
    mov ax, 0x2c                     ; 0x8934
    imul word [bp - 0x0050]          ; 0x8937
    mov si, ax                       ; 0x893a
    mov ax, word [bp - 0x004e]       ; 0x893c
    shl ax, 1                        ; 0x893f
    mov bx, ax                       ; 0x8941
    mov bx, word [bx - 0x7b7e]       ; 0x8943
    mov byte [bx + si + 0x1e], 0     ; 0x8947
    mov ax, 0x2c                     ; 0x894b
    imul word [bp - 0x0050]          ; 0x894e
    mov si, ax                       ; 0x8951
    mov ax, word [bp - 0x004e]       ; 0x8953
    shl ax, 1                        ; 0x8956
    mov bx, ax                       ; 0x8958
    mov bx, word [bx - 0x7b7e]       ; 0x895a
    mov byte [bx + si + 0x21], 0     ; 0x895e
    mov ax, word [bss_8460]          ; 0x8962
    dec ax                           ; 0x8965
    push ax                          ; 0x8966
    mov ax, 0x2c                     ; 0x8967
    imul word [bp - 0x0050]          ; 0x896a
    mov si, ax                       ; 0x896d
    mov ax, word [bp - 0x004e]       ; 0x896f
    shl ax, 1                        ; 0x8972
    mov bx, ax                       ; 0x8974
    mov bx, word [bx - 0x7b7e]       ; 0x8976
    pop ax                           ; 0x897a
    mov byte [bx + si + 0x18], al    ; 0x897b
    mov al, byte [bss_8464]          ; 0x897e
    push ax                          ; 0x8981
    mov ax, 0x2c                     ; 0x8982
    imul word [bp - 0x0050]          ; 0x8985
    mov si, ax                       ; 0x8988
    mov ax, word [bp - 0x004e]       ; 0x898a
    shl ax, 1                        ; 0x898d
    mov bx, ax                       ; 0x898f
    mov bx, word [bx - 0x7b7e]       ; 0x8991
    pop ax                           ; 0x8995
    mov byte [bx + si + 0x1f], al    ; 0x8996
    mov al, byte [bss_8462]          ; 0x8999
    push ax                          ; 0x899c
    mov ax, 0x2c                     ; 0x899d
    imul word [bp - 0x0050]          ; 0x89a0
    mov si, ax                       ; 0x89a3
    mov ax, word [bp - 0x004e]       ; 0x89a5
    shl ax, 1                        ; 0x89a8
    mov bx, ax                       ; 0x89aa
    mov bx, word [bx - 0x7b7e]       ; 0x89ac
    pop ax                           ; 0x89b0
    mov byte [bx + si + 0x20], al    ; 0x89b1
    mov ax, 0x2c                     ; 0x89b4
    imul word [bp - 0x0050]          ; 0x89b7
    mov si, ax                       ; 0x89ba
    mov ax, word [bp - 0x004e]       ; 0x89bc
    shl ax, 1                        ; 0x89bf
    mov bx, ax                       ; 0x89c1
    mov bx, word [bx - 0x7b7e]       ; 0x89c3
    mov word [bx + si + 0xc], 0xffff ; 0x89c7
    mov ax, 0x2c                     ; 0x89cc
    imul word [bp - 0x0050]          ; 0x89cf
    mov si, ax                       ; 0x89d2
    mov ax, word [bp - 0x004e]       ; 0x89d4
    shl ax, 1                        ; 0x89d7
    mov bx, ax                       ; 0x89d9
    mov bx, word [bx - 0x7b7e]       ; 0x89db
    mov word [bx + si + 0xa], 0xff   ; 0x89df
    cmp word [bp - 0x004e], byte 0   ; 0x89e4
    jne short loc_8a29               ; 0x89e8
    mov word [bp - 0x0002], 7        ; 0x89ea
loc_89ef:
    push word [bp - 0x0002]          ; 0x89ef
    mov ax, 0x248                    ; 0x89f2
    imul word [bp - 0x0050]          ; 0x89f5
    add ax, 0x5d33                   ; 0x89f8
    push ax                          ; 0x89fb
    call ds_leaf_loc_3ebb            ; 0x89fc
    add sp, byte 4                   ; 0x89ff
    cmp ax, strict word 1            ; 0x8a02
    jne short loc_8a22               ; 0x8a05
    mov ax, word [bp - 0x0002]       ; 0x8a07
    push ax                          ; 0x8a0a
    mov ax, 0x2c                     ; 0x8a0b
    imul word [bp - 0x0050]          ; 0x8a0e
    mov si, ax                       ; 0x8a11
    mov ax, word [bp - 0x004e]       ; 0x8a13
    shl ax, 1                        ; 0x8a16
    mov bx, ax                       ; 0x8a18
    mov bx, word [bx - 0x7b7e]       ; 0x8a1a
    pop ax                           ; 0x8a1e
    mov word [bx + si + 0xa], ax     ; 0x8a1f
loc_8a22:
    dec word [bp - 0x0002]           ; 0x8a22
    jge short loc_89ef               ; 0x8a25
    jmp short loc_8a6b               ; 0x8a27
loc_8a29:
    mov word [bp - 0x0002], 7        ; 0x8a29
loc_8a2e:
    push word [bp - 0x0002]          ; 0x8a2e
    mov ax, word [bp - 0x004e]       ; 0x8a31
    shl ax, 1                        ; 0x8a34
    mov bx, ax                       ; 0x8a36
    mov ax, word [bx - 0x7b70]       ; 0x8a38
    add ax, strict word 0x53         ; 0x8a3c
    push ax                          ; 0x8a3f
    call ds_leaf_loc_3ebb            ; 0x8a40
    add sp, byte 4                   ; 0x8a43
    cmp ax, strict word 1            ; 0x8a46
    jne short loc_8a66               ; 0x8a49
    mov ax, word [bp - 0x0002]       ; 0x8a4b
    push ax                          ; 0x8a4e
    mov ax, 0x2c                     ; 0x8a4f
    imul word [bp - 0x0050]          ; 0x8a52
    mov si, ax                       ; 0x8a55
    mov ax, word [bp - 0x004e]       ; 0x8a57
    shl ax, 1                        ; 0x8a5a
    mov bx, ax                       ; 0x8a5c
    mov bx, word [bx - 0x7b7e]       ; 0x8a5e
    pop ax                           ; 0x8a62
    mov word [bx + si + 0xa], ax     ; 0x8a63
loc_8a66:
    dec word [bp - 0x0002]           ; 0x8a66
    jge short loc_8a2e               ; 0x8a69
loc_8a6b:
    mov ax, 0x2c                     ; 0x8a6b
    imul word [bp - 0x0050]          ; 0x8a6e
    mov si, ax                       ; 0x8a71
    mov ax, word [bp - 0x004e]       ; 0x8a73
    shl ax, 1                        ; 0x8a76
    mov bx, ax                       ; 0x8a78
    mov bx, word [bx - 0x7b7e]       ; 0x8a7a
    cmp word [bx + si + 0xa], strict word 0xff ; 0x8a7e
    jne short loc_8aed               ; 0x8a83
    mov word [bx + si + 0xa], 8      ; 0x8a85
    cmp word [bp - 0x004e], byte 0   ; 0x8a8a
    jne short loc_8aed               ; 0x8a8e
    mov ax, 0x2c                     ; 0x8a90
    imul word [bp - 0x0050]          ; 0x8a93
    mov si, ax                       ; 0x8a96
    mov ax, word [bp - 0x004e]       ; 0x8a98
    shl ax, 1                        ; 0x8a9b
    mov bx, ax                       ; 0x8a9d
    mov bx, word [bx - 0x7b7e]       ; 0x8a9f
    mov byte [bx + si + 0x1e], 1     ; 0x8aa3
    mov ax, 0x2c                     ; 0x8aa7
    imul word [bp - 0x0050]          ; 0x8aaa
    mov si, ax                       ; 0x8aad
    mov ax, word [bp - 0x004e]       ; 0x8aaf
    shl ax, 1                        ; 0x8ab2
    mov bx, ax                       ; 0x8ab4
    mov bx, word [bx - 0x7b7e]       ; 0x8ab6
    mov byte [bx + si + 0x21], 0     ; 0x8aba
    mov ax, 0x2c                     ; 0x8abe
    imul word [bp - 0x0050]          ; 0x8ac1
    mov si, ax                       ; 0x8ac4
    mov ax, word [bp - 0x004e]       ; 0x8ac6
    shl ax, 1                        ; 0x8ac9
    mov bx, ax                       ; 0x8acb
    mov bx, word [bx - 0x7b7e]       ; 0x8acd
    mov byte [bx + si + 0x18], 0     ; 0x8ad1
    mov ax, 0x2c                     ; 0x8ad5
    imul word [bp - 0x0050]          ; 0x8ad8
    mov si, ax                       ; 0x8adb
    mov ax, word [bp - 0x004e]       ; 0x8add
    shl ax, 1                        ; 0x8ae0
    mov bx, ax                       ; 0x8ae2
    mov bx, word [bx - 0x7b7e]       ; 0x8ae4
    mov word [bx + si + 0xa], 1      ; 0x8ae8
loc_8aed:
    mov ax, 0x2c                     ; 0x8aed
    imul word [bp - 0x0050]          ; 0x8af0
    mov si, ax                       ; 0x8af3
    mov ax, word [bp - 0x004e]       ; 0x8af5
    shl ax, 1                        ; 0x8af8
    mov bx, ax                       ; 0x8afa
    mov bx, word [bx - 0x7b7e]       ; 0x8afc
    mov byte [bx + si + 0x1c], 0     ; 0x8b00
loc_8b04:
    jmp short loc_8b2a               ; 0x8b04
loc_8b06:
    mov word [bp - 0x005a], 0xf      ; 0x8b06
    jmp short loc_8b2a               ; 0x8b0b
loc_8b0d:
    cmp ax, strict word 0            ; 0x8b0d
    jne short loc_8b15               ; 0x8b10
    jmp near loc_88ba                ; 0x8b12
loc_8b15:
    cmp ax, strict word 1            ; 0x8b15
    jne short loc_8b1d               ; 0x8b18
    jmp near loc_8913                ; 0x8b1a
loc_8b1d:
    cmp ax, strict word 2            ; 0x8b1d
    jne short loc_8b25               ; 0x8b20
    jmp near loc_8922                ; 0x8b22
loc_8b25:
    cmp ax, strict word 3            ; 0x8b25
    je short loc_8b06                ; 0x8b28
loc_8b2a:
    jmp short loc_8b64               ; 0x8b2a
loc_8b2c:
    cmp word [bp - 0x004e], byte 0   ; 0x8b2c
    jne short loc_8b64               ; 0x8b30
    mov ax, 0x248                    ; 0x8b32
    imul word [bp - 0x0050]          ; 0x8b35
    mov bx, ax                       ; 0x8b38
    mov al, byte [bx + 0x5d49]       ; 0x8b3a
    sub ah, ah                       ; 0x8b3e
    cmp ax, 0xff                     ; 0x8b40
    je short loc_8b64                ; 0x8b43
    mov cx, 0xc                      ; 0x8b45
    imul cx                          ; 0x8b48
    add bx, ax                       ; 0x8b4a
    cmp byte [bx + 0x5c38], 0xb      ; 0x8b4c
    jne short loc_8b64               ; 0x8b51
    mov ax, 0                        ; 0x8b53
    push ax                          ; 0x8b56
    mov ax, 8                        ; 0x8b57
    push ax                          ; 0x8b5a
    push word [bp - 0x0050]          ; 0x8b5b
    call loc_1bf4                    ; 0x8b5e
    add sp, byte 6                   ; 0x8b61
loc_8b64:
    cmp word [bss_8464], byte 0      ; 0x8b64
    je short loc_8b9e                ; 0x8b69
    cmp word [bp - 0x009e], byte 0   ; 0x8b6b
    jne short loc_8b9e               ; 0x8b70
    mov bx, word [bss_8492]          ; 0x8b72
    cmp byte [bx + 0xd8], 0          ; 0x8b76
    jbe short loc_8b9e               ; 0x8b7b
    mov ax, word [bss_8464]          ; 0x8b7d
    shl ax, 1                        ; 0x8b80
    mov bx, ax                       ; 0x8b82
    mov bx, word [bx - 0x7b70]       ; 0x8b84
    mov al, byte [bx + 0xd8]         ; 0x8b88
    mov bx, word [bss_8492]          ; 0x8b8c
    cmp al, byte [bx + 0xd8]         ; 0x8b90
    jne short loc_8b9e               ; 0x8b94
    mov ax, 0x10                     ; 0x8b96
    push ax                          ; 0x8b99
    call ds_app_0a27                 ; 0x8b9a
    pop cx                           ; 0x8b9d
loc_8b9e:
    mov ax, word [bss_9058]          ; 0x8b9e
    mov cx, 2                        ; 0x8ba1
    cwd                              ; 0x8ba4
    idiv cx                          ; 0x8ba5
    push ax                          ; 0x8ba7
    call api_idx_0004_5              ; 0x8ba8
    pop cx                           ; 0x8bab
    mov ax, word [bp - 0x004e]       ; 0x8bac
    shl ax, 1                        ; 0x8baf
    mov bx, ax                       ; 0x8bb1
    mov bx, word [bx - 0x7b70]       ; 0x8bb3
    mov cl, byte [bx + 0xd6]         ; 0x8bb7
    mov bx, word [bp - 0x0052]       ; 0x8bbb
    mov al, byte [bx + 0x11]         ; 0x8bbe
    cmp al, cl                       ; 0x8bc1
    jne short loc_8bc9               ; 0x8bc3
    inc word [bp - 0x009a]           ; 0x8bc5
loc_8bc9:
    mov word [bp - 0x0062], 0        ; 0x8bc9
    jmp near loc_9039                ; 0x8bce
loc_8bd1:
    mov ax, 0                        ; 0x8bd1
    cmp word [bss_905c], byte 0      ; 0x8bd4
    jne short loc_8be3               ; 0x8bd9
    mov ax, 0x64                     ; 0x8bdb
    push ax                          ; 0x8bde
    call ds_app_09f0                 ; 0x8bdf
    pop cx                           ; 0x8be2
loc_8be3:
    mov word [bp - 0x0060], ax       ; 0x8be3
    cmp word [bp - 0x004e], byte 0   ; 0x8be6
    jne short loc_8c1d               ; 0x8bea
    mov ax, word [bss_8464]          ; 0x8bec
    shl ax, 1                        ; 0x8bef
    mov bx, ax                       ; 0x8bf1
    mov ax, word [bx - 0x7b70]       ; 0x8bf3
    add ax, 0xbc                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call api_idx_0004_11             ; 0x8bfb
    pop cx                           ; 0x8bfe
    mov word [bp - 0x006c], ax       ; 0x8bff
    mov ax, word [bp - 0x004e]       ; 0x8c02
    shl ax, 1                        ; 0x8c05
    mov bx, ax                       ; 0x8c07
    mov bx, word [bx - 0x7b70]       ; 0x8c09
    mov si, word [bp - 0x006c]       ; 0x8c0d
    mov al, byte [bx + si + 0xc4]    ; 0x8c10
    cbw                              ; 0x8c14
    add ax, word [bp - 0x005c]       ; 0x8c15
    mov word [bp - 0x005e], ax       ; 0x8c18
    jmp short loc_8c4c               ; 0x8c1b
loc_8c1d:
    mov ax, word [bp - 0x004e]       ; 0x8c1d
    shl ax, 1                        ; 0x8c20
    mov bx, ax                       ; 0x8c22
    mov ax, word [bx - 0x7b70]       ; 0x8c24
    add ax, 0xb4                     ; 0x8c28
    push ax                          ; 0x8c2b
    call api_idx_0004_11             ; 0x8c2c
    pop cx                           ; 0x8c2f
    mov word [bp - 0x006c], ax       ; 0x8c30
    mov ax, word [bp - 0x004e]       ; 0x8c33
    shl ax, 1                        ; 0x8c36
    mov bx, ax                       ; 0x8c38
    mov bx, word [bx - 0x7b70]       ; 0x8c3a
    mov si, word [bp - 0x006c]       ; 0x8c3e
    mov al, byte [bx + si + 0xc4]    ; 0x8c41
    cbw                              ; 0x8c45
    add ax, word [bp - 0x005c]       ; 0x8c46
    mov word [bp - 0x005e], ax       ; 0x8c49
loc_8c4c:
    mov ax, 0x2c                     ; 0x8c4c
    imul word [bp - 0x0050]          ; 0x8c4f
    mov si, ax                       ; 0x8c52
    mov ax, word [bp - 0x004e]       ; 0x8c54
    shl ax, 1                        ; 0x8c57
    mov bx, ax                       ; 0x8c59
    mov bx, word [bx - 0x7b7e]       ; 0x8c5b
    cmp byte [bx + si + 0x22], 2     ; 0x8c5f
    jne short loc_8c75               ; 0x8c63
    mov ax, word [bp - 0x005e]       ; 0x8c65
    push ax                          ; 0x8c68
    cmp ax, strict word 0            ; 0x8c69
    pop ax                           ; 0x8c6c
    jle short loc_8c72               ; 0x8c6d
    mov ax, 0                        ; 0x8c6f
loc_8c72:
    mov word [bp - 0x005e], ax       ; 0x8c72
loc_8c75:
    mov ax, 4                        ; 0x8c75
    push ax                          ; 0x8c78
    mov ax, 3                        ; 0x8c79
    push ax                          ; 0x8c7c
    call api_idx_0004_6              ; 0x8c7d
    add sp, byte 4                   ; 0x8c80
    cmp word [bp - 0x009e], byte 0xff ; 0x8c83
    je short loc_8ca6                ; 0x8c88
    mov ax, 8                        ; 0x8c8a
    push ax                          ; 0x8c8d
    call ds_app_09f0                 ; 0x8c8e
    pop cx                           ; 0x8c91
    mov cx, ax                       ; 0x8c92
    mov ax, 3                        ; 0x8c94
    sub ax, cx                       ; 0x8c97
    shl ax, 1                        ; 0x8c99
    push ax                          ; 0x8c9b
    mov ax, 6                        ; 0x8c9c
    push ax                          ; 0x8c9f
    call api_idx_000c_2              ; 0x8ca0
    add sp, byte 4                   ; 0x8ca3
loc_8ca6:
    cmp word [bp + 0x8], byte 4      ; 0x8ca6
    je short loc_8cb2                ; 0x8caa
    cmp word [bp + 0x8], byte 8      ; 0x8cac
    jne short loc_8cf7               ; 0x8cb0
loc_8cb2:
    cmp word [bp - 0x00ac], byte 0   ; 0x8cb2
    jne short loc_8cf7               ; 0x8cb7
    mov ax, 0x64                     ; 0x8cb9
    push ax                          ; 0x8cbc
    call ds_app_09f0                 ; 0x8cbd
    pop cx                           ; 0x8cc0
    push ax                          ; 0x8cc1
    mov ax, word [bp - 0x004e]       ; 0x8cc2
    shl ax, 1                        ; 0x8cc5
    mov bx, ax                       ; 0x8cc7
    mov bx, word [bx - 0x7b7e]       ; 0x8cc9
    mov al, byte [bx + 0x18e]        ; 0x8ccd
    sub ah, ah                       ; 0x8cd1
    mov cx, ax                       ; 0x8cd3
    pop ax                           ; 0x8cd5
    cmp ax, cx                       ; 0x8cd6
    jge short loc_8cf7               ; 0x8cd8
    mov ax, 3                        ; 0x8cda
    push ax                          ; 0x8cdd
    mov ax, 0x43                     ; 0x8cde
    push ax                          ; 0x8ce1
    mov ax, 0xc8e                    ; 0x8ce2
    push ax                          ; 0x8ce5
    call api_idx_0050                ; 0x8ce6
    add sp, byte 6                   ; 0x8ce9
    mov ax, 7                        ; 0x8cec
    push ax                          ; 0x8cef
    call ds_app_0a27                 ; 0x8cf0
    pop cx                           ; 0x8cf3
    jmp near loc_9028                ; 0x8cf4
loc_8cf7:
    cmp word [bp - 0x0094], byte 0xff ; 0x8cf7
    jne short loc_8d23               ; 0x8cfc
    mov ax, word [bp - 0x0060]       ; 0x8cfe
    cmp ax, strict word 5            ; 0x8d01
    jge short loc_8d09               ; 0x8d04
    jmp near loc_9016                ; 0x8d06
loc_8d09:
    cmp ax, strict word 0x5f         ; 0x8d09
    jge short loc_8d23               ; 0x8d0c
    mov ax, 5                        ; 0x8d0e
    imul word [bp - 0x005a]          ; 0x8d11
    mov cx, word [bp - 0x0056]       ; 0x8d14
    sub cx, ax                       ; 0x8d17
    mov ax, word [bp - 0x0060]       ; 0x8d19
    cmp cx, ax                       ; 0x8d1c
    jl short loc_8d23                ; 0x8d1e
    jmp near loc_9016                ; 0x8d20
loc_8d23:
    cmp word [bp - 0x0094], byte 0xff ; 0x8d23
    je short loc_8d50                ; 0x8d28
    mov ax, word [bp - 0x0094]       ; 0x8d2a
    mov cx, 0x100                    ; 0x8d2e
    cwd                              ; 0x8d31
    idiv cx                          ; 0x8d32
    mov word [bp - 0x0098], ax       ; 0x8d34
    mov word [bp - 0x0096], dx       ; 0x8d38
    mov word [bss_91d8], 1           ; 0x8d3c
    push ax                          ; 0x8d42
    push dx                          ; 0x8d43
    push word [bp + 0x4]             ; 0x8d44
    call api_idx_000e_5              ; 0x8d47
    add sp, byte 6                   ; 0x8d4a
    jmp near loc_9014                ; 0x8d4d
loc_8d50:
    mov ax, 3                        ; 0x8d50
    push ax                          ; 0x8d53
    mov ax, 0x16                     ; 0x8d54
    push ax                          ; 0x8d57
    mov ax, 0xce6                    ; 0x8d58
    push ax                          ; 0x8d5b
    call api_idx_0050                ; 0x8d5c
    add sp, byte 6                   ; 0x8d5f
    mov ax, 7                        ; 0x8d62
    push ax                          ; 0x8d65
    call ds_app_0a27                 ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, word [bp - 0x004e]       ; 0x8d6a
    shl ax, 1                        ; 0x8d6d
    mov bx, ax                       ; 0x8d6f
    mov bx, word [bx - 0x7b70]       ; 0x8d71
    cmp byte [bx + 0xd6], 0x11       ; 0x8d75
    je short loc_8d89                ; 0x8d7a
    cmp byte [bx + 0xd6], 0x17       ; 0x8d7c
    jne short loc_8d9c               ; 0x8d81
    cmp word [bp - 0x006c], byte 6   ; 0x8d83
    jne short loc_8d9c               ; 0x8d87
loc_8d89:
    mov ax, 0x90e6                   ; 0x8d89
    push ax                          ; 0x8d8c
    mov ax, word [bp - 0x006c]       ; 0x8d8d
    add ax, 0xd02                    ; 0x8d90
    push ax                          ; 0x8d93
    call ds_app_mem_0782             ; 0x8d94
    add sp, byte 4                   ; 0x8d97
    jmp short loc_8dd2               ; 0x8d9a
loc_8d9c:
    mov ax, word [bp - 0x004e]       ; 0x8d9c
    shl ax, 1                        ; 0x8d9f
    mov bx, ax                       ; 0x8da1
    mov bx, word [bx - 0x7b70]       ; 0x8da3
    cmp byte [bx + 0xd6], 0x1a       ; 0x8da7
    jne short loc_8dc1               ; 0x8dac
    mov ax, 0x90e6                   ; 0x8dae
    push ax                          ; 0x8db1
    mov ax, word [bp - 0x006c]       ; 0x8db2
    add ax, 0xd3e                    ; 0x8db5
    push ax                          ; 0x8db8
    call ds_app_mem_0782             ; 0x8db9
    add sp, byte 4                   ; 0x8dbc
    jmp short loc_8dd2               ; 0x8dbf
loc_8dc1:
    mov ax, 0x90e6                   ; 0x8dc1
    push ax                          ; 0x8dc4
    mov ax, word [bp - 0x006c]       ; 0x8dc5
    add ax, 0xcf8                    ; 0x8dc8
    push ax                          ; 0x8dcb
    call ds_app_mem_0782             ; 0x8dcc
    add sp, byte 4                   ; 0x8dcf
loc_8dd2:
    inc word [bp - 0x0066]           ; 0x8dd2
    mov bx, word [bp + 0x4]          ; 0x8dd5
    cmp byte [bx + 0x2b], 1          ; 0x8dd8
    jne short loc_8de2               ; 0x8ddc
    mov byte [bx + 0x2b], 0xff       ; 0x8dde
loc_8de2:
    mov word [bp - 0x006a], 0        ; 0x8de2
    mov ax, word [bp - 0x009a]       ; 0x8de7
    mov word [bp - 0x009c], ax       ; 0x8deb
loc_8def:
    cmp word [bp - 0x009c], byte 0   ; 0x8def
    jle short loc_8e0b               ; 0x8df4
    push word [bp - 0x006e]          ; 0x8df6
    push word [bp - 0x0070]          ; 0x8df9
    call ds_app_2305                 ; 0x8dfc
    add sp, byte 4                   ; 0x8dff
    add word [bp - 0x006a], ax       ; 0x8e02
    dec word [bp - 0x009c]           ; 0x8e05
    jmp short loc_8def               ; 0x8e09
loc_8e0b:
    mov ax, word [bp - 0x007e]       ; 0x8e0b
    add word [bp - 0x006a], ax       ; 0x8e0e
    cmp word [bp - 0x006a], byte 0   ; 0x8e11
    jg short loc_8e1a                ; 0x8e15
    jmp near loc_8fe5                ; 0x8e17
loc_8e1a:
    cmp word [bp - 0x0060], byte 0x5f ; 0x8e1a
    jge short loc_8e35               ; 0x8e1e
    mov ax, 5                        ; 0x8e20
    imul word [bp - 0x005e]          ; 0x8e23
    mov cx, ax                       ; 0x8e26
    mov ax, word [bp - 0x0056]       ; 0x8e28
    sub ax, cx                       ; 0x8e2b
    cmp ax, word [bp - 0x0060]       ; 0x8e2d
    jl short loc_8e35                ; 0x8e30
    jmp near loc_8fe5                ; 0x8e32
loc_8e35:
    mov ax, 0x9136                   ; 0x8e35
    push ax                          ; 0x8e38
    push word [bp - 0x006a]          ; 0x8e39
    call ds_app_04c4                 ; 0x8e3c
    add sp, byte 4                   ; 0x8e3f
    mov ax, 0x9186                   ; 0x8e42
    push ax                          ; 0x8e45
    mov ax, 0xcea                    ; 0x8e46
    push ax                          ; 0x8e49
    call ds_app_mem_0782             ; 0x8e4a
    add sp, byte 4                   ; 0x8e4d
    mov ax, 0x43                     ; 0x8e50
    push ax                          ; 0x8e53
    mov ax, 0x41                     ; 0x8e54
    push ax                          ; 0x8e57
    mov ax, 0x43                     ; 0x8e58
    push ax                          ; 0x8e5b
    mov ax, 0x9186                   ; 0x8e5c
    push ax                          ; 0x8e5f
    mov ax, 0x9136                   ; 0x8e60
    push ax                          ; 0x8e63
    mov ax, 0x90e6                   ; 0x8e64
    push ax                          ; 0x8e67
    mov ax, 4                        ; 0x8e68
    push ax                          ; 0x8e6b
    call api_idx_0004_4              ; 0x8e6c
    add sp, byte 0x0e                ; 0x8e6f
    mov ax, word [bp - 0x006a]       ; 0x8e72
    push ax                          ; 0x8e75
    mov ax, 0x2c                     ; 0x8e76
    imul word [bp - 0x0050]          ; 0x8e79
    mov si, ax                       ; 0x8e7c
    mov ax, word [bp - 0x004e]       ; 0x8e7e
    shl ax, 1                        ; 0x8e81
    mov bx, ax                       ; 0x8e83
    mov bx, word [bx - 0x7b7e]       ; 0x8e85
    pop ax                           ; 0x8e89
    sub word [bx + si + 0x2], ax     ; 0x8e8a
    mov ax, 0x2c                     ; 0x8e8d
    imul word [bp - 0x0050]          ; 0x8e90
    mov si, ax                       ; 0x8e93
    mov ax, word [bp - 0x004e]       ; 0x8e95
    shl ax, 1                        ; 0x8e98
    mov bx, ax                       ; 0x8e9a
    mov bx, word [bx - 0x7b7e]       ; 0x8e9c
    mov byte [bx + si + 0x10], 0     ; 0x8ea0
    mov ax, 3                        ; 0x8ea4
    push ax                          ; 0x8ea7
    call ds_app_09f0                 ; 0x8ea8
    pop cx                           ; 0x8eab
    mov cx, ax                       ; 0x8eac
    inc ax                           ; 0x8eae
    inc ax                           ; 0x8eaf
    mov cx, ax                       ; 0x8eb0
    mov ax, 0x2c                     ; 0x8eb2
    imul word [bp - 0x0050]          ; 0x8eb5
    mov si, ax                       ; 0x8eb8
    mov ax, word [bp - 0x004e]       ; 0x8eba
    shl ax, 1                        ; 0x8ebd
    mov bx, ax                       ; 0x8ebf
    mov bx, word [bx - 0x7b7e]       ; 0x8ec1
    mov al, byte [bx + si + 0x11]    ; 0x8ec5
    sub ah, ah                       ; 0x8ec8
    sub ax, cx                       ; 0x8eca
    mov word [bp - 0x00a0], ax       ; 0x8ecc
    cmp ax, strict word 0            ; 0x8ed0
    jge short loc_8edb               ; 0x8ed3
    mov word [bp - 0x00a0], 0        ; 0x8ed5
loc_8edb:
    mov al, byte [bp - 0x00a0]       ; 0x8edb
    mov byte [bx + si + 0x11], al    ; 0x8edf
    mov ax, 0x2c                     ; 0x8ee2
    imul word [bp - 0x0050]          ; 0x8ee5
    mov si, ax                       ; 0x8ee8
    mov ax, word [bp - 0x004e]       ; 0x8eea
    shl ax, 1                        ; 0x8eed
    mov bx, ax                       ; 0x8eef
    mov bx, word [bx - 0x7b7e]       ; 0x8ef1
    cmp word [bx + si + 0x2], byte 0 ; 0x8ef5
    jg short loc_8f4d                ; 0x8ef9
    mov ax, word [bss_9058]          ; 0x8efb
    mov cx, 2                        ; 0x8efe
    cwd                              ; 0x8f01
    idiv cx                          ; 0x8f02
    push ax                          ; 0x8f04
    call api_idx_0004_5              ; 0x8f05
    pop cx                           ; 0x8f08
    mov ax, 0                        ; 0x8f09
    push ax                          ; 0x8f0c
    mov ax, 0xd50                    ; 0x8f0d
    push ax                          ; 0x8f10
    mov ax, 0                        ; 0x8f11
    push ax                          ; 0x8f14
    mov ax, 3                        ; 0x8f15
    push ax                          ; 0x8f18
    mov ax, 0                        ; 0x8f19
    push ax                          ; 0x8f1c
    mov ax, 0xd9e                    ; 0x8f1d
    push ax                          ; 0x8f20
    push word [bp - 0x0050]          ; 0x8f21
    push word [bp - 0x004e]          ; 0x8f24
    call api_idx_0002_4              ; 0x8f27
    add sp, byte 0x10                ; 0x8f2a
    mov bx, word [bp + 0x4]          ; 0x8f2d
    cmp byte [bx + 0x2b], 0xff       ; 0x8f30
    jne short loc_8f4a               ; 0x8f34
    mov ax, 3                        ; 0x8f36
    push ax                          ; 0x8f39
    call ds_app_09f0                 ; 0x8f3a
    pop cx                           ; 0x8f3d
    cmp ax, strict word 0            ; 0x8f3e
    jle short loc_8f4a               ; 0x8f41
    mov bx, word [bp + 0x4]          ; 0x8f43
    mov byte [bx + 0x2b], 1          ; 0x8f46
loc_8f4a:
    jmp near loc_8fe3                ; 0x8f4a
loc_8f4d:
    cmp word [bp - 0x004e], byte 0   ; 0x8f4d
    jne short loc_8f75               ; 0x8f51
    mov ax, 0x248                    ; 0x8f53
    imul word [bp - 0x0050]          ; 0x8f56
    mov bx, ax                       ; 0x8f59
    mov al, byte [bx + 0x5e2c]       ; 0x8f5b
    sub ah, ah                       ; 0x8f5f
    inc ax                           ; 0x8f61
    inc ax                           ; 0x8f62
    push ax                          ; 0x8f63
    call ds_app_0a27                 ; 0x8f64
    pop cx                           ; 0x8f67
    mov ax, 1                        ; 0x8f68
    push ax                          ; 0x8f6b
    push word [bp - 0x0050]          ; 0x8f6c
    call api_idx_0004_2              ; 0x8f6f
    add sp, byte 4                   ; 0x8f72
loc_8f75:
    mov ax, word [bss_9058]          ; 0x8f75
    mov cx, 2                        ; 0x8f78
    cwd                              ; 0x8f7b
    idiv cx                          ; 0x8f7c
    push ax                          ; 0x8f7e
    call api_idx_0004_5              ; 0x8f7f
    pop cx                           ; 0x8f82
    push word [bp - 0x0050]          ; 0x8f83
    push word [bp - 0x004e]          ; 0x8f86
    push word [bp - 0x0052]          ; 0x8f89
    push word [bp + 0x4]             ; 0x8f8c
    call api_idx_000a_5              ; 0x8f8f
    add sp, byte 8                   ; 0x8f92
    cmp word [bp - 0x00a2], byte 0   ; 0x8f95
    je short loc_8fe3                ; 0x8f9a
    mov ax, 0x2c                     ; 0x8f9c
    imul word [bp - 0x0050]          ; 0x8f9f
    mov si, ax                       ; 0x8fa2
    mov ax, word [bp - 0x004e]       ; 0x8fa4
    shl ax, 1                        ; 0x8fa7
    mov bx, ax                       ; 0x8fa9
    mov bx, word [bx - 0x7b7e]       ; 0x8fab
    push word [bx + si]              ; 0x8faf
    call ds_app_09f0                 ; 0x8fb1
    pop cx                           ; 0x8fb4
    test ax, ax                      ; 0x8fb5
    jne short loc_8fe3               ; 0x8fb7
    mov ax, 0                        ; 0x8fb9
    push ax                          ; 0x8fbc
    mov ax, 0xd50                    ; 0x8fbd
    push ax                          ; 0x8fc0
    mov ax, 2                        ; 0x8fc1
    push ax                          ; 0x8fc4
    push ax                          ; 0x8fc5
    push ax                          ; 0x8fc6
    mov ax, 0                        ; 0x8fc7
    push ax                          ; 0x8fca
    mov ax, 3                        ; 0x8fcb
    push ax                          ; 0x8fce
    mov ax, 4                        ; 0x8fcf
    push ax                          ; 0x8fd2
    mov ax, 0xd93                    ; 0x8fd3
    push ax                          ; 0x8fd6
    push word [bp - 0x0050]          ; 0x8fd7
    push word [bp - 0x004e]          ; 0x8fda
    call api_idx_0006_2              ; 0x8fdd
    add sp, byte 0x16                ; 0x8fe0
loc_8fe3:
    jmp short loc_9014               ; 0x8fe3
loc_8fe5:
    mov ax, 0x9136                   ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0xce7                    ; 0x8fe9
    push ax                          ; 0x8fec
    call ds_app_mem_0782             ; 0x8fed
    add sp, byte 4                   ; 0x8ff0
    mov byte [bss_9186], 0           ; 0x8ff3
    mov ax, 0x43                     ; 0x8ff8
    push ax                          ; 0x8ffb
    push ax                          ; 0x8ffc
    push ax                          ; 0x8ffd
    mov ax, 0x9186                   ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, 0x9136                   ; 0x9002
    push ax                          ; 0x9005
    mov ax, 0x90e6                   ; 0x9006
    push ax                          ; 0x9009
    mov ax, 4                        ; 0x900a
    push ax                          ; 0x900d
    call api_idx_0004_4              ; 0x900e
    add sp, byte 0x0e                ; 0x9011
loc_9014:
    jmp short loc_9028               ; 0x9014
loc_9016:
    mov ax, 3                        ; 0x9016
    push ax                          ; 0x9019
    mov ax, 0x43                     ; 0x901a
    push ax                          ; 0x901d
    mov ax, 0xce5                    ; 0x901e
    push ax                          ; 0x9021
    call api_idx_0050                ; 0x9022
    add sp, byte 6                   ; 0x9025
loc_9028:
    mov ax, word [bss_9058]          ; 0x9028
    mov cx, 2                        ; 0x902b
    cwd                              ; 0x902e
    idiv cx                          ; 0x902f
    push ax                          ; 0x9031
    call api_idx_0004_5              ; 0x9032
    pop cx                           ; 0x9035
    inc word [bp - 0x0062]           ; 0x9036
loc_9039:
    mov ax, word [bp - 0x0062]       ; 0x9039
    cmp ax, word [bp - 0x0064]       ; 0x903c
    jge short loc_905d               ; 0x903f
    mov ax, 0x2c                     ; 0x9041
    imul word [bp - 0x0050]          ; 0x9044
    mov si, ax                       ; 0x9047
    mov ax, word [bp - 0x004e]       ; 0x9049
    shl ax, 1                        ; 0x904c
    mov bx, ax                       ; 0x904e
    mov bx, word [bx - 0x7b7e]       ; 0x9050
    cmp byte [bx + si + 0x22], 3     ; 0x9054
    jae short loc_905d               ; 0x9058
    jmp near loc_8bd1                ; 0x905a
loc_905d:
    mov bx, word [bp + 0x4]          ; 0x905d
    cmp byte [bx + 0x2b], 0xff       ; 0x9060
    jne short loc_906a               ; 0x9064
    mov byte [bx + 0x2b], 0          ; 0x9066
loc_906a:
    cmp word [bp - 0x004e], byte 0   ; 0x906a
    jne short loc_907d               ; 0x906e
    mov ax, 0                        ; 0x9070
    push ax                          ; 0x9073
    push word [bp - 0x0050]          ; 0x9074
    call api_idx_0004_2              ; 0x9077
    add sp, byte 4                   ; 0x907a
loc_907d:
    cmp word [bp - 0x00a8], byte 0   ; 0x907d
    jle short loc_908c               ; 0x9082
    push word [bp - 0x00a8]          ; 0x9084
    call ds_app_29f1                 ; 0x9088
    pop cx                           ; 0x908b
loc_908c:
    ret                              ; 0x908c
