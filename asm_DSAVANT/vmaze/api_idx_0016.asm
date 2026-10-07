api_idx_0016:
    mov ax, 0xffea                   ; 0x4f53
    call ds_dispatch_f40b            ; 0x4f56
    mov bx, word [bp + 0x4]          ; 0x4f59
    mov al, byte [bx + 0xb]          ; 0x4f5c
    sub ah, ah                       ; 0x4f5f
    mov word [bp - 0x000c], ax       ; 0x4f61
    cmp byte [bx + 0xa], 0           ; 0x4f64
    je short @..api_idx_0016.l1      ; 0x4f68
    jmp near @..api_idx_0016.l10     ; 0x4f6a
@..api_idx_0016.l1:
    mov al, byte [bx + 0x8]          ; 0x4f6d
    sub ah, ah                       ; 0x4f70
    mov word [bp - 0x0002], ax       ; 0x4f72
    jmp near @..api_idx_0016.l8      ; 0x4f75
@..api_idx_0016.l2:
    mov word [bp - 0x000a], 0        ; 0x4f78
    mov al, byte [bp - 0x0002]       ; 0x4f7d
    mov byte [bp - 0x0016], al       ; 0x4f80
    mov byte [bp - 0x0015], 0        ; 0x4f83
    mov word [bp - 0x0006], 0        ; 0x4f87
    mov bx, word [bp + 0x4]          ; 0x4f8c
    mov al, byte [bx + 0x8]          ; 0x4f8f
    sub ah, ah                       ; 0x4f92
    inc ax                           ; 0x4f94
    cmp ax, word [bp - 0x0002]       ; 0x4f95
    jne short @..api_idx_0016.l3     ; 0x4f98
    mov ax, 3                        ; 0x4f9a
    jmp short @..api_idx_0016.l4     ; 0x4f9d
@..api_idx_0016.l3:
    mov ax, 1                        ; 0x4f9f
@..api_idx_0016.l4:
    mov word [bp - 0x0008], ax       ; 0x4fa2
    mov ax, word [bp - 0x0006]       ; 0x4fa5
    mov word [bp - 0x0004], ax       ; 0x4fa8
    jmp near @..api_idx_0016.l6      ; 0x4fab
@..api_idx_0016.l5:
    mov ax, 0                        ; 0x4fae
    push ax                          ; 0x4fb1
    push ax                          ; 0x4fb2
    lea ax, word [bp - 0x0016]       ; 0x4fb3
    push ax                          ; 0x4fb6
    mov bx, word [bp + 0x4]          ; 0x4fb7
    mov al, byte [bx + 0xf]          ; 0x4fba
    sub ah, ah                       ; 0x4fbd
    push ax                          ; 0x4fbf
    mov ax, 0x90                     ; 0x4fc0
    push ax                          ; 0x4fc3
    mov ax, 0x20                     ; 0x4fc4
    push ax                          ; 0x4fc7
    push word [bx + 0x6]             ; 0x4fc8
    push word [bx + 0x4]             ; 0x4fcb
    mov bx, word [bp - 0x0002]       ; 0x4fce
    mov al, byte [bx + 0x7013]       ; 0x4fd1
    sub ah, ah                       ; 0x4fd5
    add ax, word [bp - 0x000a]       ; 0x4fd7
    push ax                          ; 0x4fda
    mov bx, word [bp + 0x4]          ; 0x4fdb
    mov al, byte [bx + 0xd]          ; 0x4fde
    sub ah, ah                       ; 0x4fe1
    mov cx, 0xa                      ; 0x4fe3
    imul cx                          ; 0x4fe6
    mov cx, word [bp - 0x000c]       ; 0x4fe8
    shl cx, 1                        ; 0x4feb
    add ax, cx                       ; 0x4fed
    mov bx, ax                       ; 0x4fef
    mov ax, word [bx + 0x260]        ; 0x4ff1
    push ax                          ; 0x4ff5
    mov ax, word [bp - 0x0002]       ; 0x4ff6
    shl ax, 1                        ; 0x4ff9
    push ax                          ; 0x4ffb
    mov bx, word [bp + 0x4]          ; 0x4ffc
    mov al, byte [bx + 0xf]          ; 0x4fff
    sub ah, ah                       ; 0x5002
    mov cx, ax                       ; 0x5004
    pop ax                           ; 0x5006
    add ax, cx                       ; 0x5007
    mov bx, ax                       ; 0x5009
    mov al, byte [bx + 0x6fca]       ; 0x500b
    sub ah, ah                       ; 0x500f
    mov cx, ax                       ; 0x5011
    pop ax                           ; 0x5013
    add ax, cx                       ; 0x5014
    push ax                          ; 0x5016
    mov bx, word [bp + 0x4]          ; 0x5017
    mov al, byte [bx + 0xc]          ; 0x501a
    sub ah, ah                       ; 0x501d
    push ax                          ; 0x501f
    call ds_dispatch_efd1            ; 0x5020
    add sp, byte 0x16                ; 0x5023
    mov bx, word [bp + 0x4]          ; 0x5026
    mov al, byte [bx + 0xd]          ; 0x5029
    sub ah, ah                       ; 0x502c
    shl ax, 1                        ; 0x502e
    mov bx, ax                       ; 0x5030
    mov ax, word [bx + 0x29c]        ; 0x5032
    add word [bp - 0x000a], ax       ; 0x5036
    inc word [bp - 0x0004]           ; 0x5039
@..api_idx_0016.l6:
    mov ax, word [bp - 0x0004]       ; 0x503c
    cmp ax, word [bp - 0x0008]       ; 0x503f
    jge short @..api_idx_0016.l7     ; 0x5042
    jmp near @..api_idx_0016.l5      ; 0x5044
@..api_idx_0016.l7:
    inc word [bp - 0x0002]           ; 0x5047
@..api_idx_0016.l8:
    mov bx, word [bp + 0x4]          ; 0x504a
    mov al, byte [bx + 0x8]          ; 0x504d
    sub ah, ah                       ; 0x5050
    inc ax                           ; 0x5052
    inc ax                           ; 0x5053
    inc ax                           ; 0x5054
    cmp ax, word [bp - 0x0002]       ; 0x5055
    jle short @..api_idx_0016.l9     ; 0x5058
    jmp near @..api_idx_0016.l2      ; 0x505a
@..api_idx_0016.l9:
    jmp near @..api_idx_0016.l12     ; 0x505d
@..api_idx_0016.l10:
    mov word [bp - 0x000a], 0        ; 0x5060
    mov bx, word [bp + 0x4]          ; 0x5065
    mov al, byte [bx + 0x8]          ; 0x5068
    mov byte [bp - 0x0016], al       ; 0x506b
    mov byte [bp - 0x0015], 0        ; 0x506e
    mov word [bp - 0x0004], 0        ; 0x5072
@..api_idx_0016.l11:
    mov ax, 0                        ; 0x5077
    push ax                          ; 0x507a
    push ax                          ; 0x507b
    lea ax, word [bp - 0x0016]       ; 0x507c
    push ax                          ; 0x507f
    mov bx, word [bp + 0x4]          ; 0x5080
    mov al, byte [bx + 0xf]          ; 0x5083
    sub ah, ah                       ; 0x5086
    push ax                          ; 0x5088
    mov ax, 0x90                     ; 0x5089
    push ax                          ; 0x508c
    mov ax, 0x20                     ; 0x508d
    push ax                          ; 0x5090
    push word [bx + 0x6]             ; 0x5091
    push word [bx + 0x4]             ; 0x5094
    mov al, byte [bx + 0xd]          ; 0x5097
    sub ah, ah                       ; 0x509a
    shl ax, 1                        ; 0x509c
    mov bx, ax                       ; 0x509e
    mov ax, word [bx + 0x292]        ; 0x50a0
    add ax, word [bp - 0x000a]       ; 0x50a4
    push ax                          ; 0x50a7
    mov bx, word [bp + 0x4]          ; 0x50a8
    mov al, byte [bx + 0x8]          ; 0x50ab
    sub ah, ah                       ; 0x50ae
    shl ax, 1                        ; 0x50b0
    push ax                          ; 0x50b2
    mov al, byte [bx + 0xf]          ; 0x50b3
    sub ah, ah                       ; 0x50b6
    mov cx, ax                       ; 0x50b8
    pop ax                           ; 0x50ba
    add ax, cx                       ; 0x50bb
    mov bx, ax                       ; 0x50bd
    mov al, byte [bx + 0x6fca]       ; 0x50bf
    sub ah, ah                       ; 0x50c3
    push ax                          ; 0x50c5
    mov bx, word [bp + 0x4]          ; 0x50c6
    mov al, byte [bx + 0xc]          ; 0x50c9
    sub ah, ah                       ; 0x50cc
    push ax                          ; 0x50ce
    call ds_dispatch_efd1            ; 0x50cf
    add sp, byte 0x16                ; 0x50d2
    mov bx, word [bp + 0x4]          ; 0x50d5
    mov al, byte [bx + 0xd]          ; 0x50d8
    sub ah, ah                       ; 0x50db
    shl ax, 1                        ; 0x50dd
    mov bx, ax                       ; 0x50df
    mov ax, word [bx + 0x29c]        ; 0x50e1
    add word [bp - 0x000a], ax       ; 0x50e5
    inc word [bp - 0x0004]           ; 0x50e8
    mov ax, word [bp - 0x0004]       ; 0x50eb
    cmp ax, strict word 3            ; 0x50ee
    jl short @..api_idx_0016.l11     ; 0x50f1
@..api_idx_0016.l12:
    ret                              ; 0x50f3
