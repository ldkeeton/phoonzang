; auto-generated
opl_note_off:
    push ax                          ; 0x18cb
    push bx                          ; 0x18cc
    mov al, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x18cd
    add al, 0xb1                     ; 0x18d1
    mov ah, al                       ; 0x18d3
    mov bx, opl_register_shadow - IMAGE_BASE ; 0x18d5
    cs xlatb                         ; 0x18d8
    and al, 0xdf                     ; 0x18da
    call opl_write                   ; 0x18dc
    pop bx                           ; 0x18df
    pop ax                           ; 0x18e0
    ret                              ; 0x18e1
    db 0x00, 0x90
