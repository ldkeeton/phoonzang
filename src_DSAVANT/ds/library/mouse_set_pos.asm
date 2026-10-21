; auto-generated
mouse_set_pos:
    push bp                          ; 0x42b4
    mov bp, sp                       ; 0x42b5
    cld                              ; 0x42b7
    push ds                          ; 0x42b8
    push es                          ; 0x42b9
    push si                          ; 0x42ba
    push di                          ; 0x42bb
    mov ax, ds                       ; 0x42bc
    mov es, ax                       ; 0x42be
    cmp byte [cs:cseg_2f66 - IMAGE_BASE], 0 ; 0x42c0
    je short @..mouse_set_pos.l1     ; 0x42c6
    mov cx, word [bp + 0x4]          ; 0x42c8
    shl cx, 1                        ; 0x42cb
    mov dx, word [bp + 0x6]          ; 0x42cd
    mov ax, 4                        ; 0x42d0
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l1:
    pop di                           ; 0x42d5
    pop si                           ; 0x42d6
    pop es                           ; 0x42d7
    pop ds                           ; 0x42d8
    mov sp, bp                       ; 0x42d9
    pop bp                           ; 0x42db
    ret                              ; 0x42dc
