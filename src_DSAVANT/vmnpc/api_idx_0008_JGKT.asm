; auto-generated
api_idx_0008_JGKT:
    mov ax, 0xfff8                   ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bp - 0x0008], 0        ; 0x0014
    cmp word [bp + 0xa], byte 0xff   ; 0x0019
    jne short @..api_idx_0008_JGKT.l1 ; 0x001d
    mov word [bp + 0xa], 0           ; 0x001f
    mov ax, 0x15e                    ; 0x0024
    imul word [bp + 0x4]             ; 0x0027
    mov bx, ax                       ; 0x002a
    mov al, byte [bx + 0x6b75]       ; 0x002c
    sub ah, ah                       ; 0x0030
    cmp ax, 0xfe                     ; 0x0032
    je short @..api_idx_0008_JGKT.l1 ; 0x0035
    mov word [bp - 0x0008], 1        ; 0x0037
@..api_idx_0008_JGKT.l1:
    mov ax, 0x15e                    ; 0x003c
    imul word [bp + 0x4]             ; 0x003f
    add ax, word [bp + 0xa]          ; 0x0042
    mov bx, ax                       ; 0x0045
    mov al, byte [bx + 0x6a1a]       ; 0x0047
    sub ah, ah                       ; 0x004b
    mov word [bp - 0x0002], ax       ; 0x004d
    jmp near @..api_idx_0008_JGKT.l7 ; 0x0050
@..api_idx_0008_JGKT.l2:
    mov ax, 0x15e                    ; 0x0053
    imul word [bp + 0x4]             ; 0x0056
    add ax, word [bp - 0x0002]       ; 0x0059
    mov bx, ax                       ; 0x005c
    mov al, byte [bx + 0x6a22]       ; 0x005e
    sub ah, ah                       ; 0x0062
    mov word [bp - 0x0004], ax       ; 0x0064
    cmp word [bp + 0xa], byte 0      ; 0x0067
    jne short @..api_idx_0008_JGKT.l5 ; 0x006b
    mov ax, 0x15e                    ; 0x006d
    imul word [bp + 0x4]             ; 0x0070
    mov bx, ax                       ; 0x0073
    cmp byte [bx + 0x6b75], 0        ; 0x0075
    jbe short @..api_idx_0008_JGKT.l5 ; 0x007a
    mov al, byte [bx + 0x6b75]       ; 0x007c
    sub ah, ah                       ; 0x0080
    cmp ax, 0xfe                     ; 0x0082
    jge short @..api_idx_0008_JGKT.l5 ; 0x0085
    cmp ax, 0xfd                     ; 0x0087
    jne short @..api_idx_0008_JGKT.l3 ; 0x008a
    mov word [bp - 0x0004], 0        ; 0x008c
    mov word [bp - 0x0006], 0        ; 0x0091
    jmp short @..api_idx_0008_JGKT.l4 ; 0x0096
@..api_idx_0008_JGKT.l3:
    mov word [bp - 0x0006], ax       ; 0x0098
@..api_idx_0008_JGKT.l4:
    jmp short @..api_idx_0008_JGKT.l6 ; 0x009b
@..api_idx_0008_JGKT.l5:
    mov ax, 0x15e                    ; 0x009d
    imul word [bp + 0x4]             ; 0x00a0
    add ax, word [bp - 0x0002]       ; 0x00a3
    mov bx, ax                       ; 0x00a6
    mov al, byte [bx + 0x6a2c]       ; 0x00a8
    sub ah, ah                       ; 0x00ac
    push ax                          ; 0x00ae
    call ds_app_PUNN                 ; 0x00af
    pop cx                           ; 0x00b2
    add word [bp - 0x0004], ax       ; 0x00b3
    mov ax, 0x15e                    ; 0x00b6
    imul word [bp + 0x4]             ; 0x00b9
    add ax, word [bp - 0x0004]       ; 0x00bc
    mov bx, ax                       ; 0x00bf
    mov al, byte [bx + 0x6a40]       ; 0x00c1
    sub ah, ah                       ; 0x00c5
    mov word [bp - 0x0006], ax       ; 0x00c7
    cmp word [bp - 0x0008], byte 0   ; 0x00ca
    je short @..api_idx_0008_JGKT.l6 ; 0x00ce
    mov al, byte [bx + 0x6a4a]       ; 0x00d0
    sub ah, ah                       ; 0x00d4
    push ax                          ; 0x00d6
    call ds_app_PUNN                 ; 0x00d7
    pop cx                           ; 0x00da
    add word [bp - 0x0006], ax       ; 0x00db
@..api_idx_0008_JGKT.l6:
    mov al, byte [bp + 0xa]          ; 0x00de
    push ax                          ; 0x00e1
    mov ax, 3                        ; 0x00e2
    imul word [bp + 0x6]             ; 0x00e5
    mov cx, ax                       ; 0x00e8
    add ax, word [bp + 0x8]          ; 0x00ea
    mov bx, ax                       ; 0x00ed
    pop ax                           ; 0x00ef
    mov byte [bx - 0x7bd0], al       ; 0x00f0
    mov al, byte [bp - 0x0004]       ; 0x00f4
    push ax                          ; 0x00f7
    mov ax, 0x5a                     ; 0x00f8
    imul word [bp + 0x6]             ; 0x00fb
    mov cx, ax                       ; 0x00fe
    mov ax, 0x1e                     ; 0x0100
    imul word [bp + 0x8]             ; 0x0103
    mov dx, ax                       ; 0x0106
    add cx, ax                       ; 0x0108
    mov ax, 3                        ; 0x010a
    imul word [bp - 0x0002]          ; 0x010d
    mov dx, ax                       ; 0x0110
    add cx, ax                       ; 0x0112
    mov bx, cx                       ; 0x0114
    pop ax                           ; 0x0116
    mov byte [bx - 0x7cde], al       ; 0x0117
    mov al, byte [bp - 0x0006]       ; 0x011b
    mov byte [bx - 0x7cdd], al       ; 0x011e
    mov ax, 0x15e                    ; 0x0122
    imul word [bp + 0x4]             ; 0x0125
    mov cx, word [bp - 0x0006]       ; 0x0128
    shl cx, 1                        ; 0x012b
    shl cx, 1                        ; 0x012d
    add ax, cx                       ; 0x012f
    mov bx, ax                       ; 0x0131
    mov al, byte [bx + 0x6ac1]       ; 0x0133
    inc al                           ; 0x0137
    push ax                          ; 0x0139
    mov ax, 0x5a                     ; 0x013a
    imul word [bp + 0x6]             ; 0x013d
    mov cx, ax                       ; 0x0140
    mov ax, 0x1e                     ; 0x0142
    imul word [bp + 0x8]             ; 0x0145
    mov dx, ax                       ; 0x0148
    add cx, ax                       ; 0x014a
    mov ax, 3                        ; 0x014c
    imul word [bp - 0x0002]          ; 0x014f
    mov dx, ax                       ; 0x0152
    add cx, ax                       ; 0x0154
    mov bx, cx                       ; 0x0156
    pop ax                           ; 0x0158
    mov byte [bx - 0x7cdc], al       ; 0x0159
    mov al, byte [bx - 0x7cdc]       ; 0x015d
    sub ah, ah                       ; 0x0161
    mov cx, ax                       ; 0x0163
    push cx                          ; 0x0165
    mov ax, 0x15e                    ; 0x0166
    imul word [bp + 0x4]             ; 0x0169
    mov cx, word [bp - 0x0006]       ; 0x016c
    shl cx, 1                        ; 0x016f
    shl cx, 1                        ; 0x0171
    add ax, cx                       ; 0x0173
    mov bx, ax                       ; 0x0175
    mov al, byte [bx + 0x6ac2]       ; 0x0177
    sub ah, ah                       ; 0x017b
    push ax                          ; 0x017d
    call ds_app_PUNN                 ; 0x017e
    pop cx                           ; 0x0181
    pop cx                           ; 0x0182
    add ax, cx                       ; 0x0183
    push ax                          ; 0x0185
    mov ax, 0x5a                     ; 0x0186
    imul word [bp + 0x6]             ; 0x0189
    mov cx, ax                       ; 0x018c
    mov ax, 0x1e                     ; 0x018e
    imul word [bp + 0x8]             ; 0x0191
    mov dx, ax                       ; 0x0194
    add cx, ax                       ; 0x0196
    mov ax, 3                        ; 0x0198
    imul word [bp - 0x0002]          ; 0x019b
    mov dx, ax                       ; 0x019e
    add cx, ax                       ; 0x01a0
    mov bx, cx                       ; 0x01a2
    pop ax                           ; 0x01a4
    mov byte [bx - 0x7cdc], al       ; 0x01a5
    inc word [bp - 0x0002]           ; 0x01a9
@..api_idx_0008_JGKT.l7:
    mov ax, 0x15e                    ; 0x01ac
    imul word [bp + 0x4]             ; 0x01af
    add ax, word [bp + 0xa]          ; 0x01b2
    mov bx, ax                       ; 0x01b5
    mov al, byte [bx + 0x6a1a]       ; 0x01b7
    sub ah, ah                       ; 0x01bb
    push ax                          ; 0x01bd
    mov al, byte [bx + 0x6a1e]       ; 0x01be
    sub ah, ah                       ; 0x01c2
    mov cx, ax                       ; 0x01c4
    pop ax                           ; 0x01c6
    add ax, cx                       ; 0x01c7
    cmp ax, word [bp - 0x0002]       ; 0x01c9
    jle short @..api_idx_0008_JGKT.l8 ; 0x01cc
    jmp near @..api_idx_0008_JGKT.l2 ; 0x01ce
@..api_idx_0008_JGKT.l8:
    ret                              ; 0x01d1
