math_loc_2a6a:
    push bp                          ; 0x2a6a
    mov bp, sp                       ; 0x2a6b
    sub sp, byte 0x10                ; 0x2a6d
    mov ax, word [cs:data_1bed]      ; 0x2a70
    mov bx, 0xc8                     ; 0x2a74
    sub bx, ax                       ; 0x2a77
    cmp bx, word [cs:data_2591]      ; 0x2a79
    jb short @..math_loc_2a6a.l1     ; 0x2a7e
    mov bx, word [cs:data_2591]      ; 0x2a80
@..math_loc_2a6a.l1:
    mov word [cs:data_1bf5], bx      ; 0x2a85
    mov bx, 0x50                     ; 0x2a8a
    mul bx                           ; 0x2a8d
    mov bx, word [cs:data_1beb]      ; 0x2a8f
    mov cl, 2                        ; 0x2a94
    shr bx, cl                       ; 0x2a96
    add ax, bx                       ; 0x2a98
    mov word [cs:data_1bf7], ax      ; 0x2a9a
    mov ax, word [cs:data_1beb]      ; 0x2a9e
    and ax, strict word 3            ; 0x2aa2
    shl ax, 1                        ; 0x2aa5
    mov word [cs:data_1bf9], ax      ; 0x2aa7
    mov ax, 0x140                    ; 0x2aab
    mov bx, word [cs:data_1beb]      ; 0x2aae
    sub ax, bx                       ; 0x2ab3
    cmp ax, word [cs:data_258d]      ; 0x2ab5
    jb short @..math_loc_2a6a.l2     ; 0x2aba
    mov ax, word [cs:data_258d]      ; 0x2abc
    mov word [cs:data_1bfb], 0       ; 0x2ac0
    jmp short @..math_loc_2a6a.l3    ; 0x2ac7
@..math_loc_2a6a.l2:
    mov word [cs:data_1bfb], 0xff    ; 0x2ac9
@..math_loc_2a6a.l3:
    mov word [cs:data_1bef], ax      ; 0x2ad0
    add ax, strict word 3            ; 0x2ad4
    mov cl, 2                        ; 0x2ad7
    shr ax, cl                       ; 0x2ad9
    mov word [cs:data_1bf1], ax      ; 0x2adb
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..math_loc_2a6a.l4    ; 0x2ae5
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..math_loc_2a6a.l4     ; 0x2aed
    inc ax                           ; 0x2aef
@..math_loc_2a6a.l4:
    mov word [cs:data_1bf3], ax      ; 0x2af0
    mov di, word [cs:data_1bd7]      ; 0x2af4
    mov ax, cs                       ; 0x2af9
    mov es, ax                       ; 0x2afb
    mov ax, 0xa000                   ; 0x2afd
    mov ds, ax                       ; 0x2b00
    mov dx, 0x3ce                    ; 0x2b02
    mov al, 5                        ; 0x2b05
    out dx, al                       ; 0x2b07
    inc dx                           ; 0x2b08
    mov al, 0                        ; 0x2b09
    out dx, al                       ; 0x2b0b
    mov ah, 0                        ; 0x2b0c
    xor di, di                       ; 0x2b0e
    call io_loc_2f46                 ; 0x2b10
    mov ah, 1                        ; 0x2b13
    mov di, 0x120                    ; 0x2b15
    call io_loc_2f46                 ; 0x2b18
    mov di, 0x240                    ; 0x2b1b
    mov ah, 2                        ; 0x2b1e
    call io_loc_2f46                 ; 0x2b20
    mov di, 0x360                    ; 0x2b23
    mov ah, 3                        ; 0x2b26
    call io_loc_2f46                 ; 0x2b28
    mov ax, word [cs:data_1bdb]      ; 0x2b2b
    cmp ax, strict word 0xffff       ; 0x2b2f
    jne short @..math_loc_2a6a.l5    ; 0x2b32
    jmp near @..math_loc_2a6a.l13    ; 0x2b34
@..math_loc_2a6a.l5:
    add ax, word [cs:data_1be3]      ; 0x2b37
    dec ax                           ; 0x2b3c
    mov word [bp - 0x0002], ax       ; 0x2b3d
    mov ax, word [cs:data_1bd9]      ; 0x2b40
    mov cl, 2                        ; 0x2b44
    shr ax, cl                       ; 0x2b46
    add ax, word [cs:data_1be1]      ; 0x2b48
    dec ax                           ; 0x2b4d
    mov word [bp - 0x0004], ax       ; 0x2b4e
    mov cx, word [cs:data_1beb]      ; 0x2b51
    shr cx, 1                        ; 0x2b56
    shr cx, 1                        ; 0x2b58
    mov dx, word [cs:data_1bed]      ; 0x2b5a
    cmp word [bp - 0x0004], cx       ; 0x2b5f
    jb short @..math_loc_2a6a.l6     ; 0x2b62
    cmp word [bp - 0x0002], dx       ; 0x2b64
    jb short @..math_loc_2a6a.l6     ; 0x2b67
    add cx, word [cs:data_1bf3]      ; 0x2b69
    dec cx                           ; 0x2b6e
    add dx, word [cs:data_1bf5]      ; 0x2b6f
    dec dx                           ; 0x2b74
    mov ax, word [cs:data_1bd9]      ; 0x2b75
    shr ax, 1                        ; 0x2b79
    shr ax, 1                        ; 0x2b7b
    cmp cx, ax                       ; 0x2b7d
    jb short @..math_loc_2a6a.l6     ; 0x2b7f
    cmp dx, word [cs:data_1bdb]      ; 0x2b81
    jae short @..math_loc_2a6a.l7    ; 0x2b86
@..math_loc_2a6a.l6:
    mov byte [cs:data_259d], 0       ; 0x2b88
    jmp near @..math_loc_2a6a.l13    ; 0x2b8e
@..math_loc_2a6a.l7:
    mov byte [cs:data_259d], 1       ; 0x2b91
    mov cx, word [cs:data_1beb]      ; 0x2b97
    shr cx, 1                        ; 0x2b9c
    shr cx, 1                        ; 0x2b9e
    mov ax, cx                       ; 0x2ba0
    mov bx, word [cs:data_1bd9]      ; 0x2ba2
    shr bx, 1                        ; 0x2ba7
    shr bx, 1                        ; 0x2ba9
    cmp bx, cx                       ; 0x2bab
    jb short @..math_loc_2a6a.l8     ; 0x2bad
    mov ax, word [cs:data_1bd9]      ; 0x2baf
    shr ax, 1                        ; 0x2bb3
    shr ax, 1                        ; 0x2bb5
@..math_loc_2a6a.l8:
    mov word [bp - 0x0006], ax       ; 0x2bb7
    mov dx, word [cs:data_1bed]      ; 0x2bba
    mov bx, dx                       ; 0x2bbf
    cmp word [cs:data_1bdb], dx      ; 0x2bc1
    jb short @..math_loc_2a6a.l9     ; 0x2bc6
    mov bx, word [cs:data_1bdb]      ; 0x2bc8
@..math_loc_2a6a.l9:
    mov word [bp - 0x0008], bx       ; 0x2bcd
    sub ax, cx                       ; 0x2bd0
    sub bx, dx                       ; 0x2bd2
    mov word [bp - 0x000a], ax       ; 0x2bd4
    mov word [bp - 0x000c], bx       ; 0x2bd7
    mov cx, word [cs:data_1bf3]      ; 0x2bda
    mov dx, word [cs:data_1bf5]      ; 0x2bdf
    sub cx, ax                       ; 0x2be4
    mov word [bp - 0x000e], cx       ; 0x2be6
    sub dx, bx                       ; 0x2be9
    mov word [bp - 0x0010], dx       ; 0x2beb
    mov ax, word [bp - 0x0006]       ; 0x2bee
    add ax, word [bp - 0x000e]       ; 0x2bf1
    dec ax                           ; 0x2bf4
    cmp ax, word [bp - 0x0004]       ; 0x2bf5
    jb short @..math_loc_2a6a.l10    ; 0x2bf8
    mov ax, word [bp - 0x0004]       ; 0x2bfa
    sub ax, word [bp - 0x0006]       ; 0x2bfd
    inc ax                           ; 0x2c00
    mov word [bp - 0x000e], ax       ; 0x2c01
@..math_loc_2a6a.l10:
    mov ax, word [bp - 0x0008]       ; 0x2c04
    add ax, word [bp - 0x0010]       ; 0x2c07
    dec ax                           ; 0x2c0a
    cmp ax, word [bp - 0x0002]       ; 0x2c0b
    jb short @..math_loc_2a6a.l11    ; 0x2c0e
    mov ax, word [bp - 0x0002]       ; 0x2c10
    sub ax, word [bp - 0x0008]       ; 0x2c13
    inc ax                           ; 0x2c16
    mov word [bp - 0x0010], ax       ; 0x2c17
@..math_loc_2a6a.l11:
    mov ax, word [bp - 0x0008]       ; 0x2c1a
    sub ax, word [cs:data_1bdb]      ; 0x2c1d
    mov bx, word [cs:data_1be1]      ; 0x2c22
    mul bx                           ; 0x2c27
    add ax, word [bp - 0x0006]       ; 0x2c29
    mov bx, word [cs:data_1bd9]      ; 0x2c2c
    shr bx, 1                        ; 0x2c31
    shr bx, 1                        ; 0x2c33
    sub ax, bx                       ; 0x2c35
    add ax, word [cs:data_1bd5]      ; 0x2c37
    mov si, ax                       ; 0x2c3c
    mov ax, word [bp - 0x000c]       ; 0x2c3e
    mov bx, word [cs:data_1bf3]      ; 0x2c41
    mul bx                           ; 0x2c46
    add ax, word [bp - 0x000a]       ; 0x2c48
    add ax, word [cs:data_1bd7]      ; 0x2c4b
    mov di, ax                       ; 0x2c50
    mov ax, cs                       ; 0x2c52
    mov ds, ax                       ; 0x2c54
    mov es, ax                       ; 0x2c56
    mov cx, word [bp - 0x0010]       ; 0x2c58
@..math_loc_2a6a.l12:
    push cx                          ; 0x2c5b
    push si                          ; 0x2c5c
    push di                          ; 0x2c5d
    mov ax, si                       ; 0x2c5e
    mov bx, di                       ; 0x2c60
    mov cx, word [bp - 0x000e]       ; 0x2c62
    rep movsb                        ; 0x2c65
    add ax, 0x120                    ; 0x2c67
