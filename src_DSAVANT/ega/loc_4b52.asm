; auto-generated
loc_4b52:
    mov cx, ax                       ; 0x4b52
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x4b54
    mov ds, ax                       ; 0x4b58
    xor dx, dx                       ; 0x4b5a
    mov bx, word [bp + 0xc]          ; 0x4b5c
    mov ah, 0x3f                     ; 0x4b5f
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400                    ; 0x4b63
    mov bx, word [bp + 0xc]          ; 0x4b66
    mov cx, 0x1000                   ; 0x4b69
    mov ah, 0x3f                     ; 0x4b6c
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4b70
    mov di, 0                        ; 0x4b73
    lodsw                            ; 0x4b76
    mov word [bp - 0x0004], ax       ; 0x4b77
    mov bx, word [bp - 0x0002]       ; 0x4b7a
    mov word [cs:bx + 0x2], ax       ; 0x4b7d
    add ax, strict word 0xf          ; 0x4b81
    mov cl, 4                        ; 0x4b84
    shr ax, cl                       ; 0x4b86
    mov bx, word [bp - 0x000a]       ; 0x4b88
    mov word [cs:bx + 0x2], ax       ; 0x4b8b
    add ax, word [cs:maze_paras_used - IMAGE_BASE] ; 0x4b8f
    cmp ax, 0x4180                   ; 0x4b94
    jb short loc_4b9c                ; 0x4b97
    jmp near loc_4b16                ; 0x4b99
loc_4b9c:
    mov word [cs:maze_paras_used - IMAGE_BASE], ax ; 0x4b9c
    mov ax, word [cs:bx]             ; 0x4ba0
    add ax, word [cs:maze_mem_seg - IMAGE_BASE] ; 0x4ba3
    mov es, ax                       ; 0x4ba8
    call string_loc_RQON             ; 0x4baa
    xor ax, ax                       ; 0x4bad
    jmp near @..load_sound.l3        ; 0x4baf
