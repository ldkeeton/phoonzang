api_idx_006a:
    mov ax, 0xff96                   ; 0x5fef
    call ds_dispatch_f40b            ; 0x5ff2
    mov word [data_911c], 0x8d       ; 0x5ff5
    mov word [data_904e], 0xffff     ; 0x5ffb
    mov word [bp - 0x0006], 0x37     ; 0x6001
    mov word [bp - 0x0008], 0x8f     ; 0x6006
    mov word [bp - 0x000a], 0x108    ; 0x600b
    mov word [bp - 0x000c], 0xc5     ; 0x6010
    mov ax, 0x90e3                   ; 0x6015
    push ax                          ; 0x6018
    mov ax, word [bp - 0x000c]       ; 0x6019
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x000a]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    mov ax, word [bp - 0x0008]       ; 0x6023
    dec ax                           ; 0x6026
    push ax                          ; 0x6027
    mov ax, word [bp - 0x0006]       ; 0x6028
    dec ax                           ; 0x602b
    push ax                          ; 0x602c
    call ds_dispatch_c283            ; 0x602d
    add sp, byte 0x0a                ; 0x6030
    mov word [bp - 0x0018], ax       ; 0x6033
    push word [bp - 0x000c]          ; 0x6036
    push word [bp - 0x000a]          ; 0x6039
    push word [bp - 0x0008]          ; 0x603c
    push word [bp - 0x0006]          ; 0x603f
    call ds_dispatch_bc9a            ; 0x6042
    add sp, byte 8                   ; 0x6045
    lea ax, word [bp - 0x006a]       ; 0x6048
    push ax                          ; 0x604b
    push word [bp + 0x6]             ; 0x604c
    call ds_dispatch_b53b            ; 0x604f
    add sp, byte 4                   ; 0x6052
    mov ax, 0xc2                     ; 0x6055
    push ax                          ; 0x6058
    mov ax, 0x1c                     ; 0x6059
    push ax                          ; 0x605c
    call ds_dispatch_e823            ; 0x605d
    add sp, byte 4                   ; 0x6060
    mov ax, word [bp - 0x0008]       ; 0x6063
    add ax, strict word 9            ; 0x6066
    push ax                          ; 0x6069
    lea ax, word [bp - 0x006a]       ; 0x606a
    push ax                          ; 0x606d
    call ds_dispatch_fa90            ; 0x606e
    pop cx                           ; 0x6071
    mov cx, ax                       ; 0x6072
    mov ax, 0xc                      ; 0x6074
    sub ax, cx                       ; 0x6077
    mov cx, 6                        ; 0x6079
    imul cx                          ; 0x607c
    mov cx, data_0002                ; 0x607e
    cwd                              ; 0x6081
    idiv cx                          ; 0x6082
    add ax, word [bp - 0x0006]       ; 0x6084
    add ax, strict word 9            ; 0x6087
    push ax                          ; 0x608a
    call ds_dispatch_e809            ; 0x608b
    add sp, byte 4                   ; 0x608e
    mov ax, 0                        ; 0x6091
    push ax                          ; 0x6094
    lea ax, word [bp - 0x006a]       ; 0x6095
    push ax                          ; 0x6098
    call ds_dispatch_e84e            ; 0x6099
    add sp, byte 4                   ; 0x609c
    mov ax, 0xc2                     ; 0x609f
    push ax                          ; 0x60a2
    mov ax, 1                        ; 0x60a3
    push ax                          ; 0x60a6
    call ds_dispatch_e823            ; 0x60a7
    add sp, byte 4                   ; 0x60aa
    mov ax, word [bp - 0x0008]       ; 0x60ad
    add ax, strict word 0x15         ; 0x60b0
    push ax                          ; 0x60b3
    mov ax, 0x248                    ; 0x60b4
    imul word [bp + 0x4]             ; 0x60b7
    add ax, 0x5bf4                   ; 0x60ba
    push ax                          ; 0x60bd
    call ds_dispatch_fa90            ; 0x60be
    pop cx                           ; 0x60c1
    mov cx, 6                        ; 0x60c2
    imul cx                          ; 0x60c5
    mov cx, data_0002                ; 0x60c7
    cwd                              ; 0x60ca
    idiv cx                          ; 0x60cb
    mov cx, ax                       ; 0x60cd
    mov ax, word [bp - 0x0006]       ; 0x60cf
    add ax, strict word 0x2d         ; 0x60d2
    sub ax, cx                       ; 0x60d5
    push ax                          ; 0x60d7
    call ds_dispatch_e809            ; 0x60d8
    add sp, byte 4                   ; 0x60db
    mov ax, 0                        ; 0x60de
    push ax                          ; 0x60e1
    mov ax, 0x248                    ; 0x60e2
    imul word [bp + 0x4]             ; 0x60e5
    add ax, 0x5bf4                   ; 0x60e8
    push ax                          ; 0x60eb
    call ds_dispatch_e84e            ; 0x60ec
    add sp, byte 4                   ; 0x60ef
    mov ax, 0x90e9                   ; 0x60f2
    push ax                          ; 0x60f5
    lea ax, word [bp - 0x006a]       ; 0x60f6
    push ax                          ; 0x60f9
    call ds_dispatch_f364            ; 0x60fa
    add sp, byte 4                   ; 0x60fd
    lea ax, word [bp - 0x0069]       ; 0x6100
    push ax                          ; 0x6103
    mov ax, 0x248                    ; 0x6104
    imul word [bp + 0x4]             ; 0x6107
    mov bx, ax                       ; 0x610a
    mov al, byte [bx + 0x5d7c]       ; 0x610c
    sub ah, ah                       ; 0x6110
    push ax                          ; 0x6112
    call ds_dispatch_b27d            ; 0x6113
    add sp, byte 4                   ; 0x6116
    mov ax, 0x90eb                   ; 0x6119
    push ax                          ; 0x611c
    lea ax, word [bp - 0x006a]       ; 0x611d
    push ax                          ; 0x6120
    call ds_dispatch_f32d            ; 0x6121
    add sp, byte 4                   ; 0x6124
    mov ax, word [bp - 0x0008]       ; 0x6127
    add ax, strict word 0x1b         ; 0x612a
    push ax                          ; 0x612d
    lea ax, word [bp - 0x006a]       ; 0x612e
    push ax                          ; 0x6131
    call ds_dispatch_fa90            ; 0x6132
    pop cx                           ; 0x6135
    mov cx, 6                        ; 0x6136
    imul cx                          ; 0x6139
    mov cx, data_0002                ; 0x613b
    cwd                              ; 0x613e
    idiv cx                          ; 0x613f
    mov cx, ax                       ; 0x6141
    mov ax, word [bp - 0x0006]       ; 0x6143
    add ax, strict word 0x2d         ; 0x6146
    sub ax, cx                       ; 0x6149
    push ax                          ; 0x614b
    call ds_dispatch_e809            ; 0x614c
    add sp, byte 4                   ; 0x614f
    mov ax, 0                        ; 0x6152
    push ax                          ; 0x6155
    lea ax, word [bp - 0x006a]       ; 0x6156
    push ax                          ; 0x6159
    call ds_dispatch_e84e            ; 0x615a
    add sp, byte 4                   ; 0x615d
    lea ax, word [bp - 0x006a]       ; 0x6160
    push ax                          ; 0x6163
    mov ax, word [bp + 0x6]          ; 0x6164
    inc ax                           ; 0x6167
    push ax                          ; 0x6168
    call ds_dispatch_b53b            ; 0x6169
    add sp, byte 4                   ; 0x616c
    lea ax, word [bp - 0x006a]       ; 0x616f
    push ax                          ; 0x6172
    push word [bp + 0x8]             ; 0x6173
    mov ax, 1                        ; 0x6176
    push ax                          ; 0x6179
    mov ax, 0xc                      ; 0x617a
    push ax                          ; 0x617d
    mov ax, word [bp - 0x0008]       ; 0x617e
    add ax, strict word 0x26         ; 0x6181
    push ax                          ; 0x6184
    mov ax, word [bp - 0x0006]       ; 0x6185
    add ax, strict word 8            ; 0x6188
    push ax                          ; 0x618b
    call ds_dispatch_c0c1            ; 0x618c
    add sp, byte 0x0c                ; 0x618f
    mov word [bp - 0x0002], 0        ; 0x6192
@..api_idx_006a.l1:
    mov ax, word [bp - 0x0008]       ; 0x6197
    add ax, strict word 0xe          ; 0x619a
    push ax                          ; 0x619d
    mov ax, 0x14                     ; 0x619e
    imul word [bp - 0x0002]          ; 0x61a1
    add ax, word [bp - 0x0006]       ; 0x61a4
    add ax, strict word 0x67         ; 0x61a7
    push ax                          ; 0x61aa
    mov ax, word [bp - 0x0008]       ; 0x61ab
    add ax, strict word 8            ; 0x61ae
    push ax                          ; 0x61b1
    mov ax, 0x14                     ; 0x61b2
    imul word [bp - 0x0002]          ; 0x61b5
    add ax, word [bp - 0x0006]       ; 0x61b8
    add ax, strict word 0x59         ; 0x61bb
    push ax                          ; 0x61be
    call ds_dispatch_bd98            ; 0x61bf
    add sp, byte 8                   ; 0x61c2
    mov ax, word [bp - 0x0008]       ; 0x61c5
    add ax, strict word 0x1d         ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x14                     ; 0x61cc
    imul word [bp - 0x0002]          ; 0x61cf
    add ax, word [bp - 0x0006]       ; 0x61d2
    add ax, strict word 0x62         ; 0x61d5
    push ax                          ; 0x61d8
    mov ax, word [bp - 0x0008]       ; 0x61d9
    add ax, strict word 0x17         ; 0x61dc
    push ax                          ; 0x61df
    mov ax, 0x14                     ; 0x61e0
    imul word [bp - 0x0002]          ; 0x61e3
    add ax, word [bp - 0x0006]       ; 0x61e6
    add ax, strict word 0x5e         ; 0x61e9
    push ax                          ; 0x61ec
