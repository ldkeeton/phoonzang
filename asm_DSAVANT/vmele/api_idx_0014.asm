api_idx_0014:
    mov ax, 0xffec                   ; 0x1844
    call ds_aztec_csav               ; 0x1847
    mov word [bp - 0x0006], 0        ; 0x184a
    mov word [bp - 0x0002], 1        ; 0x184f
    jmp near @..api_idx_0014.l13     ; 0x1854
@..api_idx_0014.l1:
    push word [bp - 0x0002]          ; 0x1857
    call api_idx_005c                ; 0x185a
    pop cx                           ; 0x185d
    mov ax, word [bp - 0x0002]       ; 0x185e
    shl ax, 1                        ; 0x1861
    mov bx, ax                       ; 0x1863
    mov bx, word [bx - 0x7b7e]       ; 0x1865
    cmp byte [bx + 0x1a1], 0         ; 0x1869
    ja short @..api_idx_0014.l2      ; 0x186e
    jmp near @..api_idx_0014.l12     ; 0x1870
@..api_idx_0014.l2:
    inc word [bp - 0x0006]           ; 0x1873
    mov ax, word [bp - 0x0006]       ; 0x1876
    cmp ax, word [bp - 0x0002]       ; 0x1879
    jne short @..api_idx_0014.l3     ; 0x187c
    jmp near @..api_idx_0014.l7      ; 0x187e
@..api_idx_0014.l3:
    mov si, bx                       ; 0x1881
    shl ax, 1                        ; 0x1883
    mov bx, ax                       ; 0x1885
    mov di, word [bx - 0x7b7e]       ; 0x1887
    mov cx, ds                       ; 0x188b
    mov es, cx                       ; 0x188d
    mov cx, 0xd2                     ; 0x188f
    rep movsw                        ; 0x1892
    mov ax, word [bp - 0x0002]       ; 0x1894
    shl ax, 1                        ; 0x1897
    mov bx, ax                       ; 0x1899
    mov si, word [bx - 0x7b70]       ; 0x189b
    mov ax, word [bp - 0x0006]       ; 0x189f
    shl ax, 1                        ; 0x18a2
    mov bx, ax                       ; 0x18a4
    mov di, word [bx - 0x7b70]       ; 0x18a6
    mov cx, ds                       ; 0x18aa
    mov es, cx                       ; 0x18ac
    mov cx, 0x74                     ; 0x18ae
    rep movsw                        ; 0x18b1
    mov word [bp - 0x0012], 0        ; 0x18b3
    jmp short @..api_idx_0014.l6     ; 0x18b8
@..api_idx_0014.l4:
    mov ax, 0x2c                     ; 0x18ba
    imul word [bp - 0x0012]          ; 0x18bd
    mov si, ax                       ; 0x18c0
    mov bx, word [bss_8482]          ; 0x18c2
    mov al, byte [bx + si + 0x1f]    ; 0x18c6
    sub ah, ah                       ; 0x18c9
    cmp ax, word [bp - 0x0002]       ; 0x18cb
    jne short @..api_idx_0014.l5     ; 0x18ce
    mov al, byte [bp - 0x0006]       ; 0x18d0
    mov byte [bx + si + 0x1f], al    ; 0x18d3
@..api_idx_0014.l5:
    inc word [bp - 0x0012]           ; 0x18d6
@..api_idx_0014.l6:
    mov ax, word [bp - 0x0012]       ; 0x18d9
    cmp ax, word [bss_69c8]          ; 0x18dc
    jl short @..api_idx_0014.l4      ; 0x18e0
    push word [bp - 0x0006]          ; 0x18e2
    call api_idx_000c_2              ; 0x18e5
    pop cx                           ; 0x18e8
    mov ax, word [bp - 0x0002]       ; 0x18e9
    shl ax, 1                        ; 0x18ec
    mov bx, ax                       ; 0x18ee
    mov bx, word [bx - 0x7b7e]       ; 0x18f0
    mov byte [bx + 0x1a1], 0         ; 0x18f4
    jmp near @..api_idx_0014.l12     ; 0x18f9
@..api_idx_0014.l7:
    mov word [bp - 0x0004], 0        ; 0x18fc
    jmp near @..api_idx_0014.l11     ; 0x1901
@..api_idx_0014.l8:
    mov ax, 0x2c                     ; 0x1904
    imul word [bp - 0x0004]          ; 0x1907
    mov si, ax                       ; 0x190a
    mov ax, word [bp - 0x0006]       ; 0x190c
    shl ax, 1                        ; 0x190f
    mov bx, ax                       ; 0x1911
    mov bx, word [bx - 0x7b7e]       ; 0x1913
    mov al, byte [bx + si + 0x2a]    ; 0x1917
    cbw                              ; 0x191a
    mov word [bp - 0x0008], ax       ; 0x191b
    cmp ax, strict word 0xffff       ; 0x191e
    jne short @..api_idx_0014.l9     ; 0x1921
    jmp near @..api_idx_0014.l10     ; 0x1923
@..api_idx_0014.l9:
    mov cx, 0xa                      ; 0x1926
    cwd                              ; 0x1929
    idiv cx                          ; 0x192a
    mov word [bp - 0x000a], ax       ; 0x192c
    mov word [bp - 0x000c], dx       ; 0x192f
    mov cx, 6                        ; 0x1932
    imul cx                          ; 0x1935
    mov cx, word [bp - 0x000c]       ; 0x1937
    shl cx, 1                        ; 0x193a
    add ax, cx                       ; 0x193c
    mov bx, ax                       ; 0x193e
    mov ax, word [bx + 0x5ec]        ; 0x1940
    mov cx, 0xa                      ; 0x1944
    cwd                              ; 0x1947
    idiv cx                          ; 0x1948
    mov word [bp - 0x000e], ax       ; 0x194a
    mov word [bp - 0x0010], dx       ; 0x194d
    mov cx, 6                        ; 0x1950
    imul cx                          ; 0x1953
    mov cx, word [bp - 0x0010]       ; 0x1955
    shl cx, 1                        ; 0x1958
    add ax, cx                       ; 0x195a
    mov bx, ax                       ; 0x195c
    cmp word [bx - 0x7bc6], byte 0   ; 0x195e
    jne short @..api_idx_0014.l10    ; 0x1963
    mov ax, 6                        ; 0x1965
    imul word [bp - 0x000a]          ; 0x1968
    mov cx, word [bp - 0x000c]       ; 0x196b
    shl cx, 1                        ; 0x196e
    add ax, cx                       ; 0x1970
    mov bx, ax                       ; 0x1972
    mov word [bx - 0x7bc6], 0        ; 0x1974
    mov ax, 0xa                      ; 0x197a
    imul word [bp - 0x0006]          ; 0x197d
    add ax, word [bp - 0x0004]       ; 0x1980
    push ax                          ; 0x1983
    mov ax, 6                        ; 0x1984
    imul word [bp - 0x000e]          ; 0x1987
    mov cx, ax                       ; 0x198a
    mov dx, word [bp - 0x0010]       ; 0x198c
    shl dx, 1                        ; 0x198f
    add ax, dx                       ; 0x1991
    mov bx, ax                       ; 0x1993
    pop ax                           ; 0x1995
    mov word [bx - 0x7bc6], ax       ; 0x1996
    mov ax, 0xa                      ; 0x199a
    imul word [bp - 0x000e]          ; 0x199d
    add ax, word [bp - 0x0010]       ; 0x19a0
    mov cx, word [bp - 0x0006]       ; 0x19a3
    shl cx, 1                        ; 0x19a6
    mov bx, cx                       ; 0x19a8
    mov bx, word [bx - 0x7b7e]       ; 0x19aa
    mov byte [bx + si + 0x2a], al    ; 0x19ae
    mov ax, 0xffff                   ; 0x19b1
    push ax                          ; 0x19b4
    push word [bp - 0x0010]          ; 0x19b5
    push word [bp - 0x000e]          ; 0x19b8
    push word [bp - 0x0006]          ; 0x19bb
    call api_idx_000a_2              ; 0x19be
    add sp, byte 8                   ; 0x19c1
@..api_idx_0014.l10:
    inc word [bp - 0x0004]           ; 0x19c4
@..api_idx_0014.l11:
    mov ax, word [bp - 0x0006]       ; 0x19c7
    shl ax, 1                        ; 0x19ca
    mov bx, ax                       ; 0x19cc
    mov bx, word [bx - 0x7b7e]       ; 0x19ce
    mov al, byte [bx + 0x1a1]        ; 0x19d2
    sub ah, ah                       ; 0x19d6
    cmp ax, word [bp - 0x0004]       ; 0x19d8
    jle short @..api_idx_0014.l12    ; 0x19db
    jmp near @..api_idx_0014.l8      ; 0x19dd
@..api_idx_0014.l12:
    inc word [bp - 0x0002]           ; 0x19e0
@..api_idx_0014.l13:
    mov ax, word [bp - 0x0002]       ; 0x19e3
    cmp ax, word [bss_8466]          ; 0x19e6
    jg short @..api_idx_0014.l14     ; 0x19ea
    jmp near @..api_idx_0014.l1      ; 0x19ec
@..api_idx_0014.l14:
    mov ax, word [bp - 0x0006]       ; 0x19ef
    mov word [bss_8466], ax          ; 0x19f2
    cmp word [bss_8466], byte 0      ; 0x19f5
    jne short @..api_idx_0014.l16    ; 0x19fa
    cmp word [bss_905e], byte 8      ; 0x19fc
    je short @..api_idx_0014.l15     ; 0x1a01
    mov word [bss_905e], 0xf         ; 0x1a03
@..api_idx_0014.l15:
    mov word [bss_845c], 1           ; 0x1a09
@..api_idx_0014.l16:
    call api_idx_0004_5              ; 0x1a0f
    call api_idx_0006                ; 0x1a12
    ret                              ; 0x1a15
loc_1a16:
    mov ax, 0xfd08                   ; 0x1a16
    call ds_aztec_csav               ; 0x1a19
    mov word [bp - 0x0002], 1        ; 0x1a1c
    jmp near @..local.l18            ; 0x1a21
@..local.l5:
    mov ax, word [bp - 0x0002]       ; 0x1a24
    shl ax, 1                        ; 0x1a27
    mov bx, ax                       ; 0x1a29
    add bx, bp                       ; 0x1a2b
    mov word [bx - 0x001c], 0        ; 0x1a2d
    mov word [bp - 0x0004], 0        ; 0x1a32
    jmp near @..local.l12            ; 0x1a37
@..local.l6:
    mov ax, 0x2c                     ; 0x1a3a
    imul word [bp - 0x0004]          ; 0x1a3d
    mov si, ax                       ; 0x1a40
    mov ax, word [bp - 0x0002]       ; 0x1a42
    shl ax, 1                        ; 0x1a45
    mov bx, ax                       ; 0x1a47
    mov bx, word [bx - 0x7b7e]       ; 0x1a49
    cmp byte [bx + si + 0x22], 0     ; 0x1a4d
    je short @..local.l7             ; 0x1a51
    jmp near @..local.l11            ; 0x1a53
@..local.l7:
    cmp byte [bx + si + 0x10], 0     ; 0x1a56
    je short @..local.l8             ; 0x1a5a
    jmp near @..local.l11            ; 0x1a5c
@..local.l8:
    cmp byte [bx + si + 0x11], 0     ; 0x1a5f
    jne short @..local.l11           ; 0x1a63
    mov word [bp - 0x000c], 0        ; 0x1a65
    mov word [bp - 0x000a], 0        ; 0x1a6a
@..local.l9:
    mov ax, 0x2c                     ; 0x1a6f
    imul word [bp - 0x0004]          ; 0x1a72
    add ax, word [bp - 0x000a]       ; 0x1a75
    mov si, ax                       ; 0x1a78
    mov ax, word [bp - 0x0002]       ; 0x1a7a
    shl ax, 1                        ; 0x1a7d
    mov bx, ax                       ; 0x1a7f
    mov bx, word [bx - 0x7b7e]       ; 0x1a81
    cmp byte [bx + si + 0xe], 0      ; 0x1a85
    jbe short @..local.l10           ; 0x1a89
    mov ax, 0x2c                     ; 0x1a8b
    imul word [bp - 0x0004]          ; 0x1a8e
    mov si, ax                       ; 0x1a91
    mov ax, word [bx + si + 0x2]     ; 0x1a93
    mov cx, 4                        ; 0x1a96
    cwd                              ; 0x1a99
    idiv cx                          ; 0x1a9a
    add word [bp - 0x000c], ax       ; 0x1a9c
@..local.l10:
    inc word [bp - 0x000a]           ; 0x1a9f
    mov ax, word [bp - 0x000a]       ; 0x1aa2
    cmp ax, strict word 0xa          ; 0x1aa5
    jl short @..local.l9             ; 0x1aa8
    mov ax, 0x2c                     ; 0x1aaa
    imul word [bp - 0x0004]          ; 0x1aad
    mov si, ax                       ; 0x1ab0
    mov ax, word [bp - 0x0002]       ; 0x1ab2
    shl ax, 1                        ; 0x1ab5
    mov bx, ax                       ; 0x1ab7
    mov bx, word [bx - 0x7b7e]       ; 0x1ab9
    mov ax, word [bx + si + 0x2]     ; 0x1abd
    cmp ax, word [bp - 0x000c]       ; 0x1ac0
    jle short @..local.l11           ; 0x1ac3
    mov ax, word [bx + si + 0x2]     ; 0x1ac5
    sub ax, word [bp - 0x000c]       ; 0x1ac8
    mov cx, word [bp - 0x0002]       ; 0x1acb
    shl cx, 1                        ; 0x1ace
    mov bx, cx                       ; 0x1ad0
    add bx, bp                       ; 0x1ad2
    add word [bx - 0x001c], ax       ; 0x1ad4
@..local.l11:
    inc word [bp - 0x0004]           ; 0x1ad7
@..local.l12:
    mov ax, word [bp - 0x0002]       ; 0x1ada
    shl ax, 1                        ; 0x1add
    mov bx, ax                       ; 0x1adf
    mov bx, word [bx - 0x7b7e]       ; 0x1ae1
    mov al, byte [bx + 0x1a1]        ; 0x1ae5
    sub ah, ah                       ; 0x1ae9
    cmp ax, word [bp - 0x0004]       ; 0x1aeb
    jle short @..local.l13           ; 0x1aee
    jmp near @..local.l6             ; 0x1af0
@..local.l13:
    mov ax, word [bp - 0x0002]       ; 0x1af3
    shl ax, 1                        ; 0x1af6
    mov bx, ax                       ; 0x1af8
    mov bx, word [bx - 0x7b70]       ; 0x1afa
    cmp byte [bx + 0xae], 0          ; 0x1afe
    jbe short @..local.l14           ; 0x1b03
    mov bx, ax                       ; 0x1b05
    add bx, bp                       ; 0x1b07
    mov ax, word [bx - 0x001c]       ; 0x1b09
    push ax                          ; 0x1b0c
    mov ax, word [bp - 0x0002]       ; 0x1b0d
    shl ax, 1                        ; 0x1b10
    mov si, ax                       ; 0x1b12
    mov si, word [si - 0x7b70]       ; 0x1b14
    mov al, byte [si + 0xae]         ; 0x1b18
    sub ah, ah                       ; 0x1b1c
    mov cx, 0xa                      ; 0x1b1e
    cwd                              ; 0x1b21
    idiv cx                          ; 0x1b22
    mov cx, ax                       ; 0x1b24
    inc ax                           ; 0x1b26
    mov cx, ax                       ; 0x1b27
    pop ax                           ; 0x1b29
    cwd                              ; 0x1b2a
    idiv cx                          ; 0x1b2b
    mov word [bx - 0x001c], ax       ; 0x1b2d
@..local.l14:
    mov ax, word [bp - 0x0002]       ; 0x1b30
    shl ax, 1                        ; 0x1b33
    mov bx, ax                       ; 0x1b35
    mov bx, word [bx - 0x7b70]       ; 0x1b37
    cmp byte [bx + 0xb0], 0          ; 0x1b3b
    jbe short @..local.l15           ; 0x1b40
    mov bx, ax                       ; 0x1b42
    add bx, bp                       ; 0x1b44
    mov ax, word [bx - 0x001c]       ; 0x1b46
    push ax                          ; 0x1b49
    mov ax, word [bp - 0x0002]       ; 0x1b4a
    shl ax, 1                        ; 0x1b4d
    mov bx, ax                       ; 0x1b4f
    mov bx, word [bx - 0x7b70]       ; 0x1b51
    mov al, byte [bx + 0xb0]         ; 0x1b55
    sub ah, ah                       ; 0x1b59
    mov cx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov bx, cx                       ; 0x1b5e
    imul bx                          ; 0x1b60
    mov cx, 0x64                     ; 0x1b62
    mov bx, 0                        ; 0x1b65
    call ds_loc_4be6                 ; 0x1b68
    push ax                          ; 0x1b6b
    push dx                          ; 0x1b6c
    mov ax, word [bp - 0x0002]       ; 0x1b6d
    shl ax, 1                        ; 0x1b70
    mov bx, ax                       ; 0x1b72
    add bx, bp                       ; 0x1b74
    mov ax, word [bx - 0x001c]       ; 0x1b76
    cwd                              ; 0x1b79
    mov cx, ax                       ; 0x1b7a
    mov bx, dx                       ; 0x1b7c
    pop dx                           ; 0x1b7e
    pop ax                           ; 0x1b7f
    add ax, cx                       ; 0x1b80
    adc dx, bx                       ; 0x1b82
    mov cx, word [bp - 0x0002]       ; 0x1b84
    shl cx, 1                        ; 0x1b87
    mov bx, cx                       ; 0x1b89
    add bx, bp                       ; 0x1b8b
    mov word [bx - 0x001c], ax       ; 0x1b8d
@..local.l15:
    mov ax, word [bp - 0x0002]       ; 0x1b90
    shl ax, 1                        ; 0x1b93
    mov bx, ax                       ; 0x1b95
    mov bx, word [bx - 0x7b70]       ; 0x1b97
    cmp byte [bx + 0xb1], 0          ; 0x1b9b
    jbe short @..local.l16           ; 0x1ba0
    mov bx, ax                       ; 0x1ba2
    add bx, bp                       ; 0x1ba4
    mov ax, word [bx - 0x001c]       ; 0x1ba6
    push ax                          ; 0x1ba9
    mov ax, word [bp - 0x0002]       ; 0x1baa
    shl ax, 1                        ; 0x1bad
    mov bx, ax                       ; 0x1baf
    mov bx, word [bx - 0x7b70]       ; 0x1bb1
    mov al, byte [bx + 0xb1]         ; 0x1bb5
    sub ah, ah                       ; 0x1bb9
    mov cx, ax                       ; 0x1bbb
    pop ax                           ; 0x1bbd
    mov bx, cx                       ; 0x1bbe
    imul bx                          ; 0x1bc0
    mov cx, 0x64                     ; 0x1bc2
    mov bx, 0                        ; 0x1bc5
    call ds_loc_4be6                 ; 0x1bc8
    push ax                          ; 0x1bcb
    push dx                          ; 0x1bcc
    mov ax, word [bp - 0x0002]       ; 0x1bcd
    shl ax, 1                        ; 0x1bd0
    mov bx, ax                       ; 0x1bd2
    add bx, bp                       ; 0x1bd4
    mov ax, word [bx - 0x001c]       ; 0x1bd6
    cwd                              ; 0x1bd9
    mov cx, ax                       ; 0x1bda
    mov bx, dx                       ; 0x1bdc
    pop dx                           ; 0x1bde
    pop ax                           ; 0x1bdf
    add ax, cx                       ; 0x1be0
    adc dx, bx                       ; 0x1be2
    mov cx, word [bp - 0x0002]       ; 0x1be4
    shl cx, 1                        ; 0x1be7
    mov bx, cx                       ; 0x1be9
    add bx, bp                       ; 0x1beb
    mov word [bx - 0x001c], ax       ; 0x1bed
@..local.l16:
    mov ax, word [bp - 0x0002]       ; 0x1bf0
    shl ax, 1                        ; 0x1bf3
    mov bx, ax                       ; 0x1bf5
    mov bx, word [bx - 0x7b7e]       ; 0x1bf7
    cmp byte [bx + 0x19f], 0xff      ; 0x1bfb
    je short @..local.l17            ; 0x1c00
    mov al, byte [bx + 0x19f]        ; 0x1c02
    cbw                              ; 0x1c06
    mov cx, 0x15e                    ; 0x1c07
    imul cx                          ; 0x1c0a
    mov bx, ax                       ; 0x1c0c
    cmp byte [bx + 0x6b75], 0        ; 0x1c0e
    je short @..local.l17            ; 0x1c13
    mov ax, word [bp - 0x0002]       ; 0x1c15
    shl ax, 1                        ; 0x1c18
    mov bx, ax                       ; 0x1c1a
    add bx, bp                       ; 0x1c1c
    mov word [bx - 0x001c], 0        ; 0x1c1e
@..local.l17:
    inc word [bp - 0x0002]           ; 0x1c23
@..local.l18:
    mov ax, word [bp - 0x0002]       ; 0x1c26
    cmp ax, word [bss_8466]          ; 0x1c29
    jg short @..local.l19            ; 0x1c2d
    jmp near @..local.l5             ; 0x1c2f
@..local.l19:
    mov ax, word [bss_8466]          ; 0x1c32
    mov word [bp - 0x0002], ax       ; 0x1c35
    jmp near @..local.l37            ; 0x1c38
@..local.l20:
    mov ax, word [bp - 0x0002]       ; 0x1c3b
    shl ax, 1                        ; 0x1c3e
    mov bx, ax                       ; 0x1c40
    add bx, bp                       ; 0x1c42
    push word [bx - 0x001c]          ; 0x1c44
    call ds_app_09f0                 ; 0x1c47
    pop cx                           ; 0x1c4a
    push ax                          ; 0x1c4b
    mov ax, word [bp - 0x0002]       ; 0x1c4c
    shl ax, 1                        ; 0x1c4f
    mov bx, ax                       ; 0x1c51
    add bx, bp                       ; 0x1c53
    push word [bx - 0x001e]          ; 0x1c55
    call ds_app_09f0                 ; 0x1c58
    pop cx                           ; 0x1c5b
    mov cx, ax                       ; 0x1c5c
    pop ax                           ; 0x1c5e
    cmp ax, cx                       ; 0x1c5f
    jg short @..local.l21            ; 0x1c61
    jmp near @..local.l36            ; 0x1c63
@..local.l21:
    mov ax, 1                        ; 0x1c66
    push ax                          ; 0x1c69
    call api_idx_000a                ; 0x1c6a
    pop cx                           ; 0x1c6d
    mov ax, 1                        ; 0x1c6e
    push ax                          ; 0x1c71
    call api_idx_0004                ; 0x1c72
    pop cx                           ; 0x1c75
    mov ax, word [bp - 0x0002]       ; 0x1c76
    shl ax, 1                        ; 0x1c79
    mov bx, ax                       ; 0x1c7b
    mov bx, word [bx - 0x7b7e]       ; 0x1c7d
    cmp byte [bx + 0x1a1], 1         ; 0x1c81
    jne short @..local.l22           ; 0x1c86
    mov ax, 0                        ; 0x1c88
    jmp short @..local.l23           ; 0x1c8b
@..local.l22:
    mov ax, 1                        ; 0x1c8d
@..local.l23:
    mov cx, 4                        ; 0x1c90
    shl ax, cl                       ; 0x1c93
    mov cx, ax                       ; 0x1c95
    push cx                          ; 0x1c97
    mov al, byte [bx + 0x1a0]        ; 0x1c98
    sub ah, ah                       ; 0x1c9c
    mov cx, 5                        ; 0x1c9e
    shl ax, cl                       ; 0x1ca1
    pop cx                           ; 0x1ca3
    add cx, ax                       ; 0x1ca4
    mov ax, word [bp - 0x0002]       ; 0x1ca6
    shl ax, 1                        ; 0x1ca9
    mov bx, ax                       ; 0x1cab
    mov ax, word [bx - 0x7b70]       ; 0x1cad
    add ax, cx                       ; 0x1cb1
    push ax                          ; 0x1cb3
    lea ax, word [bp - 0x006c]       ; 0x1cb4
    push ax                          ; 0x1cb7
    call ds_aztec_strcpy             ; 0x1cb8
    add sp, byte 4                   ; 0x1cbb
    lea ax, word [bp - 0x006c]       ; 0x1cbe
    push ax                          ; 0x1cc1
    call api_idx_0004_2              ; 0x1cc2
    pop cx                           ; 0x1cc5
    lea ax, word [bp - 0x006c]       ; 0x1cc6
    push ax                          ; 0x1cc9
    call ds_aztec_strlen             ; 0x1cca
    pop cx                           ; 0x1ccd
    mov word [bp - 0x000a], ax       ; 0x1cce
    mov bx, ax                       ; 0x1cd1
    add bx, bp                       ; 0x1cd3
    mov byte [bx - 0x006c], 0x20     ; 0x1cd5
    lea cx, word [bp - 0x006b]       ; 0x1cd9
    add ax, cx                       ; 0x1cdc
    push ax                          ; 0x1cde
    mov ax, word [bp - 0x0002]       ; 0x1cdf
    shl ax, 1                        ; 0x1ce2
    mov bx, ax                       ; 0x1ce4
    mov bx, word [bx - 0x7b7e]       ; 0x1ce6
    cmp byte [bx + 0x1a1], 1         ; 0x1cea
    jne short @..local.l24           ; 0x1cef
    mov ax, 0xdb6                    ; 0x1cf1
    jmp short @..local.l25           ; 0x1cf4
@..local.l24:
    mov ax, 0xdb7                    ; 0x1cf6
@..local.l25:
    push ax                          ; 0x1cf9
    call ds_app_mem_0782             ; 0x1cfa
    add sp, byte 4                   ; 0x1cfd
    mov ax, 0x11                     ; 0x1d00
    push ax                          ; 0x1d03
    lea ax, word [bp - 0x006c]       ; 0x1d04
    push ax                          ; 0x1d07
    call api_idx_000c                ; 0x1d08
    add sp, byte 4                   ; 0x1d0b
    mov word [bp - 0x0004], 0        ; 0x1d0e
    jmp short @..local.l28           ; 0x1d13
@..local.l26:
    mov ax, 0x2c                     ; 0x1d15
    imul word [bp - 0x0004]          ; 0x1d18
    mov si, ax                       ; 0x1d1b
    mov ax, word [bp - 0x0002]       ; 0x1d1d
    shl ax, 1                        ; 0x1d20
    mov bx, ax                       ; 0x1d22
    mov bx, word [bx - 0x7b80]       ; 0x1d24
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d28
    je short @..local.l27            ; 0x1d2c
    mov al, byte [bx + si + 0x2a]    ; 0x1d2e
    cbw                              ; 0x1d31
    mov cx, 0xa                      ; 0x1d32
    cwd                              ; 0x1d35
    idiv cx                          ; 0x1d36
    mov word [bp - 0x0006], ax       ; 0x1d38
    mov al, byte [bx + si + 0x2a]    ; 0x1d3b
    cbw                              ; 0x1d3e
    cwd                              ; 0x1d3f
    idiv cx                          ; 0x1d40
    mov word [bp - 0x0008], dx       ; 0x1d42
    mov ax, 6                        ; 0x1d45
    imul word [bp - 0x0006]          ; 0x1d48
    mov cx, word [bp - 0x0008]       ; 0x1d4b
    shl cx, 1                        ; 0x1d4e
    add ax, cx                       ; 0x1d50
    mov bx, ax                       ; 0x1d52
    mov word [bx - 0x6f42], 1        ; 0x1d54
@..local.l27:
    inc word [bp - 0x0004]           ; 0x1d5a
@..local.l28:
    mov ax, word [bp - 0x0002]       ; 0x1d5d
    shl ax, 1                        ; 0x1d60
    mov bx, ax                       ; 0x1d62
    mov bx, word [bx - 0x7b80]       ; 0x1d64
    mov al, byte [bx + 0x1a1]        ; 0x1d68
    sub ah, ah                       ; 0x1d6c
    cmp ax, word [bp - 0x0004]       ; 0x1d6e
    jg short @..local.l26            ; 0x1d71
    mov ax, 1                        ; 0x1d73
    push ax                          ; 0x1d76
    call api_idx_005a                ; 0x1d77
    pop cx                           ; 0x1d7a
    mov word [bp - 0x0004], 0        ; 0x1d7b
    jmp short @..local.l31           ; 0x1d80
@..local.l29:
    mov ax, 0x2c                     ; 0x1d82
    imul word [bp - 0x0004]          ; 0x1d85
    mov si, ax                       ; 0x1d88
    mov ax, word [bp - 0x0002]       ; 0x1d8a
    shl ax, 1                        ; 0x1d8d
    mov bx, ax                       ; 0x1d8f
    mov bx, word [bx - 0x7b80]       ; 0x1d91
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d95
    je short @..local.l30            ; 0x1d99
    mov al, byte [bx + si + 0x2a]    ; 0x1d9b
    cbw                              ; 0x1d9e
    mov cx, 0xa                      ; 0x1d9f
    cwd                              ; 0x1da2
    idiv cx                          ; 0x1da3
    mov word [bp - 0x0006], ax       ; 0x1da5
    mov al, byte [bx + si + 0x2a]    ; 0x1da8
    cbw                              ; 0x1dab
    cwd                              ; 0x1dac
    idiv cx                          ; 0x1dad
    mov word [bp - 0x0008], dx       ; 0x1daf
    mov ax, 6                        ; 0x1db2
    imul word [bp - 0x0006]          ; 0x1db5
    mov cx, word [bp - 0x0008]       ; 0x1db8
    shl cx, 1                        ; 0x1dbb
    add ax, cx                       ; 0x1dbd
    mov bx, ax                       ; 0x1dbf
    mov word [bx - 0x7bc6], 0        ; 0x1dc1
    mov ax, word [bp - 0x0002]       ; 0x1dc7
    shl ax, 1                        ; 0x1dca
    mov bx, ax                       ; 0x1dcc
    mov bx, word [bx - 0x7b80]       ; 0x1dce
    mov byte [bx + si + 0x2a], 0xff  ; 0x1dd2
@..local.l30:
    inc word [bp - 0x0004]           ; 0x1dd6
@..local.l31:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    shl ax, 1                        ; 0x1ddc
    mov bx, ax                       ; 0x1dde
    mov bx, word [bx - 0x7b80]       ; 0x1de0
    mov al, byte [bx + 0x1a1]        ; 0x1de4
    sub ah, ah                       ; 0x1de8
    cmp ax, word [bp - 0x0004]       ; 0x1dea
    jg short @..local.l29            ; 0x1ded
    call loc_2cc7                    ; 0x1def
    mov ax, word [bp - 0x0002]       ; 0x1df2
    shl ax, 1                        ; 0x1df5
    mov bx, ax                       ; 0x1df7
    add bx, bp                       ; 0x1df9
    mov ax, word [bx - 0x001c]       ; 0x1dfb
    mov word [bp - 0x0006], ax       ; 0x1dfe
    mov ax, word [bx - 0x001e]       ; 0x1e01
    mov word [bx - 0x001c], ax       ; 0x1e04
    mov ax, word [bp - 0x0006]       ; 0x1e07
    mov word [bx - 0x001e], ax       ; 0x1e0a
    mov ax, 0x1a4                    ; 0x1e0d
    push ax                          ; 0x1e10
    mov ax, word [bp - 0x0002]       ; 0x1e11
    shl ax, 1                        ; 0x1e14
    mov bx, ax                       ; 0x1e16
    push word [bx - 0x7b80]          ; 0x1e18
    push word [bx - 0x7b7e]          ; 0x1e1c
    call string_loc_374e             ; 0x1e20
    add sp, byte 6                   ; 0x1e23
    mov ax, 0xe8                     ; 0x1e26
    push ax                          ; 0x1e29
    mov ax, word [bp - 0x0002]       ; 0x1e2a
    shl ax, 1                        ; 0x1e2d
    mov bx, ax                       ; 0x1e2f
    push word [bx - 0x7b72]          ; 0x1e31
    push word [bx - 0x7b70]          ; 0x1e35
    call string_loc_374e             ; 0x1e39
    add sp, byte 6                   ; 0x1e3c
    mov word [bp - 0x000e], 0        ; 0x1e3f
    jmp short @..local.l35           ; 0x1e44
@..local.l32:
    mov ax, 0x2c                     ; 0x1e46
    imul word [bp - 0x000e]          ; 0x1e49
    mov si, ax                       ; 0x1e4c
    mov bx, word [bss_8482]          ; 0x1e4e
    mov al, byte [bx + si + 0x1f]    ; 0x1e52
    sub ah, ah                       ; 0x1e55
    cmp ax, word [bp - 0x0002]       ; 0x1e57
    jne short @..local.l33           ; 0x1e5a
    mov ax, word [bp - 0x0002]       ; 0x1e5c
    dec ax                           ; 0x1e5f
    mov byte [bx + si + 0x1f], al    ; 0x1e60
    jmp short @..local.l34           ; 0x1e63
@..local.l33:
    mov ax, 0x2c                     ; 0x1e65
    imul word [bp - 0x000e]          ; 0x1e68
    mov si, ax                       ; 0x1e6b
    mov bx, word [bss_8482]          ; 0x1e6d
    mov al, byte [bx + si + 0x1f]    ; 0x1e71
    sub ah, ah                       ; 0x1e74
    mov cx, word [bp - 0x0002]       ; 0x1e76
    dec cx                           ; 0x1e79
    cmp ax, cx                       ; 0x1e7a
    jne short @..local.l34           ; 0x1e7c
    mov al, byte [bp - 0x0002]       ; 0x1e7e
    mov byte [bx + si + 0x1f], al    ; 0x1e81
@..local.l34:
    inc word [bp - 0x000e]           ; 0x1e84
@..local.l35:
    mov ax, word [bp - 0x000e]       ; 0x1e87
    cmp ax, word [bss_69c8]          ; 0x1e8a
    jl short @..local.l32            ; 0x1e8e
    call api_idx_0004_5              ; 0x1e90
    mov ax, word [bp - 0x0002]       ; 0x1e93
    dec ax                           ; 0x1e96
    push ax                          ; 0x1e97
    call api_idx_000c_2              ; 0x1e98
    pop cx                           ; 0x1e9b
    call api_idx_000c_3              ; 0x1e9c
    mov ax, 0                        ; 0x1e9f
    push ax                          ; 0x1ea2
    call api_idx_005a                ; 0x1ea3
    pop cx                           ; 0x1ea6
@..local.l36:
    dec word [bp - 0x0002]           ; 0x1ea7
@..local.l37:
    cmp word [bp - 0x0002], byte 2   ; 0x1eaa
    jl short @..local.l38            ; 0x1eae
    jmp near @..local.l20            ; 0x1eb0
@..local.l38:
    ret                              ; 0x1eb3
loc_1eb4:
    mov ax, 0                        ; 0x1eb4
    call ds_aztec_csav               ; 0x1eb7
    mov ax, 0x2c                     ; 0x1eba
    imul word [bp + 0x4]             ; 0x1ebd
    mov si, ax                       ; 0x1ec0
    mov bx, word [bss_8482]          ; 0x1ec2
    mov ax, word [bx + si + 0x2]     ; 0x1ec6
    push ax                          ; 0x1ec9
    mov ax, 0x248                    ; 0x1eca
    imul word [bp + 0x4]             ; 0x1ecd
    mov bx, ax                       ; 0x1ed0
    pop ax                           ; 0x1ed2
    mov word [bx + 0x5c0c], ax       ; 0x1ed3
    mov bx, word [bss_8482]          ; 0x1ed7
    mov ax, word [bx + si + 0x6]     ; 0x1edb
    push ax                          ; 0x1ede
    mov ax, 0x248                    ; 0x1edf
    imul word [bp + 0x4]             ; 0x1ee2
    mov bx, ax                       ; 0x1ee5
    pop ax                           ; 0x1ee7
    mov word [bx + 0x5c10], ax       ; 0x1ee8
    mov bx, word [bss_8482]          ; 0x1eec
    mov al, byte [bx + si + 0x22]    ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, 0x248                    ; 0x1ef4
    imul word [bp + 0x4]             ; 0x1ef7
    mov bx, ax                       ; 0x1efa
    pop ax                           ; 0x1efc
    mov byte [bx + 0x5e2f], al       ; 0x1efd
    mov ax, 0xa                      ; 0x1f01
    push ax                          ; 0x1f04
    add bx, strict word 0x5d5a       ; 0x1f05
    mov ax, bx                       ; 0x1f09
    push ax                          ; 0x1f0b
    mov ax, word [bss_8482]          ; 0x1f0c
    add ax, si                       ; 0x1f0f
    add ax, strict word 0xe          ; 0x1f11
    push ax                          ; 0x1f14
    call ds_aztec_movmem             ; 0x1f15
    add sp, byte 6                   ; 0x1f18
    mov ax, 0x2c                     ; 0x1f1b
    imul word [bp + 0x4]             ; 0x1f1e
    mov si, ax                       ; 0x1f21
    mov bx, word [bss_8482]          ; 0x1f23
    mov al, byte [bx + si + 0x23]    ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x248                    ; 0x1f2b
    imul word [bp + 0x4]             ; 0x1f2e
    mov bx, ax                       ; 0x1f31
    pop ax                           ; 0x1f33
    mov byte [bx + 0x5e32], al       ; 0x1f34
    ret                              ; 0x1f38
loc_1f39:
    mov ax, 0xfd84                   ; 0x1f39
    call ds_aztec_csav               ; 0x1f3c
    mov word [bp - 0x0002], 0        ; 0x1f3f
    jmp short @..local.l41           ; 0x1f44
@..local.l39:
    mov ax, 0x2c                     ; 0x1f46
    imul word [bp - 0x0002]          ; 0x1f49
    mov si, ax                       ; 0x1f4c
    mov bx, word [bss_8482]          ; 0x1f4e
    cmp byte [bx + si + 0x22], 3     ; 0x1f52
    jae short @..local.l40           ; 0x1f56
    mov ax, 0x248                    ; 0x1f58
    imul word [bp - 0x0002]          ; 0x1f5b
    mov bx, ax                       ; 0x1f5e
    mov al, byte [bx + 0x5e31]       ; 0x1f60
    sub ah, ah                       ; 0x1f64
    push ax                          ; 0x1f66
    mov al, byte [bx + 0x5e30]       ; 0x1f67
    sub ah, ah                       ; 0x1f6b
    push ax                          ; 0x1f6d
    push word [bp - 0x0002]          ; 0x1f6e
    mov ax, 0                        ; 0x1f71
    push ax                          ; 0x1f74
    call api_idx_000e                ; 0x1f75
    add sp, byte 8                   ; 0x1f78
    cmp ax, strict word 1            ; 0x1f7b
    jne short @..local.l40           ; 0x1f7e
    push word [bp - 0x0002]          ; 0x1f80
    call loc_1eb4                    ; 0x1f83
    pop cx                           ; 0x1f86
    mov ax, 1                        ; 0x1f87
    push ax                          ; 0x1f8a
    push word [bp - 0x0002]          ; 0x1f8b
    call ds_app_1d81                 ; 0x1f8e
    add sp, byte 4                   ; 0x1f91
    mov ax, 0x248                    ; 0x1f94
    imul word [bp - 0x0002]          ; 0x1f97
    mov bx, ax                       ; 0x1f9a
    mov al, byte [bx + 0x5e2c]       ; 0x1f9c
    sub ah, ah                       ; 0x1fa0
    add ax, strict word 8            ; 0x1fa2
    push ax                          ; 0x1fa5
    call ds_app_0a27                 ; 0x1fa6
    pop cx                           ; 0x1fa9
@..local.l40:
    inc word [bp - 0x0002]           ; 0x1faa
@..local.l41:
    mov ax, word [bp - 0x0002]       ; 0x1fad
    cmp ax, word [bss_69c8]          ; 0x1fb0
    jl short @..local.l39            ; 0x1fb4
    mov word [bp - 0x0002], 0        ; 0x1fb6
    jmp short @..local.l43           ; 0x1fbb
@..local.l42:
    push word [bp - 0x0002]          ; 0x1fbd
    call loc_1eb4                    ; 0x1fc0
    pop cx                           ; 0x1fc3
    inc word [bp - 0x0002]           ; 0x1fc4
@..local.l43:
    mov ax, word [bp - 0x0002]       ; 0x1fc7
    cmp ax, word [bss_69c8]          ; 0x1fca
    jl short @..local.l42            ; 0x1fce
    mov word [bp - 0x0002], 0        ; 0x1fd0
    jmp near @..local.l50            ; 0x1fd5
@..local.l44:
    mov ax, word [bp - 0x0002]       ; 0x1fd8
    inc ax                           ; 0x1fdb
    mov word [bp - 0x0004], ax       ; 0x1fdc
    jmp near @..local.l48            ; 0x1fdf
@..local.l45:
    mov ax, 0x248                    ; 0x1fe2
    imul word [bp - 0x0002]          ; 0x1fe5
    mov bx, ax                       ; 0x1fe8
    mov al, byte [bx + 0x5e2f]       ; 0x1fea
    push ax                          ; 0x1fee
    mov ax, 0x248                    ; 0x1fef
    imul word [bp - 0x0004]          ; 0x1ff2
    mov bx, ax                       ; 0x1ff5
    mov cl, byte [bx + 0x5e2f]       ; 0x1ff7
    pop ax                           ; 0x1ffb
    cmp al, cl                       ; 0x1ffc
    ja short @..local.l46            ; 0x1ffe
    jmp near @..local.l47            ; 0x2000
@..local.l46:
    mov ax, 0x248                    ; 0x2003
    push ax                          ; 0x2006
    add bx, strict word 0x5bf4       ; 0x2007
    mov ax, bx                       ; 0x200b
    push ax                          ; 0x200d
    mov ax, 0x248                    ; 0x200e
    imul word [bp - 0x0002]          ; 0x2011
    add ax, 0x5bf4                   ; 0x2014
    push ax                          ; 0x2017
    call string_loc_374e             ; 0x2018
    add sp, byte 6                   ; 0x201b
    mov ax, 0x2c                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0x2c                     ; 0x2022
    imul word [bp - 0x0004]          ; 0x2025
    mov cx, ax                       ; 0x2028
    mov ax, word [bss_8482]          ; 0x202a
    add ax, cx                       ; 0x202d
    push ax                          ; 0x202f
    mov ax, 0x2c                     ; 0x2030
    imul word [bp - 0x0002]          ; 0x2033
    mov cx, ax                       ; 0x2036
    mov ax, word [bss_8482]          ; 0x2038
    add ax, cx                       ; 0x203b
    push ax                          ; 0x203d
    call string_loc_374e             ; 0x203e
    add sp, byte 6                   ; 0x2041
    mov ax, word [bp - 0x0002]       ; 0x2044
    shl ax, 1                        ; 0x2047
    mov bx, ax                       ; 0x2049
    mov ax, word [bx - 0x750e]       ; 0x204b
    mov word [bp - 0x027a], ax       ; 0x204f
    mov ax, word [bp - 0x0004]       ; 0x2053
    shl ax, 1                        ; 0x2056
    mov bx, ax                       ; 0x2058
    mov ax, word [bx - 0x750e]       ; 0x205a
    mov cx, word [bp - 0x0002]       ; 0x205e
    shl cx, 1                        ; 0x2061
    mov bx, cx                       ; 0x2063
    mov word [bx - 0x750e], ax       ; 0x2065
    mov ax, word [bp - 0x027a]       ; 0x2069
    mov cx, word [bp - 0x0004]       ; 0x206d
    shl cx, 1                        ; 0x2070
    mov bx, cx                       ; 0x2072
    mov word [bx - 0x750e], ax       ; 0x2074
    mov ax, word [bp - 0x0002]       ; 0x2078
    shl ax, 1                        ; 0x207b
    mov bx, ax                       ; 0x207d
    mov ax, word [bx + 0x69bc]       ; 0x207f
    mov word [bp - 0x027a], ax       ; 0x2083
    mov bx, cx                       ; 0x2087
    mov ax, word [bx + 0x69bc]       ; 0x2089
    mov cx, word [bp - 0x0002]       ; 0x208d
    shl cx, 1                        ; 0x2090
    mov bx, cx                       ; 0x2092
    mov word [bx + 0x69bc], ax       ; 0x2094
    mov ax, word [bp - 0x027a]       ; 0x2098
    mov cx, word [bp - 0x0004]       ; 0x209c
    shl cx, 1                        ; 0x209f
    mov bx, cx                       ; 0x20a1
    mov word [bx + 0x69bc], ax       ; 0x20a3
@..local.l47:
    inc word [bp - 0x0004]           ; 0x20a7
@..local.l48:
    mov ax, word [bp - 0x0004]       ; 0x20aa
    cmp ax, word [bss_69c8]          ; 0x20ad
    jge short @..local.l49           ; 0x20b1
    jmp near @..local.l45            ; 0x20b3
@..local.l49:
    inc word [bp - 0x0002]           ; 0x20b6
@..local.l50:
    mov ax, word [bss_69c8]          ; 0x20b9
    dec ax                           ; 0x20bc
    cmp ax, word [bp - 0x0002]       ; 0x20bd
    jle short @..local.l51           ; 0x20c0
    jmp near @..local.l44            ; 0x20c2
@..local.l51:
    mov word [bp - 0x0004], 0        ; 0x20c5
    mov word [bp - 0x027c], 0        ; 0x20ca
    mov word [bp - 0x0002], 0        ; 0x20d0
    jmp short @..local.l55           ; 0x20d5
@..local.l52:
    mov ax, 0x248                    ; 0x20d7
    imul word [bp - 0x0002]          ; 0x20da
    mov bx, ax                       ; 0x20dd
    cmp byte [bx + 0x5e2f], 2        ; 0x20df
    jb short @..local.l53            ; 0x20e4
    inc word [bp - 0x0004]           ; 0x20e6
@..local.l53:
    mov ax, 0x2c                     ; 0x20e9
    imul word [bp - 0x0002]          ; 0x20ec
    mov si, ax                       ; 0x20ef
    mov bx, word [bss_8482]          ; 0x20f1
    cmp byte [bx + si + 0x2b], 2     ; 0x20f5
    jne short @..local.l54           ; 0x20f9
    mov word [bp - 0x027c], 1        ; 0x20fb
@..local.l54:
    inc word [bp - 0x0002]           ; 0x2101
@..local.l55:
    mov ax, word [bp - 0x0002]       ; 0x2104
    cmp ax, word [bss_69c8]          ; 0x2107
    jl short @..local.l52            ; 0x210b
    mov ax, word [bp - 0x0004]       ; 0x210d
    cmp ax, word [bss_69c8]          ; 0x2110
    jne short @..local.l56           ; 0x2114
    mov word [bss_905e], 8           ; 0x2116
    mov word [bss_845c], 1           ; 0x211c
    jmp short @..local.l57           ; 0x2122
@..local.l56:
    cmp word [bp - 0x027c], byte 0   ; 0x2124
    jle short @..local.l57           ; 0x2129
    mov word [bss_905e], 0x17        ; 0x212b
    mov word [bss_845c], 1           ; 0x2131
@..local.l57:
    ret                              ; 0x2137
