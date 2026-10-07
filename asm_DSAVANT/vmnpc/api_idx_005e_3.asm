api_idx_005e_3:
    mov ax, 0xffa2                   ; 0x5fd0
    db 0xe8, 0x35, 0x94 ; call 0xf40b
    mov ax, 0x248                    ; 0x5fd6
    imul word [bp + 0x4]             ; 0x5fd9
    mov bx, ax                       ; 0x5fdc
    mov ax, word [bx + 0x5c18]       ; 0x5fde
    push ax                          ; 0x5fe2
    mov al, byte [0x91c5]            ; 0x5fe3
    sub ah, ah                       ; 0x5fe6
    mov cx, ax                       ; 0x5fe8
    pop ax                           ; 0x5fea
    sub ax, cx                       ; 0x5feb
    mov cx, 5                        ; 0x5fed
    imul cx                          ; 0x5ff0
    push ax                          ; 0x5ff2
    mov al, byte [bx + 0x5d7b]       ; 0x5ff3
    sub ah, ah                       ; 0x5ff7
    mov cx, data_0002                ; 0x5ff9
    cwd                              ; 0x5ffc
    idiv cx                          ; 0x5ffd
    mov cx, ax                       ; 0x5fff
    pop ax                           ; 0x6001
    add ax, cx                       ; 0x6002
    mov word [bp - 0x0002], ax       ; 0x6004
    cmp byte [bx + 0x5e2d], 3        ; 0x6007
    jne short @..api_idx_005e_3.l1   ; 0x600c
    mov al, byte [bx + 0x5d68]       ; 0x600e
    sub ah, ah                       ; 0x6012
    shl ax, 1                        ; 0x6014
    add word [bp - 0x0002], ax       ; 0x6016
    jmp short @..api_idx_005e_3.l3   ; 0x6019
@..api_idx_005e_3.l1:
    mov al, byte [bx + 0x5e2d]       ; 0x601b
    cmp al, 4                        ; 0x601f
    je short @..api_idx_005e_3.l2    ; 0x6021
    cmp al, 6                        ; 0x6023
    je short @..api_idx_005e_3.l2    ; 0x6025
    cmp al, 0xd                      ; 0x6027
    jne short @..api_idx_005e_3.l3   ; 0x6029
@..api_idx_005e_3.l2:
    mov al, byte [bx + 0x5d68]       ; 0x602b
    sub ah, ah                       ; 0x602f
    add word [bp - 0x0002], ax       ; 0x6031
@..api_idx_005e_3.l3:
    mov al, byte [bx + 0x5d6a]       ; 0x6034
    sub ah, ah                       ; 0x6038
    push ax                          ; 0x603a
    add bx, word [data_9136]         ; 0x603b
    mov al, byte [bx + 0x5db2]       ; 0x603f
    cbw                              ; 0x6043
    add ax, word [data_964e]         ; 0x6044
    mov cx, 4                        ; 0x6048
    cwd                              ; 0x604b
    idiv cx                          ; 0x604c
    mov cx, ax                       ; 0x604e
    pop ax                           ; 0x6050
    add ax, cx                       ; 0x6051
    add ax, word [bp - 0x0002]       ; 0x6053
    add ax, strict word 0xfff6       ; 0x6056
    mov word [bp - 0x0002], ax       ; 0x6059
    cmp ax, strict word 0            ; 0x605c
    jl short @..api_idx_005e_3.l4    ; 0x605f
    cmp word [data_9136], byte 0x30  ; 0x6061
    jne short @..api_idx_005e_3.l5   ; 0x6066
@..api_idx_005e_3.l4:
    mov word [bp - 0x0002], 0        ; 0x6068
@..api_idx_005e_3.l5:
    cmp word [bp - 0x0002], byte 0x5f ; 0x606d
    jle short @..api_idx_005e_3.l6   ; 0x6071
    mov word [bp - 0x0002], 0x5f     ; 0x6073
@..api_idx_005e_3.l6:
    mov ax, 0x64                     ; 0x6078
    push ax                          ; 0x607b
    db 0xe8, 0x2a, 0x57 ; call 0xb7a9
    pop cx                           ; 0x607f
    add ax, word [data_9d60]         ; 0x6080
    mov word [bp - 0x0004], ax       ; 0x6084
    mov ax, 5                        ; 0x6087
    push ax                          ; 0x608a
    db 0xe8, 0x1b, 0x57 ; call 0xb7a9
    pop cx                           ; 0x608e
    add ax, word [data_9d60]         ; 0x608f
    add ax, strict word 0xa          ; 0x6093
    mov word [data_9d60], ax         ; 0x6096
    lea ax, word [bp - 0x005e]       ; 0x6099
    push ax                          ; 0x609c
    mov ax, 0x248                    ; 0x609d
    imul word [bp + 0x4]             ; 0x60a0
    mov bx, ax                       ; 0x60a3
    mov al, byte [bx + 0x5e2c]       ; 0x60a5
    sub ah, ah                       ; 0x60a9
    add ax, 0x622                    ; 0x60ab
    push ax                          ; 0x60ae
    db 0xe8, 0x89, 0x54 ; call 0xb53b
    add sp, byte 4                   ; 0x60b2
    mov ax, 0x5e                     ; 0x60b5
    push ax                          ; 0x60b8
    mov ax, 0x248                    ; 0x60b9
    imul word [bp + 0x4]             ; 0x60bc
    add ax, 0x5bf4                   ; 0x60bf
    push ax                          ; 0x60c2
    lea ax, word [bp - 0x005e]       ; 0x60c3
    push ax                          ; 0x60c6
    db 0xe8, 0x36, 0x52 ; call 0xb300
    add sp, byte 6                   ; 0x60ca
    mov ax, 0x55                     ; 0x60cd
    push ax                          ; 0x60d0
    mov ax, 0                        ; 0x60d1
    push ax                          ; 0x60d4
    mov ax, 1                        ; 0x60d5
    push ax                          ; 0x60d8
    lea ax, word [bp - 0x005e]       ; 0x60d9
    push ax                          ; 0x60dc
    call math_loc_130b               ; 0x60dd
    add sp, byte 8                   ; 0x60e0
    mov word [bp - 0x000a], 0        ; 0x60e3
@..api_idx_005e_3.l7:
    push word [data_9cd2]            ; 0x60e8
    db 0xe8, 0xba, 0x56 ; call 0xb7a9
    pop cx                           ; 0x60ef
    cmp ax, word [bp - 0x000a]       ; 0x60f0
    jle short @..api_idx_005e_3.l8   ; 0x60f3
    inc word [bp - 0x000a]           ; 0x60f5
    jmp short @..api_idx_005e_3.l7   ; 0x60f8
@..api_idx_005e_3.l8:
    mov ax, 0x64                     ; 0x60fa
    push ax                          ; 0x60fd
    db 0xe8, 0xa8, 0x56 ; call 0xb7a9
    pop cx                           ; 0x6101
    push ax                          ; 0x6102
    mov al, byte [0x91c5]            ; 0x6103
    sub ah, ah                       ; 0x6106
    mov cx, ax                       ; 0x6108
    inc ax                           ; 0x610a
    mov cx, ax                       ; 0x610b
    pop ax                           ; 0x610d
    imul cx                          ; 0x610e
    mov cx, data_0002                ; 0x6110
    cwd                              ; 0x6113
    idiv cx                          ; 0x6114
    mov word [bp - 0x0006], ax       ; 0x6116
    cwd                              ; 0x6119
    cmp dx, word [data_91b8]         ; 0x611a
    jl short @..api_idx_005e_3.l9    ; 0x611e
    jne short @..api_idx_005e_3.l10  ; 0x6120
    cmp ax, word [data_91b6]         ; 0x6122
    ja short @..api_idx_005e_3.l10   ; 0x6126
@..api_idx_005e_3.l9:
    jmp short @..api_idx_005e_3.l11  ; 0x6128
@..api_idx_005e_3.l10:
    mov ax, word [data_91b6]         ; 0x612a
    mov word [bp - 0x0006], ax       ; 0x612d
@..api_idx_005e_3.l11:
    mov ax, word [bp - 0x0004]       ; 0x6130
    cmp ax, word [bp - 0x0002]       ; 0x6133
    jl short @..api_idx_005e_3.l12   ; 0x6136
    jmp near @..api_idx_005e_3.l18   ; 0x6138
@..api_idx_005e_3.l12:
    mov ax, 0                        ; 0x613b
    push ax                          ; 0x613e
    push word [bp + 0x4]             ; 0x613f
    call api_idx_0004_7              ; 0x6142
    add sp, byte 4                   ; 0x6145
    mov word [bp - 0x0008], ax       ; 0x6148
    call api_idx_0004_12             ; 0x614b
    mov ax, 3                        ; 0x614e
    push ax                          ; 0x6151
    mov ax, 0xf                      ; 0x6152
    push ax                          ; 0x6155
    push word [bp + 0x4]             ; 0x6156
    call math_loc_8662               ; 0x6159
    add sp, byte 6                   ; 0x615c
    cmp word [bp - 0x0008], byte 0xff ; 0x615f
    je short @..api_idx_005e_3.l13   ; 0x6163
    cmp word [data_9cd2], byte 0     ; 0x6165
    jle short @..api_idx_005e_3.l13  ; 0x616a
    mov ax, word [bp - 0x000a]       ; 0x616c
    shl ax, 1                        ; 0x616f
    mov bx, ax                       ; 0x6171
    push word [bx - 0x632c]          ; 0x6173
    call math_loc_5497               ; 0x6177
    pop cx                           ; 0x617a
    test ax, ax                      ; 0x617b
    jne short @..api_idx_005e_3.l13  ; 0x617d
    mov ax, 0x64                     ; 0x617f
    push ax                          ; 0x6182
    db 0xe8, 0x23, 0x56 ; call 0xb7a9
    pop cx                           ; 0x6186
    cmp ax, strict word 0x21         ; 0x6187
    jge short @..api_idx_005e_3.l16  ; 0x618a
@..api_idx_005e_3.l13:
    cmp word [bp - 0x0006], byte 0   ; 0x618c
    jg short @..api_idx_005e_3.l14   ; 0x6190
    lea ax, word [bp - 0x005e]       ; 0x6192
    push ax                          ; 0x6195
    mov ax, 0x624                    ; 0x6196
    push ax                          ; 0x6199
    db 0xe8, 0x9e, 0x53 ; call 0xb53b
    add sp, byte 4                   ; 0x619d
    jmp short @..api_idx_005e_3.l15  ; 0x61a0
@..api_idx_005e_3.l14:
    mov ax, word [bp - 0x0006]       ; 0x61a2
    cwd                              ; 0x61a5
    sub word [data_91b6], ax         ; 0x61a6
    sbb word [data_91b8], dx         ; 0x61aa
    mov ax, word [bp - 0x0006]       ; 0x61ae
    cwd                              ; 0x61b1
    push ax                          ; 0x61b2
    push dx                          ; 0x61b3
    mov ax, 0x248                    ; 0x61b4
    imul word [bp + 0x4]             ; 0x61b7
    mov bx, ax                       ; 0x61ba
    pop dx                           ; 0x61bc
    pop ax                           ; 0x61bd
    add word [bx + 0x5c08], ax       ; 0x61be
    adc word [bx + 0x5c0a], dx       ; 0x61c2
    lea ax, word [bp - 0x005e]       ; 0x61c6
    push ax                          ; 0x61c9
    mov ax, 0x626                    ; 0x61ca
    push ax                          ; 0x61cd
