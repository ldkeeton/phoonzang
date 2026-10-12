api_idx_0048:
    mov ax, 0xffb8                   ; 0x9029
    call ds_aztec_csav               ; 0x902c
    push word [bp + 0x6]             ; 0x902f
    push word [bp + 0x4]             ; 0x9032
    call api_idx_0002_21             ; 0x9035
    add sp, byte 4                   ; 0x9038
    test ax, ax                      ; 0x903b
    je short @..api_idx_0048.l1      ; 0x903d
    mov ax, 1                        ; 0x903f
    ret                              ; 0x9042
@..api_idx_0048.l1:
    cmp word [bp + 0x8], byte 0      ; 0x9043
    jne short @..api_idx_0048.l2     ; 0x9047
    mov ax, 0                        ; 0x9049
    ret                              ; 0x904c
@..api_idx_0048.l2:
    mov ax, 1                        ; 0x904d
    mov cx, word [bp + 0xa]          ; 0x9050
    cmp cx, word [bss_9c00]          ; 0x9053
    jge short @..api_idx_0048.l3     ; 0x9057
    mov ax, 2                        ; 0x9059
@..api_idx_0048.l3:
    mov word [bp - 0x0008], ax       ; 0x905c
    mov word [bp - 0x0004], 0        ; 0x905f
    jmp near @..api_idx_0048.l20     ; 0x9064
@..api_idx_0048.l4:
    mov word [bp - 0x0002], 0        ; 0x9067
@..api_idx_0048.l5:
    mov ax, word [bp - 0x0002]       ; 0x906c
    shl ax, 1                        ; 0x906f
    shl ax, 1                        ; 0x9071
    mov bx, ax                       ; 0x9073
    mov al, byte [bx - 0x7592]       ; 0x9075
    sub ah, ah                       ; 0x9079
    cmp ax, word [bp + 0x4]          ; 0x907b
    je short @..api_idx_0048.l6      ; 0x907e
    jmp near @..api_idx_0048.l12     ; 0x9080
@..api_idx_0048.l6:
    cmp byte [bx - 0x7590], 0xff     ; 0x9083
    je short @..api_idx_0048.l7      ; 0x9088
    mov al, byte [bx - 0x7590]       ; 0x908a
    cbw                              ; 0x908e
    shl ax, 1                        ; 0x908f
    mov bx, ax                       ; 0x9091
    cmp word [bx - 0x642e], byte 0   ; 0x9093
    jne short @..api_idx_0048.l7     ; 0x9098
    jmp near @..api_idx_0048.l12     ; 0x909a
@..api_idx_0048.l7:
    mov ax, word [bp - 0x0002]       ; 0x909d
    shl ax, 1                        ; 0x90a0
    mov bx, ax                       ; 0x90a2
    cmp word [bx - 0x63fe], byte 0   ; 0x90a4
    je short @..api_idx_0048.l8      ; 0x90a9
    jmp near @..api_idx_0048.l11     ; 0x90ab
@..api_idx_0048.l8:
    cmp word [bp - 0x0004], byte 0   ; 0x90ae
    je short @..api_idx_0048.l9      ; 0x90b2
    mov word [bx - 0x63fe], 1        ; 0x90b4
@..api_idx_0048.l9:
    mov ax, word [bss_9be6]          ; 0x90ba
    mov word [bp - 0x0006], ax       ; 0x90bd
    mov ax, 0x40                     ; 0x90c0
    push ax                          ; 0x90c3
    lea ax, word [bp - 0x0048]       ; 0x90c4
    push ax                          ; 0x90c7
    mov ax, 0x9c02                   ; 0x90c8
    push ax                          ; 0x90cb
    call ds_aztec_movmem             ; 0x90cc
    add sp, byte 6                   ; 0x90cf
    mov ax, word [bp + 0xa]          ; 0x90d2
    inc ax                           ; 0x90d5
    push ax                          ; 0x90d6
    push word [bp - 0x0004]          ; 0x90d7
    push word [bp + 0x6]             ; 0x90da
    mov ax, word [bp - 0x0002]       ; 0x90dd
    shl ax, 1                        ; 0x90e0
    shl ax, 1                        ; 0x90e2
    mov bx, ax                       ; 0x90e4
    mov al, byte [bx - 0x7591]       ; 0x90e6
    sub ah, ah                       ; 0x90ea
    push ax                          ; 0x90ec
    call api_idx_0048                ; 0x90ed
    add sp, byte 8                   ; 0x90f0
    test ax, ax                      ; 0x90f3
    je short @..api_idx_0048.l10     ; 0x90f5
    mov ax, word [bp - 0x0002]       ; 0x90f7
    shl ax, 1                        ; 0x90fa
    shl ax, 1                        ; 0x90fc
    mov bx, ax                       ; 0x90fe
    mov al, byte [bx - 0x7591]       ; 0x9100
    sub ah, ah                       ; 0x9104
    push ax                          ; 0x9106
    push word [bp + 0x4]             ; 0x9107
    call api_idx_0002_21             ; 0x910a
    add sp, byte 4                   ; 0x910d
    mov ax, 1                        ; 0x9110
    ret                              ; 0x9113
@..api_idx_0048.l10:
    mov ax, word [bp - 0x0006]       ; 0x9114
    mov word [bss_9be6], ax          ; 0x9117
    mov ax, 0x40                     ; 0x911a
    push ax                          ; 0x911d
    mov ax, 0x9c02                   ; 0x911e
    push ax                          ; 0x9121
    lea ax, word [bp - 0x0048]       ; 0x9122
    push ax                          ; 0x9125
    call ds_aztec_movmem             ; 0x9126
    add sp, byte 6                   ; 0x9129
@..api_idx_0048.l11:
    jmp near @..api_idx_0048.l18     ; 0x912c
@..api_idx_0048.l12:
    mov ax, word [bp - 0x0002]       ; 0x912f
    shl ax, 1                        ; 0x9132
    shl ax, 1                        ; 0x9134
    mov bx, ax                       ; 0x9136
    mov al, byte [bx - 0x7591]       ; 0x9138
    sub ah, ah                       ; 0x913c
    cmp ax, word [bp + 0x4]          ; 0x913e
    je short @..api_idx_0048.l13     ; 0x9141
    jmp near @..api_idx_0048.l18     ; 0x9143
@..api_idx_0048.l13:
    cmp byte [bx - 0x7590], 0xff     ; 0x9146
    je short @..api_idx_0048.l14     ; 0x914b
    mov al, byte [bx - 0x7590]       ; 0x914d
    cbw                              ; 0x9151
    shl ax, 1                        ; 0x9152
    mov bx, ax                       ; 0x9154
    cmp word [bx - 0x642e], byte 0   ; 0x9156
    jne short @..api_idx_0048.l14    ; 0x915b
    jmp near @..api_idx_0048.l18     ; 0x915d
@..api_idx_0048.l14:
    mov ax, word [bp - 0x0002]       ; 0x9160
    shl ax, 1                        ; 0x9163
    mov bx, ax                       ; 0x9165
    cmp word [bx - 0x63fe], byte 0   ; 0x9167
    je short @..api_idx_0048.l15     ; 0x916c
    jmp near @..api_idx_0048.l18     ; 0x916e
@..api_idx_0048.l15:
    cmp word [bp - 0x0004], byte 0   ; 0x9171
    je short @..api_idx_0048.l16     ; 0x9175
    mov word [bx - 0x63fe], 1        ; 0x9177
@..api_idx_0048.l16:
    mov ax, word [bss_9be6]          ; 0x917d
    mov word [bp - 0x0006], ax       ; 0x9180
    mov ax, 0x40                     ; 0x9183
    push ax                          ; 0x9186
    lea ax, word [bp - 0x0048]       ; 0x9187
    push ax                          ; 0x918a
    mov ax, 0x9c02                   ; 0x918b
    push ax                          ; 0x918e
    call ds_aztec_movmem             ; 0x918f
    add sp, byte 6                   ; 0x9192
    mov ax, word [bp + 0xa]          ; 0x9195
    inc ax                           ; 0x9198
    push ax                          ; 0x9199
    push word [bp - 0x0004]          ; 0x919a
    push word [bp + 0x6]             ; 0x919d
    mov ax, word [bp - 0x0002]       ; 0x91a0
    shl ax, 1                        ; 0x91a3
    shl ax, 1                        ; 0x91a5
    mov bx, ax                       ; 0x91a7
    mov al, byte [bx - 0x7592]       ; 0x91a9
    sub ah, ah                       ; 0x91ad
    push ax                          ; 0x91af
    call api_idx_0048                ; 0x91b0
    add sp, byte 8                   ; 0x91b3
    test ax, ax                      ; 0x91b6
    je short @..api_idx_0048.l17     ; 0x91b8
    mov ax, word [bp - 0x0002]       ; 0x91ba
    shl ax, 1                        ; 0x91bd
    shl ax, 1                        ; 0x91bf
    mov bx, ax                       ; 0x91c1
    mov al, byte [bx - 0x7592]       ; 0x91c3
    sub ah, ah                       ; 0x91c7
    push ax                          ; 0x91c9
    push word [bp + 0x4]             ; 0x91ca
    call api_idx_0002_21             ; 0x91cd
    add sp, byte 4                   ; 0x91d0
    mov ax, 1                        ; 0x91d3
    ret                              ; 0x91d6
@..api_idx_0048.l17:
    mov ax, word [bp - 0x0006]       ; 0x91d7
    mov word [bss_9be6], ax          ; 0x91da
    mov ax, 0x40                     ; 0x91dd
    push ax                          ; 0x91e0
    mov ax, 0x9c02                   ; 0x91e1
    push ax                          ; 0x91e4
    lea ax, word [bp - 0x0048]       ; 0x91e5
    push ax                          ; 0x91e8
    call ds_aztec_movmem             ; 0x91e9
    add sp, byte 6                   ; 0x91ec
@..api_idx_0048.l18:
    inc word [bp - 0x0002]           ; 0x91ef
    mov ax, word [bp - 0x0002]       ; 0x91f2
    cmp ax, strict word 0x20         ; 0x91f5
    jge short @..api_idx_0048.l19    ; 0x91f8
    jmp near @..api_idx_0048.l5      ; 0x91fa
@..api_idx_0048.l19:
    inc word [bp - 0x0004]           ; 0x91fd
@..api_idx_0048.l20:
    mov ax, word [bp - 0x0004]       ; 0x9200
    cmp ax, word [bp - 0x0008]       ; 0x9203
    jge short @..api_idx_0048.l21    ; 0x9206
    jmp near @..api_idx_0048.l4      ; 0x9208
@..api_idx_0048.l21:
    mov ax, 0                        ; 0x920b
    ret                              ; 0x920e
