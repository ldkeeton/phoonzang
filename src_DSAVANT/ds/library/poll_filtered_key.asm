; auto-generated
poll_filtered_key:
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
    call stir_random_seeds           ; 0x3ca5
    lea si, word [key_queue - IMAGE_BASE] ; 0x3ca8
@..poll_filtered_key.l1:
    mov bx, word [si]                ; 0x3cac
    or bx, bx                        ; 0x3cae
    je short @..poll_filtered_key.l7 ; 0x3cb0
    mov ax, word [bp + 4]            ; 0x3cb2
    cmp al, 0                        ; 0x3cb5
    je short @..poll_filtered_key.l4 ; 0x3cb7
    cmp al, 2                        ; 0x3cb9
    je short @..poll_filtered_key.l2 ; 0x3cbb
    mov al, byte [si + 2]            ; 0x3cbd
    cmp al, 8                        ; 0x3cc0
    je short @..poll_filtered_key.l4 ; 0x3cc2
    cmp al, 9                        ; 0x3cc4
    je short @..poll_filtered_key.l4 ; 0x3cc6
    cmp al, 0xa                      ; 0x3cc8
    je short @..poll_filtered_key.l4 ; 0x3cca
    cmp al, 0xb                      ; 0x3ccc
    je short @..poll_filtered_key.l4 ; 0x3cce
    cmp al, 0x1b                     ; 0x3cd0
    je short @..poll_filtered_key.l4 ; 0x3cd2
    cmp al, 0xd                      ; 0x3cd4
    je short @..poll_filtered_key.l4 ; 0x3cd6
    cmp al, 0x20                     ; 0x3cd8
    jb short @..poll_filtered_key.l6 ; 0x3cda
    cmp al, 0x60                     ; 0x3cdc
    jae short @..poll_filtered_key.l6 ; 0x3cde
    jmp near @..poll_filtered_key.l4 ; 0x3ce0
@..poll_filtered_key.l2:
    mov al, byte [si + 2]            ; 0x3ce3
    cmp al, 8                        ; 0x3ce6
    je short @..poll_filtered_key.l4 ; 0x3ce8
    cmp al, 0x1b                     ; 0x3cea
    je short @..poll_filtered_key.l4 ; 0x3cec
    cmp al, 0xd                      ; 0x3cee
    je short @..poll_filtered_key.l4 ; 0x3cf0
    cmp al, 0x30                     ; 0x3cf2
    jb short @..poll_filtered_key.l6 ; 0x3cf4
    cmp al, 0x3a                     ; 0x3cf6
    jae short @..poll_filtered_key.l6 ; 0x3cf8
    jmp short @..poll_filtered_key.l4 ; 0x3cfa
@..poll_filtered_key.l3:
    jmp short @..poll_filtered_key.l1 ; 0x3cfc
@..poll_filtered_key.l4:
    mov ax, 1                        ; 0x3cfe
@..poll_filtered_key.l5:
    pop si                           ; 0x3d01
    pop es                           ; 0x3d02
    pop ds                           ; 0x3d03
    mov sp, bp                       ; 0x3d04
    pop bp                           ; 0x3d06
    ret                              ; 0x3d07
@..poll_filtered_key.l6:
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
    jmp short @..poll_filtered_key.l1 ; 0x3d19
@..poll_filtered_key.l7:
    mov ah, 1                        ; 0x3d1b
    int 0x16 ; BIOS keyboard: check keystroke
    mov ax, 0                        ; 0x3d1f
    je short @..poll_filtered_key.l5 ; 0x3d22
    mov ax, 1                        ; 0x3d24
    cmp word [bp + 4], byte 0        ; 0x3d27
    je short @..poll_filtered_key.l5 ; 0x3d2b
    mov ah, 7                        ; 0x3d2d
    int 0x21 ; DOS keyboard input (no echo)
    mov bx, word [si]                ; 0x3d31
    mov byte [bx + si + 2], al       ; 0x3d33
    inc word [si]                    ; 0x3d36
    cmp al, 0                        ; 0x3d38
    je short @..poll_filtered_key.l8 ; 0x3d3a
    cmp al, 0x61                     ; 0x3d3c
    jb short @..poll_filtered_key.l3 ; 0x3d3e
    cmp al, 0x7b                     ; 0x3d40
    jae short @..poll_filtered_key.l3 ; 0x3d42
    and word [bx + si + 2], strict word 0xdf ; 0x3d44
    jmp short @..poll_filtered_key.l3 ; 0x3d49
@..poll_filtered_key.l8:
    mov ah, 7                        ; 0x3d4b
    int 0x21 ; DOS keyboard input (no echo)
    mov bx, word [si]                ; 0x3d4f
    mov byte [bx + si + 1], 8        ; 0x3d51
    cmp al, 0x4b                     ; 0x3d55
    je short @..poll_filtered_key.l3 ; 0x3d57
    mov byte [bx + si + 1], 9        ; 0x3d59
    cmp al, 0x48                     ; 0x3d5d
    je short @..poll_filtered_key.l3 ; 0x3d5f
    mov byte [bx + si + 1], 0xa      ; 0x3d61
    cmp al, 0x4d                     ; 0x3d65
    je short @..poll_filtered_key.l3 ; 0x3d67
    mov byte [bx + si + 1], 0xb      ; 0x3d69
    cmp al, 0x50                     ; 0x3d6d
    je short @..poll_filtered_key.l3 ; 0x3d6f
    mov byte [bx + si + 1], 0        ; 0x3d71
    dec word [si]                    ; 0x3d75
    jmp short @..poll_filtered_key.l7 ; 0x3d77
