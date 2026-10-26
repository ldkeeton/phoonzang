; auto-generated
strstr:
    push bp                          ; 0x40ca
    mov bp, sp                       ; 0x40cb
    cld                              ; 0x40cd
    sub sp, byte 6                   ; 0x40ce
    push ds                          ; 0x40d1
    push es                          ; 0x40d2
    push si                          ; 0x40d3
    push di                          ; 0x40d4
    mov ax, ds                       ; 0x40d5
    mov es, ax                       ; 0x40d7
    cld                              ; 0x40d9
    mov di, word [bp + 4]            ; 0x40da
    mov si, word [bp + 6]            ; 0x40dd
    mov bx, di                       ; 0x40e0
    mov al, 0                        ; 0x40e2
    mov cx, 0xffff                   ; 0x40e4
    repne scasb                      ; 0x40e7
    mov cx, di                       ; 0x40e9
    sub cx, bx                       ; 0x40eb
    dec cx                           ; 0x40ed
    mov word [bp - 2], cx            ; 0x40ee
    mov di, bx                       ; 0x40f1
@..strstr.l1:
    mov al, byte [si]                ; 0x40f3
    repne scasb                      ; 0x40f5
    dec di                           ; 0x40f7
    cmp al, byte [es:di]             ; 0x40f8
    jne short @..strstr.l5           ; 0x40fb
    mov dx, di                       ; 0x40fd
    sub dx, bx                       ; 0x40ff
    push si                          ; 0x4101
    push di                          ; 0x4102
@..strstr.l2:
    inc si                           ; 0x4103
    inc di                           ; 0x4104
    mov al, byte [si]                ; 0x4105
    cmp al, 0                        ; 0x4107
    je short @..strstr.l4            ; 0x4109
    cmp byte [es:di], 0              ; 0x410b
    je short @..strstr.l3            ; 0x410f
    cmp al, byte [es:di]             ; 0x4111
    je short @..strstr.l2            ; 0x4114
@..strstr.l3:
    pop di                           ; 0x4116
    pop si                           ; 0x4117
    inc di                           ; 0x4118
    mov cx, word [bp - 2]            ; 0x4119
    sub cx, dx                       ; 0x411c
    dec cx                           ; 0x411e
    je short @..strstr.l5            ; 0x411f
    jmp short @..strstr.l1           ; 0x4121
@..strstr.l4:
    pop si                           ; 0x4123
    pop di                           ; 0x4124
    mov ax, dx                       ; 0x4125
    jmp short @..strstr.l6           ; 0x4127
@..strstr.l5:
    mov ax, 0xffff                   ; 0x4129
@..strstr.l6:
    pop di                           ; 0x412c
    pop si                           ; 0x412d
    pop es                           ; 0x412e
    pop ds                           ; 0x412f
    mov sp, bp                       ; 0x4130
    pop bp                           ; 0x4132
    ret                              ; 0x4133
