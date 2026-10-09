api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x4f00
    call ds_dispatch_f40b            ; 0x4f03
    mov word [bp - 0x0002], 0        ; 0x4f06
@..api_idx_0006_2.l1:
    mov ax, 0x248                    ; 0x4f0b
    imul word [bp + 0x4]             ; 0x4f0e
    add ax, word [bp - 0x0002]       ; 0x4f11
    mov bx, ax                       ; 0x4f14
    mov byte [bx + 0x5d8e], 0        ; 0x4f16
    mov ax, 0x248                    ; 0x4f1b
    imul word [bp + 0x4]             ; 0x4f1e
    mov bx, ax                       ; 0x4f21
    mov ax, word [bx + 0x5c18]       ; 0x4f23
    push ax                          ; 0x4f27
    mov al, byte [bx + 0x5e3b]       ; 0x4f28
    sub ah, ah                       ; 0x4f2c
    mov cx, ax                       ; 0x4f2e
    pop ax                           ; 0x4f30
    cmp ax, cx                       ; 0x4f31
    jge short @..api_idx_0006_2.l2   ; 0x4f33
    mov ax, cx                       ; 0x4f35
    jmp short @..api_idx_0006_2.l3   ; 0x4f37
@..api_idx_0006_2.l2:
    mov ax, word [bx + 0x5c18]       ; 0x4f39
@..api_idx_0006_2.l3:
    mov word [bp - 0x0006], ax       ; 0x4f3d
    mov ax, 0x10                     ; 0x4f40
    cmp word [bp - 0x0006], byte 0x10 ; 0x4f43
    jg short @..api_idx_0006_2.l4    ; 0x4f47
    mov ax, word [bp - 0x0006]       ; 0x4f49
    dec ax                           ; 0x4f4c
@..api_idx_0006_2.l4:
    mov word [bp - 0x0006], ax       ; 0x4f4d
    mov bx, word [bp + 0x8]          ; 0x4f50
    mov si, word [bp - 0x0002]       ; 0x4f53
    mov al, byte [bx + si]           ; 0x4f56
    cbw                              ; 0x4f58
    add ax, strict word 0xffd0       ; 0x4f59
    imul word [bp - 0x0006]          ; 0x4f5c
    push ax                          ; 0x4f5f
    mov bx, word [bp + 0x6]          ; 0x4f60
    mov al, byte [bx + si]           ; 0x4f63
    cbw                              ; 0x4f65
    mov cx, ax                       ; 0x4f66
    shl ax, 1                        ; 0x4f68
    shl ax, 1                        ; 0x4f6a
    mov cx, ax                       ; 0x4f6c
    pop ax                           ; 0x4f6e
    add ax, cx                       ; 0x4f6f
    add ax, 0xfefc                   ; 0x4f71
    mov word [bp - 0x0004], ax       ; 0x4f74
    push ax                          ; 0x4f77
    push si                          ; 0x4f78
    mov ax, 0                        ; 0x4f79
    push ax                          ; 0x4f7c
    push word [bp + 0x4]             ; 0x4f7d
    call loc_4ead                    ; 0x4f80
    add sp, byte 8                   ; 0x4f83
    inc word [bp - 0x0002]           ; 0x4f86
    mov ax, word [bp - 0x0002]       ; 0x4f89
    cmp ax, strict word 0xe          ; 0x4f8c
    jge short @..api_idx_0006_2.l5   ; 0x4f8f
    jmp near @..api_idx_0006_2.l1    ; 0x4f91
@..api_idx_0006_2.l5:
    ret                              ; 0x4f94
