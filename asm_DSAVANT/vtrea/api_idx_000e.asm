api_idx_000e:
    mov ax, 0xfff2                   ; 0x067b
    call ds_dispatch_f40b            ; 0x067e
    cmp word [dseg_8f20], byte 0     ; 0x0681
    jg short @..api_idx_000e.l1      ; 0x0686
    jmp near @..api_idx_000e.l8      ; 0x0688
@..api_idx_000e.l1:
    mov ax, word [dseg_82ee]         ; 0x068b
    mov cx, word [dseg_8f20]         ; 0x068e
    dec cx                           ; 0x0692
    sub ax, cx                       ; 0x0693
    add ax, strict word 6            ; 0x0695
    mov cx, 4                        ; 0x0698
    cwd                              ; 0x069b
    idiv cx                          ; 0x069c
    mov word [bp - 0x0002], dx       ; 0x069e
    mov ax, dx                       ; 0x06a1
    jmp short @..api_idx_000e.l6     ; 0x06a3
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x06a5
    mov byte [bp - 0x000d], 2        ; 0x06a9
    mov ax, 5                        ; 0x06ad
    cmp word [bp - 0x0002], byte 0   ; 0x06b0
    jne short @..api_idx_000e.l3     ; 0x06b4
    mov ax, 4                        ; 0x06b6
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x06b9
    mov byte [bp - 0x000b], 0        ; 0x06bc
    mov word [bp - 0x0004], 0        ; 0x06c0
    jmp short @..api_idx_000e.l7     ; 0x06c5
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x06c7
    mov byte [bp - 0x000d], 0        ; 0x06cb
    mov ax, 0                        ; 0x06cf
    cmp word [bp - 0x0002], byte 3   ; 0x06d2
    jne short @..api_idx_000e.l5     ; 0x06d6
    mov ax, 1                        ; 0x06d8
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x06db
    jmp short @..api_idx_000e.l7     ; 0x06de
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x06e0
    je short @..api_idx_000e.l2      ; 0x06e3
    cmp ax, strict word 1            ; 0x06e5
    je short @..api_idx_000e.l4      ; 0x06e8
    cmp ax, strict word 2            ; 0x06ea
    je short @..api_idx_000e.l2      ; 0x06ed
    cmp ax, strict word 3            ; 0x06ef
    je short @..api_idx_000e.l4      ; 0x06f2
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x06f4
    push ax                          ; 0x06f7
    push ax                          ; 0x06f8
    lea ax, word [bp - 0x000e]       ; 0x06f9
    push ax                          ; 0x06fc
    push word [bp - 0x0004]          ; 0x06fd
    mov ax, 0x8f                     ; 0x0700
    push ax                          ; 0x0703
    mov ax, 0x21                     ; 0x0704
    push ax                          ; 0x0707
    mov ax, 0xf8                     ; 0x0708
    push ax                          ; 0x070b
    mov ax, 0x48                     ; 0x070c
    push ax                          ; 0x070f
    mov al, byte [bp - 0x000e]       ; 0x0710
    sub ah, ah                       ; 0x0713
    mov bx, ax                       ; 0x0715
    mov al, byte [bx + 0x6eb5]       ; 0x0717
    sub ah, ah                       ; 0x071b
    inc ax                           ; 0x071d
    push ax                          ; 0x071e
    shl bx, 1                        ; 0x071f
    mov ax, bx                       ; 0x0721
    add ax, word [bp - 0x0004]       ; 0x0723
    mov bx, ax                       ; 0x0726
    mov al, byte [bx + 0x6e6c]       ; 0x0728
    sub ah, ah                       ; 0x072c
    inc ax                           ; 0x072e
    push ax                          ; 0x072f
    mov ax, 3                        ; 0x0730
    push ax                          ; 0x0733
    call ds_dispatch_efd1            ; 0x0734
    add sp, byte 0x16                ; 0x0737
@..api_idx_000e.l8:
    ret                              ; 0x073a
