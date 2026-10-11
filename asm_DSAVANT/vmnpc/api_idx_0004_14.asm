api_idx_0004_14:
    mov ax, 0xfffc                   ; 0x8738
    call ds_dispatch_f40b            ; 0x873b
    mov word [bss_9e84], 0           ; 0x873e
    mov word [bp - 0x0002], 0        ; 0x8744
    jmp short @..api_idx_0004_14.l5  ; 0x8749
@..api_idx_0004_14.l1:
    mov bx, word [bp + 0x4]          ; 0x874b
    mov si, word [bp - 0x0002]       ; 0x874e
    mov al, byte [bx + si]           ; 0x8751
    sub ah, ah                       ; 0x8753
    mov word [bp - 0x0004], ax       ; 0x8755
    cmp ax, strict word 0x3f         ; 0x8758
    jne short @..api_idx_0004_14.l2  ; 0x875b
    mov word [bss_9e84], 1           ; 0x875d
    mov byte [bx + si], 0x20         ; 0x8763
    jmp short @..api_idx_0004_14.l4  ; 0x8766
@..api_idx_0004_14.l2:
    mov ax, word [bp - 0x0004]       ; 0x8768
    cmp ax, strict word 0x21         ; 0x876b
    je short @..api_idx_0004_14.l3   ; 0x876e
    cmp ax, strict word 0x2e         ; 0x8770
    je short @..api_idx_0004_14.l3   ; 0x8773
    cmp ax, strict word 0x2c         ; 0x8775
    jne short @..api_idx_0004_14.l4  ; 0x8778
@..api_idx_0004_14.l3:
    mov bx, word [bp + 0x4]          ; 0x877a
    mov si, word [bp - 0x0002]       ; 0x877d
    mov byte [bx + si], 0x20         ; 0x8780
@..api_idx_0004_14.l4:
    inc word [bp - 0x0002]           ; 0x8783
@..api_idx_0004_14.l5:
    push word [bp + 0x4]             ; 0x8786
    call ds_dispatch_fa90            ; 0x8789
    pop cx                           ; 0x878c
    cmp ax, word [bp - 0x0002]       ; 0x878d
    jg short @..api_idx_0004_14.l1   ; 0x8790
    ret                              ; 0x8792
