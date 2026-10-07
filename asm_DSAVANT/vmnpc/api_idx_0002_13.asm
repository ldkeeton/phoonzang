api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x9bcc
    db 0xe8, 0x39, 0x58 ; call 0xf40b
    mov al, byte [data_91c7]         ; 0x9bd2
    sub ah, ah                       ; 0x9bd5
    cmp ax, word [bp + 0x4]          ; 0x9bd7
    jne short @..api_idx_0002_13.l1  ; 0x9bda
    mov ax, data_95a8                ; 0x9bdc
    push ax                          ; 0x9bdf
    mov ax, 0x790                    ; 0x9be0
    push ax                          ; 0x9be3
    db 0xe8, 0x54, 0x19 ; call 0xb53b
    add sp, byte 4                   ; 0x9be7
    jmp near @..api_idx_0002_13.l4   ; 0x9bea
@..api_idx_0002_13.l1:
    mov al, byte [data_91c7]         ; 0x9bed
    sub ah, ah                       ; 0x9bf0
    mov cx, 0xc                      ; 0x9bf2
    imul cx                          ; 0x9bf5
    add ax, word [bp + 0x4]          ; 0x9bf7
    mov bx, ax                       ; 0x9bfa
    mov al, byte [bx - 0x7622]       ; 0x9bfc
    cbw                              ; 0x9c00
    mov word [bp - 0x0002], ax       ; 0x9c01
    cmp word [bp + 0x4], byte 0      ; 0x9c04
    jne short @..api_idx_0002_13.l2  ; 0x9c08
    mov al, byte [data_91c7]         ; 0x9c0a
    sub ah, ah                       ; 0x9c0d
    mov bx, ax                       ; 0x9c0f
    mov al, byte [bx - 0x7622]       ; 0x9c11
    cbw                              ; 0x9c15
    mov word [bp - 0x0002], ax       ; 0x9c16
@..api_idx_0002_13.l2:
    mov ax, data_95a8                ; 0x9c19
    push ax                          ; 0x9c1c
    mov al, byte [data_91c7]         ; 0x9c1d
    sub ah, ah                       ; 0x9c20
    mov cx, 3                        ; 0x9c22
    imul cx                          ; 0x9c25
    mov cx, 0                        ; 0x9c27
    cmp word [bp - 0x0002], byte 0xe7 ; 0x9c2a
    jl short @..api_idx_0002_13.l3   ; 0x9c2e
    mov cx, data_0002                ; 0x9c30
    cmp word [bp - 0x0002], byte 0x19 ; 0x9c33
    jge short @..api_idx_0002_13.l3  ; 0x9c37
    mov cx, 1                        ; 0x9c39
@..api_idx_0002_13.l3:
    add ax, cx                       ; 0x9c3c
    add ax, 0x76c                    ; 0x9c3e
    push ax                          ; 0x9c41
    db 0xe8, 0xf6, 0x18 ; call 0xb53b
    add sp, byte 4                   ; 0x9c45
    mov ax, 0x9d10                   ; 0x9c48
    push ax                          ; 0x9c4b
    mov ax, word [bp + 0x4]          ; 0x9c4c
    add ax, 0x79e                    ; 0x9c4f
    push ax                          ; 0x9c52
    db 0xe8, 0xe5, 0x18 ; call 0xb53b
    add sp, byte 4                   ; 0x9c56
    mov ax, 0x24                     ; 0x9c59
    push ax                          ; 0x9c5c
    mov ax, 0x9d10                   ; 0x9c5d
    push ax                          ; 0x9c60
    mov ax, data_95a8                ; 0x9c61
    push ax                          ; 0x9c64
    db 0xe8, 0x98, 0x16 ; call 0xb300
    add sp, byte 6                   ; 0x9c68
@..api_idx_0002_13.l4:
    mov ax, data_95a8                ; 0x9c6b
    push ax                          ; 0x9c6e
    call loc_9587                    ; 0x9c6f
    pop cx                           ; 0x9c72
    call api_idx_000e_2              ; 0x9c73
    call api_idx_0004_2              ; 0x9c76
    ret                              ; 0x9c79
