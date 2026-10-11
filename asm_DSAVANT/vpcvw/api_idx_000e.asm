api_idx_000e:
    mov ax, 0xfff2                   ; 0x008b
    call ds_dispatch_f40b            ; 0x008e
    cmp word [bss_8f20], byte 0      ; 0x0091
    jg short @..api_idx_000e.l1      ; 0x0096
    jmp near @..api_idx_000e.l8      ; 0x0098
@..api_idx_000e.l1:
    mov ax, word [bss_82ee]          ; 0x009b
    mov cx, word [bss_8f20]          ; 0x009e
    dec cx                           ; 0x00a2
    sub ax, cx                       ; 0x00a3
    add ax, strict word 6            ; 0x00a5
    mov cx, 4                        ; 0x00a8
    cwd                              ; 0x00ab
    idiv cx                          ; 0x00ac
    mov word [bp - 0x0002], dx       ; 0x00ae
    mov ax, dx                       ; 0x00b1
    jmp short @..api_idx_000e.l6     ; 0x00b3
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x00b5
    mov byte [bp - 0x000d], 2        ; 0x00b9
    mov ax, 5                        ; 0x00bd
    cmp word [bp - 0x0002], byte 0   ; 0x00c0
    jne short @..api_idx_000e.l3     ; 0x00c4
    mov ax, 4                        ; 0x00c6
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x00c9
    mov byte [bp - 0x000b], 0        ; 0x00cc
    mov word [bp - 0x0004], 0        ; 0x00d0
    jmp short @..api_idx_000e.l7     ; 0x00d5
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x00d7
    mov byte [bp - 0x000d], 0        ; 0x00db
    mov ax, 0                        ; 0x00df
    cmp word [bp - 0x0002], byte 3   ; 0x00e2
    jne short @..api_idx_000e.l5     ; 0x00e6
    mov ax, 1                        ; 0x00e8
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x00eb
    jmp short @..api_idx_000e.l7     ; 0x00ee
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x00f0
    je short @..api_idx_000e.l2      ; 0x00f3
    cmp ax, strict word 1            ; 0x00f5
    je short @..api_idx_000e.l4      ; 0x00f8
    cmp ax, strict word 2            ; 0x00fa
    je short @..api_idx_000e.l2      ; 0x00fd
    cmp ax, strict word 3            ; 0x00ff
    je short @..api_idx_000e.l4      ; 0x0102
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x0104
    push ax                          ; 0x0107
    push ax                          ; 0x0108
    lea ax, word [bp - 0x000e]       ; 0x0109
    push ax                          ; 0x010c
    push word [bp - 0x0004]          ; 0x010d
    mov ax, 0x8f                     ; 0x0110
    push ax                          ; 0x0113
    mov ax, 0x21                     ; 0x0114
    push ax                          ; 0x0117
    mov ax, 0xf8                     ; 0x0118
    push ax                          ; 0x011b
    mov ax, 0x48                     ; 0x011c
    push ax                          ; 0x011f
    mov al, byte [bp - 0x000e]       ; 0x0120
    sub ah, ah                       ; 0x0123
    mov bx, ax                       ; 0x0125
    mov al, byte [bx + 0x6eb5]       ; 0x0127
    sub ah, ah                       ; 0x012b
    inc ax                           ; 0x012d
    push ax                          ; 0x012e
    shl bx, 1                        ; 0x012f
    mov ax, bx                       ; 0x0131
    add ax, word [bp - 0x0004]       ; 0x0133
    mov bx, ax                       ; 0x0136
    mov al, byte [bx + 0x6e6c]       ; 0x0138
    sub ah, ah                       ; 0x013c
    inc ax                           ; 0x013e
    push ax                          ; 0x013f
    mov ax, 3                        ; 0x0140
    push ax                          ; 0x0143
    call ds_dispatch_efd1            ; 0x0144
    add sp, byte 0x16                ; 0x0147
@..api_idx_000e.l8:
    ret                              ; 0x014a
