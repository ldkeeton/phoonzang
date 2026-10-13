api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x4f95
    call aztec_csav                  ; 0x4f98
    mov ax, 0x248                    ; 0x4f9b
    imul word [bp + 0x4]             ; 0x4f9e
    mov bx, ax                       ; 0x4fa1
    mov ax, word [bx + 0x5c18]       ; 0x4fa3
    push ax                          ; 0x4fa7
    mov al, byte [bx + 0x5e3b]       ; 0x4fa8
    sub ah, ah                       ; 0x4fac
    mov cx, ax                       ; 0x4fae
    pop ax                           ; 0x4fb0
    cmp ax, cx                       ; 0x4fb1
    jge short @..api_idx_0002_10.l1  ; 0x4fb3
    mov ax, cx                       ; 0x4fb5
    jmp short @..api_idx_0002_10.l2  ; 0x4fb7
@..api_idx_0002_10.l1:
    mov ax, word [bx + 0x5c18]       ; 0x4fb9
@..api_idx_0002_10.l2:
    mov word [bp - 0x0002], ax       ; 0x4fbd
    push ax                          ; 0x4fc0
    cmp ax, strict word 0x14         ; 0x4fc1
    pop ax                           ; 0x4fc4
    jle short @..api_idx_0002_10.l3  ; 0x4fc5
    mov ax, 0x14                     ; 0x4fc7
@..api_idx_0002_10.l3:
    mov word [bp - 0x0002], ax       ; 0x4fca
    mov cx, 3                        ; 0x4fcd
    cwd                              ; 0x4fd0
    idiv cx                          ; 0x4fd1
    inc ax                           ; 0x4fd3
    push ax                          ; 0x4fd4
    mov ax, 1                        ; 0x4fd5
    push ax                          ; 0x4fd8
    push word [bp + 0x6]             ; 0x4fd9
    call ds_app_0a09                 ; 0x4fdc
    add sp, byte 6                   ; 0x4fdf
    mov word [bp + 0x6], ax          ; 0x4fe2
    mov ax, 0x248                    ; 0x4fe5
    imul word [bp + 0x4]             ; 0x4fe8
    mov bx, ax                       ; 0x4feb
    mov al, byte [bx + 0x5d68]       ; 0x4fed
    sub ah, ah                       ; 0x4ff1
    mov cx, 6                        ; 0x4ff3
    cwd                              ; 0x4ff6
    idiv cx                          ; 0x4ff7
    push ax                          ; 0x4ff9
    mov ax, word [bp - 0x0002]       ; 0x4ffa
    add ax, word [bp + 0x8]          ; 0x4ffd
    sub ax, word [bp + 0xa]          ; 0x5000
    cwd                              ; 0x5003
    idiv word [bp + 0x8]             ; 0x5004
    mov cx, ax                       ; 0x5007
    pop ax                           ; 0x5009
    add ax, cx                       ; 0x500a
    dec ax                           ; 0x500c
    mov byte [bx + 0x5e37], al       ; 0x500d
    push word [bp + 0x6]             ; 0x5011
    mov ax, 1                        ; 0x5014
    push ax                          ; 0x5017
    mov al, byte [bx + 0x5e37]       ; 0x5018
    sub ah, ah                       ; 0x501c
    push ax                          ; 0x501e
    call ds_app_0a09                 ; 0x501f
    add sp, byte 6                   ; 0x5022
    push ax                          ; 0x5025
    mov ax, 0x248                    ; 0x5026
    imul word [bp + 0x4]             ; 0x5029
    mov bx, ax                       ; 0x502c
    pop ax                           ; 0x502e
    mov byte [bx + 0x5e37], al       ; 0x502f
    mov al, byte [bx + 0x5d69]       ; 0x5033
    sub ah, ah                       ; 0x5037
    mov cx, 6                        ; 0x5039
    cwd                              ; 0x503c
    idiv cx                          ; 0x503d
    push ax                          ; 0x503f
    mov ax, word [bp - 0x0002]       ; 0x5040
    add ax, word [bp + 0xc]          ; 0x5043
    sub ax, word [bp + 0xe]          ; 0x5046
    cwd                              ; 0x5049
    idiv word [bp + 0xc]             ; 0x504a
    mov cx, ax                       ; 0x504d
    pop ax                           ; 0x504f
    add ax, cx                       ; 0x5050
    dec ax                           ; 0x5052
    mov byte [bx + 0x5e38], al       ; 0x5053
    push word [bp + 0x6]             ; 0x5057
    mov ax, 1                        ; 0x505a
    push ax                          ; 0x505d
    mov al, byte [bx + 0x5e38]       ; 0x505e
    sub ah, ah                       ; 0x5062
    push ax                          ; 0x5064
    call ds_app_0a09                 ; 0x5065
    add sp, byte 6                   ; 0x5068
    push ax                          ; 0x506b
    mov ax, 0x248                    ; 0x506c
    imul word [bp + 0x4]             ; 0x506f
    mov bx, ax                       ; 0x5072
    pop ax                           ; 0x5074
    mov byte [bx + 0x5e38], al       ; 0x5075
    mov al, byte [bx + 0x5d69]       ; 0x5079
    sub ah, ah                       ; 0x507d
    add ax, word [bp - 0x0002]       ; 0x507f
    mov byte [bx + 0x5e39], al       ; 0x5082
    ret                              ; 0x5086
