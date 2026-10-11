api_idx_009e:
    mov ax, 0xff62                   ; 0x1894
    call ds_dispatch_f40b            ; 0x1897
    mov word [bp - 0x0004], 0        ; 0x189a
    cmp word [dseg_0e32], byte 0     ; 0x189f
    je short @..api_idx_009e.l1      ; 0x18a4
    lea ax, word [bp - 0x0008]       ; 0x18a6
    push ax                          ; 0x18a9
    lea ax, word [bp - 0x0006]       ; 0x18aa
    push ax                          ; 0x18ad
    call ds_dispatch_f053            ; 0x18ae
    add sp, byte 4                   ; 0x18b1
    mov word [bp - 0x0004], ax       ; 0x18b4
@..api_idx_009e.l1:
    mov ax, 0                        ; 0x18b7
    push ax                          ; 0x18ba
    push ax                          ; 0x18bb
    push word [dseg_93f0]            ; 0x18bc
    push word [dseg_93ee]            ; 0x18c0
    call ds_dispatch_e942            ; 0x18c4
    add sp, byte 8                   ; 0x18c7
    mov ax, 0                        ; 0x18ca
    push ax                          ; 0x18cd
    mov ax, 0x248                    ; 0x18ce
    imul word [bp + 0x4]             ; 0x18d1
    mov bx, ax                       ; 0x18d4
    mov al, byte [bx + 0x5e2d]       ; 0x18d6
    sub ah, ah                       ; 0x18da
    push ax                          ; 0x18dc
    lea ax, word [bp - 0x004c]       ; 0x18dd
    push ax                          ; 0x18e0
    mov ax, 0                        ; 0x18e1
    push ax                          ; 0x18e4
    call ds_dispatch_b63c            ; 0x18e5
    add sp, byte 8                   ; 0x18e8
    lea ax, word [bp - 0x009e]       ; 0x18eb
    push ax                          ; 0x18ef
    mov ax, 0xd9                     ; 0x18f0
    push ax                          ; 0x18f3
    call ds_dispatch_b53b            ; 0x18f4
    add sp, byte 4                   ; 0x18f7
    mov ax, 0x5d                     ; 0x18fa
    push ax                          ; 0x18fd
    mov ax, 6                        ; 0x18fe
    push ax                          ; 0x1901
    call ds_dispatch_e809            ; 0x1902
    add sp, byte 4                   ; 0x1905
    mov ax, 0                        ; 0x1908
    push ax                          ; 0x190b
    mov ax, 0x36                     ; 0x190c
    push ax                          ; 0x190f
    call ds_dispatch_e823            ; 0x1910
    add sp, byte 4                   ; 0x1913
    mov ax, 0                        ; 0x1916
    push ax                          ; 0x1919
    lea ax, word [bp - 0x009e]       ; 0x191a
    push ax                          ; 0x191e
    call ds_dispatch_e84e            ; 0x191f
    add sp, byte 4                   ; 0x1922
    mov ax, 0                        ; 0x1925
    push ax                          ; 0x1928
    mov ax, 0x34                     ; 0x1929
    push ax                          ; 0x192c
    call ds_dispatch_e823            ; 0x192d
    add sp, byte 4                   ; 0x1930
    lea ax, word [bp - 0x009e]       ; 0x1933
    push ax                          ; 0x1937
    mov ax, 0x248                    ; 0x1938
    imul word [bp + 0x4]             ; 0x193b
    mov bx, ax                       ; 0x193e
    mov ax, word [bx + 0x5bfc]       ; 0x1940
    mov dx, word [bx + 0x5bfe]       ; 0x1944
    mov cx, 0x16d                    ; 0x1948
    mov bx, 0                        ; 0x194b
    call ds_dispatch_f99f            ; 0x194e
    push ax                          ; 0x1951
    call ds_dispatch_b27d            ; 0x1952
    add sp, byte 4                   ; 0x1955
    mov ax, 0                        ; 0x1958
    push ax                          ; 0x195b
    lea ax, word [bp - 0x009e]       ; 0x195c
    push ax                          ; 0x1960
    call ds_dispatch_e84e            ; 0x1961
    add sp, byte 4                   ; 0x1964
    lea ax, word [bp - 0x009e]       ; 0x1967
    push ax                          ; 0x196b
    mov ax, 0xda                     ; 0x196c
    push ax                          ; 0x196f
    call ds_dispatch_b53b            ; 0x1970
    add sp, byte 4                   ; 0x1973
    mov ax, 0x63                     ; 0x1976
    push ax                          ; 0x1979
    mov ax, 6                        ; 0x197a
    push ax                          ; 0x197d
    call ds_dispatch_e809            ; 0x197e
    add sp, byte 4                   ; 0x1981
    mov ax, 0                        ; 0x1984
    push ax                          ; 0x1987
    mov ax, 0x58                     ; 0x1988
    push ax                          ; 0x198b
    call ds_dispatch_e823            ; 0x198c
    add sp, byte 4                   ; 0x198f
    mov ax, 0                        ; 0x1992
    push ax                          ; 0x1995
    lea ax, word [bp - 0x009e]       ; 0x1996
    push ax                          ; 0x199a
    call ds_dispatch_e84e            ; 0x199b
    add sp, byte 4                   ; 0x199e
    mov ax, 0                        ; 0x19a1
    push ax                          ; 0x19a4
    mov ax, 0x55                     ; 0x19a5
    push ax                          ; 0x19a8
    call ds_dispatch_e823            ; 0x19a9
    add sp, byte 4                   ; 0x19ac
    lea ax, word [bp - 0x009e]       ; 0x19af
    push ax                          ; 0x19b3
    mov ax, 0x248                    ; 0x19b4
    imul word [bp + 0x4]             ; 0x19b7
    mov bx, ax                       ; 0x19ba
    push word [bx + 0x5c1a]          ; 0x19bc
    call ds_dispatch_b27d            ; 0x19c0
    add sp, byte 4                   ; 0x19c3
    mov ax, 0                        ; 0x19c6
    push ax                          ; 0x19c9
    lea ax, word [bp - 0x009e]       ; 0x19ca
    push ax                          ; 0x19ce
    call ds_dispatch_e84e            ; 0x19cf
    add sp, byte 4                   ; 0x19d2
    mov ax, 0x248                    ; 0x19d5
    imul word [bp + 0x4]             ; 0x19d8
    mov bx, ax                       ; 0x19db
    cmp word [bx + 0x5c18], byte 0x10 ; 0x19dd
    jge short @..api_idx_009e.l2     ; 0x19e2
    mov ax, word [bx + 0x5c18]       ; 0x19e4
    shl ax, 1                        ; 0x19e8
    shl ax, 1                        ; 0x19ea
    mov bx, ax                       ; 0x19ec
    add bx, bp                       ; 0x19ee
    mov ax, word [bx - 0x0050]       ; 0x19f0
    mov dx, word [bx - 0x004e]       ; 0x19f3
    mov word [bp - 0x000a], dx       ; 0x19f6
    mov word [bp - 0x000c], ax       ; 0x19f9
    jmp short @..api_idx_009e.l3     ; 0x19fc
@..api_idx_009e.l2:
    mov ax, 0x248                    ; 0x19fe
    imul word [bp + 0x4]             ; 0x1a01
    mov bx, ax                       ; 0x1a04
    mov ax, word [bx + 0x5c18]       ; 0x1a06
    add ax, strict word 0xfff0       ; 0x1a0a
    mov word [bp - 0x004e], ax       ; 0x1a0d
    mov ax, word [bp - 0x0010]       ; 0x1a10
    mov dx, word [bp - 0x000e]       ; 0x1a13
    sub ax, word [bp - 0x0014]       ; 0x1a16
    sbb dx, word [bp - 0x0012]       ; 0x1a19
    push ax                          ; 0x1a1c
    push dx                          ; 0x1a1d
    mov ax, word [bp - 0x004e]       ; 0x1a1e
    cwd                              ; 0x1a21
    mov cx, ax                       ; 0x1a22
    mov bx, dx                       ; 0x1a24
    pop dx                           ; 0x1a26
    pop ax                           ; 0x1a27
    push ax                          ; 0x1a28
    push dx                          ; 0x1a29
    mul bx                           ; 0x1a2a
    mov bx, ax                       ; 0x1a2c
    pop ax                           ; 0x1a2e
    mul cx                           ; 0x1a2f
    add bx, ax                       ; 0x1a31
    pop ax                           ; 0x1a33
    mul cx                           ; 0x1a34
    add dx, bx                       ; 0x1a36
    add ax, word [bp - 0x0010]       ; 0x1a38
    adc dx, word [bp - 0x000e]       ; 0x1a3b
    mov word [bp - 0x000a], dx       ; 0x1a3e
    mov word [bp - 0x000c], ax       ; 0x1a41
@..api_idx_009e.l3:
    lea ax, word [bp - 0x009e]       ; 0x1a44
    push ax                          ; 0x1a48
    mov ax, 0xdb                     ; 0x1a49
    push ax                          ; 0x1a4c
    call ds_dispatch_b53b            ; 0x1a4d
    add sp, byte 4                   ; 0x1a50
    mov ax, 0x5d                     ; 0x1a53
    push ax                          ; 0x1a56
    mov ax, 0x5b                     ; 0x1a57
    push ax                          ; 0x1a5a
    call ds_dispatch_e809            ; 0x1a5b
    add sp, byte 4                   ; 0x1a5e
    mov ax, 0                        ; 0x1a61
    push ax                          ; 0x1a64
    mov ax, 0x87                     ; 0x1a65
    push ax                          ; 0x1a68
    call ds_dispatch_e823            ; 0x1a69
    add sp, byte 4                   ; 0x1a6c
    mov ax, 0                        ; 0x1a6f
    push ax                          ; 0x1a72
    lea ax, word [bp - 0x009e]       ; 0x1a73
    push ax                          ; 0x1a77
    call ds_dispatch_e84e            ; 0x1a78
    add sp, byte 4                   ; 0x1a7b
    mov ax, 0x63                     ; 0x1a7e
    push ax                          ; 0x1a81
    mov ax, 0x5b                     ; 0x1a82
    push ax                          ; 0x1a85
    call ds_dispatch_e809            ; 0x1a86
    add sp, byte 4                   ; 0x1a89
    mov ax, 0                        ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0x85                     ; 0x1a90
    push ax                          ; 0x1a93
    call ds_dispatch_e823            ; 0x1a94
    add sp, byte 4                   ; 0x1a97
    mov ax, 0                        ; 0x1a9a
    push ax                          ; 0x1a9d
    mov ax, 8                        ; 0x1a9e
    push ax                          ; 0x1aa1
    mov ax, 0x248                    ; 0x1aa2
    imul word [bp + 0x4]             ; 0x1aa5
    mov bx, ax                       ; 0x1aa8
    mov cx, word [bx + 0x5c00]       ; 0x1aaa
    mov bx, word [bx + 0x5c02]       ; 0x1aae
    mov ax, word [bp - 0x000c]       ; 0x1ab2
    mov dx, word [bp - 0x000a]       ; 0x1ab5
    sub ax, cx                       ; 0x1ab8
    sbb dx, bx                       ; 0x1aba
    push dx                          ; 0x1abc
    push ax                          ; 0x1abd
    call ds_dispatch_b293            ; 0x1abe
    add sp, byte 8                   ; 0x1ac1
    mov ax, 0x69                     ; 0x1ac4
    push ax                          ; 0x1ac7
    mov ax, 0x97                     ; 0x1ac8
    push ax                          ; 0x1acb
    mov ax, 0x5d                     ; 0x1acc
    push ax                          ; 0x1acf
    mov ax, 6                        ; 0x1ad0
    push ax                          ; 0x1ad3
    call ds_dispatch_e8da            ; 0x1ad4
    add sp, byte 8                   ; 0x1ad7
    cmp word [dseg_0e32], byte 0     ; 0x1ada
    je short @..api_idx_009e.l6      ; 0x1adf
@..api_idx_009e.l4:
    cmp word [bp - 0x0004], byte 0   ; 0x1ae1
    je short @..api_idx_009e.l5      ; 0x1ae5
    lea ax, word [bp - 0x0008]       ; 0x1ae7
    push ax                          ; 0x1aea
    lea ax, word [bp - 0x0006]       ; 0x1aeb
    push ax                          ; 0x1aee
    call ds_dispatch_f053            ; 0x1aef
    add sp, byte 4                   ; 0x1af2
    test ax, ax                      ; 0x1af5
    je short @..api_idx_009e.l5      ; 0x1af7
    jmp short @..api_idx_009e.l4     ; 0x1af9
@..api_idx_009e.l5:
    jmp short @..api_idx_009e.l7     ; 0x1afb
@..api_idx_009e.l6:
    mov ax, 1                        ; 0x1afd
    push ax                          ; 0x1b00
    call ds_dispatch_eb32            ; 0x1b01
    pop cx                           ; 0x1b04
    sub ah, ah                       ; 0x1b05
    mov word [bp - 0x0002], ax       ; 0x1b07
    cmp word [bp - 0x0002], byte 0x0d ; 0x1b0a
    je short @..api_idx_009e.l7      ; 0x1b0e
    cmp word [bp - 0x0002], byte 0x1b ; 0x1b10
    jne short @..api_idx_009e.l6     ; 0x1b14
@..api_idx_009e.l7:
    ret                              ; 0x1b16
