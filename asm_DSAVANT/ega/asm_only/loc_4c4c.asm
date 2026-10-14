; auto-generated
; asm only
loc_4c4c:
    push bp                          ; 0x4c4c
    mov bp, sp                       ; 0x4c4d
    sub sp, byte 0x0a                ; 0x4c4f
    push ds                          ; 0x4c52
    push es                          ; 0x4c53
    push si                          ; 0x4c54
    push di                          ; 0x4c55
    mov ax, ds                       ; 0x4c56
    mov es, ax                       ; 0x4c58
    mov ax, word [bp + 0xc]          ; 0x4c5a
    cmp ax, strict word 0x14         ; 0x4c5d
    jb short @..loc_4c4c.l1          ; 0x4c60
    jmp near @..loc_4c4c.l3          ; 0x4c62
@..loc_4c4c.l1:
    shl ax, 1                        ; 0x4c65
    shl ax, 1                        ; 0x4c67
    mov bx, 0x4ab4                   ; 0x4c69
    add bx, ax                       ; 0x4c6c
    mov ax, word [cs:bx]             ; 0x4c6e
    or ax, ax                        ; 0x4c71
    jne short @..loc_4c4c.l2         ; 0x4c73
    jmp near @..loc_4c4c.l3          ; 0x4c75
@..loc_4c4c.l2:
    mov word [cs:bx], 0              ; 0x4c78
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x4c7d
    dec cx                           ; 0x4c82
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x4c83
    call loc_4c93                    ; 0x4c88
@..loc_4c4c.l3:
    pop di                           ; 0x4c8b
    pop si                           ; 0x4c8c
    pop es                           ; 0x4c8d
    pop ds                           ; 0x4c8e
    mov sp, bp                       ; 0x4c8f
    pop bp                           ; 0x4c91
    ret                              ; 0x4c92
loc_4c93:
    call leaf_loc_4ca9               ; 0x4c93
    call leaf_loc_4cbe               ; 0x4c96
    call leaf_loc_4ce8               ; 0x4c99
    call leaf_loc_4cd3               ; 0x4c9c
    call leaf_loc_4cfd               ; 0x4c9f
    call dos_con_loc_4d13            ; 0x4ca2
    call leaf_loc_4d55               ; 0x4ca5
    ret                              ; 0x4ca8
