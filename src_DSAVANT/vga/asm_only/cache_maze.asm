; auto-generated
; asm only
cache_maze:
    push bp                          ; 0x3d72
    mov bp, sp                       ; 0x3d73
    sub sp, byte 0x14                ; 0x3d75
    push es                          ; 0x3d78
    push ds                          ; 0x3d79
    push di                          ; 0x3d7a
    push si                          ; 0x3d7b
    mov ax, ds                       ; 0x3d7c
    mov es, ax                       ; 0x3d7e
    mov ax, word [bp + 0xc]          ; 0x3d80
    test ah, 0x80                    ; 0x3d83
    je short @..cache_maze.l1        ; 0x3d86
    dec word [cs:cseg_028f - IMAGE_BASE] ; 0x3d88
    mov ax, word [bp + 0xe]          ; 0x3d8d
    shl ax, 1                        ; 0x3d90
    mov bx, cseg_01c3 - IMAGE_BASE   ; 0x3d92
    add bx, ax                       ; 0x3d95
    mov ax, word [cs:bx]             ; 0x3d97
    mov word [cs:bx], 0              ; 0x3d9a
    call leaf_loc_MIUO               ; 0x3d9f
    call loc_KLNH                    ; 0x3da2
    jmp near @..cache_maze.l8        ; 0x3da5
@..cache_maze.l1:
    mov word [bp - 0x0002], ax       ; 0x3da8
    mov ax, word [bp + 0x10]         ; 0x3dab
    or ax, ax                        ; 0x3dae
    je short @..cache_maze.l2        ; 0x3db0
    mov ax, word [bp + 0xe]          ; 0x3db2
    mov word [bp - 0x0004], ax       ; 0x3db5
    call dos_file_loc_MUHV           ; 0x3db8
    jmp near @..cache_maze.l8        ; 0x3dbb
@..cache_maze.l2:
    mov ax, word [bp + 0xe]          ; 0x3dbe
    shl ax, 1                        ; 0x3dc1
    mov bx, cseg_01c3 - IMAGE_BASE   ; 0x3dc3
    add bx, ax                       ; 0x3dc6
    mov ax, word [cs:bx]             ; 0x3dc8
    or ax, ax                        ; 0x3dcb
    je short @..cache_maze.l3        ; 0x3dcd
    jmp near @..cache_maze.l9        ; 0x3dcf
@..cache_maze.l3:
    inc word [cs:cseg_028f - IMAGE_BASE] ; 0x3dd2
    mov ax, word [cs:cseg_028f - IMAGE_BASE] ; 0x3dd7
    mov word [cs:bx], ax             ; 0x3ddb
    dec ax                           ; 0x3dde
    mov cl, 2                        ; 0x3ddf
    shl ax, cl                       ; 0x3de1
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x3de3
    add bx, ax                       ; 0x3de6
    mov word [bp - 0x0002], bx       ; 0x3de8
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x3deb
    mov word [cs:bx], ax             ; 0x3def
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x3df2
    mov ds, ax                       ; 0x3df6
    xor dx, dx                       ; 0x3df8
    mov cx, 0x1000                   ; 0x3dfa
    mov bx, word [bp + 0xc]          ; 0x3dfd
    mov ah, 0x3f                     ; 0x3e00
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x3e04
    mov ax, word [bx]                ; 0x3e07
    mov cx, 6                        ; 0x3e09
    mul cx                           ; 0x3e0c
    add ax, strict word 4            ; 0x3e0e
    mov bx, ax                       ; 0x3e11
    sub bx, byte 6                   ; 0x3e13
    mov cl, byte [bx + 0x5]          ; 0x3e16
    mov al, byte [bx + 0x4]          ; 0x3e19
    mul cl                           ; 0x3e1c
    mov cl, 3                        ; 0x3e1e
    shl ax, cl                       ; 0x3e20
    mov cx, word [bx + 0x2]          ; 0x3e22
    add ax, cx                       ; 0x3e25
    push ax                          ; 0x3e27
    xor dx, dx                       ; 0x3e28
    mov ax, word [bx]                ; 0x3e2a
    mov cx, 0x10                     ; 0x3e2c
    mul cx                           ; 0x3e2f
    pop cx                           ; 0x3e31
    add cx, byte 0x0f                ; 0x3e32
    add ax, cx                       ; 0x3e35
    adc dx, byte 0                   ; 0x3e37
    mov word [bp - 0x0006], ax       ; 0x3e3a
    mov word [bp - 0x0008], dx       ; 0x3e3d
    mov cx, 0x10                     ; 0x3e40
    div cx                           ; 0x3e43
    mov di, word [cs:cseg_0291 - IMAGE_BASE] ; 0x3e45
    mov bx, word [bp - 0x0002]       ; 0x3e4a
    mov word [cs:bx + 0x2], ax       ; 0x3e4d
    add word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x3e51
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x3e56
    cmp ax, word [cs:cseg_00ff - IMAGE_BASE] ; 0x3e5a
    jbe short @..cache_maze.l4       ; 0x3e5f
    jmp near @..cache_maze.l10       ; 0x3e61
@..cache_maze.l4:
    mov ax, di                       ; 0x3e64
    mov cl, 0xa                      ; 0x3e66
    shr ax, cl                       ; 0x3e68
    mov word [cs:cseg_3b8e - IMAGE_BASE], ax ; 0x3e6a
    call leaf_loc_HLGJ               ; 0x3e6e
    and di, strict word 0x3ff        ; 0x3e71
    mov cl, 4                        ; 0x3e75
    shl di, cl                       ; 0x3e77
    xor si, si                       ; 0x3e79
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x3e7b
    mov ds, ax                       ; 0x3e7f
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x3e81
    mov es, ax                       ; 0x3e85
    mov cx, 0x1000                   ; 0x3e87
    rep movsb                        ; 0x3e8a
    mov ax, word [bp - 0x0006]       ; 0x3e8c
    mov dx, word [bp - 0x0008]       ; 0x3e8f
    sub ax, 0x1000                   ; 0x3e92
    sbb dx, byte 0                   ; 0x3e95
    mov word [bp - 0x0006], ax       ; 0x3e98
    mov word [bp - 0x0008], dx       ; 0x3e9b
@..cache_maze.l5:
    mov dx, di                       ; 0x3e9e
    test dx, 0xc000                  ; 0x3ea0
    je short @..cache_maze.l6        ; 0x3ea4
    sub di, strict word 0x4000       ; 0x3ea6
    inc word [cs:cseg_3b8e - IMAGE_BASE] ; 0x3eaa
    mov ax, word [cs:cseg_3b8e - IMAGE_BASE] ; 0x3eaf
    call leaf_loc_HLGJ               ; 0x3eb3
@..cache_maze.l6:
    mov ax, word [bp - 0x0006]       ; 0x3eb6
    mov dx, word [bp - 0x0008]       ; 0x3eb9
    or ax, dx                        ; 0x3ebc
    je short @..cache_maze.l8        ; 0x3ebe
    mov cx, 0x1000                   ; 0x3ec0
    mov ax, word [bp - 0x0006]       ; 0x3ec3
    or dx, dx                        ; 0x3ec6
    jne short @..cache_maze.l7       ; 0x3ec8
    cmp ax, cx                       ; 0x3eca
    jae short @..cache_maze.l7       ; 0x3ecc
    mov cx, ax                       ; 0x3ece
@..cache_maze.l7:
    sub ax, cx                       ; 0x3ed0
    sbb dx, byte 0                   ; 0x3ed2
    mov word [bp - 0x0006], ax       ; 0x3ed5
    mov word [bp - 0x0008], dx       ; 0x3ed8
    mov dx, 0                        ; 0x3edb
    mov bx, word [bp + 0xc]          ; 0x3ede
    mov ah, 0x3f                     ; 0x3ee1
    push cx                          ; 0x3ee3
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x3ee6
    mov si, 0                        ; 0x3ee7
    rep movsb                        ; 0x3eea
    jmp short @..cache_maze.l5       ; 0x3eec
@..cache_maze.l8:
    pop si                           ; 0x3eee
    pop di                           ; 0x3eef
    pop ds                           ; 0x3ef0
    pop es                           ; 0x3ef1
    mov sp, bp                       ; 0x3ef2
    pop bp                           ; 0x3ef4
    ret                              ; 0x3ef5
@..cache_maze.l9:
    mov ax, cs                       ; 0x3ef6
    mov ds, ax                       ; 0x3ef8
    mov dx, cseg_3f06 - IMAGE_BASE   ; 0x3efa
    mov ah, 9                        ; 0x3efd
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3f01
    int 0x21 ; DOS function dispatcher
cseg_3f06:

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..cache_maze.l10:
    mov ax, cs                       ; 0x3f3e
    mov ds, ax                       ; 0x3f40
    mov dx, dseg_404e                ; 0x3f42
