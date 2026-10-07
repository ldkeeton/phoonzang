math_loc_70ca:
    mov ax, 0xfe6c                   ; 0x70ca
    call ds_dispatch_f40b            ; 0x70cd
    mov word [bp - 0x0194], 0        ; 0x70d0
    cmp word [data_0e32], byte 0     ; 0x70d6
    je short @..math_loc_70ca.l1     ; 0x70db
    lea ax, word [bp - 0x000c]       ; 0x70dd
    push ax                          ; 0x70e0
    lea ax, word [bp - 0x000a]       ; 0x70e1
    push ax                          ; 0x70e4
    call ds_dispatch_f053            ; 0x70e5
    add sp, byte 4                   ; 0x70e8
    mov word [bp - 0x0194], ax       ; 0x70eb
@..math_loc_70ca.l1:
    mov ax, 0                        ; 0x70ef
    push ax                          ; 0x70f2
    mov bx, word [bp + 0x6]          ; 0x70f3
    push word [bx]                   ; 0x70f6
    lea ax, word [bp - 0x007a]       ; 0x70f8
    push ax                          ; 0x70fb
    mov ax, 1                        ; 0x70fc
    push ax                          ; 0x70ff
    call ds_dispatch_b63c            ; 0x7100
    add sp, byte 8                   ; 0x7103
    cmp word [bp + 0xa], byte 0      ; 0x7106
    je short @..math_loc_70ca.l4     ; 0x710a
    mov ax, 3                        ; 0x710c
    imul word [bp + 0xa]             ; 0x710f
    push ax                          ; 0x7112
    mov al, byte [bp - 0x003f]       ; 0x7113
    sub ah, ah                       ; 0x7116
    mov cx, ax                       ; 0x7118
    pop ax                           ; 0x711a
    cmp ax, cx                       ; 0x711b
    jl short @..math_loc_70ca.l2     ; 0x711d
    mov bx, word [bp + 0x6]          ; 0x711f
    mov al, byte [bx + 0x7]          ; 0x7122
    sub ah, ah                       ; 0x7125
    or ax, 0x80                      ; 0x7127
    mov byte [bx + 0x7], al          ; 0x712a
    jmp short @..math_loc_70ca.l3    ; 0x712d
@..math_loc_70ca.l2:
    lea ax, word [bp - 0x00f2]       ; 0x712f
    push ax                          ; 0x7133
    mov ax, 0x1d1                    ; 0x7134
    push ax                          ; 0x7137
    call ds_dispatch_b53b            ; 0x7138
    add sp, byte 4                   ; 0x713b
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    lea ax, word [bp - 0x00f2]       ; 0x7142
    push ax                          ; 0x7146
    call api_idx_0004                ; 0x7147
    add sp, byte 4                   ; 0x714a
    mov ax, 0                        ; 0x714d
    ret                              ; 0x7150
