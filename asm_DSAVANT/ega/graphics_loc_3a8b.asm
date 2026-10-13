; auto-generated
graphics_loc_3a8b:
    push es                          ; 0x3a8b
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x3a8c
    mov es, ax                       ; 0x3a90
    mov ax, 0x3705                   ; 0x3a92
    mov word [bp - 0x0036], ax       ; 0x3a95
    xor ax, ax                       ; 0x3a98
    mov word [bp - 0x003c], ax       ; 0x3a9a
    mov word [bp - 0x003e], ax       ; 0x3a9d
    mov ax, word [bp + 0x1a]         ; 0x3aa0
    cmp al, 2                        ; 0x3aa3
    jne short @..graphics_loc_3a8b.l1 ; 0x3aa5
    jmp near @..graphics_loc_3a8b.l53 ; 0x3aa7
@..graphics_loc_3a8b.l1:
    cmp al, 3                        ; 0x3aaa
    jne short @..graphics_loc_3a8b.l2 ; 0x3aac
    jmp near @..graphics_loc_3a8b.l78 ; 0x3aae
@..graphics_loc_3a8b.l2:
    mov ax, word [bp - 0x0006]       ; 0x3ab1
    mov word [bp - 0x000e], ax       ; 0x3ab4
    mov si, word [bx]                ; 0x3ab7
    add si, bx                       ; 0x3ab9
    mov word [bp - 0x000a], 1        ; 0x3abb
    lea ax, word [bx + 0x4]          ; 0x3ac0
    mov word [bp - 0x000c], ax       ; 0x3ac3
    mov cx, word [bp - 0x0004]       ; 0x3ac6
    mov byte [bp - 0x003a], 0x80     ; 0x3ac9
    mov ax, word [bp + 0x1a]         ; 0x3acd
    cmp al, 1                        ; 0x3ad0
    jne short @..graphics_loc_3a8b.l3 ; 0x3ad2
    jmp near @..graphics_loc_3a8b.l28 ; 0x3ad4
@..graphics_loc_3a8b.l3:
    mov ax, word [bp - 0x0028]       ; 0x3ad7
    add word [bp - 0x000e], ax       ; 0x3ada
    mov ax, word [bp - 0x0024]       ; 0x3add
    mov bx, 0x140                    ; 0x3ae0
    mul bx                           ; 0x3ae3
    add word [bp - 0x000e], ax       ; 0x3ae5
@..graphics_loc_3a8b.l4:
    mov ax, word [bp - 0x0022]       ; 0x3ae8
    mov di, word [bp - 0x000e]       ; 0x3aeb
    cmp di, ax                       ; 0x3aee
    jb short @..graphics_loc_3a8b.l5 ; 0x3af0
    jmp near @..graphics_loc_3a8b.l25 ; 0x3af2
@..graphics_loc_3a8b.l5:
    push cx                          ; 0x3af5
    call leaf_loc_3bf2               ; 0x3af6
    mov ax, 0x36dd                   ; 0x3af9
    mov word [bp - 0x0034], ax       ; 0x3afc
    mov cx, word [bp - 0x0002]       ; 0x3aff
@..graphics_loc_3a8b.l6:
    push cx                          ; 0x3b02
    call leaf_loc_3c12               ; 0x3b03
    mov bx, word [bp - 0x000c]       ; 0x3b06
    mov al, byte [bx]                ; 0x3b09
    and al, byte [bp - 0x000a]       ; 0x3b0b
    jne short @..graphics_loc_3a8b.l7 ; 0x3b0e
    jmp near @..graphics_loc_3a8b.l23 ; 0x3b10
@..graphics_loc_3a8b.l7:
    mov bx, word [bp - 0x0034]       ; 0x3b13
    mov al, byte [cs:bx]             ; 0x3b16
    cmp al, 0xff                     ; 0x3b19
    jne short @..graphics_loc_3a8b.l8 ; 0x3b1b
    add si, byte 0x40                ; 0x3b1d
    jmp near @..graphics_loc_3a8b.l23 ; 0x3b20
@..graphics_loc_3a8b.l8:
    push di                          ; 0x3b23
    push si                          ; 0x3b24
    mov al, 0x80                     ; 0x3b25
    mov byte [bp - 0x0038], al       ; 0x3b27
    mov cx, 8                        ; 0x3b2a
@..graphics_loc_3a8b.l9:
    cmp di, word [bp - 0x0022]       ; 0x3b2d
    jb short @..graphics_loc_3a8b.l10 ; 0x3b30
    jmp near @..graphics_loc_3a8b.l22 ; 0x3b32
cseg_3b35:
@..graphics_loc_3a8b.l10:
    mov bx, word [bp - 0x0036]       ; 0x3b35
    mov al, byte [cs:bx]             ; 0x3b38
    and al, byte [bp - 0x0038]       ; 0x3b3b
    je short @..graphics_loc_3a8b.l11 ; 0x3b3e
    jmp near @..graphics_loc_3a8b.l21 ; 0x3b40
@..graphics_loc_3a8b.l11:
    push cx                          ; 0x3b43
    push di                          ; 0x3b44
    mov al, 0x80                     ; 0x3b45
    mov byte [bp - 0x0032], al       ; 0x3b47
    mov cx, 8                        ; 0x3b4a
@..graphics_loc_3a8b.l12:
    mov bx, word [bp - 0x0034]       ; 0x3b4d
    mov al, byte [cs:bx]             ; 0x3b50
    and al, byte [bp - 0x0032]       ; 0x3b53
    jne short @..graphics_loc_3a8b.l20 ; 0x3b56
    xor ah, ah                       ; 0x3b58
    mov al, byte [si]                ; 0x3b5a
    cmp al, 0xff                     ; 0x3b5c
    je short @..graphics_loc_3a8b.l17 ; 0x3b5e
    cmp byte [bp + 0x1e], 2          ; 0x3b60
    jne short @..graphics_loc_3a8b.l14 ; 0x3b64
    mov al, byte [es:di]             ; 0x3b66
    mov bx, 0x40cd                   ; 0x3b69
    add bx, ax                       ; 0x3b6c
    add al, byte [si]                ; 0x3b6e
    jb short @..graphics_loc_3a8b.l13 ; 0x3b70
    cmp al, byte [cs:bx]             ; 0x3b72
    jb short @..graphics_loc_3a8b.l16 ; 0x3b75
@..graphics_loc_3a8b.l13:
    mov al, byte [cs:bx]             ; 0x3b77
    jmp short @..graphics_loc_3a8b.l16 ; 0x3b7a
@..graphics_loc_3a8b.l14:
    cmp byte [bp - 0x0030], 0        ; 0x3b7c
    je short @..graphics_loc_3a8b.l16 ; 0x3b80
    mov bx, 0x40cd                   ; 0x3b82
    add bx, ax                       ; 0x3b85
    add al, byte [bp - 0x0030]       ; 0x3b87
    jb short @..graphics_loc_3a8b.l15 ; 0x3b8a
    cmp al, byte [cs:bx]             ; 0x3b8c
    jb short @..graphics_loc_3a8b.l16 ; 0x3b8f
@..graphics_loc_3a8b.l15:
    mov al, byte [cs:bx]             ; 0x3b91
@..graphics_loc_3a8b.l16:
    mov byte [es:di], al             ; 0x3b94
@..graphics_loc_3a8b.l17:
    inc si                           ; 0x3b97
    inc di                           ; 0x3b98
    ror byte [bp - 0x0032], 1        ; 0x3b99
    loop @..graphics_loc_3a8b.l12    ; 0x3b9c
@..graphics_loc_3a8b.l18:
    pop di                           ; 0x3b9e
    pop cx                           ; 0x3b9f
    add di, strict word 0x140        ; 0x3ba0
@..graphics_loc_3a8b.l19:
    ror byte [bp - 0x0038], 1        ; 0x3ba4
    loop @..graphics_loc_3a8b.l9     ; 0x3ba7
    jmp short @..graphics_loc_3a8b.l22 ; 0x3ba9
@..graphics_loc_3a8b.l20:
    inc si                           ; 0x3bab
    ror byte [bp - 0x0032], 1        ; 0x3bac
    loop @..graphics_loc_3a8b.l12    ; 0x3baf
    jmp short @..graphics_loc_3a8b.l18 ; 0x3bb1
@..graphics_loc_3a8b.l21:
    add si, byte 8                   ; 0x3bb3
    jmp short @..graphics_loc_3a8b.l19 ; 0x3bb6
@..graphics_loc_3a8b.l22:
    pop si                           ; 0x3bb8
    add si, byte 0x40                ; 0x3bb9
    pop di                           ; 0x3bbc
@..graphics_loc_3a8b.l23:
    add di, byte 8                   ; 0x3bbd
    sub di, word [bp - 0x003c]       ; 0x3bc0
    rol byte [bp - 0x000a], 1        ; 0x3bc3
    cmp byte [bp - 0x000a], 1        ; 0x3bc6
    jne short @..graphics_loc_3a8b.l24 ; 0x3bca
    inc word [bp - 0x000c]           ; 0x3bcc
@..graphics_loc_3a8b.l24:
    inc word [bp - 0x0034]           ; 0x3bcf
    pop cx                           ; 0x3bd2
    loop @..graphics_loc_3a8b.l26    ; 0x3bd3
    pop cx                           ; 0x3bd5
    add word [bp - 0x000e], strict word 0xa00 ; 0x3bd6
    mov ax, word [bp - 0x003e]       ; 0x3bdb
    sub word [bp - 0x000e], ax       ; 0x3bde
    inc word [bp - 0x0036]           ; 0x3be1
    mov byte [bp - 0x003a], 0x80     ; 0x3be4
    loop @..graphics_loc_3a8b.l27    ; 0x3be8
@..graphics_loc_3a8b.l25:
    pop es                           ; 0x3bea
    ret                              ; 0x3beb
@..graphics_loc_3a8b.l26:
    jmp near @..graphics_loc_3a8b.l6 ; 0x3bec
@..graphics_loc_3a8b.l27:
    jmp near @..graphics_loc_3a8b.l4 ; 0x3bef
