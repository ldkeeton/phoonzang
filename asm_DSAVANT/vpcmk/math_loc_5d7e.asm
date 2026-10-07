math_loc_5d7e:
    mov ax, 0                        ; 0x5d7e
    call ds_dispatch_f40b            ; 0x5d81
    mov ax, word [bp + 0x6]          ; 0x5d84
    push ax                          ; 0x5d87
    cmp ax, strict word 1            ; 0x5d88
    pop ax                           ; 0x5d8b
    jge short @..math_loc_5d7e.l1    ; 0x5d8c
    mov ax, 1                        ; 0x5d8e
@..math_loc_5d7e.l1:
    push ax                          ; 0x5d91
    mov ax, 0x248                    ; 0x5d92
    imul word [bp + 0x4]             ; 0x5d95
    mov bx, ax                       ; 0x5d98
    pop ax                           ; 0x5d9a
    mov byte [bx + 0x5d54], al       ; 0x5d9b
    mov ax, word [bp + 0x8]          ; 0x5d9f
    push ax                          ; 0x5da2
    cmp ax, strict word 1            ; 0x5da3
    pop ax                           ; 0x5da6
    jge short @..math_loc_5d7e.l2    ; 0x5da7
    mov ax, 1                        ; 0x5da9
@..math_loc_5d7e.l2:
    mov byte [bx + 0x5d55], al       ; 0x5dac
    mov ax, word [bp + 0xa]          ; 0x5db0
    push ax                          ; 0x5db3
    cmp ax, strict word 1            ; 0x5db4
    pop ax                           ; 0x5db7
    jge short @..math_loc_5d7e.l3    ; 0x5db8
    mov ax, 1                        ; 0x5dba
@..math_loc_5d7e.l3:
    mov byte [bx + 0x5d56], al       ; 0x5dbd
    mov ax, word [bp + 0xc]          ; 0x5dc1
    push ax                          ; 0x5dc4
    cmp ax, strict word 1            ; 0x5dc5
    pop ax                           ; 0x5dc8
    jge short @..math_loc_5d7e.l4    ; 0x5dc9
    mov ax, 1                        ; 0x5dcb
@..math_loc_5d7e.l4:
    mov byte [bx + 0x5d57], al       ; 0x5dce
    mov ax, word [bp + 0xe]          ; 0x5dd2
    push ax                          ; 0x5dd5
    cmp ax, strict word 1            ; 0x5dd6
    pop ax                           ; 0x5dd9
    jge short @..math_loc_5d7e.l5    ; 0x5dda
    mov ax, 1                        ; 0x5ddc
@..math_loc_5d7e.l5:
    mov byte [bx + 0x5d58], al       ; 0x5ddf
    mov ax, word [bp + 0x10]         ; 0x5de3
    push ax                          ; 0x5de6
    cmp ax, strict word 1            ; 0x5de7
    pop ax                           ; 0x5dea
    jge short @..math_loc_5d7e.l6    ; 0x5deb
    mov ax, 1                        ; 0x5ded
@..math_loc_5d7e.l6:
    mov byte [bx + 0x5d59], al       ; 0x5df0
    ret                              ; 0x5df4
