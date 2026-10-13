dos_con_in_noecho:
    push bp                          ; 0x3c97
    mov bp, sp                       ; 0x3c98
    cld                              ; 0x3c9a
    push ds                          ; 0x3c9b
    push es                          ; 0x3c9c
    push si                          ; 0x3c9d
    cld                              ; 0x3c9e
    mov ax, cs                       ; 0x3c9f
    mov ds, ax                       ; 0x3ca1
    mov es, ax                       ; 0x3ca3
    call ds_leaf_loc_3c0d            ; 0x3ca5
    lea si, word [cseg_3c7f - IMAGE_BASE] ; 0x3ca8
@..dos_con_in_noecho.l1:
    mov bx, word [si]                ; 0x3cac
    or bx, bx                        ; 0x3cae
    je short @..dos_con_in_noecho.l7 ; 0x3cb0
    mov ax, word [bp + 0x4]          ; 0x3cb2
    cmp al, 0                        ; 0x3cb5
    je short @..dos_con_in_noecho.l4 ; 0x3cb7
    cmp al, 2                        ; 0x3cb9
    je short @..dos_con_in_noecho.l2 ; 0x3cbb
    mov al, byte [si + 0x2]          ; 0x3cbd
    cmp al, 8                        ; 0x3cc0
    je short @..dos_con_in_noecho.l4 ; 0x3cc2
    cmp al, 9                        ; 0x3cc4
    je short @..dos_con_in_noecho.l4 ; 0x3cc6
    cmp al, 0xa                      ; 0x3cc8
    je short @..dos_con_in_noecho.l4 ; 0x3cca
    cmp al, 0xb                      ; 0x3ccc
    je short @..dos_con_in_noecho.l4 ; 0x3cce
    cmp al, 0x1b                     ; 0x3cd0
    je short @..dos_con_in_noecho.l4 ; 0x3cd2
    cmp al, 0xd                      ; 0x3cd4
    je short @..dos_con_in_noecho.l4 ; 0x3cd6
    cmp al, 0x20                     ; 0x3cd8
    jb short @..dos_con_in_noecho.l6 ; 0x3cda
    cmp al, 0x60                     ; 0x3cdc
    jae short @..dos_con_in_noecho.l6 ; 0x3cde
    jmp near @..dos_con_in_noecho.l4 ; 0x3ce0
@..dos_con_in_noecho.l2:
    mov al, byte [si + 0x2]          ; 0x3ce3
    cmp al, 8                        ; 0x3ce6
    je short @..dos_con_in_noecho.l4 ; 0x3ce8
    cmp al, 0x1b                     ; 0x3cea
    je short @..dos_con_in_noecho.l4 ; 0x3cec
    cmp al, 0xd                      ; 0x3cee
    je short @..dos_con_in_noecho.l4 ; 0x3cf0
    cmp al, 0x30                     ; 0x3cf2
    jb short @..dos_con_in_noecho.l6 ; 0x3cf4
    cmp al, 0x3a                     ; 0x3cf6
    jae short @..dos_con_in_noecho.l6 ; 0x3cf8
    jmp short @..dos_con_in_noecho.l4 ; 0x3cfa
@..dos_con_in_noecho.l3:
    jmp short @..dos_con_in_noecho.l1 ; 0x3cfc
@..dos_con_in_noecho.l4:
    mov ax, 1                        ; 0x3cfe
@..dos_con_in_noecho.l5:
    pop si                           ; 0x3d01
    pop es                           ; 0x3d02
    pop ds                           ; 0x3d03
    mov sp, bp                       ; 0x3d04
    pop bp                           ; 0x3d06
    ret                              ; 0x3d07
@..dos_con_in_noecho.l6:
    dec word [si]                    ; 0x3d08
    push si                          ; 0x3d0a
    push di                          ; 0x3d0b
    add si, byte 3                   ; 0x3d0c
    mov di, si                       ; 0x3d0f
    dec di                           ; 0x3d11
    mov cx, 0x14                     ; 0x3d12
    rep movsb                        ; 0x3d15
    pop di                           ; 0x3d17
    pop si                           ; 0x3d18
    jmp short @..dos_con_in_noecho.l1 ; 0x3d19
@..dos_con_in_noecho.l7:
    mov ah, 1                        ; 0x3d1b
    int 0x16 ; BIOS keyboard: check keystroke
    mov ax, 0                        ; 0x3d1f
    je short @..dos_con_in_noecho.l5 ; 0x3d22
    mov ax, 1                        ; 0x3d24
    cmp word [bp + 0x4], byte 0      ; 0x3d27
    je short @..dos_con_in_noecho.l5 ; 0x3d2b
    mov ah, 7                        ; 0x3d2d
    int 0x21 ; DOS keyboard input (no echo)
    mov bx, word [si]                ; 0x3d31
    mov byte [bx + si + 0x2], al     ; 0x3d33
    inc word [si]                    ; 0x3d36
    cmp al, 0                        ; 0x3d38
    je short @..dos_con_in_noecho.l8 ; 0x3d3a
    cmp al, 0x61                     ; 0x3d3c
    jb short @..dos_con_in_noecho.l3 ; 0x3d3e
    cmp al, 0x7b                     ; 0x3d40
    jae short @..dos_con_in_noecho.l3 ; 0x3d42
    and word [bx + si + 0x2], strict word 0xdf ; 0x3d44
    jmp short @..dos_con_in_noecho.l3 ; 0x3d49
@..dos_con_in_noecho.l8:
    mov ah, 7                        ; 0x3d4b
    int 0x21 ; DOS keyboard input (no echo)
    mov bx, word [si]                ; 0x3d4f
    mov byte [bx + si + 0x1], 8      ; 0x3d51
    cmp al, 0x4b                     ; 0x3d55
    je short @..dos_con_in_noecho.l3 ; 0x3d57
    mov byte [bx + si + 0x1], 9      ; 0x3d59
    cmp al, 0x48                     ; 0x3d5d
    je short @..dos_con_in_noecho.l3 ; 0x3d5f
    mov byte [bx + si + 0x1], 0xa    ; 0x3d61
    cmp al, 0x4d                     ; 0x3d65
    je short @..dos_con_in_noecho.l3 ; 0x3d67
    mov byte [bx + si + 0x1], 0xb    ; 0x3d69
    cmp al, 0x50                     ; 0x3d6d
    je short @..dos_con_in_noecho.l3 ; 0x3d6f
    mov byte [bx + si + 0x1], 0      ; 0x3d71
    dec word [si]                    ; 0x3d75
    jmp short @..dos_con_in_noecho.l7 ; 0x3d77
