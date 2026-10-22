; auto-generated
free_sound:
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
    jb short @..free_sound.l1        ; 0x4c60
    jmp near @..free_sound.l3        ; 0x4c62
@..free_sound.l1:
    shl ax, 1                        ; 0x4c65
    shl ax, 1                        ; 0x4c67
    mov bx, cseg_49b4 - IMAGE_BASE   ; 0x4c69
    add bx, ax                       ; 0x4c6c
    mov ax, word [cs:bx]             ; 0x4c6e
    or ax, ax                        ; 0x4c71
    jne short @..free_sound.l2       ; 0x4c73
    jmp near @..free_sound.l3        ; 0x4c75
@..free_sound.l2:
    mov word [cs:bx], 0              ; 0x4c78
    mov cx, word [cs:maze_block_count - IMAGE_BASE] ; 0x4c7d
    dec cx                           ; 0x4c82
    mov word [cs:maze_block_count - IMAGE_BASE], cx ; 0x4c83
    call loc_PPJL                    ; 0x4c88
@..free_sound.l3:
    pop di                           ; 0x4c8b
    pop si                           ; 0x4c8c
    pop es                           ; 0x4c8d
    pop ds                           ; 0x4c8e
    mov sp, bp                       ; 0x4c8f
    pop bp                           ; 0x4c91
    ret                              ; 0x4c92
loc_PPJL:
    call leaf_loc_OSUJ               ; 0x4c93
    call leaf_loc_IHJG               ; 0x4c96
    call leaf_loc_USQQ               ; 0x4c99
    call leaf_loc_MGRH               ; 0x4c9c
    call leaf_loc_JRKU               ; 0x4c9f
    call dos_con_loc_GJMS            ; 0x4ca2
    call leaf_loc_RJJR               ; 0x4ca5
    ret                              ; 0x4ca8
