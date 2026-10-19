; auto-generated
; asm only
load_maze:
    push bp                          ; 0x0bae
    mov bp, sp                       ; 0x0baf
    sub sp, byte 0x14                ; 0x0bb1
    push ds                          ; 0x0bb4
    push es                          ; 0x0bb5
    push di                          ; 0x0bb6
    push si                          ; 0x0bb7
    mov ax, ds                       ; 0x0bb8
    mov es, ax                       ; 0x0bba
    mov ax, word [bp + 0xe]          ; 0x0bbc
    cmp ax, strict word 0xa          ; 0x0bbf
    jb short @..load_maze.l1         ; 0x0bc2
    jmp near @..load_maze.l8         ; 0x0bc4
@..load_maze.l1:
    shl ax, 1                        ; 0x0bc7
    mov word [bp - 0x0008], ax       ; 0x0bc9
    mov bx, data_0bc6                ; 0x0bcc
    add bx, ax                       ; 0x0bcf
    mov word [bp - 0x0002], bx       ; 0x0bd1
    mov ax, word [cs:bx]             ; 0x0bd4
    or ax, ax                        ; 0x0bd7
    jne short @..load_maze.l2        ; 0x0bd9
    jmp near @..load_maze.l3         ; 0x0bdb
@..load_maze.l2:
    mov ax, cs                       ; 0x0bde
    mov ds, ax                       ; 0x0be0
    mov dx, 0xe3c                    ; 0x0be2
    mov ah, 9                        ; 0x0be5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0be9
    int 0x21 ; DOS function dispatcher
@..load_maze.l3:
    mov ax, word [cs:cseg_0baa - IMAGE_BASE] ; 0x0bee
    inc ax                           ; 0x0bf2
    mov word [cs:cseg_0baa - IMAGE_BASE], ax ; 0x0bf3
    mov bx, word [bp - 0x0002]       ; 0x0bf7
    mov word [cs:bx], ax             ; 0x0bfa
    dec ax                           ; 0x0bfd
    mov cl, 2                        ; 0x0bfe
    shl ax, cl                       ; 0x0c00
    mov bx, data_0bda                ; 0x0c02
    add bx, ax                       ; 0x0c05
    mov word [bp - 0x0002], bx       ; 0x0c07
    mov ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x0c0a
    mov word [cs:bx], ax             ; 0x0c0e
    mov ax, word [bp + 0x10]         ; 0x0c11
    or ax, ax                        ; 0x0c14
    je short @..load_maze.l4         ; 0x0c16
    jmp near @..load_maze.l10        ; 0x0c18
@..load_maze.l4:
    cld                              ; 0x0c1b
    mov cx, 0x1000                   ; 0x0c1c
    mov bx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x0c1f
    add bx, word [cs:cseg_0bac - IMAGE_BASE] ; 0x0c24
    mov ds, bx                       ; 0x0c29
    xor dx, dx                       ; 0x0c2b
    mov bx, word [bp + 0xc]          ; 0x0c2d
    mov ah, 0x3f                     ; 0x0c30
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x0c34
    mov ax, word [bx]                ; 0x0c37
    mov cx, 6                        ; 0x0c39
    mul cx                           ; 0x0c3c
    add ax, strict word 4            ; 0x0c3e
    mov bx, word [bp - 0x0008]       ; 0x0c41
    add bx, strict word 0x27d        ; 0x0c44
    mov word [cs:bx], ax             ; 0x0c48
    mov bx, ax                       ; 0x0c4b
    sub bx, byte 6                   ; 0x0c4d
    mov cl, byte [bx + 0x5]          ; 0x0c50
    mov al, byte [bx + 0x4]          ; 0x0c53
    mul cl                           ; 0x0c56
    mov cl, 3                        ; 0x0c58
    shl ax, cl                       ; 0x0c5a
    mov cx, word [bx + 0x2]          ; 0x0c5c
    add ax, cx                       ; 0x0c5f
    push ax                          ; 0x0c61
    xor dx, dx                       ; 0x0c62
    mov ax, word [bx]                ; 0x0c64
    mov cx, 0x10                     ; 0x0c66
    mul cx                           ; 0x0c69
    pop cx                           ; 0x0c6b
    add ax, cx                       ; 0x0c6c
    adc dx, byte 0                   ; 0x0c6e
    push ax                          ; 0x0c71
    push dx                          ; 0x0c72
    sub ax, 0x1000                   ; 0x0c73
    sbb dx, byte 0                   ; 0x0c76
    mov word [bp - 0x0008], ax       ; 0x0c79
    mov word [bp - 0x0006], dx       ; 0x0c7c
    pop dx                           ; 0x0c7f
    pop ax                           ; 0x0c80
    add ax, strict word 0xf          ; 0x0c81
    adc dx, byte 0                   ; 0x0c84
    mov bx, 0x10                     ; 0x0c87
    div bx                           ; 0x0c8a
    mov bx, word [bp - 0x0002]       ; 0x0c8c
    mov word [cs:bx + 0x2], ax       ; 0x0c8f
    add word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x0c93
    mov ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x0c98
    cmp ax, 0x4180                   ; 0x0c9c
    jae short @..load_maze.l9        ; 0x0c9f
    mov ax, ds                       ; 0x0ca1
    add ax, 0x100                    ; 0x0ca3
    mov ds, ax                       ; 0x0ca6
    mov dx, 0                        ; 0x0ca8
@..load_maze.l5:
    cmp word [bp - 0x0006], byte 0   ; 0x0cab
    je short @..load_maze.l6         ; 0x0caf
    dec word [bp - 0x0006]           ; 0x0cb1
    mov cx, 0x8000                   ; 0x0cb4
    xor dx, dx                       ; 0x0cb7
    mov bx, word [bp + 0xc]          ; 0x0cb9
    mov ah, 0x3f                     ; 0x0cbc
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x0cc0
    add ax, 0x800                    ; 0x0cc2
    mov ds, ax                       ; 0x0cc5
    mov cx, 0x8000                   ; 0x0cc7
    xor dx, dx                       ; 0x0cca
    mov bx, word [bp + 0xc]          ; 0x0ccc
    mov ah, 0x3f                     ; 0x0ccf
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x0cd3
    add ax, 0x800                    ; 0x0cd5
    mov ds, ax                       ; 0x0cd8
    jmp short @..load_maze.l5        ; 0x0cda
@..load_maze.l6:
    mov cx, word [bp - 0x0008]       ; 0x0cdc
    xor dx, dx                       ; 0x0cdf
    mov bx, word [bp + 0xc]          ; 0x0ce1
    mov ah, 0x3f                     ; 0x0ce4
    int 0x21 ; DOS read file (handle)
@..load_maze.l7:
    pop si                           ; 0x0ce8
    pop di                           ; 0x0ce9
    pop es                           ; 0x0cea
    pop ds                           ; 0x0ceb
    mov sp, bp                       ; 0x0cec
    pop bp                           ; 0x0cee
    ret                              ; 0x0cef
@..load_maze.l8:
    mov ax, cs                       ; 0x0cf0
    mov ds, ax                       ; 0x0cf2
    mov dx, 0xe10                    ; 0x0cf4
    mov ah, 9                        ; 0x0cf7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0cfb
    int 0x21 ; DOS function dispatcher
@..load_maze.l9:
    mov ax, cs                       ; 0x0d00
    mov ds, ax                       ; 0x0d02
    mov dx, 0xe6b                    ; 0x0d04
    mov ah, 9                        ; 0x0d07
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0d0b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

@..load_maze.l10:
    mov ax, word [bp + 0xc]          ; 0x0d9a
    shl ax, 1                        ; 0x0d9d
    mov si, cseg_01c3 - IMAGE_BASE   ; 0x0d9f
    add si, ax                       ; 0x0da2
    mov ax, word [cs:si]             ; 0x0da4
    dec ax                           ; 0x0da7
    mov cl, 2                        ; 0x0da8
    shl ax, cl                       ; 0x0daa
    mov di, cseg_01eb - IMAGE_BASE   ; 0x0dac
    add di, ax                       ; 0x0daf
    mov si, word [cs:di]             ; 0x0db1
    mov ax, word [cs:di + 0x2]       ; 0x0db4
    mov word [cs:bx + 0x2], ax       ; 0x0db8
    mov word [bp - 0x0004], ax       ; 0x0dbc
    mov dx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x0dbf
    add dx, word [cs:cseg_0bac - IMAGE_BASE] ; 0x0dc4
    mov word [bp - 0x000a], dx       ; 0x0dc9
    mov es, dx                       ; 0x0dcc
    add word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x0dce
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x0dd3
    mov ds, ax                       ; 0x0dd7
    mov ax, si                       ; 0x0dd9
    mov cl, 0xa                      ; 0x0ddb
    shr ax, cl                       ; 0x0ddd
    mov word [cs:cseg_3b8e - IMAGE_BASE], ax ; 0x0ddf
    call leaf_loc_HLGJ               ; 0x0de3
    and si, strict word 0x3ff        ; 0x0de6
    mov cl, 4                        ; 0x0dea
    shl si, cl                       ; 0x0dec
@..load_maze.l11:
    test si, 0xc000                  ; 0x0dee
    je short @..load_maze.l12        ; 0x0df2
    inc word [cs:cseg_3b8e - IMAGE_BASE] ; 0x0df4
    mov ax, word [cs:cseg_3b8e - IMAGE_BASE] ; 0x0df9
    call leaf_loc_HLGJ               ; 0x0dfd
    sub si, strict word 0x4000       ; 0x0e00
@..load_maze.l12:
    xor di, di                       ; 0x0e04
    mov cx, 0x10                     ; 0x0e06
    rep movsb                        ; 0x0e09
    mov ax, es                       ; 0x0e0b
    inc ax                           ; 0x0e0d
    mov es, ax                       ; 0x0e0e
    dec word [bp - 0x0004]           ; 0x0e10
    jne short @..load_maze.l11       ; 0x0e13
    mov ax, word [bp - 0x000a]       ; 0x0e15
    mov ds, ax                       ; 0x0e18
    mov bx, 0                        ; 0x0e1a
    mov ax, word [bx]                ; 0x0e1d
    mov cx, 6                        ; 0x0e1f
    mul cx                           ; 0x0e22
    add ax, strict word 4            ; 0x0e24
    mov bx, word [bp - 0x0008]       ; 0x0e27
    add bx, strict word 0x27d        ; 0x0e2a
    mov word [cs:bx], ax             ; 0x0e2e
    jmp near @..load_maze.l7         ; 0x0e31
