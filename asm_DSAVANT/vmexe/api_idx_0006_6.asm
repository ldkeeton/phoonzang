api_idx_0006_6:
    mov ax, 0xfffa                   ; 0x908d
    call ds_dispatch_f40b            ; 0x9090
    cmp word [bp + 0xc], byte 0      ; 0x9093
    je short @..api_idx_0006_6.l1    ; 0x9097
    cmp word [data_8464], byte 0     ; 0x9099
    je short @..api_idx_0006_6.l1    ; 0x909e
    mov ax, word [data_8464]         ; 0x90a0
    cmp ax, strict word 6            ; 0x90a3
    je short @..api_idx_0006_6.l1    ; 0x90a6
    mov ax, 0x2c                     ; 0x90a8
    imul word [data_8462]            ; 0x90ab
    mov si, ax                       ; 0x90af
    mov ax, word [data_8464]         ; 0x90b1
    shl ax, 1                        ; 0x90b4
    mov bx, ax                       ; 0x90b6
    mov bx, word [bx - 0x7b7e]       ; 0x90b8
    cmp byte [bx + si + 0x2a], 0xff  ; 0x90bc
    je short @..api_idx_0006_6.l1    ; 0x90c0
    mov al, byte [bx + si + 0x2a]    ; 0x90c2
    cbw                              ; 0x90c5
    mov cx, 0xa                      ; 0x90c6
    cwd                              ; 0x90c9
    idiv cx                          ; 0x90ca
    mov word [bp - 0x0004], ax       ; 0x90cc
    mov al, byte [bx + si + 0x2a]    ; 0x90cf
    cbw                              ; 0x90d2
    cwd                              ; 0x90d3
    idiv cx                          ; 0x90d4
    mov word [bp - 0x0006], dx       ; 0x90d6
    mov ax, 1                        ; 0x90d9
    push ax                          ; 0x90dc
    push dx                          ; 0x90dd
    push word [bp - 0x0004]          ; 0x90de
    push word [data_8464]            ; 0x90e1
    call api_idx_000a                ; 0x90e5
    add sp, byte 8                   ; 0x90e8
    mov ax, 5                        ; 0x90eb
    push ax                          ; 0x90ee
    call api_idx_0004_5              ; 0x90ef
    pop cx                           ; 0x90f2
@..api_idx_0006_6.l1:
    push word [data_8462]            ; 0x90f3
    push word [data_8464]            ; 0x90f7
    mov ax, 0x90e6                   ; 0x90fb
    push ax                          ; 0x90fe
    call loc_15ab                    ; 0x90ff
    add sp, byte 6                   ; 0x9102
    mov ax, data_9136                ; 0x9105
    push ax                          ; 0x9108
    push word [bp + 0x4]             ; 0x9109
    call ds_dispatch_b53b            ; 0x910c
    add sp, byte 4                   ; 0x910f
    mov byte [data_9186], 0          ; 0x9112
    cmp word [bp + 0x6], byte 0      ; 0x9117
    jl short @..api_idx_0006_6.l2    ; 0x911b
    mov ax, data_9186                ; 0x911d
    push ax                          ; 0x9120
    push word [bp + 0x6]             ; 0x9121
    call ds_dispatch_b53b            ; 0x9124
    add sp, byte 4                   ; 0x9127
@..api_idx_0006_6.l2:
    push word [bp + 0x8]             ; 0x912a
    push word [bp + 0x8]             ; 0x912d
    mov ax, 0x43                     ; 0x9130
    cmp word [data_8464], byte 0     ; 0x9133
    jne short @..api_idx_0006_6.l3   ; 0x9138
    mov ax, 1                        ; 0x913a
@..api_idx_0006_6.l3:
    push ax                          ; 0x913d
    mov ax, data_9186                ; 0x913e
    push ax                          ; 0x9141
    mov ax, data_9136                ; 0x9142
    push ax                          ; 0x9145
    mov ax, 0x90e6                   ; 0x9146
    push ax                          ; 0x9149
    mov ax, 0                        ; 0x914a
    push ax                          ; 0x914d
    call api_idx_0004_4              ; 0x914e
    add sp, byte 0x0e                ; 0x9151
    cmp word [bp + 0xa], byte 1      ; 0x9154
    jne short @..api_idx_0006_6.l4   ; 0x9158
    mov ax, 4                        ; 0x915a
    push ax                          ; 0x915d
    call api_idx_0004_5              ; 0x915e
    pop cx                           ; 0x9161
    mov ax, 2                        ; 0x9162
    push ax                          ; 0x9165
    mov ax, 0x41                     ; 0x9166
    push ax                          ; 0x9169
    mov ax, 0xc80                    ; 0x916a
    push ax                          ; 0x916d
    call api_idx_0050                ; 0x916e
    add sp, byte 6                   ; 0x9171
    push word [data_9058]            ; 0x9174
    call api_idx_0004_5              ; 0x9178
    pop cx                           ; 0x917b
    mov ax, 1                        ; 0x917c
    ret                              ; 0x917f
@..api_idx_0006_6.l4:
    cmp word [data_8464], byte 0     ; 0x9180
    je short @..api_idx_0006_6.l5    ; 0x9185
    mov bx, word [data_8492]         ; 0x9187
    cmp byte [bx + 0xd8], 0          ; 0x918b
    jbe short @..api_idx_0006_6.l5   ; 0x9190
    mov ax, word [data_8464]         ; 0x9192
    shl ax, 1                        ; 0x9195
    mov bx, ax                       ; 0x9197
    mov bx, word [bx - 0x7b70]       ; 0x9199
    mov al, byte [bx + 0xd8]         ; 0x919d
    mov bx, word [data_8492]         ; 0x91a1
    cmp al, byte [bx + 0xd8]         ; 0x91a5
    jne short @..api_idx_0006_6.l5   ; 0x91a9
    mov word [data_90de], 0x10       ; 0x91ab
@..api_idx_0006_6.l5:
    mov ax, 0                        ; 0x91b1
    ret                              ; 0x91b4
