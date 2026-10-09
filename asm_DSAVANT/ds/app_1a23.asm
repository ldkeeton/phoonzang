app_1a23: ; Aztec csav frame=0x0008
    mov ax, 0xfff8                   ; 0x1a23
    call aztec_csav                  ; 0x1a26
    mov ax, 0x248                    ; 0x1a29
    imul word [bp + 0x4]             ; 0x1a2c
    push ax                          ; 0x1a2f
    mov ax, 0xc                      ; 0x1a30
    imul word [bp + 0x6]             ; 0x1a33
    mov cx, ax                       ; 0x1a36
    pop ax                           ; 0x1a38
    add ax, cx                       ; 0x1a39
    mov bx, ax                       ; 0x1a3b
    mov al, byte [bx + 0x5c3b]       ; 0x1a3d
    sub ah, ah                       ; 0x1a41
    and ax, strict word 0xfffe       ; 0x1a43
    mov byte [bx + 0x5c3b], al       ; 0x1a46
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp + 0x4]             ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    mov byte [bx + 0x5e30], 0        ; 0x1a52
    mov byte [bx + 0x5e31], 0        ; 0x1a57
    mov word [bp - 0x0002], 0        ; 0x1a5c
@..app_1a23.l1:
    mov ax, 0x248                    ; 0x1a61
    imul word [bp + 0x4]             ; 0x1a64
    add ax, word [bp - 0x0002]       ; 0x1a67
    mov bx, ax                       ; 0x1a6a
    mov al, byte [bx + 0x5d8e]       ; 0x1a6c
    mov byte [bx + 0x5d9c], al       ; 0x1a70
    inc word [bp - 0x0002]           ; 0x1a74
    mov ax, word [bp - 0x0002]       ; 0x1a77
    cmp ax, strict word 0xe          ; 0x1a7a
    jl short @..app_1a23.l1          ; 0x1a7d
    mov word [bp - 0x0002], 0        ; 0x1a7f
loc_1a84:
    mov ax, 0x248                    ; 0x1a84
    imul word [bp + 0x4]             ; 0x1a87
    add ax, word [bp - 0x0002]       ; 0x1a8a
    mov bx, ax                       ; 0x1a8d
    mov al, byte [bx + 0x5d48]       ; 0x1a8f
    sub ah, ah                       ; 0x1a93
    cmp ax, word [bp + 0x6]          ; 0x1a95
    je short loc_1a9d                ; 0x1a98
    jmp near loc_1b1c                ; 0x1a9a
loc_1a9d:
    mov byte [bx + 0x5d48], 0xff     ; 0x1a9d
    mov ax, word [bp - 0x0002]       ; 0x1aa2
    jmp short loc_1b0f               ; 0x1aa5
