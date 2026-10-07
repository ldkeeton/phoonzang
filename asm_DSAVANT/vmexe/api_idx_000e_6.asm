api_idx_000e_6:
    mov ax, 0xfff2                   ; 0x5fa1
    call ds_dispatch_f40b            ; 0x5fa4
    mov al, byte [data_69c8]         ; 0x5fa7
    mov bx, word [data_8482]         ; 0x5faa
    mov byte [bx + 0x1a1], al        ; 0x5fae
    mov bx, word [bp + 0x4]          ; 0x5fb2
    mov al, byte [bx + 0x1f]         ; 0x5fb5
    sub ah, ah                       ; 0x5fb8
    mov word [bp - 0x0008], ax       ; 0x5fba
    mov al, byte [bx + 0x20]         ; 0x5fbd
    sub ah, ah                       ; 0x5fc0
    mov word [bp - 0x000a], ax       ; 0x5fc2
    mov ax, word [bx + 0xa]          ; 0x5fc5
    mov cx, 0x100                    ; 0x5fc8
    cwd                              ; 0x5fcb
    idiv cx                          ; 0x5fcc
    mov word [bp - 0x0004], ax       ; 0x5fce
    mov ax, word [bx + 0xa]          ; 0x5fd1
    cwd                              ; 0x5fd4
    idiv cx                          ; 0x5fd5
    mov word [bp - 0x0006], dx       ; 0x5fd7
    push word [data_8462]            ; 0x5fda
    push word [data_8464]            ; 0x5fde
    mov ax, 0x90e6                   ; 0x5fe2
    push ax                          ; 0x5fe5
    call loc_15ab                    ; 0x5fe6
    add sp, byte 6                   ; 0x5fe9
    mov ax, data_9136                ; 0x5fec
    push ax                          ; 0x5fef
    mov ax, 0xcec                    ; 0x5ff0
    push ax                          ; 0x5ff3
    call ds_dispatch_b53b            ; 0x5ff4
    add sp, byte 4                   ; 0x5ff7
    mov ax, data_9186                ; 0x5ffa
    push ax                          ; 0x5ffd
    mov ax, word [bp - 0x0006]       ; 0x5ffe
    add ax, 0xfa0                    ; 0x6001
    push ax                          ; 0x6004
    call ds_dispatch_b53b            ; 0x6005
    add sp, byte 4                   ; 0x6008
    mov ax, 6                        ; 0x600b
    imul word [bp - 0x0006]          ; 0x600e
    mov bx, ax                       ; 0x6011
    mov al, byte [bx + 0x620]        ; 0x6013
    sub ah, ah                       ; 0x6017
    shl ax, 1                        ; 0x6019
    shl ax, 1                        ; 0x601b
    mov bx, ax                       ; 0x601d
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    mov ax, 0x43                     ; 0x6023
    push ax                          ; 0x6026
    cmp word [data_8464], byte 0     ; 0x6027
    jne short @..api_idx_000e_6.l1   ; 0x602c
    mov ax, 1                        ; 0x602e
@..api_idx_000e_6.l1:
    push ax                          ; 0x6031
    mov ax, data_9186                ; 0x6032
    push ax                          ; 0x6035
    mov ax, data_9136                ; 0x6036
    push ax                          ; 0x6039
    mov ax, 0x90e6                   ; 0x603a
    push ax                          ; 0x603d
    mov ax, 0                        ; 0x603e
    push ax                          ; 0x6041
    call api_idx_0004_4              ; 0x6042
    add sp, byte 0x0e                ; 0x6045
    mov word [data_91d8], 0          ; 0x6048
    mov word [data_91da], 0          ; 0x604e
    mov ax, word [data_8464]         ; 0x6054
    shl ax, 1                        ; 0x6057
    mov bx, ax                       ; 0x6059
    mov bx, word [bx - 0x7b7e]       ; 0x605b
    mov al, byte [bx + 0x191]        ; 0x605f
    sub ah, ah                       ; 0x6063
    mov bx, word [bp + 0x4]          ; 0x6065
    mov cx, word [bx]                ; 0x6068
    add ax, cx                       ; 0x606a
    inc ax                           ; 0x606c
    push ax                          ; 0x606d
    call ds_dispatch_b7a9            ; 0x606e
    pop cx                           ; 0x6071
    push ax                          ; 0x6072
    mov ax, word [data_8464]         ; 0x6073
    shl ax, 1                        ; 0x6076
    mov bx, ax                       ; 0x6078
    mov bx, word [bx - 0x7b7e]       ; 0x607a
    mov al, byte [bx + 0x191]        ; 0x607e
    sub ah, ah                       ; 0x6082
    mov cx, ax                       ; 0x6084
    pop ax                           ; 0x6086
    cmp ax, cx                       ; 0x6087
    jge short @..api_idx_000e_6.l2   ; 0x6089
    mov word [data_91da], 1          ; 0x608b
@..api_idx_000e_6.l2:
    cmp word [data_8464], byte 0     ; 0x6091
    je short @..api_idx_000e_6.l3    ; 0x6096
    jmp near @..api_idx_000e_6.l9    ; 0x6098
@..api_idx_000e_6.l3:
    mov ax, 0x248                    ; 0x609b
    imul word [data_8462]            ; 0x609e
    mov bx, ax                       ; 0x60a2
    mov al, byte [bx + 0x5e2d]       ; 0x60a4
    cmp al, 5                        ; 0x60a8
    je short @..api_idx_000e_6.l4    ; 0x60aa
    cmp al, 4                        ; 0x60ac
    je short @..api_idx_000e_6.l4    ; 0x60ae
    cmp al, 0xd                      ; 0x60b0
    jne short @..api_idx_000e_6.l5   ; 0x60b2
@..api_idx_000e_6.l4:
    mov al, byte [bx + 0x5d89]       ; 0x60b4
    sub ah, ah                       ; 0x60b8
    mov cx, 3                        ; 0x60ba
    cwd                              ; 0x60bd
    idiv cx                          ; 0x60be
    add ax, strict word 0x5a         ; 0x60c0
    push ax                          ; 0x60c3
    mov ax, 6                        ; 0x60c4
    imul word [bp - 0x0006]          ; 0x60c7
    mov bx, ax                       ; 0x60ca
    mov al, byte [bx + 0x621]        ; 0x60cc
    sub ah, ah                       ; 0x60d0
    imul word [bp - 0x0004]          ; 0x60d2
    mov cx, ax                       ; 0x60d5
    pop ax                           ; 0x60d7
    sub ax, cx                       ; 0x60d8
    mov word [bp - 0x000e], ax       ; 0x60da
    jmp short @..api_idx_000e_6.l6   ; 0x60dd
@..api_idx_000e_6.l5:
    mov ax, 0x248                    ; 0x60df
    imul word [data_8462]            ; 0x60e2
    mov bx, ax                       ; 0x60e6
    mov al, byte [bx + 0x5d7a]       ; 0x60e8
    sub ah, ah                       ; 0x60ec
    mov cx, 3                        ; 0x60ee
    cwd                              ; 0x60f1
    idiv cx                          ; 0x60f2
    add ax, strict word 0x5a         ; 0x60f4
    push ax                          ; 0x60f7
    mov ax, 6                        ; 0x60f8
    imul word [bp - 0x0006]          ; 0x60fb
    mov bx, ax                       ; 0x60fe
    mov al, byte [bx + 0x621]        ; 0x6100
    sub ah, ah                       ; 0x6104
    imul word [bp - 0x0004]          ; 0x6106
    mov cx, ax                       ; 0x6109
    pop ax                           ; 0x610b
    sub ax, cx                       ; 0x610c
    mov word [bp - 0x000e], ax       ; 0x610e
    mov ax, 2                        ; 0x6111
    push ax                          ; 0x6114
    mov ax, api_idx_0002             ; 0x6115
    push ax                          ; 0x6118
    push word [data_8462]            ; 0x6119
    call math_loc_1bf4               ; 0x611d
    add sp, byte 6                   ; 0x6120
@..api_idx_000e_6.l6:
    mov ax, 0x64                     ; 0x6123
    push ax                          ; 0x6126
    call ds_dispatch_b7a9            ; 0x6127
    pop cx                           ; 0x612a
    cmp ax, word [bp - 0x000e]       ; 0x612b
    jle short @..api_idx_000e_6.l8   ; 0x612e
    cmp byte [data_5988], 1          ; 0x6130
    je short @..api_idx_000e_6.l7    ; 0x6135
    mov ax, 0x24                     ; 0x6137
    push ax                          ; 0x613a
    call ds_dispatch_b7a9            ; 0x613b
    pop cx                           ; 0x613e
    push ax                          ; 0x613f
    mov ax, 0x248                    ; 0x6140
    imul word [data_8462]            ; 0x6143
    mov bx, ax                       ; 0x6147
    mov al, byte [bx + 0x5d6b]       ; 0x6149
    sub ah, ah                       ; 0x614d
    mov cx, ax                       ; 0x614f
    add ax, strict word 0x12         ; 0x6151
    mov cx, ax                       ; 0x6154
    pop ax                           ; 0x6156
    cmp ax, cx                       ; 0x6157
    jle short @..api_idx_000e_6.l7   ; 0x6159
    mov word [data_91da], 0          ; 0x615b
    mov word [data_91d8], 1          ; 0x6161
    jmp short @..api_idx_000e_6.l8   ; 0x6167
@..api_idx_000e_6.l7:
    mov word [data_91da], 1          ; 0x6169
@..api_idx_000e_6.l8:
    jmp short @..api_idx_000e_6.l11  ; 0x616f
@..api_idx_000e_6.l9:
    mov ax, 0x2c                     ; 0x6171
    imul word [data_8462]            ; 0x6174
    mov si, ax                       ; 0x6178
    mov ax, word [data_8464]         ; 0x617a
    shl ax, 1                        ; 0x617d
    mov bx, ax                       ; 0x617f
    mov bx, word [bx - 0x7b7e]       ; 0x6181
    mov ax, word [bx + si]           ; 0x6185
    mov cx, 3                        ; 0x6187
    imul cx                          ; 0x618a
    add ax, strict word 0x58         ; 0x618c
    push ax                          ; 0x618f
    mov ax, 6                        ; 0x6190
    imul word [bp - 0x0006]          ; 0x6193
    mov bx, ax                       ; 0x6196
    mov al, byte [bx + 0x621]        ; 0x6198
    sub ah, ah                       ; 0x619c
    imul word [bp - 0x0004]          ; 0x619e
