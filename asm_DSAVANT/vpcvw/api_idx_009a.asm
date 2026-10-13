; auto-generated
api_idx_009a:
    mov ax, 0xff66                   ; 0x6f62
    call aztec_csav                  ; 0x6f65
    mov ax, 0                        ; 0x6f68
    push ax                          ; 0x6f6b
    mov bx, word [bp + 0x6]          ; 0x6f6c
    push word [bx]                   ; 0x6f6f
    lea ax, word [bp - 0x004a]       ; 0x6f71
    push ax                          ; 0x6f74
    mov ax, 1                        ; 0x6f75
    push ax                          ; 0x6f78
    call ds_app_file_0883            ; 0x6f79
    add sp, byte 8                   ; 0x6f7c
    mov bx, word [bp + 0x6]          ; 0x6f7f
    cmp byte [bx + 0x6], 0           ; 0x6f82
    je short @..api_idx_009a.l1      ; 0x6f86
    mov al, byte [bx + 0x6]          ; 0x6f88
    cmp al, 0x63                     ; 0x6f8b
    ja short @..api_idx_009a.l1      ; 0x6f8d
    mov ax, word [bp + 0x8]          ; 0x6f8f
    shl ax, 1                        ; 0x6f92
    push ax                          ; 0x6f94
    mov al, byte [bp - 0x000f]       ; 0x6f95
    sub ah, ah                       ; 0x6f98
    mov cx, ax                       ; 0x6f9a
    pop ax                           ; 0x6f9c
    cmp ax, cx                       ; 0x6f9d
    jl short @..api_idx_009a.l1      ; 0x6f9f
    cmp word [bp - 0x0028], byte 0   ; 0x6fa1
    je short @..api_idx_009a.l1      ; 0x6fa5
    cmp byte [bp - 0x000c], 0        ; 0x6fa7
    jne short @..api_idx_009a.l1     ; 0x6fab
    cmp byte [bp - 0x000b], 0        ; 0x6fad
    jne short @..api_idx_009a.l1     ; 0x6fb1
    mov al, byte [bp - 0x0013]       ; 0x6fb3
    sub ah, ah                       ; 0x6fb6
    test ax, 2                       ; 0x6fb8
    jne short @..api_idx_009a.l1     ; 0x6fbb
    mov al, byte [bp - 0x0012]       ; 0x6fbd
    sub ah, ah                       ; 0x6fc0
    mov bx, ax                       ; 0x6fc2
    cmp byte [bx + 0x60e], 1         ; 0x6fc4
    je short @..api_idx_009a.l1      ; 0x6fc9
    cmp byte [bp - 0x0012], 0xd      ; 0x6fcb
    jne short @..api_idx_009a.l2     ; 0x6fcf
@..api_idx_009a.l1:
    lea ax, word [bp - 0x009a]       ; 0x6fd1
    push ax                          ; 0x6fd5
    mov ax, 0x1d1                    ; 0x6fd6
    push ax                          ; 0x6fd9
    call ds_app_mem_0782             ; 0x6fda
    add sp, byte 4                   ; 0x6fdd
    mov ax, 1                        ; 0x6fe0
    push ax                          ; 0x6fe3
    lea ax, word [bp - 0x009a]       ; 0x6fe4
    push ax                          ; 0x6fe8
    call api_idx_0004                ; 0x6fe9
    add sp, byte 4                   ; 0x6fec
    ret                              ; 0x6fef
@..api_idx_009a.l2:
    mov ax, word [bp + 0x8]          ; 0x6ff0
    shl ax, 1                        ; 0x6ff3
    push ax                          ; 0x6ff5
    mov al, byte [bp - 0x000f]       ; 0x6ff6
    sub ah, ah                       ; 0x6ff9
    mov cx, ax                       ; 0x6ffb
    pop ax                           ; 0x6ffd
    sub ax, cx                       ; 0x6ffe
    push ax                          ; 0x7000
    call ds_app_09f0                 ; 0x7001
    pop cx                           ; 0x7004
    inc ax                           ; 0x7005
    mov word [bp - 0x0002], ax       ; 0x7006
    mov bx, word [bp + 0x6]          ; 0x7009
    mov al, byte [bx + 0x6]          ; 0x700c
    sub ah, ah                       ; 0x700f
    mov cx, ax                       ; 0x7011
    mov ax, word [bp - 0x0002]       ; 0x7013
    add cx, ax                       ; 0x7016
    mov ax, cx                       ; 0x7018
    cmp ax, strict word 0x64         ; 0x701a
    jge short @..api_idx_009a.l3     ; 0x701d
    mov al, byte [bx + 0x6]          ; 0x701f
    sub ah, ah                       ; 0x7022
    add ax, word [bp - 0x0002]       ; 0x7024
    mov byte [bx + 0x6], al          ; 0x7027
    jmp short @..api_idx_009a.l4     ; 0x702a
@..api_idx_009a.l3:
    mov byte [bx + 0x6], 0x63        ; 0x702c
@..api_idx_009a.l4:
    mov ax, 0x64                     ; 0x7030
    push ax                          ; 0x7033
    call ds_app_09f0                 ; 0x7034
    pop cx                           ; 0x7037
    push ax                          ; 0x7038
    mov al, byte [bp - 0x000f]       ; 0x7039
    sub ah, ah                       ; 0x703c
    mov cx, ax                       ; 0x703e
    pop ax                           ; 0x7040
    cmp ax, cx                       ; 0x7041
    jge short @..api_idx_009a.l5     ; 0x7043
    mov bx, word [bp + 0x6]          ; 0x7045
    mov word [bx], 0                 ; 0x7048
    lea ax, word [bp - 0x009a]       ; 0x704c
    push ax                          ; 0x7050
    mov ax, 0x1d1                    ; 0x7051
    push ax                          ; 0x7054
    call ds_app_mem_0782             ; 0x7055
    add sp, byte 4                   ; 0x7058
    mov ax, 1                        ; 0x705b
    push ax                          ; 0x705e
    lea ax, word [bp - 0x009a]       ; 0x705f
    push ax                          ; 0x7063
    call api_idx_0004                ; 0x7064
    add sp, byte 4                   ; 0x7067
    ret                              ; 0x706a
@..api_idx_009a.l5:
    ret                              ; 0x706b
