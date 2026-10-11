api_idx_0002_19:
    mov ax, 0xfffe                   ; 0x8e6a
    call ds_dispatch_f40b            ; 0x8e6d
    mov bx, word [dseg_0e12]         ; 0x8e70
    mov si, word [dseg_8f3e]         ; 0x8e74
    mov al, byte [bx + si + 0xb40]   ; 0x8e78
    sub ah, ah                       ; 0x8e7c
    mov word [bp - 0x0002], ax       ; 0x8e7e
@..api_idx_0002_19.l1:
    push word [bp - 0x0002]          ; 0x8e81
    push word [dseg_8f3e]            ; 0x8e84
    push word [dseg_8f40]            ; 0x8e88
    push word [dseg_8f42]            ; 0x8e8c
    call api_idx_0002_11             ; 0x8e90
    add sp, byte 8                   ; 0x8e93
    mov word [bp - 0x0002], ax       ; 0x8e96
    cmp ax, strict word 0xffff       ; 0x8e99
    jne short @..api_idx_0002_19.l2  ; 0x8e9c
    jmp near @..api_idx_0002_19.l6   ; 0x8e9e
@..api_idx_0002_19.l2:
    mov bx, word [dseg_0e12]         ; 0x8ea1
    mov si, ax                       ; 0x8ea5
    cmp byte [bx + si + 0x5a0], 3    ; 0x8ea7
    jne short @..api_idx_0002_19.l3  ; 0x8eac
    push ax                          ; 0x8eae
    call api_idx_0002_18             ; 0x8eaf
    pop cx                           ; 0x8eb2
    cmp ax, strict word 1            ; 0x8eb3
    jne short @..api_idx_0002_19.l3  ; 0x8eb6
    ret                              ; 0x8eb8
@..api_idx_0002_19.l3:
    mov bx, word [dseg_0e12]         ; 0x8eb9
    mov si, word [bp - 0x0002]       ; 0x8ebd
    cmp byte [bx + si + 0x5a0], 7    ; 0x8ec0
    jne short @..api_idx_0002_19.l5  ; 0x8ec5
    mov ax, 2                        ; 0x8ec7
    push ax                          ; 0x8eca
    mov ax, word [dseg_82ee]         ; 0x8ecb
    shl ax, 1                        ; 0x8ece
    push ax                          ; 0x8ed0
    shl si, 1                        ; 0x8ed1
    push word [bx + si + 0x3c0]      ; 0x8ed3
    call ds_dispatch_ed3a            ; 0x8ed7
    add sp, byte 6                   ; 0x8eda
    cmp ax, strict word 1            ; 0x8edd
    je short @..api_idx_0002_19.l4   ; 0x8ee0
    mov ax, 2                        ; 0x8ee2
    push ax                          ; 0x8ee5
    mov ax, word [dseg_82ee]         ; 0x8ee6
    shl ax, 1                        ; 0x8ee9
    push ax                          ; 0x8eeb
    mov ax, word [bp - 0x0002]       ; 0x8eec
    shl ax, 1                        ; 0x8eef
    mov si, ax                       ; 0x8ef1
    mov bx, word [dseg_0e12]         ; 0x8ef3
    push word [bx + si + 0x3c0]      ; 0x8ef7
    call ds_dispatch_ed3a            ; 0x8efb
    add sp, byte 6                   ; 0x8efe
    cmp ax, strict word 2            ; 0x8f01
    jne short @..api_idx_0002_19.l5  ; 0x8f04
@..api_idx_0002_19.l4:
    mov ax, word [bp - 0x0002]       ; 0x8f06
    mov word [dseg_84a0], ax         ; 0x8f09
    mov word [dseg_830a], 0x1a       ; 0x8f0c
    ret                              ; 0x8f12
@..api_idx_0002_19.l5:
    inc word [bp - 0x0002]           ; 0x8f13
    jmp near @..api_idx_0002_19.l1   ; 0x8f16
@..api_idx_0002_19.l6:
    ret                              ; 0x8f19
