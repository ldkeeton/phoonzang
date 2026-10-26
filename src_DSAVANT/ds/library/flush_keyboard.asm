; auto-generated
flush_keyboard:
    push bp                          ; 0x3e5e
    mov bp, sp                       ; 0x3e5f
    cld                              ; 0x3e61
    push di                          ; 0x3e62
    push si                          ; 0x3e63
    push es                          ; 0x3e64
    mov ax, ds                       ; 0x3e65
    mov es, ax                       ; 0x3e67
    mov ax, 0                        ; 0x3e69
    mov word [cs:key_queue - IMAGE_BASE], ax ; 0x3e6c
.back1:
    mov ah, 1                        ; 0x3e70
    int 0x16 ; BIOS keyboard: check keystroke
    je short .forward1               ; 0x3e74
    mov ah, 0                        ; 0x3e76
    int 0x16 ; BIOS keyboard: read keystroke
    jmp short .back1                 ; 0x3e7a
.forward1:
    call far [cs:gfx_drv_slot_10 - IMAGE_BASE] ; 0x3e7c
    pop es                           ; 0x3e81
    pop si                           ; 0x3e82
    pop di                           ; 0x3e83
    mov sp, bp                       ; 0x3e84
    pop bp                           ; 0x3e86
    ret                              ; 0x3e87
