; auto-generated
api_idx_00ca_LIQK:
    mov ax, 0xff36                   ; 0x1e31
    call aztec_csav                  ; 0x1e34
    mov ax, word [bp + 0x6]          ; 0x1e37
    jmp short @..api_idx_00ca_LIQK.l5 ; 0x1e3a
@..api_idx_00ca_LIQK.l1:
    mov word [bp - 0x000c], 8        ; 0x1e3c
    mov word [bp - 0x000e], 0x20     ; 0x1e41
    jmp short @..api_idx_00ca_LIQK.l6 ; 0x1e46
@..api_idx_00ca_LIQK.l2:
    mov word [bp - 0x000c], 4        ; 0x1e48
    mov word [bp - 0x000e], 0x1e     ; 0x1e4d
    jmp short @..api_idx_00ca_LIQK.l6 ; 0x1e52
@..api_idx_00ca_LIQK.l3:
    mov word [bp - 0x000c], 2        ; 0x1e54
    mov word [bp - 0x000e], 0x1f     ; 0x1e59
    jmp short @..api_idx_00ca_LIQK.l6 ; 0x1e5e
@..api_idx_00ca_LIQK.l4:
    mov word [bp - 0x000c], 1        ; 0x1e60
    mov word [bp - 0x000e], 0x1d     ; 0x1e65
    jmp short @..api_idx_00ca_LIQK.l6 ; 0x1e6a
@..api_idx_00ca_LIQK.l5:
    cmp ax, strict word 0            ; 0x1e6c
    je short @..api_idx_00ca_LIQK.l1 ; 0x1e6f
    cmp ax, strict word 1            ; 0x1e71
    je short @..api_idx_00ca_LIQK.l2 ; 0x1e74
    cmp ax, strict word 2            ; 0x1e76
    je short @..api_idx_00ca_LIQK.l4 ; 0x1e79
    cmp ax, strict word 3            ; 0x1e7b
    je short @..api_idx_00ca_LIQK.l3 ; 0x1e7e
@..api_idx_00ca_LIQK.l6:
    mov ax, 0x10                     ; 0x1e80
    push ax                          ; 0x1e83
    lea ax, word [bp - 0x001e]       ; 0x1e84
    push ax                          ; 0x1e87
    mov ax, 0x248                    ; 0x1e88
    imul word [bp + 0x4]             ; 0x1e8b
    add ax, 0x5e12                   ; 0x1e8e
    push ax                          ; 0x1e91
    call aztec_movmem                ; 0x1e92
    add sp, byte 6                   ; 0x1e95
    mov ax, 0                        ; 0x1e98
    push ax                          ; 0x1e9b
    mov ax, 0x10                     ; 0x1e9c
    push ax                          ; 0x1e9f
    mov ax, 0x248                    ; 0x1ea0
    imul word [bp + 0x4]             ; 0x1ea3
    add ax, 0x5e12                   ; 0x1ea6
    push ax                          ; 0x1ea9
    call aztec_setmem                ; 0x1eaa
    add sp, byte 6                   ; 0x1ead
    mov ax, 0x248                    ; 0x1eb0
    imul word [bp + 0x4]             ; 0x1eb3
    add ax, word [bp - 0x000e]       ; 0x1eb6
    mov bx, ax                       ; 0x1eb9
    mov al, byte [bx + 0x5d6c]       ; 0x1ebb
    sub ah, ah                       ; 0x1ebf
    mov cx, 0x12                     ; 0x1ec1
    cwd                              ; 0x1ec4
    idiv cx                          ; 0x1ec5
    inc ax                           ; 0x1ec7
    mov word [bp - 0x000a], ax       ; 0x1ec8
    cmp byte [bx + 0x5d6c], 0x62     ; 0x1ecb
    jb short @..api_idx_00ca_LIQK.l7 ; 0x1ed0
    mov word [bp - 0x000a], 7        ; 0x1ed2
@..api_idx_00ca_LIQK.l7:
    mov word [bp - 0x0004], 0        ; 0x1ed7
    mov word [bp - 0x0002], 0        ; 0x1edc
@..api_idx_00ca_LIQK.l8:
    mov ax, 6                        ; 0x1ee1
    imul word [bp - 0x0002]          ; 0x1ee4
    mov bx, ax                       ; 0x1ee7
    mov al, byte [bx + 0x625]        ; 0x1ee9
    sub ah, ah                       ; 0x1eed
    test word [bp - 0x000c], ax      ; 0x1eef
    je short @..api_idx_00ca_LIQK.l9 ; 0x1ef2
    mov al, byte [bx + 0x621]        ; 0x1ef4
    sub ah, ah                       ; 0x1ef8
    cmp ax, word [bp - 0x000a]       ; 0x1efa
    jg short @..api_idx_00ca_LIQK.l9 ; 0x1efd
    push word [bp - 0x0002]          ; 0x1eff
    lea ax, word [bp - 0x001e]       ; 0x1f02
    push ax                          ; 0x1f05
    call ds_leaf_loc_KIMU            ; 0x1f06
    add sp, byte 4                   ; 0x1f09
    test ax, ax                      ; 0x1f0c
    jne short @..api_idx_00ca_LIQK.l9 ; 0x1f0e
    mov ax, 1                        ; 0x1f10
    push ax                          ; 0x1f13
    push word [bp - 0x0002]          ; 0x1f14
    mov ax, 0x248                    ; 0x1f17
    imul word [bp + 0x4]             ; 0x1f1a
    add ax, 0x5e12                   ; 0x1f1d
    push ax                          ; 0x1f20
    call set_bitmap_bit              ; 0x1f21
    add sp, byte 6                   ; 0x1f24
    inc word [bp - 0x0004]           ; 0x1f27
@..api_idx_00ca_LIQK.l9:
    inc word [bp - 0x0002]           ; 0x1f2a
    mov ax, word [bp - 0x0002]       ; 0x1f2d
    cmp ax, strict word 0x66         ; 0x1f30
    jl short @..api_idx_00ca_LIQK.l8 ; 0x1f33
    cmp word [bp - 0x0004], byte 0   ; 0x1f35
    jne short @..api_idx_00ca_LIQK.l10 ; 0x1f39
    mov ax, 0x248                    ; 0x1f3b
    imul word [bp + 0x4]             ; 0x1f3e
    add ax, word [bp + 0x6]          ; 0x1f41
    mov bx, ax                       ; 0x1f44
    mov byte [bx + 0x5d50], 0        ; 0x1f46
    mov ax, 0x10                     ; 0x1f4b
    push ax                          ; 0x1f4e
    mov ax, 0x248                    ; 0x1f4f
    imul word [bp + 0x4]             ; 0x1f52
    add ax, 0x5e12                   ; 0x1f55
    push ax                          ; 0x1f58
    lea ax, word [bp - 0x001e]       ; 0x1f59
    push ax                          ; 0x1f5c
    call aztec_movmem                ; 0x1f5d
    add sp, byte 6                   ; 0x1f60
    ret                              ; 0x1f63
@..api_idx_00ca_LIQK.l10:
    lea ax, word [bp - 0x007a]       ; 0x1f64
    push ax                          ; 0x1f67
    mov ax, 0x2be                    ; 0x1f68
    push ax                          ; 0x1f6b
    call ds_app_mem_VKHV             ; 0x1f6c
    add sp, byte 4                   ; 0x1f6f
    lea ax, word [bp - 0x00ca]       ; 0x1f72
    push ax                          ; 0x1f76
    mov ax, 0x248                    ; 0x1f77
    imul word [bp + 0x4]             ; 0x1f7a
    mov bx, ax                       ; 0x1f7d
    mov al, byte [bx + 0x5e2d]       ; 0x1f7f
    sub ah, ah                       ; 0x1f83
    add ax, strict word 0x78         ; 0x1f85
    push ax                          ; 0x1f88
    call ds_app_mem_VKHV             ; 0x1f89
    add sp, byte 4                   ; 0x1f8c
    mov ax, 0x24                     ; 0x1f8f
    push ax                          ; 0x1f92
    lea ax, word [bp - 0x00ca]       ; 0x1f93
    push ax                          ; 0x1f97
    lea ax, word [bp - 0x007a]       ; 0x1f98
    push ax                          ; 0x1f9b
    call ds_app_string_VPKQ          ; 0x1f9c
    add sp, byte 6                   ; 0x1f9f
    mov ax, 1                        ; 0x1fa2
    push ax                          ; 0x1fa5
    lea ax, word [bp - 0x007a]       ; 0x1fa6
    push ax                          ; 0x1fa9
    call api_idx_0004_VPLS           ; 0x1faa
    add sp, byte 4                   ; 0x1fad
    mov ax, 0                        ; 0x1fb0
    push ax                          ; 0x1fb3
    mov ax, 1                        ; 0x1fb4
    push ax                          ; 0x1fb7
    mov ax, 0x7ec                    ; 0x1fb8
    push ax                          ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbc
    call api_idx_0050_JKSH           ; 0x1fbf
    add sp, byte 8                   ; 0x1fc2
    mov word [bp - 0x0004], ax       ; 0x1fc5
    mov ax, 0x10                     ; 0x1fc8
    push ax                          ; 0x1fcb
    mov ax, 0x248                    ; 0x1fcc
    imul word [bp + 0x4]             ; 0x1fcf
    add ax, 0x5e12                   ; 0x1fd2
    push ax                          ; 0x1fd5
    lea ax, word [bp - 0x001e]       ; 0x1fd6
    push ax                          ; 0x1fd9
    call aztec_movmem                ; 0x1fda
    add sp, byte 6                   ; 0x1fdd
    cmp word [bp - 0x0004], byte 0   ; 0x1fe0
    je short @..api_idx_00ca_LIQK.l11 ; 0x1fe4
    jmp near @..api_idx_00ca_LIQK.l13 ; 0x1fe6
@..api_idx_00ca_LIQK.l11:
    mov ax, word [bss_904e]          ; 0x1fe9
    mov cx, 0x100                    ; 0x1fec
    cwd                              ; 0x1fef
    idiv cx                          ; 0x1ff0
    mov word [bp - 0x0008], ax       ; 0x1ff2
    mov word [bp - 0x0006], dx       ; 0x1ff5
    mov ax, 1                        ; 0x1ff8
    push ax                          ; 0x1ffb
    push dx                          ; 0x1ffc
    mov ax, 0x248                    ; 0x1ffd
    imul word [bp + 0x4]             ; 0x2000
    add ax, 0x5e12                   ; 0x2003
    push ax                          ; 0x2006
    call set_bitmap_bit              ; 0x2007
    add sp, byte 6                   ; 0x200a
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0x4]             ; 0x2010
    add ax, word [bp - 0x000e]       ; 0x2013
    mov bx, ax                       ; 0x2016
    mov al, byte [bx + 0x5d6c]       ; 0x2018
    sub ah, ah                       ; 0x201c
    mov cx, 0x14                     ; 0x201e
    cwd                              ; 0x2021
    idiv cx                          ; 0x2022
    push ax                          ; 0x2024
    call ds_app_GGUI                 ; 0x2025
    pop cx                           ; 0x2028
    push ax                          ; 0x2029
    mov ax, 6                        ; 0x202a
    imul word [bp - 0x0006]          ; 0x202d
    mov bx, ax                       ; 0x2030
    mov al, byte [bx + 0x621]        ; 0x2032
    sub ah, ah                       ; 0x2036
    push ax                          ; 0x2038
    mov ax, 0x248                    ; 0x2039
    imul word [bp + 0x4]             ; 0x203c
    mov bx, ax                       ; 0x203f
    mov al, byte [bx + 0x5d66]       ; 0x2041
    sub ah, ah                       ; 0x2045
    mov cx, 6                        ; 0x2047
    cwd                              ; 0x204a
    idiv cx                          ; 0x204b
    mov cx, ax                       ; 0x204d
    pop ax                           ; 0x204f
    imul cx                          ; 0x2050
    mov cx, ax                       ; 0x2052
    pop ax                           ; 0x2054
    add ax, cx                       ; 0x2055
    inc ax                           ; 0x2057
    mov word [bp - 0x0002], ax       ; 0x2058
    mov ax, 6                        ; 0x205b
    imul word [bp - 0x0006]          ; 0x205e
    mov bx, ax                       ; 0x2061
    mov al, byte [bx + 0x620]        ; 0x2063
    sub ah, ah                       ; 0x2067
    mov word [bp - 0x0004], ax       ; 0x2069
    mov ax, 0x248                    ; 0x206c
    imul word [bp + 0x4]             ; 0x206f
    mov cx, word [bp - 0x0004]       ; 0x2072
    shl cx, 1                        ; 0x2075
    shl cx, 1                        ; 0x2077
    add ax, cx                       ; 0x2079
    mov bx, ax                       ; 0x207b
    mov ax, word [bx + 0x5c1e]       ; 0x207d
    add ax, word [bp - 0x0002]       ; 0x2081
    push ax                          ; 0x2084
    mov ax, 6                        ; 0x2085
    imul word [bp - 0x0006]          ; 0x2088
    mov bx, ax                       ; 0x208b
    mov al, byte [bx + 0x622]        ; 0x208d
    sub ah, ah                       ; 0x2091
    mov cx, ax                       ; 0x2093
    pop ax                           ; 0x2095
    cmp ax, cx                       ; 0x2096
    jge short @..api_idx_00ca_LIQK.l12 ; 0x2098
    mov ax, 0x248                    ; 0x209a
    imul word [bp + 0x4]             ; 0x209d
    mov dx, word [bp - 0x0004]       ; 0x20a0
    shl dx, 1                        ; 0x20a3
    shl dx, 1                        ; 0x20a5
    add ax, dx                       ; 0x20a7
    mov bx, ax                       ; 0x20a9
    sub cx, word [bx + 0x5c1e]       ; 0x20ab
    mov word [bp - 0x0002], cx       ; 0x20af
@..api_idx_00ca_LIQK.l12:
    mov ax, word [bp - 0x0002]       ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x248                    ; 0x20b6
    imul word [bp + 0x4]             ; 0x20b9
    mov cx, ax                       ; 0x20bc
    mov dx, word [bp - 0x0004]       ; 0x20be
    shl dx, 1                        ; 0x20c1
    shl dx, 1                        ; 0x20c3
    add ax, dx                       ; 0x20c5
    mov bx, ax                       ; 0x20c7
    pop ax                           ; 0x20c9
    add word [bx + 0x5c1e], ax       ; 0x20ca
    add word [bx + 0x5c1c], ax       ; 0x20ce
    add cx, word [bp + 0x6]          ; 0x20d2
    mov bx, cx                       ; 0x20d5
    dec byte [bx + 0x5d50]           ; 0x20d7
    push word [bp + 0x4]             ; 0x20db
    call api_idx_0004_RIKH           ; 0x20de
    pop cx                           ; 0x20e1
@..api_idx_00ca_LIQK.l13:
    ret                              ; 0x20e2
