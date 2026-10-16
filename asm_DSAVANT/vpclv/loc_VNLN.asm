; auto-generated
loc_VNLN:
    push ax                          ; 0x4556
    mov ax, 0                        ; 0x4557
    push ax                          ; 0x455a
    push word [bp + 0x4]             ; 0x455b
    call api_idx_0002_SLJI           ; 0x455e
    add sp, byte 8                   ; 0x4561
    mov ax, 0x1f                     ; 0x4564
    push ax                          ; 0x4567
    mov ax, 3                        ; 0x4568
    push ax                          ; 0x456b
    push ax                          ; 0x456c
    push word [bp + 0x4]             ; 0x456d
    call api_idx_0002_SLJI           ; 0x4570
    add sp, byte 8                   ; 0x4573
    jmp short @..loc_JPIR.l2         ; 0x4576
