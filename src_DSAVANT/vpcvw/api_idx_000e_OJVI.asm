; auto-generated
api_idx_000e_OJVI:
    mov ax, 0xfff2                   ; 0x4505
    call aztec_csav                  ; 0x4508
    mov bx, word [bp + 4]            ; 0x450b
    mov al, byte [bx + 4]            ; 0x450e
    sub ah, ah                       ; 0x4511
    mov bx, ax                       ; 0x4513
    cmp byte [bx + cell_overlay_code + 0x58], 1 ; 0x4515
    jne short @..api_idx_000e_OJVI.l1 ; 0x451a
    mov bx, word [bp + 4]            ; 0x451c
    cmp byte [bx + 6], 1             ; 0x451f
    jbe short @..api_idx_000e_OJVI.l1 ; 0x4523
    mov ax, 0xc                      ; 0x4525
    push ax                          ; 0x4528
    push word [bp + 6]               ; 0x4529
    push bx                          ; 0x452c
    call aztec_movmem                ; 0x452d
    add sp, byte 6                   ; 0x4530
    push word [bp + 8]               ; 0x4533
    push word [bp + 0xa]             ; 0x4536
    call aztec_strcpy                ; 0x4539
    add sp, byte 4                   ; 0x453c
    mov bx, word [bp + 4]            ; 0x453f
    mov al, byte [bx + 6]            ; 0x4542
    sub ah, ah                       ; 0x4545
    mov cx, 2                        ; 0x4547
    cwd                              ; 0x454a
    idiv cx                          ; 0x454b
    mov word [bp - 2], ax            ; 0x454d
    mov al, byte [bx + 6]            ; 0x4550
    sub ah, ah                       ; 0x4553
    mov cx, ax                       ; 0x4555
    mov ax, word [bp - 2]            ; 0x4557
    sub cx, ax                       ; 0x455a
    mov ax, cx                       ; 0x455c
    mov byte [bx + 6], al            ; 0x455e
    mov al, byte [bp - 2]            ; 0x4561
    mov bx, word [bp + 6]            ; 0x4564
    mov byte [bx + 6], al            ; 0x4567
    mov ax, 0                        ; 0x456a
    push ax                          ; 0x456d
    call play_sound_effect           ; 0x456e
    pop cx                           ; 0x4571
@..api_idx_000e_OJVI.l1:
    ret                              ; 0x4572
