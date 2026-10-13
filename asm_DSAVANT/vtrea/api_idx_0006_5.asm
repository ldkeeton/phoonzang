api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x5e88
    call aztec_csav                  ; 0x5e8b
    mov ax, word [bp + 0x8]          ; 0x5e8e
    xchg al, ah                      ; 0x5e91
    sub al, al                       ; 0x5e93
    mov dx, word [bp + 0xa]          ; 0x5e95
    mov cx, 4                        ; 0x5e98
    shl dx, cl                       ; 0x5e9b
    mov cx, dx                       ; 0x5e9d
    add ax, cx                       ; 0x5e9f
    add ax, word [bp + 0xc]          ; 0x5ea1
    mov word [bp - 0x0004], ax       ; 0x5ea4
    mov ax, word [bss_0e10]          ; 0x5ea7
    mov word [bp - 0x0006], ax       ; 0x5eaa
    mov word [bp - 0x0002], 0        ; 0x5ead
    jmp short @..api_idx_0006_5.l5   ; 0x5eb2
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]       ; 0x5eb4
    mov al, byte [bx]                ; 0x5eb7
    sub ah, ah                       ; 0x5eb9
    cmp ax, word [bp + 0x4]          ; 0x5ebb
    jne short @..api_idx_0006_5.l4   ; 0x5ebe
    mov al, byte [bx + 0x1]          ; 0x5ec0
    sub ah, ah                       ; 0x5ec3
    cmp ax, word [bp + 0x6]          ; 0x5ec5
    jne short @..api_idx_0006_5.l4   ; 0x5ec8
    cmp word [bp + 0x6], byte 6      ; 0x5eca
    jne short @..api_idx_0006_5.l3   ; 0x5ece
    mov ax, word [bx + 0x2]          ; 0x5ed0
    cmp ax, word [bp + 0x8]          ; 0x5ed3
    jne short @..api_idx_0006_5.l2   ; 0x5ed6
    mov ax, word [bp - 0x0002]       ; 0x5ed8
    ret                              ; 0x5edb
@..api_idx_0006_5.l2:
    jmp short @..api_idx_0006_5.l4   ; 0x5edc
@..api_idx_0006_5.l3:
    mov ax, word [bx + 0x2]          ; 0x5ede
    cmp ax, word [bp - 0x0004]       ; 0x5ee1
    jne short @..api_idx_0006_5.l4   ; 0x5ee4
    mov ax, word [bp - 0x0002]       ; 0x5ee6
    ret                              ; 0x5ee9
@..api_idx_0006_5.l4:
    add word [bp - 0x0006], byte 6   ; 0x5eea
    inc word [bp - 0x0002]           ; 0x5eee
@..api_idx_0006_5.l5:
    mov ax, word [bp - 0x0002]       ; 0x5ef1
    cmp ax, word [bss_590e]          ; 0x5ef4
    jl short @..api_idx_0006_5.l1    ; 0x5ef8
    mov ax, 0xffff                   ; 0x5efa
    ret                              ; 0x5efd
