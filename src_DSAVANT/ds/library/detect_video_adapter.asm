; auto-generated
detect_video_adapter:
    mov ah, 0xf                      ; 0x30f7
    int 0x10 ; BIOS video: get video mode
    mov byte [cs:saved_video_mode - IMAGE_BASE], al ; 0x30fb
    mov ax, word [bp + 4]            ; 0x30ff
    and ax, strict word 1            ; 0x3102
    jne short .forward1              ; 0x3105
    jmp near select_ega_driver       ; 0x3107
.forward1:
    mov ax, 0                        ; 0x310a
    push ds                          ; 0x310d
    mov ds, ax                       ; 0x310e
    mov bx, 0x487                    ; 0x3110
    mov al, byte [bx]                ; 0x3113
    pop ds                           ; 0x3115
    or al, al                        ; 0x3116
    je short .forward3               ; 0x3118
    xor bx, bx                       ; 0x311a
    mov ax, 0x1a00                   ; 0x311c
    int 0x10 ; BIOS video
    cmp bl, 7                        ; 0x3121
    je short .forward2               ; 0x3124
    cmp bh, 7                        ; 0x3126
    je short .forward2               ; 0x3129
    cmp bl, 8                        ; 0x312b
    je short .forward2               ; 0x312e
    cmp bh, 8                        ; 0x3130
    jne short .forward3              ; 0x3133
.forward2:
    jmp near select_vga_driver       ; 0x3135
.forward3:
    mov word [bp - 2], 0             ; 0x3138
    ret                              ; 0x313d
