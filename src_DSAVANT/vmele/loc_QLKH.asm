; auto-generated
loc_QLKH:
    mov ax, 0xfd84                   ; 0x1f39
    call aztec_csav                  ; 0x1f3c
    mov word [bp - 0x0002], 0        ; 0x1f3f
    jmp short @..loc_QLKH.l3         ; 0x1f44
@..loc_QLKH.l1:
    mov ax, 0x2c                     ; 0x1f46
    imul word [bp - 0x0002]          ; 0x1f49
    mov si, ax                       ; 0x1f4c
    mov bx, word [bss_8482]          ; 0x1f4e
    cmp byte [bx + si + 0x22], 3     ; 0x1f52
    jae short @..loc_QLKH.l2         ; 0x1f56
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
    call api_idx_000e_UGVQ           ; 0x1f75
    add sp, byte 8                   ; 0x1f78
    cmp ax, strict word 1            ; 0x1f7b
    jne short @..loc_QLKH.l2         ; 0x1f7e
    push word [bp - 0x0002]          ; 0x1f80
    call loc_JQLR                    ; 0x1f83
    pop cx                           ; 0x1f86
    mov ax, 1                        ; 0x1f87
    push ax                          ; 0x1f8a
    push word [bp - 0x0002]          ; 0x1f8b
    call ds_app_LUOV                 ; 0x1f8e
    add sp, byte 4                   ; 0x1f91
    mov ax, 0x248                    ; 0x1f94
    imul word [bp - 0x0002]          ; 0x1f97
    mov bx, ax                       ; 0x1f9a
    mov al, byte [bx + 0x5e2c]       ; 0x1f9c
    sub ah, ah                       ; 0x1fa0
    add ax, strict word 8            ; 0x1fa2
    push ax                          ; 0x1fa5
    call ds_app_HKIJ                 ; 0x1fa6
    pop cx                           ; 0x1fa9
@..loc_QLKH.l2:
    inc word [bp - 0x0002]           ; 0x1faa
@..loc_QLKH.l3:
    mov ax, word [bp - 0x0002]       ; 0x1fad
    cmp ax, word [bss_69c8]          ; 0x1fb0
    jl short @..loc_QLKH.l1          ; 0x1fb4
    mov word [bp - 0x0002], 0        ; 0x1fb6
    jmp short @..loc_QLKH.l5         ; 0x1fbb
@..loc_QLKH.l4:
    push word [bp - 0x0002]          ; 0x1fbd
    call loc_JQLR                    ; 0x1fc0
    pop cx                           ; 0x1fc3
    inc word [bp - 0x0002]           ; 0x1fc4
@..loc_QLKH.l5:
    mov ax, word [bp - 0x0002]       ; 0x1fc7
    cmp ax, word [bss_69c8]          ; 0x1fca
    jl short @..loc_QLKH.l4          ; 0x1fce
    mov word [bp - 0x0002], 0        ; 0x1fd0
    jmp near @..loc_QLKH.l12         ; 0x1fd5
@..loc_QLKH.l6:
    mov ax, word [bp - 0x0002]       ; 0x1fd8
    inc ax                           ; 0x1fdb
    mov word [bp - 0x0004], ax       ; 0x1fdc
    jmp near @..loc_QLKH.l10         ; 0x1fdf
@..loc_QLKH.l7:
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
    ja short @..loc_QLKH.l8          ; 0x1ffe
    jmp near @..loc_QLKH.l9          ; 0x2000
@..loc_QLKH.l8:
    mov ax, 0x248                    ; 0x2003
    push ax                          ; 0x2006
    add bx, strict word 0x5bf4       ; 0x2007
    mov ax, bx                       ; 0x200b
    push ax                          ; 0x200d
    mov ax, 0x248                    ; 0x200e
    imul word [bp - 0x0002]          ; 0x2011
    add ax, 0x5bf4                   ; 0x2014
    push ax                          ; 0x2017
    call string_loc_SJPQ             ; 0x2018
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
    call string_loc_SJPQ             ; 0x203e
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
@..loc_QLKH.l9:
    inc word [bp - 0x0004]           ; 0x20a7
@..loc_QLKH.l10:
    mov ax, word [bp - 0x0004]       ; 0x20aa
    cmp ax, word [bss_69c8]          ; 0x20ad
    jge short @..loc_QLKH.l11        ; 0x20b1
    jmp near @..loc_QLKH.l7          ; 0x20b3
@..loc_QLKH.l11:
    inc word [bp - 0x0002]           ; 0x20b6
@..loc_QLKH.l12:
    mov ax, word [bss_69c8]          ; 0x20b9
    dec ax                           ; 0x20bc
    cmp ax, word [bp - 0x0002]       ; 0x20bd
    jle short @..loc_QLKH.l13        ; 0x20c0
    jmp near @..loc_QLKH.l6          ; 0x20c2
@..loc_QLKH.l13:
    mov word [bp - 0x0004], 0        ; 0x20c5
    mov word [bp - 0x027c], 0        ; 0x20ca
    mov word [bp - 0x0002], 0        ; 0x20d0
    jmp short @..loc_QLKH.l17        ; 0x20d5
@..loc_QLKH.l14:
    mov ax, 0x248                    ; 0x20d7
    imul word [bp - 0x0002]          ; 0x20da
    mov bx, ax                       ; 0x20dd
    cmp byte [bx + 0x5e2f], 2        ; 0x20df
    jb short @..loc_QLKH.l15         ; 0x20e4
    inc word [bp - 0x0004]           ; 0x20e6
@..loc_QLKH.l15:
    mov ax, 0x2c                     ; 0x20e9
    imul word [bp - 0x0002]          ; 0x20ec
    mov si, ax                       ; 0x20ef
    mov bx, word [bss_8482]          ; 0x20f1
    cmp byte [bx + si + 0x2b], 2     ; 0x20f5
    jne short @..loc_QLKH.l16        ; 0x20f9
    mov word [bp - 0x027c], 1        ; 0x20fb
@..loc_QLKH.l16:
    inc word [bp - 0x0002]           ; 0x2101
@..loc_QLKH.l17:
    mov ax, word [bp - 0x0002]       ; 0x2104
    cmp ax, word [bss_69c8]          ; 0x2107
    jl short @..loc_QLKH.l14         ; 0x210b
    mov ax, word [bp - 0x0004]       ; 0x210d
    cmp ax, word [bss_69c8]          ; 0x2110
    jne short @..loc_QLKH.l18        ; 0x2114
    mov word [bss_905e], 8           ; 0x2116
    mov word [bss_845c], 1           ; 0x211c
    jmp short @..loc_QLKH.l19        ; 0x2122
@..loc_QLKH.l18:
    cmp word [bp - 0x027c], byte 0   ; 0x2124
    jle short @..loc_QLKH.l19        ; 0x2129
    mov word [bss_905e], 0x17        ; 0x212b
    mov word [bss_845c], 1           ; 0x2131
@..loc_QLKH.l19:
    ret                              ; 0x2137
