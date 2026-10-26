; auto-generated
api_idx_0014_LJNT:
    mov ax, 0xffec                   ; 0x1844
    call aztec_csav                  ; 0x1847
    mov word [bp - 6], 0             ; 0x184a
    mov word [bp - 2], 1             ; 0x184f
    jmp near .forward10              ; 0x1854
.back1:
    push word [bp - 2]               ; 0x1857
    call advance_member_item_actions ; 0x185a
    pop cx                           ; 0x185d
    mov ax, word [bp - 2]            ; 0x185e
    shl ax, 1                        ; 0x1861
    mov bx, ax                       ; 0x1863
    mov bx, word [bx + party_char]   ; 0x1865
    cmp byte [bx + member_rec.item_count], 0 ; 0x1869
    ja short .forward1               ; 0x186e
    jmp near .forward9               ; 0x1870
.forward1:
    inc word [bp - 6]                ; 0x1873
    mov ax, word [bp - 6]            ; 0x1876
    cmp ax, word [bp - 2]            ; 0x1879
    jne short .forward2              ; 0x187c
    jmp near .forward5               ; 0x187e
.forward2:
    mov si, bx                       ; 0x1881
    shl ax, 1                        ; 0x1883
    mov bx, ax                       ; 0x1885
    mov di, word [bx + party_char]   ; 0x1887
    mov cx, ds                       ; 0x188b
    mov es, cx                       ; 0x188d
    mov cx, 0xd2                     ; 0x188f
    rep movsw                        ; 0x1892
    mov ax, word [bp - 2]            ; 0x1894
    shl ax, 1                        ; 0x1897
    mov bx, ax                       ; 0x1899
    mov si, word [bx + party_char_ext] ; 0x189b
    mov ax, word [bp - 6]            ; 0x189f
    shl ax, 1                        ; 0x18a2
    mov bx, ax                       ; 0x18a4
    mov di, word [bx + party_char_ext] ; 0x18a6
    mov cx, ds                       ; 0x18aa
    mov es, cx                       ; 0x18ac
    mov cx, 0x74                     ; 0x18ae
    rep movsw                        ; 0x18b1
    mov word [bp - 0x12], 0          ; 0x18b3
    jmp short .forward4              ; 0x18b8
.back2:
    mov ax, 0x2c                     ; 0x18ba
    imul word [bp - 0x12]            ; 0x18bd
    mov si, ax                       ; 0x18c0
    mov bx, word [party_char]        ; 0x18c2
    mov al, byte [bx + si + member_rec.f_001f] ; 0x18c6
    sub ah, ah                       ; 0x18c9
    cmp ax, word [bp - 2]            ; 0x18cb
    jne short .forward3              ; 0x18ce
    mov al, byte [bp - 6]            ; 0x18d0
    mov byte [bx + si + 0x1f], al    ; 0x18d3
.forward3:
    inc word [bp - 0x12]             ; 0x18d6
.forward4:
    mov ax, word [bp - 0x12]         ; 0x18d9
    cmp ax, word [party_char_count]  ; 0x18dc
    jl short .back2                  ; 0x18e0
    push word [bp - 6]               ; 0x18e2
    call advance_member_cell_actions ; 0x18e5
    pop cx                           ; 0x18e8
    mov ax, word [bp - 2]            ; 0x18e9
    shl ax, 1                        ; 0x18ec
    mov bx, ax                       ; 0x18ee
    mov bx, word [bx + party_char]   ; 0x18f0
    mov byte [bx + member_rec.item_count], 0 ; 0x18f4
    jmp near .forward9               ; 0x18f9
.forward5:
    mov word [bp - 4], 0             ; 0x18fc
    jmp near .forward8               ; 0x1901
.back3:
    mov ax, 0x2c                     ; 0x1904
    imul word [bp - 4]               ; 0x1907
    mov si, ax                       ; 0x190a
    mov ax, word [bp - 6]            ; 0x190c
    shl ax, 1                        ; 0x190f
    mov bx, ax                       ; 0x1911
    mov bx, word [bx + party_char]   ; 0x1913
    mov al, byte [bx + si + member_rec.item_cell] ; 0x1917
    cbw                              ; 0x191a
    mov word [bp - 8], ax            ; 0x191b
    cmp ax, strict word 0xffff       ; 0x191e
    jne short .forward6              ; 0x1921
    jmp near .forward7               ; 0x1923
.forward6:
    mov cx, 0xa                      ; 0x1926
    cwd                              ; 0x1929
    idiv cx                          ; 0x192a
    mov word [bp - 0xa], ax          ; 0x192c
    mov word [bp - 0xc], dx          ; 0x192f
    mov cx, 6                        ; 0x1932
    imul cx                          ; 0x1935
    mov cx, word [bp - 0xc]          ; 0x1937
    shl cx, 1                        ; 0x193a
    add ax, cx                       ; 0x193c
    mov bx, ax                       ; 0x193e
    mov ax, word [bx + cell_overlay_code + 0x36] ; 0x1940
    mov cx, 0xa                      ; 0x1944
    cwd                              ; 0x1947
    idiv cx                          ; 0x1948
    mov word [bp - 0xe], ax          ; 0x194a
    mov word [bp - 0x10], dx         ; 0x194d
    mov cx, 6                        ; 0x1950
    imul cx                          ; 0x1953
    mov cx, word [bp - 0x10]         ; 0x1955
    shl cx, 1                        ; 0x1958
    add ax, cx                       ; 0x195a
    mov bx, ax                       ; 0x195c
    cmp word [bx + cell_slot_ref], byte 0 ; 0x195e
    jne short .forward7              ; 0x1963
    mov ax, 6                        ; 0x1965
    imul word [bp - 0xa]             ; 0x1968
    mov cx, word [bp - 0xc]          ; 0x196b
    shl cx, 1                        ; 0x196e
    add ax, cx                       ; 0x1970
    mov bx, ax                       ; 0x1972
    mov word [bx + cell_slot_ref], 0 ; 0x1974
    mov ax, 0xa                      ; 0x197a
    imul word [bp - 6]               ; 0x197d
    add ax, word [bp - 4]            ; 0x1980
    push ax                          ; 0x1983
    mov ax, 6                        ; 0x1984
    imul word [bp - 0xe]             ; 0x1987
    mov cx, ax                       ; 0x198a
    mov dx, word [bp - 0x10]         ; 0x198c
    shl dx, 1                        ; 0x198f
    add ax, dx                       ; 0x1991
    mov bx, ax                       ; 0x1993
    pop ax                           ; 0x1995
    mov word [bx + cell_slot_ref], ax ; 0x1996
    mov ax, 0xa                      ; 0x199a
    imul word [bp - 0xe]             ; 0x199d
    add ax, word [bp - 0x10]         ; 0x19a0
    mov cx, word [bp - 6]            ; 0x19a3
    shl cx, 1                        ; 0x19a6
    mov bx, cx                       ; 0x19a8
    mov bx, word [bx + party_char]   ; 0x19aa
    mov byte [bx + si + 0x2a], al    ; 0x19ae
    mov ax, 0xffff                   ; 0x19b1
    push ax                          ; 0x19b4
    push word [bp - 0x10]            ; 0x19b5
    push word [bp - 0xe]             ; 0x19b8
    push word [bp - 6]               ; 0x19bb
    call fill_action_slot_table_vmnpc ; 0x19be
    add sp, byte 8                   ; 0x19c1
.forward7:
    inc word [bp - 4]                ; 0x19c4
.forward8:
    mov ax, word [bp - 6]            ; 0x19c7
    shl ax, 1                        ; 0x19ca
    mov bx, ax                       ; 0x19cc
    mov bx, word [bx + party_char]   ; 0x19ce
    mov al, byte [bx + member_rec.item_count] ; 0x19d2
    sub ah, ah                       ; 0x19d6
    cmp ax, word [bp - 4]            ; 0x19d8
    jle short .forward9              ; 0x19db
    jmp near .back3                  ; 0x19dd
.forward9:
    inc word [bp - 2]                ; 0x19e0
.forward10:
    mov ax, word [bp - 2]            ; 0x19e3
    cmp ax, word [party_member_count] ; 0x19e6
    jg short .forward11              ; 0x19ea
    jmp near .back1                  ; 0x19ec
.forward11:
    mov ax, word [bp - 6]            ; 0x19ef
    mov word [party_member_count], ax ; 0x19f2
    cmp word [party_member_count], byte 0 ; 0x19f5
    jne short .forward13             ; 0x19fa
    cmp word [party_return_state], byte 8 ; 0x19fc
    je short .forward12              ; 0x1a01
    mov word [party_return_state], 0xf ; 0x1a03
.forward12:
    mov word [party_screen_done], 1  ; 0x1a09
.forward13:
    call setup_party_pictures        ; 0x1a0f
    call roll_member_actions         ; 0x1a12
    ret                              ; 0x1a15
