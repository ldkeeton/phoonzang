api_idx_000c:
    mov ax, 0xfff4                   ; 0x6f33
    call ds_dispatch_f40b            ; 0x6f36
    mov word [data_90e2], 5          ; 0x6f39
    mov word [bp - 0x0002], 0        ; 0x6f3f
@..api_idx_000c.l1:
    mov word [bp - 0x0004], 0        ; 0x6f44
@..api_idx_000c.l2:
    mov ax, 6                        ; 0x6f49
    imul word [bp - 0x0002]          ; 0x6f4c
    mov cx, word [bp - 0x0004]       ; 0x6f4f
    shl cx, 1                        ; 0x6f52
    add ax, cx                       ; 0x6f54
    mov bx, ax                       ; 0x6f56
    mov word [bx - 0x6f36], 0xffff   ; 0x6f58
    inc word [bp - 0x0004]           ; 0x6f5e
    mov ax, word [bp - 0x0004]       ; 0x6f61
    cmp ax, strict word 3            ; 0x6f64
    jl short @..api_idx_000c.l2      ; 0x6f67
    inc word [bp - 0x0002]           ; 0x6f69
    mov ax, word [bp - 0x0002]       ; 0x6f6c
    cmp ax, strict word 3            ; 0x6f6f
    jl short @..api_idx_000c.l1      ; 0x6f72
    mov bx, word [data_8492]         ; 0x6f74
    cmp byte [bx + 0xd8], 0          ; 0x6f78
    jbe short @..api_idx_000c.l3     ; 0x6f7d
    mov ax, 0x10                     ; 0x6f7f
    push ax                          ; 0x6f82
    call ds_dispatch_b7e0            ; 0x6f83
    pop cx                           ; 0x6f86
@..api_idx_000c.l3:
    mov word [data_8460], 0x64       ; 0x6f87
@..api_idx_000c.l4:
    mov word [data_8464], 0          ; 0x6f8d
@..api_idx_000c.l5:
    mov word [data_8462], 0          ; 0x6f93
    jmp near @..api_idx_000c.l24     ; 0x6f99
@..api_idx_000c.l6:
    mov ax, 0x2c                     ; 0x6f9c
    imul word [data_8462]            ; 0x6f9f
    mov cx, ax                       ; 0x6fa3
    mov ax, word [data_8464]         ; 0x6fa5
    shl ax, 1                        ; 0x6fa8
    mov bx, ax                       ; 0x6faa
    mov ax, word [bx - 0x7b7e]       ; 0x6fac
    add ax, cx                       ; 0x6fb0
    mov word [bp - 0x0006], ax       ; 0x6fb2
    mov bx, ax                       ; 0x6fb5
    cmp byte [bx + 0x24], 0          ; 0x6fb7
    ja short @..api_idx_000c.l7      ; 0x6fbb
    jmp near @..api_idx_000c.l16     ; 0x6fbd
@..api_idx_000c.l7:
    cmp byte [bx + 0x22], 3          ; 0x6fc0
    jne short @..api_idx_000c.l8     ; 0x6fc4
    jmp near @..api_idx_000c.l16     ; 0x6fc6
@..api_idx_000c.l8:
    mov al, byte [bx + 0x25]         ; 0x6fc9
    sub ah, ah                       ; 0x6fcc
    cmp ax, word [data_8460]         ; 0x6fce
    je short @..api_idx_000c.l9      ; 0x6fd2
    jmp near @..api_idx_000c.l16     ; 0x6fd4
@..api_idx_000c.l9:
    cmp byte [bx + 0x2b], 0          ; 0x6fd7
    je short @..api_idx_000c.l10     ; 0x6fdb
    jmp near @..api_idx_000c.l14     ; 0x6fdd
@..api_idx_000c.l10:
    mov al, byte [bx + 0x21]         ; 0x6fe0
    sub ah, ah                       ; 0x6fe3
    mov si, ax                       ; 0x6fe5
    mov al, byte [bx + si + 0x18]    ; 0x6fe7
    sub ah, ah                       ; 0x6fea
    cmp ax, word [data_8460]         ; 0x6fec
    je short @..api_idx_000c.l12     ; 0x6ff0
    mov byte [bx + 0x2b], 3          ; 0x6ff2
    mov ax, 1                        ; 0x6ff6
    push ax                          ; 0x6ff9
    call api_idx_000a_2              ; 0x6ffa
    pop cx                           ; 0x6ffd
    mov ax, 4                        ; 0x6ffe
    push ax                          ; 0x7001
    call api_idx_0004_5              ; 0x7002
    pop cx                           ; 0x7005
    mov ax, 0                        ; 0x7006
    push ax                          ; 0x7009
    mov ax, 0x43                     ; 0x700a
    push ax                          ; 0x700d
    mov ax, 0xffff                   ; 0x700e
    push ax                          ; 0x7011
    mov ax, 0xdbe                    ; 0x7012
    push ax                          ; 0x7015
    call api_idx_0006_6              ; 0x7016
    add sp, byte 8                   ; 0x7019
    cmp word [data_8464], byte 0     ; 0x701c
    jne short @..api_idx_000c.l11    ; 0x7021
    mov ax, 0                        ; 0x7023
    push ax                          ; 0x7026
    push word [data_8462]            ; 0x7027
    call api_idx_0004_2              ; 0x702b
    add sp, byte 4                   ; 0x702e
@..api_idx_000c.l11:
    push word [data_9058]            ; 0x7031
    call api_idx_0004_5              ; 0x7035
    pop cx                           ; 0x7038
@..api_idx_000c.l12:
    mov ax, 0xa                      ; 0x7039
    push ax                          ; 0x703c
    call ds_dispatch_b7a9            ; 0x703d
    pop cx                           ; 0x7040
    mov cx, ax                       ; 0x7041
    mov ax, word [data_8460]         ; 0x7043
    sub ax, cx                       ; 0x7046
    add ax, strict word 0xfffb       ; 0x7048
    mov word [bp - 0x000a], ax       ; 0x704b
    cmp ax, strict word 1            ; 0x704e
    jge short @..api_idx_000c.l13    ; 0x7051
    mov word [bp - 0x000a], 1        ; 0x7053
@..api_idx_000c.l13:
    mov al, byte [bp - 0x000a]       ; 0x7058
    mov bx, word [bp - 0x0006]       ; 0x705b
    mov byte [bx + 0x25], al         ; 0x705e
    jmp short @..api_idx_000c.l16    ; 0x7061
@..api_idx_000c.l14:
    mov bx, word [bp - 0x0006]       ; 0x7063
    cmp byte [bx + 0x2b], 3          ; 0x7066
    jne short @..api_idx_000c.l16    ; 0x706a
    mov byte [bx + 0x2b], 0          ; 0x706c
    mov bx, word [bp - 0x0006]       ; 0x7070
    mov byte [bx + 0x25], 0          ; 0x7073
    mov ax, 1                        ; 0x7077
    push ax                          ; 0x707a
    call api_idx_000a_2              ; 0x707b
    pop cx                           ; 0x707e
    mov ax, 4                        ; 0x707f
    push ax                          ; 0x7082
    call api_idx_0004_5              ; 0x7083
    pop cx                           ; 0x7086
    mov ax, 0x43                     ; 0x7087
    push ax                          ; 0x708a
    mov ax, 0xffff                   ; 0x708b
    push ax                          ; 0x708e
    mov ax, 0xdbf                    ; 0x708f
    push ax                          ; 0x7092
    call api_idx_0006_6              ; 0x7093
    add sp, byte 6                   ; 0x7096
    cmp word [data_8464], byte 0     ; 0x7099
    jne short @..api_idx_000c.l15    ; 0x709e
    mov ax, 0                        ; 0x70a0
    push ax                          ; 0x70a3
    push word [data_8462]            ; 0x70a4
    call api_idx_0004_2              ; 0x70a8
    add sp, byte 4                   ; 0x70ab
@..api_idx_000c.l15:
    push word [data_9058]            ; 0x70ae
    call api_idx_0004_5              ; 0x70b2
    pop cx                           ; 0x70b5
@..api_idx_000c.l16:
    mov bx, word [bp - 0x0006]       ; 0x70b6
    mov al, byte [bx + 0x21]         ; 0x70b9
    sub ah, ah                       ; 0x70bc
    mov si, ax                       ; 0x70be
    mov al, byte [bx + si + 0x18]    ; 0x70c0
    sub ah, ah                       ; 0x70c3
    cmp ax, word [data_8460]         ; 0x70c5
    je short @..api_idx_000c.l17     ; 0x70c9
    jmp near @..api_idx_000c.l21     ; 0x70cb
@..api_idx_000c.l17:
    cmp byte [bx + 0x24], 0          ; 0x70ce
    jbe short @..api_idx_000c.l19    ; 0x70d2
    cmp byte [bx + 0x2b], 3          ; 0x70d4
    jne short @..api_idx_000c.l19    ; 0x70d8
    cmp byte [bx + 0x22], 3          ; 0x70da
    je short @..api_idx_000c.l19     ; 0x70de
    mov byte [bx + 0x2b], 0          ; 0x70e0
    mov bx, word [bp - 0x0006]       ; 0x70e4
    mov byte [bx + 0x25], 0          ; 0x70e7
    mov ax, 1                        ; 0x70eb
    push ax                          ; 0x70ee
    call api_idx_000a_2              ; 0x70ef
    pop cx                           ; 0x70f2
    mov ax, 4                        ; 0x70f3
    push ax                          ; 0x70f6
    call api_idx_0004_5              ; 0x70f7
    pop cx                           ; 0x70fa
    mov ax, 0x43                     ; 0x70fb
    push ax                          ; 0x70fe
    mov ax, 0xffff                   ; 0x70ff
    push ax                          ; 0x7102
    mov ax, 0xdbf                    ; 0x7103
    push ax                          ; 0x7106
    call api_idx_0006_6              ; 0x7107
    add sp, byte 6                   ; 0x710a
    cmp word [data_8464], byte 0     ; 0x710d
    jne short @..api_idx_000c.l18    ; 0x7112
    mov ax, 0                        ; 0x7114
    push ax                          ; 0x7117
    push word [data_8462]            ; 0x7118
    call api_idx_0004_2              ; 0x711c
    add sp, byte 4                   ; 0x711f
@..api_idx_000c.l18:
    push word [data_9058]            ; 0x7122
    call api_idx_0004_5              ; 0x7126
    pop cx                           ; 0x7129
@..api_idx_000c.l19:
    call api_idx_0014                ; 0x712a
    mov bx, word [bp - 0x0006]       ; 0x712d
    inc byte [bx + 0x21]             ; 0x7130
