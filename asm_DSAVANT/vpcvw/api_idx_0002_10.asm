api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x8fb8
    call ds_dispatch_f40b            ; 0x8fbb
    mov ax, word [bp + 0x6]          ; 0x8fbe
    shl ax, 1                        ; 0x8fc1
    mov bx, ax                       ; 0x8fc3
    mov word [bx - 0x6984], 1        ; 0x8fc5
    mov word [bp - 0x0002], 0        ; 0x8fcb
@..api_idx_0002_10.l1:
    mov ax, 0x248                    ; 0x8fd0
    imul word [bp + 0x4]             ; 0x8fd3
    add ax, word [bp - 0x0002]       ; 0x8fd6
    mov bx, ax                       ; 0x8fd9
    mov al, byte [bx + 0x5d64]       ; 0x8fdb
    sub ah, ah                       ; 0x8fdf
    push ax                          ; 0x8fe1
    mov bx, word [bp + 0x8]          ; 0x8fe2
    mov si, word [bp - 0x0002]       ; 0x8fe5
    mov al, byte [bx + si]           ; 0x8fe8
    cbw                              ; 0x8fea
    mov cx, ax                       ; 0x8feb
    add ax, strict word 0xffbf       ; 0x8fed
    mov cx, ax                       ; 0x8ff0
    pop ax                           ; 0x8ff2
    cmp ax, cx                       ; 0x8ff3
    jge short @..api_idx_0002_10.l3  ; 0x8ff5
    cmp word [bp + 0xa], byte 0      ; 0x8ff7
    je short @..api_idx_0002_10.l2   ; 0x8ffb
    mov al, byte [bx + si]           ; 0x8ffd
    add al, 0xbf                     ; 0x8fff
    push ax                          ; 0x9001
    mov ax, 0x248                    ; 0x9002
    imul word [bp + 0x4]             ; 0x9005
    mov cx, ax                       ; 0x9008
    add ax, si                       ; 0x900a
    mov bx, ax                       ; 0x900c
    pop ax                           ; 0x900e
    mov byte [bx + 0x5d64], al       ; 0x900f
    jmp short @..api_idx_0002_10.l3  ; 0x9013
@..api_idx_0002_10.l2:
    mov ax, word [bp + 0x6]          ; 0x9015
    shl ax, 1                        ; 0x9018
    mov bx, ax                       ; 0x901a
    mov word [bx - 0x6984], 0        ; 0x901c
@..api_idx_0002_10.l3:
    inc word [bp - 0x0002]           ; 0x9022
    mov ax, word [bp - 0x0002]       ; 0x9025
    cmp ax, strict word 7            ; 0x9028
    jl short @..api_idx_0002_10.l1   ; 0x902b
    ret                              ; 0x902d
loc_902e:
    mov ax, 0                        ; 0x902e
    call ds_dispatch_f40b            ; 0x9031
    mov ax, word [bp + 0x6]          ; 0x9034
    jmp near @..local.l63            ; 0x9037
jumptable_9188_case_0:
    push word [bp + 0x8]             ; 0x903a
    mov ax, 0x92e8                   ; 0x903d
    push ax                          ; 0x9040
    push word [bp + 0x6]             ; 0x9041
    push word [bp + 0x4]             ; 0x9044
    call api_idx_0002_10             ; 0x9047
    add sp, byte 8                   ; 0x904a
    jmp near @..local.l64            ; 0x904d
jumptable_9188_case_1:
    push word [bp + 0x8]             ; 0x9050
    mov ax, 0x92f1                   ; 0x9053
    push ax                          ; 0x9056
    push word [bp + 0x6]             ; 0x9057
    push word [bp + 0x4]             ; 0x905a
    call api_idx_0002_10             ; 0x905d
    add sp, byte 8                   ; 0x9060
    jmp near @..local.l64            ; 0x9063
jumptable_9188_case_2:
    push word [bp + 0x8]             ; 0x9066
    mov ax, 0x92fa                   ; 0x9069
    push ax                          ; 0x906c
    push word [bp + 0x6]             ; 0x906d
    push word [bp + 0x4]             ; 0x9070
    call api_idx_0002_10             ; 0x9073
    add sp, byte 8                   ; 0x9076
    jmp near @..local.l64            ; 0x9079
jumptable_9188_case_3:
    push word [bp + 0x8]             ; 0x907c
    mov ax, 0x9303                   ; 0x907f
    push ax                          ; 0x9082
    push word [bp + 0x6]             ; 0x9083
    push word [bp + 0x4]             ; 0x9086
    call api_idx_0002_10             ; 0x9089
    add sp, byte 8                   ; 0x908c
    jmp near @..local.l64            ; 0x908f
jumptable_9188_case_4:
    push word [bp + 0x8]             ; 0x9092
    mov ax, 0x930c                   ; 0x9095
    push ax                          ; 0x9098
    push word [bp + 0x6]             ; 0x9099
    push word [bp + 0x4]             ; 0x909c
    call api_idx_0002_10             ; 0x909f
    add sp, byte 8                   ; 0x90a2
    jmp near @..local.l64            ; 0x90a5
jumptable_9188_case_5:
    push word [bp + 0x8]             ; 0x90a8
    mov ax, 0x9315                   ; 0x90ab
    push ax                          ; 0x90ae
    push word [bp + 0x6]             ; 0x90af
    push word [bp + 0x4]             ; 0x90b2
    call api_idx_0002_10             ; 0x90b5
    add sp, byte 8                   ; 0x90b8
    jmp near @..local.l64            ; 0x90bb
jumptable_9188_case_6:
    push word [bp + 0x8]             ; 0x90be
    mov ax, 0x931e                   ; 0x90c1
    push ax                          ; 0x90c4
    push word [bp + 0x6]             ; 0x90c5
    push word [bp + 0x4]             ; 0x90c8
    call api_idx_0002_10             ; 0x90cb
    add sp, byte 8                   ; 0x90ce
    jmp near @..local.l64            ; 0x90d1
jumptable_9188_case_7:
    push word [bp + 0x8]             ; 0x90d4
    mov ax, 0x9327                   ; 0x90d7
    push ax                          ; 0x90da
    push word [bp + 0x6]             ; 0x90db
    push word [bp + 0x4]             ; 0x90de
    call api_idx_0002_10             ; 0x90e1
    add sp, byte 8                   ; 0x90e4
    jmp near @..local.l64            ; 0x90e7
jumptable_9188_case_8:
    mov ax, 0x248                    ; 0x90ea
    imul word [bp + 0x4]             ; 0x90ed
    mov bx, ax                       ; 0x90f0
    cmp byte [bx + 0x5e2c], 1        ; 0x90f2
    jne short @..local.l61           ; 0x90f7
    push word [bp + 0x8]             ; 0x90f9
    mov ax, 0x9330                   ; 0x90fc
    push ax                          ; 0x90ff
    push word [bp + 0x6]             ; 0x9100
    push word [bp + 0x4]             ; 0x9103
    call api_idx_0002_10             ; 0x9106
    add sp, byte 8                   ; 0x9109
    jmp short @..local.l62           ; 0x910c
@..local.l61:
    mov ax, word [bp + 0x6]          ; 0x910e
    shl ax, 1                        ; 0x9111
    mov bx, ax                       ; 0x9113
    mov word [bx - 0x6984], 0        ; 0x9115
@..local.l62:
    jmp near @..local.l64            ; 0x911b
jumptable_9188_case_9:
    push word [bp + 0x8]             ; 0x911e
    mov ax, 0x9339                   ; 0x9121
    push ax                          ; 0x9124
    push word [bp + 0x6]             ; 0x9125
    push word [bp + 0x4]             ; 0x9128
    call api_idx_0002_10             ; 0x912b
    add sp, byte 8                   ; 0x912e
    jmp near @..local.l64            ; 0x9131
jumptable_9188_case_10:
    push word [bp + 0x8]             ; 0x9134
    mov ax, 0x9342                   ; 0x9137
    push ax                          ; 0x913a
    push word [bp + 0x6]             ; 0x913b
    push word [bp + 0x4]             ; 0x913e
    call api_idx_0002_10             ; 0x9141
    add sp, byte 8                   ; 0x9144
    jmp short @..local.l64           ; 0x9147
jumptable_9188_case_11:
    push word [bp + 0x8]             ; 0x9149
    mov ax, 0x934b                   ; 0x914c
    push ax                          ; 0x914f
    push word [bp + 0x6]             ; 0x9150
    push word [bp + 0x4]             ; 0x9153
    call api_idx_0002_10             ; 0x9156
    add sp, byte 8                   ; 0x9159
    jmp short @..local.l64           ; 0x915c
jumptable_9188_case_12:
    push word [bp + 0x8]             ; 0x915e
    mov ax, 0x9354                   ; 0x9161
    push ax                          ; 0x9164
    push word [bp + 0x6]             ; 0x9165
    push word [bp + 0x4]             ; 0x9168
    call api_idx_0002_10             ; 0x916b
    add sp, byte 8                   ; 0x916e
    jmp short @..local.l64           ; 0x9171
jumptable_9188_case_13:
    push word [bp + 0x8]             ; 0x9173
    mov ax, 0x935d                   ; 0x9176
    push ax                          ; 0x9179
    push word [bp + 0x6]             ; 0x917a
    push word [bp + 0x4]             ; 0x917d
    call api_idx_0002_10             ; 0x9180
    add sp, byte 8                   ; 0x9183
    jmp short @..local.l64           ; 0x9186
jumptable_9188:
    dw jumptable_9188_case_0 - IMAGE_BASE + 0x5055 ; 0x9188
    dw jumptable_9188_case_1 - IMAGE_BASE + 0x5055 ; 0x918a
    dw jumptable_9188_case_2 - IMAGE_BASE + 0x5055 ; 0x918c
    dw jumptable_9188_case_3 - IMAGE_BASE + 0x5055 ; 0x918e
    dw jumptable_9188_case_4 - IMAGE_BASE + 0x5055 ; 0x9190
    dw jumptable_9188_case_5 - IMAGE_BASE + 0x5055 ; 0x9192
    dw jumptable_9188_case_6 - IMAGE_BASE + 0x5055 ; 0x9194
    dw jumptable_9188_case_7 - IMAGE_BASE + 0x5055 ; 0x9196
    dw jumptable_9188_case_8 - IMAGE_BASE + 0x5055 ; 0x9198
    dw jumptable_9188_case_9 - IMAGE_BASE + 0x5055 ; 0x919a
    dw jumptable_9188_case_10 - IMAGE_BASE + 0x5055 ; 0x919c
    dw jumptable_9188_case_11 - IMAGE_BASE + 0x5055 ; 0x919e
    dw jumptable_9188_case_12 - IMAGE_BASE + 0x5055 ; 0x91a0
    dw jumptable_9188_case_13 - IMAGE_BASE + 0x5055 ; 0x91a2
@..local.l63:
    cmp ax, strict word 0xe          ; 0x91a4
    jae short @..local.l64           ; 0x91a7
    xchg bx, ax                      ; 0x91a9
    shl bx, 1                        ; 0x91aa
    jmp [cs:bx - 0x1e31]             ; 0x91ac
@..local.l64:
    ret                              ; 0x91b1
