; auto-generated
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x3aac
    call aztec_csav                  ; 0x3aaf
    cmp word [bss_9566], byte 5      ; 0x3ab2
    jle short @..api_idx_0004_6.l1   ; 0x3ab7
    call loc_3a6a                    ; 0x3ab9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x3abc
    cmp byte [bx], 0                 ; 0x3abf
    jne short @..api_idx_0004_6.l2   ; 0x3ac2
    inc word [bss_9566]              ; 0x3ac4
    ret                              ; 0x3ac8
@..api_idx_0004_6.l2:
    mov ax, 2                        ; 0x3ac9
    push ax                          ; 0x3acc
    push bx                          ; 0x3acd
    call ds_loc_3aca                 ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    inc ax                           ; 0x3ad4
    mov cx, 2                        ; 0x3ad5
    cwd                              ; 0x3ad8
    idiv cx                          ; 0x3ad9
    mov cx, ax                       ; 0x3adb
    mov ax, 0x54                     ; 0x3add
    sub ax, cx                       ; 0x3ae0
    mov word [bp - 0x0002], ax       ; 0x3ae2
    push word [bp + 0x4]             ; 0x3ae5
    call aztec_strlen                ; 0x3ae8
    pop cx                           ; 0x3aeb
    dec ax                           ; 0x3aec
    mov word [bp - 0x0004], ax       ; 0x3aed
    mov bx, word [bp + 0x4]          ; 0x3af0
    mov si, ax                       ; 0x3af3
    mov al, byte [bx + si]           ; 0x3af5
    sub ah, ah                       ; 0x3af7
    jmp short @..api_idx_0004_6.l5   ; 0x3af9
@..api_idx_0004_6.l3:
    mov bx, word [bp + 0x4]          ; 0x3afb
    mov si, word [bp - 0x0004]       ; 0x3afe
    mov byte [bx + si], 0            ; 0x3b01
    mov word [bp - 0x0002], 4        ; 0x3b04
    jmp short @..api_idx_0004_6.l6   ; 0x3b09
@..api_idx_0004_6.l4:
    mov bx, word [bp + 0x4]          ; 0x3b0b
    mov si, word [bp - 0x0004]       ; 0x3b0e
    mov byte [bx + si], 0            ; 0x3b11
    mov ax, word [bss_9568]          ; 0x3b14
    mov word [bp - 0x0002], ax       ; 0x3b17
    jmp short @..api_idx_0004_6.l6   ; 0x3b1a
@..api_idx_0004_6.l5:
    cmp ax, strict word 0x24         ; 0x3b1c
    je short @..api_idx_0004_6.l3    ; 0x3b1f
    cmp ax, strict word 0x5e         ; 0x3b21
    je short @..api_idx_0004_6.l4    ; 0x3b24
@..api_idx_0004_6.l6:
    mov ax, 0xc                      ; 0x3b26
    imul word [bss_9566]             ; 0x3b29
    add ax, strict word 0x70         ; 0x3b2d
    push ax                          ; 0x3b30
    push word [bp - 0x0002]          ; 0x3b31
    call thunk                       ; 0x3b34
    add sp, byte 4                   ; 0x3b37
    mov ax, 0                        ; 0x3b3a
    push ax                          ; 0x3b3d
    mov ax, 0x55                     ; 0x3b3e
    push ax                          ; 0x3b41
    call thunk_3                     ; 0x3b42
    add sp, byte 4                   ; 0x3b45
    mov ax, 2                        ; 0x3b48
    push ax                          ; 0x3b4b
    push word [bp + 0x4]             ; 0x3b4c
    call ds_string_loc_3a95          ; 0x3b4f
    add sp, byte 4                   ; 0x3b52
    mov bx, word [bp + 0x4]          ; 0x3b55
    mov byte [bx], 0                 ; 0x3b58
    mov ax, word [bp - 0x0002]       ; 0x3b5b
    mov word [bss_9568], ax          ; 0x3b5e
    inc word [bss_9566]              ; 0x3b61
    ret                              ; 0x3b65
