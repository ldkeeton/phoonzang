; auto-generated
api_idx_0008_JGKT:
    mov ax, 0xfff8                   ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bp - 8], 0             ; 0x0014
    cmp word [bp + 0xa], byte -1     ; 0x0019
    jne short .forward1              ; 0x001d
    mov word [bp + 0xa], 0           ; 0x001f
    mov ax, 0x15e                    ; 0x0024
    imul word [bp + 4]               ; 0x0027
    mov bx, ax                       ; 0x002a
    mov al, byte [bx + slot_recs + slot_rec.forced] ; 0x002c
    sub ah, ah                       ; 0x0030
    cmp ax, 0xfe                     ; 0x0032
    je short .forward1               ; 0x0035
    mov word [bp - 8], 1             ; 0x0037
.forward1:
    mov ax, 0x15e                    ; 0x003c
    imul word [bp + 4]               ; 0x003f
    add ax, word [bp + 0xa]          ; 0x0042
    mov bx, ax                       ; 0x0045
    mov al, byte [bx + slot_recs]    ; 0x0047
    sub ah, ah                       ; 0x004b
    mov word [bp - 2], ax            ; 0x004d
    jmp near .forward6               ; 0x0050
.back1:
    mov ax, 0x15e                    ; 0x0053
    imul word [bp + 4]               ; 0x0056
    add ax, word [bp - 2]            ; 0x0059
    mov bx, ax                       ; 0x005c
    mov al, byte [bx + slot_recs + slot_rec.action] ; 0x005e
    sub ah, ah                       ; 0x0062
    mov word [bp - 4], ax            ; 0x0064
    cmp word [bp + 0xa], byte 0      ; 0x0067
    jne short .forward4              ; 0x006b
    mov ax, 0x15e                    ; 0x006d
    imul word [bp + 4]               ; 0x0070
    mov bx, ax                       ; 0x0073
    cmp byte [bx + slot_recs + slot_rec.forced], 0 ; 0x0075
    jbe short .forward4              ; 0x007a
    mov al, byte [bx + slot_recs + slot_rec.forced] ; 0x007c
    sub ah, ah                       ; 0x0080
    cmp ax, 0xfe                     ; 0x0082
    jge short .forward4              ; 0x0085
    cmp ax, 0xfd                     ; 0x0087
    jne short .forward2              ; 0x008a
    mov word [bp - 4], 0             ; 0x008c
    mov word [bp - 6], 0             ; 0x0091
    jmp short .forward3              ; 0x0096
.forward2:
    mov word [bp - 6], ax            ; 0x0098
.forward3:
    jmp short .forward5              ; 0x009b
.forward4:
    mov ax, 0x15e                    ; 0x009d
    imul word [bp + 4]               ; 0x00a0
    add ax, word [bp - 2]            ; 0x00a3
    mov bx, ax                       ; 0x00a6
    mov al, byte [bx + slot_recs + slot_rec.action_rand] ; 0x00a8
    sub ah, ah                       ; 0x00ac
    push ax                          ; 0x00ae
    call random_below                ; 0x00af
    pop cx                           ; 0x00b2
    add word [bp - 4], ax            ; 0x00b3
    mov ax, 0x15e                    ; 0x00b6
    imul word [bp + 4]               ; 0x00b9
    add ax, word [bp - 4]            ; 0x00bc
    mov bx, ax                       ; 0x00bf
    mov al, byte [bx + slot_recs + slot_rec.target] ; 0x00c1
    sub ah, ah                       ; 0x00c5
    mov word [bp - 6], ax            ; 0x00c7
    cmp word [bp - 8], byte 0        ; 0x00ca
    je short .forward5               ; 0x00ce
    mov al, byte [bx + slot_recs + slot_rec.target_rand] ; 0x00d0
    sub ah, ah                       ; 0x00d4
    push ax                          ; 0x00d6
    call random_below                ; 0x00d7
    pop cx                           ; 0x00da
    add word [bp - 6], ax            ; 0x00db
.forward5:
    mov al, byte [bp + 0xa]          ; 0x00de
    push ax                          ; 0x00e1
    mov ax, 3                        ; 0x00e2
    imul word [bp + 6]               ; 0x00e5
    mov cx, ax                       ; 0x00e8
    add ax, word [bp + 8]            ; 0x00ea
    mov bx, ax                       ; 0x00ed
    pop ax                           ; 0x00ef
    mov byte [bx + action_slot_mode], al ; 0x00f0
    mov al, byte [bp - 4]            ; 0x00f4
    push ax                          ; 0x00f7
    mov ax, 0x5a                     ; 0x00f8
    imul word [bp + 6]               ; 0x00fb
    mov cx, ax                       ; 0x00fe
    mov ax, 0x1e                     ; 0x0100
    imul word [bp + 8]               ; 0x0103
    mov dx, ax                       ; 0x0106
    add cx, ax                       ; 0x0108
    mov ax, 3                        ; 0x010a
    imul word [bp - 2]               ; 0x010d
    mov dx, ax                       ; 0x0110
    add cx, ax                       ; 0x0112
    mov bx, cx                       ; 0x0114
    pop ax                           ; 0x0116
    mov byte [bx + action_slot_table], al ; 0x0117
    mov al, byte [bp - 6]            ; 0x011b
    mov byte [bx + action_slot_table + action_slot.target], al ; 0x011e
    mov ax, 0x15e                    ; 0x0122
    imul word [bp + 4]               ; 0x0125
    mov cx, word [bp - 6]            ; 0x0128
    shl cx, 1                        ; 0x012b
    shl cx, 1                        ; 0x012d
    add ax, cx                       ; 0x012f
    mov bx, ax                       ; 0x0131
    mov al, byte [bx + slot_recs + slot_rec.range + 0x2] ; 0x0133
    inc al                           ; 0x0137
    push ax                          ; 0x0139
    mov ax, 0x5a                     ; 0x013a
    imul word [bp + 6]               ; 0x013d
    mov cx, ax                       ; 0x0140
    mov ax, 0x1e                     ; 0x0142
    imul word [bp + 8]               ; 0x0145
    mov dx, ax                       ; 0x0148
    add cx, ax                       ; 0x014a
    mov ax, 3                        ; 0x014c
    imul word [bp - 2]               ; 0x014f
    mov dx, ax                       ; 0x0152
    add cx, ax                       ; 0x0154
    mov bx, cx                       ; 0x0156
    pop ax                           ; 0x0158
    mov byte [bx + action_slot_table + action_slot.roll], al ; 0x0159
    mov al, byte [bx + action_slot_table + action_slot.roll] ; 0x015d
    sub ah, ah                       ; 0x0161
    mov cx, ax                       ; 0x0163
    push cx                          ; 0x0165
    mov ax, 0x15e                    ; 0x0166
    imul word [bp + 4]               ; 0x0169
    mov cx, word [bp - 6]            ; 0x016c
    shl cx, 1                        ; 0x016f
    shl cx, 1                        ; 0x0171
    add ax, cx                       ; 0x0173
    mov bx, ax                       ; 0x0175
    mov al, byte [bx + slot_recs + slot_rec.range + 0x3] ; 0x0177
    sub ah, ah                       ; 0x017b
    push ax                          ; 0x017d
    call random_below                ; 0x017e
    pop cx                           ; 0x0181
    pop cx                           ; 0x0182
    add ax, cx                       ; 0x0183
    push ax                          ; 0x0185
    mov ax, 0x5a                     ; 0x0186
    imul word [bp + 6]               ; 0x0189
    mov cx, ax                       ; 0x018c
    mov ax, 0x1e                     ; 0x018e
    imul word [bp + 8]               ; 0x0191
    mov dx, ax                       ; 0x0194
    add cx, ax                       ; 0x0196
    mov ax, 3                        ; 0x0198
    imul word [bp - 2]               ; 0x019b
    mov dx, ax                       ; 0x019e
    add cx, ax                       ; 0x01a0
    mov bx, cx                       ; 0x01a2
    pop ax                           ; 0x01a4
    mov byte [bx + action_slot_table + action_slot.roll], al ; 0x01a5
    inc word [bp - 2]                ; 0x01a9
.forward6:
    mov ax, 0x15e                    ; 0x01ac
    imul word [bp + 4]               ; 0x01af
    add ax, word [bp + 0xa]          ; 0x01b2
    mov bx, ax                       ; 0x01b5
    mov al, byte [bx + slot_recs]    ; 0x01b7
    sub ah, ah                       ; 0x01bb
    push ax                          ; 0x01bd
    mov al, byte [bx + slot_recs + slot_rec.count] ; 0x01be
    sub ah, ah                       ; 0x01c2
    mov cx, ax                       ; 0x01c4
    pop ax                           ; 0x01c6
    add ax, cx                       ; 0x01c7
    cmp ax, word [bp - 2]            ; 0x01c9
    jle short .return1               ; 0x01cc
    jmp near .back1                  ; 0x01ce
.return1:
    ret                              ; 0x01d1
