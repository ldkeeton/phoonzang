; auto-generated
step_volume_setting:
    mov ax, 0                        ; 0x4b29
    call aztec_csav                  ; 0x4b2c
    cmp word [bp + 6], byte 0        ; 0x4b2f
    jge short .forward2              ; 0x4b33
    mov bx, word [bp + 4]            ; 0x4b35
    cmp byte [bx + volume_settings], 0 ; 0x4b38
    jbe short .forward1              ; 0x4b3d
    dec byte [bx + volume_settings]  ; 0x4b3f
.forward1:
    jmp short .return1               ; 0x4b43
.forward2:
    cmp word [bp + 6], byte 0        ; 0x4b45
    jle short .return1               ; 0x4b49
    mov bx, word [bp + 4]            ; 0x4b4b
    mov al, byte [bx + volume_settings] ; 0x4b4e
    sub ah, ah                       ; 0x4b52
    cmp ax, word [bp + 8]            ; 0x4b54
    jge short .return1               ; 0x4b57
    inc byte [bx + volume_settings]  ; 0x4b59
.return1:
    ret                              ; 0x4b5d
