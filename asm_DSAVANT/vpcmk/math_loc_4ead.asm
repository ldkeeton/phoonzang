math_loc_4ead:
    mov ax, 0                        ; 0x4ead
    call ds_dispatch_f40b            ; 0x4eb0
    mov ax, 0x7d                     ; 0x4eb3
    push ax                          ; 0x4eb6
    mov ax, 0                        ; 0x4eb7
    push ax                          ; 0x4eba
    mov ax, 0x248                    ; 0x4ebb
    imul word [bp + 0x4]             ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, 0xe                      ; 0x4ec2
    imul word [bp + 0x6]             ; 0x4ec5
    mov cx, ax                       ; 0x4ec8
    pop ax                           ; 0x4eca
    add ax, cx                       ; 0x4ecb
    add ax, word [bp + 0x8]          ; 0x4ecd
    mov bx, ax                       ; 0x4ed0
    mov al, byte [bx + 0x5d8e]       ; 0x4ed2
    sub ah, ah                       ; 0x4ed6
    add ax, word [bp + 0xa]          ; 0x4ed8
    push ax                          ; 0x4edb
    call ds_dispatch_b7c2            ; 0x4edc
    add sp, byte 6                   ; 0x4edf
    push ax                          ; 0x4ee2
    mov ax, 0x248                    ; 0x4ee3
    imul word [bp + 0x4]             ; 0x4ee6
    mov cx, ax                       ; 0x4ee9
    mov ax, 0xe                      ; 0x4eeb
    imul word [bp + 0x6]             ; 0x4eee
    mov dx, ax                       ; 0x4ef1
    add cx, ax                       ; 0x4ef3
    add cx, word [bp + 0x8]          ; 0x4ef5
    mov bx, cx                       ; 0x4ef8
    pop ax                           ; 0x4efa
    mov byte [bx + 0x5d8e], al       ; 0x4efb
    ret                              ; 0x4eff
