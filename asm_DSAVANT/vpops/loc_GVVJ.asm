; auto-generated
loc_GVVJ:
    mov ax, 0                        ; 0x1c11
    call aztec_csav                  ; 0x1c14
    les bx, word [dseg_0002]         ; 0x1c17
    mov ax, word [es:bx]             ; 0x1c1b
    mov dx, word [es:bx + 0x2]       ; 0x1c1e
    mov word [bss_9090], dx          ; 0x1c22
    mov word [bss_908e], ax          ; 0x1c26
    mov ax, word [bss_908e]          ; 0x1c29
    mov dx, word [bss_9090]          ; 0x1c2c
    sub ax, word [bss_908a]          ; 0x1c30
    sbb dx, word [bss_908c]          ; 0x1c34
    mov word [bss_9094], dx          ; 0x1c38
    mov word [bss_9092], ax          ; 0x1c3c
    mov ax, word [bss_90d6]          ; 0x1c3f
    cwd                              ; 0x1c42
    mov cx, ax                       ; 0x1c43
    mov bx, dx                       ; 0x1c45
    mov ax, word [bss_9092]          ; 0x1c47
    mov dx, word [bss_9094]          ; 0x1c4a
    cmp bx, dx                       ; 0x1c4e
    jg short @..loc_GVVJ.l1          ; 0x1c50
    jne short @..loc_GVVJ.l2         ; 0x1c52
    cmp cx, ax                       ; 0x1c54
    jbe short @..loc_GVVJ.l2         ; 0x1c56
@..loc_GVVJ.l1:
    jmp short @..loc_GVVJ.l3         ; 0x1c58
@..loc_GVVJ.l2:
    mov ax, word [bss_908e]          ; 0x1c5a
    mov dx, word [bss_9090]          ; 0x1c5d
    mov word [bss_908c], dx          ; 0x1c61
    mov word [bss_908a], ax          ; 0x1c65
    call api_idx_000a_ULVM           ; 0x1c68
    push word [bp + 0x4]             ; 0x1c6b
    call api_idx_000c_PVOR           ; 0x1c6e
    pop cx                           ; 0x1c71
    push word [bp + 0x6]             ; 0x1c72
    call api_idx_0002_PGOV           ; 0x1c75
    pop cx                           ; 0x1c78
    mov ax, 1                        ; 0x1c79
    push ax                          ; 0x1c7c
    mov ax, 0x73                     ; 0x1c7d
    push ax                          ; 0x1c80
    mov ax, 0x32                     ; 0x1c81
    push ax                          ; 0x1c84
    call draw_party_slot_letters     ; 0x1c85
    add sp, byte 6                   ; 0x1c88
    mov ax, 0xc5                     ; 0x1c8b
    push ax                          ; 0x1c8e
    mov ax, 0x93                     ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, 0x73                     ; 0x1c93
    push ax                          ; 0x1c96
    mov ax, 0x32                     ; 0x1c97
    push ax                          ; 0x1c9a
    call thunk_4                     ; 0x1c9b
    add sp, byte 8                   ; 0x1c9e
@..loc_GVVJ.l3:
    ret                              ; 0x1ca1
