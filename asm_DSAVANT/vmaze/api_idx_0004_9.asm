api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x6eb1
    call ds_dispatch_f40b            ; 0x6eb4
@..api_idx_0004_9.l1:
    mov ax, 0x20                     ; 0x6eb7
    push ax                          ; 0x6eba
    push word [bp + 0x4]             ; 0x6ebb
    call ds_dispatch_ee4a            ; 0x6ebe
    add sp, byte 4                   ; 0x6ec1
    mov word [bp - 0x0002], ax       ; 0x6ec4
    cmp ax, strict word 0xffff       ; 0x6ec7
    je short @..api_idx_0004_9.l4    ; 0x6eca
    mov bx, word [bp + 0x4]          ; 0x6ecc
    mov si, ax                       ; 0x6ecf
    mov byte [bx + si], 0            ; 0x6ed1
@..api_idx_0004_9.l2:
    mov ax, 0x5f                     ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [bp + 0x4]             ; 0x6ed8
    call ds_dispatch_ee4a            ; 0x6edb
    add sp, byte 4                   ; 0x6ede
    mov word [bp - 0x0004], ax       ; 0x6ee1
    cmp ax, strict word 0xffff       ; 0x6ee4
    je short @..api_idx_0004_9.l3    ; 0x6ee7
    mov bx, word [bp + 0x4]          ; 0x6ee9
    mov si, ax                       ; 0x6eec
    mov byte [bx + si], 0x20         ; 0x6eee
    jmp short @..api_idx_0004_9.l2   ; 0x6ef1
@..api_idx_0004_9.l3:
    push word [bp + 0x4]             ; 0x6ef3
    call api_idx_0090                ; 0x6ef6
    pop cx                           ; 0x6ef9
    mov ax, word [bp - 0x0002]       ; 0x6efa
    add word [bp + 0x4], ax          ; 0x6efd
    add word [bp + 0x4], byte 1      ; 0x6f00
    jmp short @..api_idx_0004_9.l1   ; 0x6f04
@..api_idx_0004_9.l4:
    mov bx, word [bp + 0x4]          ; 0x6f06
    cmp byte [bx], 0                 ; 0x6f09
    je short @..api_idx_0004_9.l5    ; 0x6f0c
    push bx                          ; 0x6f0e
    call api_idx_0090                ; 0x6f0f
    pop cx                           ; 0x6f12
@..api_idx_0004_9.l5:
    ret                              ; 0x6f13
