; auto-generated
get_filtered_key:
    push bp                          ; 0x3d79
    mov bp, sp                       ; 0x3d7a
    cld                              ; 0x3d7c
    push si                          ; 0x3d7d
    push ds                          ; 0x3d7e
    push es                          ; 0x3d7f
    cld                              ; 0x3d80
    mov ax, cs                       ; 0x3d81
    mov ds, ax                       ; 0x3d83
    mov es, ax                       ; 0x3d85
    lea si, word [cseg_3c7f - IMAGE_BASE] ; 0x3d87
@..get_filtered_key.l1:
    mov bx, word [si]                ; 0x3d8b
    or bx, bx                        ; 0x3d8d
    je short @..get_filtered_key.l7  ; 0x3d8f
    mov ax, word [bp + 0x4]          ; 0x3d91
    cmp al, 0                        ; 0x3d94
    je short @..get_filtered_key.l4  ; 0x3d96
    cmp al, 2                        ; 0x3d98
    je short @..get_filtered_key.l2  ; 0x3d9a
    mov al, byte [si + 0x2]          ; 0x3d9c
    cmp al, 8                        ; 0x3d9f
    je short @..get_filtered_key.l4  ; 0x3da1
    cmp al, 9                        ; 0x3da3
    je short @..get_filtered_key.l4  ; 0x3da5
    cmp al, 0xa                      ; 0x3da7
    je short @..get_filtered_key.l4  ; 0x3da9
    cmp al, 0xb                      ; 0x3dab
    je short @..get_filtered_key.l4  ; 0x3dad
    cmp al, 0x1b                     ; 0x3daf
    je short @..get_filtered_key.l4  ; 0x3db1
    cmp al, 0xd                      ; 0x3db3
    je short @..get_filtered_key.l4  ; 0x3db5
    cmp al, 0x20                     ; 0x3db7
    jb short @..get_filtered_key.l6  ; 0x3db9
    cmp al, 0x60                     ; 0x3dbb
    jae short @..get_filtered_key.l6 ; 0x3dbd
    jmp near @..get_filtered_key.l4  ; 0x3dbf
@..get_filtered_key.l2:
    mov al, byte [si + 0x2]          ; 0x3dc2
    cmp al, 8                        ; 0x3dc5
    je short @..get_filtered_key.l4  ; 0x3dc7
    cmp al, 0x1b                     ; 0x3dc9
    je short @..get_filtered_key.l4  ; 0x3dcb
    cmp al, 0xd                      ; 0x3dcd
    je short @..get_filtered_key.l4  ; 0x3dcf
    cmp al, 0x30                     ; 0x3dd1
    jb short @..get_filtered_key.l6  ; 0x3dd3
    cmp al, 0x3a                     ; 0x3dd5
    jae short @..get_filtered_key.l6 ; 0x3dd7
    jmp short @..get_filtered_key.l4 ; 0x3dd9
@..get_filtered_key.l3:
    jmp short @..get_filtered_key.l1 ; 0x3ddb
@..get_filtered_key.l4:
    dec word [si]                    ; 0x3ddd
    mov al, byte [si + 0x2]          ; 0x3ddf
    mov ah, 0                        ; 0x3de2
@..get_filtered_key.l5:
    pop es                           ; 0x3de4
    pop ds                           ; 0x3de5
    pop si                           ; 0x3de6
    mov sp, bp                       ; 0x3de7
    pop bp                           ; 0x3de9
    ret                              ; 0x3dea
@..get_filtered_key.l6:
    dec word [si]                    ; 0x3deb
    push si                          ; 0x3ded
    push di                          ; 0x3dee
    add si, byte 3                   ; 0x3def
    mov di, si                       ; 0x3df2
    dec di                           ; 0x3df4
    mov cx, 0x14                     ; 0x3df5
    rep movsb                        ; 0x3df8
    pop di                           ; 0x3dfa
    pop si                           ; 0x3dfb
    jmp short @..get_filtered_key.l1 ; 0x3dfc
@..get_filtered_key.l7:
    xor ax, ax                       ; 0x3dfe
    push ax                          ; 0x3e00
    call far [cs:cseg_2f83 - IMAGE_BASE] ; 0x3e01
    pop ax                           ; 0x3e06
    mov ah, 7                        ; 0x3e07
    int 0x21 ; DOS keyboard input (no echo)
    mov ah, 0                        ; 0x3e0b
    cmp word [bp + 0x4], byte 0      ; 0x3e0d
    je short @..get_filtered_key.l5  ; 0x3e11
    mov bx, word [si]                ; 0x3e13
    mov byte [bx + si + 0x2], al     ; 0x3e15
    inc word [si]                    ; 0x3e18
    cmp al, 0                        ; 0x3e1a
    je short @..get_filtered_key.l8  ; 0x3e1c
    cmp al, 0x61                     ; 0x3e1e
    jb short @..get_filtered_key.l3  ; 0x3e20
    cmp al, 0x7b                     ; 0x3e22
    jae short @..get_filtered_key.l3 ; 0x3e24
    and word [bx + si + 0x2], strict word 0xdf ; 0x3e26
    jmp short @..get_filtered_key.l3 ; 0x3e2b
@..get_filtered_key.l8:
    mov ah, 7                        ; 0x3e2d
    int 0x21 ; DOS keyboard input (no echo)
    mov bx, word [si]                ; 0x3e31
    mov byte [bx + si + 0x1], 8      ; 0x3e33
    cmp al, 0x4b                     ; 0x3e37
    je short @..get_filtered_key.l9  ; 0x3e39
    mov byte [bx + si + 0x1], 9      ; 0x3e3b
    cmp al, 0x48                     ; 0x3e3f
    je short @..get_filtered_key.l9  ; 0x3e41
    mov byte [bx + si + 0x1], 0xa    ; 0x3e43
    cmp al, 0x4d                     ; 0x3e47
    je short @..get_filtered_key.l9  ; 0x3e49
    mov byte [bx + si + 0x1], 0xb    ; 0x3e4b
    cmp al, 0x50                     ; 0x3e4f
    je short @..get_filtered_key.l9  ; 0x3e51
    mov byte [bx + si + 0x1], 0      ; 0x3e53
    dec word [si]                    ; 0x3e57
    jmp short @..get_filtered_key.l7 ; 0x3e59
@..get_filtered_key.l9:
    jmp near @..get_filtered_key.l1  ; 0x3e5b
