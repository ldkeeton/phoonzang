; auto-generated
search_path_from:
    mov ax, 0xffb8                   ; 0x9029
    call aztec_csav                  ; 0x902c
    push word [bp + 6]               ; 0x902f
    push word [bp + 4]               ; 0x9032
    call append_edge_between         ; 0x9035
    add sp, byte 4                   ; 0x9038
    test ax, ax                      ; 0x903b
    je short .forward1               ; 0x903d
    mov ax, 1                        ; 0x903f
    ret                              ; 0x9042
.forward1:
    cmp word [bp + 8], byte 0        ; 0x9043
    jne short .forward2              ; 0x9047
    mov ax, 0                        ; 0x9049
    ret                              ; 0x904c
.forward2:
    mov ax, 1                        ; 0x904d
    mov cx, word [bp + 0xa]          ; 0x9050
    cmp cx, word [path_search_depth] ; 0x9053
    jge short .forward3              ; 0x9057
    mov ax, 2                        ; 0x9059
.forward3:
    mov word [bp - 8], ax            ; 0x905c
    mov word [bp - 4], 0             ; 0x905f
    jmp near .forward18              ; 0x9064
.back1:
    mov word [bp - 2], 0             ; 0x9067
.back2:
    mov ax, word [bp - 2]            ; 0x906c
    shl ax, 1                        ; 0x906f
    shl ax, 1                        ; 0x9071
    mov bx, ax                       ; 0x9073
    mov al, byte [bx + path_edges]   ; 0x9075
    sub ah, ah                       ; 0x9079
    cmp ax, word [bp + 4]            ; 0x907b
    je short .forward4               ; 0x907e
    jmp near .forward10              ; 0x9080
.forward4:
    cmp byte [bx + path_edges + path_edge.gate_key], 0xff ; 0x9083
    je short .forward5               ; 0x9088
    mov al, byte [bx + path_edges + path_edge.gate_key] ; 0x908a
    cbw                              ; 0x908e
    shl ax, 1                        ; 0x908f
    mov bx, ax                       ; 0x9091
    cmp word [bx + open_gates], byte 0 ; 0x9093
    jne short .forward5              ; 0x9098
    jmp near .forward10              ; 0x909a
.forward5:
    mov ax, word [bp - 2]            ; 0x909d
    shl ax, 1                        ; 0x90a0
    mov bx, ax                       ; 0x90a2
    cmp word [bx + edges_in_use], byte 0 ; 0x90a4
    je short .forward6               ; 0x90a9
    jmp near .forward9               ; 0x90ab
.forward6:
    cmp word [bp - 4], byte 0        ; 0x90ae
    je short .forward7               ; 0x90b2
    mov word [bx + edges_in_use], 1  ; 0x90b4
.forward7:
    mov ax, word [found_path_length] ; 0x90ba
    mov word [bp - 6], ax            ; 0x90bd
    mov ax, 0x40                     ; 0x90c0
    push ax                          ; 0x90c3
    lea ax, word [bp - 0x48]         ; 0x90c4
    push ax                          ; 0x90c7
    mov ax, edges_in_use             ; 0x90c8
    push ax                          ; 0x90cb
    call aztec_movmem                ; 0x90cc
    add sp, byte 6                   ; 0x90cf
    mov ax, word [bp + 0xa]          ; 0x90d2
    inc ax                           ; 0x90d5
    push ax                          ; 0x90d6
    push word [bp - 4]               ; 0x90d7
    push word [bp + 6]               ; 0x90da
    mov ax, word [bp - 2]            ; 0x90dd
    shl ax, 1                        ; 0x90e0
    shl ax, 1                        ; 0x90e2
    mov bx, ax                       ; 0x90e4
    mov al, byte [bx + path_edges + path_edge.end_b] ; 0x90e6
    sub ah, ah                       ; 0x90ea
    push ax                          ; 0x90ec
    call search_path_from            ; 0x90ed
    add sp, byte 8                   ; 0x90f0
    test ax, ax                      ; 0x90f3
    je short .forward8               ; 0x90f5
    mov ax, word [bp - 2]            ; 0x90f7
    shl ax, 1                        ; 0x90fa
    shl ax, 1                        ; 0x90fc
    mov bx, ax                       ; 0x90fe
    mov al, byte [bx + path_edges + path_edge.end_b] ; 0x9100
    sub ah, ah                       ; 0x9104
    push ax                          ; 0x9106
    push word [bp + 4]               ; 0x9107
    call append_edge_between         ; 0x910a
    add sp, byte 4                   ; 0x910d
    mov ax, 1                        ; 0x9110
    ret                              ; 0x9113
.forward8:
    mov ax, word [bp - 6]            ; 0x9114
    mov word [found_path_length], ax ; 0x9117
    mov ax, 0x40                     ; 0x911a
    push ax                          ; 0x911d
    mov ax, edges_in_use             ; 0x911e
    push ax                          ; 0x9121
    lea ax, word [bp - 0x48]         ; 0x9122
    push ax                          ; 0x9125
    call aztec_movmem                ; 0x9126
    add sp, byte 6                   ; 0x9129
.forward9:
    jmp near .forward16              ; 0x912c
.forward10:
    mov ax, word [bp - 2]            ; 0x912f
    shl ax, 1                        ; 0x9132
    shl ax, 1                        ; 0x9134
    mov bx, ax                       ; 0x9136
    mov al, byte [bx + path_edges + path_edge.end_b] ; 0x9138
    sub ah, ah                       ; 0x913c
    cmp ax, word [bp + 4]            ; 0x913e
    je short .forward11              ; 0x9141
    jmp near .forward16              ; 0x9143
.forward11:
    cmp byte [bx + path_edges + path_edge.gate_key], 0xff ; 0x9146
    je short .forward12              ; 0x914b
    mov al, byte [bx + path_edges + path_edge.gate_key] ; 0x914d
    cbw                              ; 0x9151
    shl ax, 1                        ; 0x9152
    mov bx, ax                       ; 0x9154
    cmp word [bx + open_gates], byte 0 ; 0x9156
    jne short .forward12             ; 0x915b
    jmp near .forward16              ; 0x915d
.forward12:
    mov ax, word [bp - 2]            ; 0x9160
    shl ax, 1                        ; 0x9163
    mov bx, ax                       ; 0x9165
    cmp word [bx + edges_in_use], byte 0 ; 0x9167
    je short .forward13              ; 0x916c
    jmp near .forward16              ; 0x916e
.forward13:
    cmp word [bp - 4], byte 0        ; 0x9171
    je short .forward14              ; 0x9175
    mov word [bx + edges_in_use], 1  ; 0x9177
.forward14:
    mov ax, word [found_path_length] ; 0x917d
    mov word [bp - 6], ax            ; 0x9180
    mov ax, 0x40                     ; 0x9183
    push ax                          ; 0x9186
    lea ax, word [bp - 0x48]         ; 0x9187
    push ax                          ; 0x918a
    mov ax, edges_in_use             ; 0x918b
    push ax                          ; 0x918e
    call aztec_movmem                ; 0x918f
    add sp, byte 6                   ; 0x9192
    mov ax, word [bp + 0xa]          ; 0x9195
    inc ax                           ; 0x9198
    push ax                          ; 0x9199
    push word [bp - 4]               ; 0x919a
    push word [bp + 6]               ; 0x919d
    mov ax, word [bp - 2]            ; 0x91a0
    shl ax, 1                        ; 0x91a3
    shl ax, 1                        ; 0x91a5
    mov bx, ax                       ; 0x91a7
    mov al, byte [bx + path_edges]   ; 0x91a9
    sub ah, ah                       ; 0x91ad
    push ax                          ; 0x91af
    call search_path_from            ; 0x91b0
    add sp, byte 8                   ; 0x91b3
    test ax, ax                      ; 0x91b6
    je short .forward15              ; 0x91b8
    mov ax, word [bp - 2]            ; 0x91ba
    shl ax, 1                        ; 0x91bd
    shl ax, 1                        ; 0x91bf
    mov bx, ax                       ; 0x91c1
    mov al, byte [bx + path_edges]   ; 0x91c3
    sub ah, ah                       ; 0x91c7
    push ax                          ; 0x91c9
    push word [bp + 4]               ; 0x91ca
    call append_edge_between         ; 0x91cd
    add sp, byte 4                   ; 0x91d0
    mov ax, 1                        ; 0x91d3
    ret                              ; 0x91d6
.forward15:
    mov ax, word [bp - 6]            ; 0x91d7
    mov word [found_path_length], ax ; 0x91da
    mov ax, 0x40                     ; 0x91dd
    push ax                          ; 0x91e0
    mov ax, edges_in_use             ; 0x91e1
    push ax                          ; 0x91e4
    lea ax, word [bp - 0x48]         ; 0x91e5
    push ax                          ; 0x91e8
    call aztec_movmem                ; 0x91e9
    add sp, byte 6                   ; 0x91ec
.forward16:
    inc word [bp - 2]                ; 0x91ef
    mov ax, word [bp - 2]            ; 0x91f2
    cmp ax, strict word 0x20         ; 0x91f5
    jge short .forward17             ; 0x91f8
    jmp near .back2                  ; 0x91fa
.forward17:
    inc word [bp - 4]                ; 0x91fd
.forward18:
    mov ax, word [bp - 4]            ; 0x9200
    cmp ax, word [bp - 8]            ; 0x9203
    jge short .forward19             ; 0x9206
    jmp near .back1                  ; 0x9208
.forward19:
    mov ax, 0                        ; 0x920b
    ret                              ; 0x920e
