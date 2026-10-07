api_idx_0002_19:
    mov ax, 0xfffe                   ; 0x8e6a
    call ds_dispatch_f40b            ; 0x8e6d
    mov bx, word [data_0e12]         ; 0x8e70
    mov si, word [data_8f3e]         ; 0x8e74
    mov al, byte [bx + si + 0xb40]   ; 0x8e78
    sub ah, ah                       ; 0x8e7c
    mov word [bp - 0x0002], ax       ; 0x8e7e
@..api_idx_0002_19.l1:
    push word [bp - 0x0002]          ; 0x8e81
    push word [data_8f3e]            ; 0x8e84
    push word [data_8f40]            ; 0x8e88
    push word [data_8f42]            ; 0x8e8c
    call api_idx_0002_11             ; 0x8e90
    add sp, byte 8                   ; 0x8e93
    mov word [bp - 0x0002], ax       ; 0x8e96
    cmp ax, strict word 0xffff       ; 0x8e99
    jne short @..api_idx_0002_19.l2  ; 0x8e9c
    jmp near @..api_idx_0002_19.l6   ; 0x8e9e
@..api_idx_0002_19.l2:
    mov bx, word [data_0e12]         ; 0x8ea1
    mov si, ax                       ; 0x8ea5
    cmp byte [bx + si + 0x5a0], 3    ; 0x8ea7
    jne short @..api_idx_0002_19.l3  ; 0x8eac
    push ax                          ; 0x8eae
    call api_idx_0002_18             ; 0x8eaf
    pop cx                           ; 0x8eb2
    cmp ax, strict word 1            ; 0x8eb3
    jne short @..api_idx_0002_19.l3  ; 0x8eb6
    ret                              ; 0x8eb8
