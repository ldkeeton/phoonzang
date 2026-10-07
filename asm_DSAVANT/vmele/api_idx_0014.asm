api_idx_0014:
    mov ax, 0xffec                   ; 0x1844
    call ds_dispatch_f40b            ; 0x1847
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
    mov bx, word [data_8482]         ; 0x18c2
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
    cmp ax, word [data_69c8]         ; 0x18dc
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
    cmp ax, word [data_8466]         ; 0x19e6
    jg short @..api_idx_0014.l14     ; 0x19ea
    jmp near @..api_idx_0014.l1      ; 0x19ec
@..api_idx_0014.l14:
    mov ax, word [bp - 0x0006]       ; 0x19ef
    mov word [data_8466], ax         ; 0x19f2
    cmp word [data_8466], byte 0     ; 0x19f5
    jne short @..api_idx_0014.l16    ; 0x19fa
    cmp word [data_905e], byte 8     ; 0x19fc
    je short @..api_idx_0014.l15     ; 0x1a01
    mov word [data_905e], 0xf        ; 0x1a03
@..api_idx_0014.l15:
    mov word [data_845c], 1          ; 0x1a09
@..api_idx_0014.l16:
    call api_idx_0004_5              ; 0x1a0f
    call api_idx_0006                ; 0x1a12
    ret                              ; 0x1a15
