math_loc_1a16:
    mov ax, 0xfd08                   ; 0x1a16
    call ds_dispatch_f40b            ; 0x1a19
    mov word [bp - 0x0002], 1        ; 0x1a1c
    jmp near @..math_loc_1a16.l14    ; 0x1a21
@..math_loc_1a16.l1:
    mov ax, word [bp - 0x0002]       ; 0x1a24
    shl ax, 1                        ; 0x1a27
    mov bx, ax                       ; 0x1a29
    add bx, bp                       ; 0x1a2b
    mov word [bx - 0x001c], 0        ; 0x1a2d
    mov word [bp - 0x0004], 0        ; 0x1a32
    jmp near @..math_loc_1a16.l8     ; 0x1a37
@..math_loc_1a16.l2:
    mov ax, 0x2c                     ; 0x1a3a
    imul word [bp - 0x0004]          ; 0x1a3d
    mov si, ax                       ; 0x1a40
    mov ax, word [bp - 0x0002]       ; 0x1a42
    shl ax, 1                        ; 0x1a45
    mov bx, ax                       ; 0x1a47
    mov bx, word [bx - 0x7b7e]       ; 0x1a49
    cmp byte [bx + si + 0x22], 0     ; 0x1a4d
    je short @..math_loc_1a16.l3     ; 0x1a51
    jmp near @..math_loc_1a16.l7     ; 0x1a53
@..math_loc_1a16.l3:
    cmp byte [bx + si + 0x10], 0     ; 0x1a56
    je short @..math_loc_1a16.l4     ; 0x1a5a
    jmp near @..math_loc_1a16.l7     ; 0x1a5c
@..math_loc_1a16.l4:
    cmp byte [bx + si + 0x11], 0     ; 0x1a5f
    jne short @..math_loc_1a16.l7    ; 0x1a63
    mov word [bp - 0x000c], 0        ; 0x1a65
    mov word [bp - 0x000a], 0        ; 0x1a6a
@..math_loc_1a16.l5:
    mov ax, 0x2c                     ; 0x1a6f
    imul word [bp - 0x0004]          ; 0x1a72
    add ax, word [bp - 0x000a]       ; 0x1a75
    mov si, ax                       ; 0x1a78
    mov ax, word [bp - 0x0002]       ; 0x1a7a
    shl ax, 1                        ; 0x1a7d
    mov bx, ax                       ; 0x1a7f
    mov bx, word [bx - 0x7b7e]       ; 0x1a81
    cmp byte [bx + si + 0xe], 0      ; 0x1a85
    jbe short @..math_loc_1a16.l6    ; 0x1a89
    mov ax, 0x2c                     ; 0x1a8b
    imul word [bp - 0x0004]          ; 0x1a8e
    mov si, ax                       ; 0x1a91
    mov ax, word [bx + si + 0x2]     ; 0x1a93
    mov cx, 4                        ; 0x1a96
    cwd                              ; 0x1a99
    idiv cx                          ; 0x1a9a
    add word [bp - 0x000c], ax       ; 0x1a9c
@..math_loc_1a16.l6:
    inc word [bp - 0x000a]           ; 0x1a9f
    mov ax, word [bp - 0x000a]       ; 0x1aa2
    cmp ax, strict word 0xa          ; 0x1aa5
    jl short @..math_loc_1a16.l5     ; 0x1aa8
    mov ax, 0x2c                     ; 0x1aaa
    imul word [bp - 0x0004]          ; 0x1aad
    mov si, ax                       ; 0x1ab0
    mov ax, word [bp - 0x0002]       ; 0x1ab2
    shl ax, 1                        ; 0x1ab5
    mov bx, ax                       ; 0x1ab7
    mov bx, word [bx - 0x7b7e]       ; 0x1ab9
    mov ax, word [bx + si + 0x2]     ; 0x1abd
    cmp ax, word [bp - 0x000c]       ; 0x1ac0
    jle short @..math_loc_1a16.l7    ; 0x1ac3
    mov ax, word [bx + si + 0x2]     ; 0x1ac5
    sub ax, word [bp - 0x000c]       ; 0x1ac8
    mov cx, word [bp - 0x0002]       ; 0x1acb
    shl cx, 1                        ; 0x1ace
    mov bx, cx                       ; 0x1ad0
    add bx, bp                       ; 0x1ad2
    add word [bx - 0x001c], ax       ; 0x1ad4
@..math_loc_1a16.l7:
    inc word [bp - 0x0004]           ; 0x1ad7
@..math_loc_1a16.l8:
    mov ax, word [bp - 0x0002]       ; 0x1ada
    shl ax, 1                        ; 0x1add
    mov bx, ax                       ; 0x1adf
    mov bx, word [bx - 0x7b7e]       ; 0x1ae1
    mov al, byte [bx + 0x1a1]        ; 0x1ae5
    sub ah, ah                       ; 0x1ae9
    cmp ax, word [bp - 0x0004]       ; 0x1aeb
    jle short @..math_loc_1a16.l9    ; 0x1aee
    jmp near @..math_loc_1a16.l2     ; 0x1af0
@..math_loc_1a16.l9:
    mov ax, word [bp - 0x0002]       ; 0x1af3
    shl ax, 1                        ; 0x1af6
    mov bx, ax                       ; 0x1af8
    mov bx, word [bx - 0x7b70]       ; 0x1afa
    cmp byte [bx + 0xae], 0          ; 0x1afe
    jbe short @..math_loc_1a16.l10   ; 0x1b03
    mov bx, ax                       ; 0x1b05
    add bx, bp                       ; 0x1b07
    mov ax, word [bx - 0x001c]       ; 0x1b09
    push ax                          ; 0x1b0c
    mov ax, word [bp - 0x0002]       ; 0x1b0d
    shl ax, 1                        ; 0x1b10
    mov si, ax                       ; 0x1b12
    mov si, word [si - 0x7b70]       ; 0x1b14
    mov al, byte [si + 0xae]         ; 0x1b18
    sub ah, ah                       ; 0x1b1c
    mov cx, 0xa                      ; 0x1b1e
    cwd                              ; 0x1b21
    idiv cx                          ; 0x1b22
    mov cx, ax                       ; 0x1b24
    inc ax                           ; 0x1b26
    mov cx, ax                       ; 0x1b27
    pop ax                           ; 0x1b29
    cwd                              ; 0x1b2a
    idiv cx                          ; 0x1b2b
    mov word [bx - 0x001c], ax       ; 0x1b2d
@..math_loc_1a16.l10:
    mov ax, word [bp - 0x0002]       ; 0x1b30
    shl ax, 1                        ; 0x1b33
    mov bx, ax                       ; 0x1b35
    mov bx, word [bx - 0x7b70]       ; 0x1b37
    cmp byte [bx + 0xb0], 0          ; 0x1b3b
    jbe short @..math_loc_1a16.l11   ; 0x1b40
    mov bx, ax                       ; 0x1b42
    add bx, bp                       ; 0x1b44
    mov ax, word [bx - 0x001c]       ; 0x1b46
    push ax                          ; 0x1b49
    mov ax, word [bp - 0x0002]       ; 0x1b4a
    shl ax, 1                        ; 0x1b4d
    mov bx, ax                       ; 0x1b4f
    mov bx, word [bx - 0x7b70]       ; 0x1b51
    mov al, byte [bx + 0xb0]         ; 0x1b55
    sub ah, ah                       ; 0x1b59
    mov cx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov bx, cx                       ; 0x1b5e
    imul bx                          ; 0x1b60
    mov cx, 0x64                     ; 0x1b62
    mov bx, 0                        ; 0x1b65
    call ds_dispatch_f99f            ; 0x1b68
    push ax                          ; 0x1b6b
    push dx                          ; 0x1b6c
    mov ax, word [bp - 0x0002]       ; 0x1b6d
    shl ax, 1                        ; 0x1b70
    mov bx, ax                       ; 0x1b72
    add bx, bp                       ; 0x1b74
    mov ax, word [bx - 0x001c]       ; 0x1b76
    cwd                              ; 0x1b79
    mov cx, ax                       ; 0x1b7a
    mov bx, dx                       ; 0x1b7c
    pop dx                           ; 0x1b7e
    pop ax                           ; 0x1b7f
    add ax, cx                       ; 0x1b80
    adc dx, bx                       ; 0x1b82
    mov cx, word [bp - 0x0002]       ; 0x1b84
    shl cx, 1                        ; 0x1b87
    mov bx, cx                       ; 0x1b89
    add bx, bp                       ; 0x1b8b
    mov word [bx - 0x001c], ax       ; 0x1b8d
@..math_loc_1a16.l11:
    mov ax, word [bp - 0x0002]       ; 0x1b90
    shl ax, 1                        ; 0x1b93
    mov bx, ax                       ; 0x1b95
    mov bx, word [bx - 0x7b70]       ; 0x1b97
    cmp byte [bx + 0xb1], 0          ; 0x1b9b
    jbe short @..math_loc_1a16.l12   ; 0x1ba0
    mov bx, ax                       ; 0x1ba2
    add bx, bp                       ; 0x1ba4
    mov ax, word [bx - 0x001c]       ; 0x1ba6
    push ax                          ; 0x1ba9
    mov ax, word [bp - 0x0002]       ; 0x1baa
    shl ax, 1                        ; 0x1bad
    mov bx, ax                       ; 0x1baf
    mov bx, word [bx - 0x7b70]       ; 0x1bb1
    mov al, byte [bx + 0xb1]         ; 0x1bb5
    sub ah, ah                       ; 0x1bb9
    mov cx, ax                       ; 0x1bbb
    pop ax                           ; 0x1bbd
    mov bx, cx                       ; 0x1bbe
    imul bx                          ; 0x1bc0
    mov cx, 0x64                     ; 0x1bc2
    mov bx, 0                        ; 0x1bc5
    call ds_dispatch_f99f            ; 0x1bc8
    push ax                          ; 0x1bcb
    push dx                          ; 0x1bcc
    mov ax, word [bp - 0x0002]       ; 0x1bcd
    shl ax, 1                        ; 0x1bd0
    mov bx, ax                       ; 0x1bd2
    add bx, bp                       ; 0x1bd4
    mov ax, word [bx - 0x001c]       ; 0x1bd6
    cwd                              ; 0x1bd9
    mov cx, ax                       ; 0x1bda
    mov bx, dx                       ; 0x1bdc
    pop dx                           ; 0x1bde
    pop ax                           ; 0x1bdf
    add ax, cx                       ; 0x1be0
    adc dx, bx                       ; 0x1be2
    mov cx, word [bp - 0x0002]       ; 0x1be4
    shl cx, 1                        ; 0x1be7
    mov bx, cx                       ; 0x1be9
    add bx, bp                       ; 0x1beb
    mov word [bx - 0x001c], ax       ; 0x1bed
@..math_loc_1a16.l12:
    mov ax, word [bp - 0x0002]       ; 0x1bf0
    shl ax, 1                        ; 0x1bf3
    mov bx, ax                       ; 0x1bf5
    mov bx, word [bx - 0x7b7e]       ; 0x1bf7
    cmp byte [bx + 0x19f], 0xff      ; 0x1bfb
    je short @..math_loc_1a16.l13    ; 0x1c00
    mov al, byte [bx + 0x19f]        ; 0x1c02
    cbw                              ; 0x1c06
    mov cx, 0x15e                    ; 0x1c07
    imul cx                          ; 0x1c0a
    mov bx, ax                       ; 0x1c0c
    cmp byte [bx + 0x6b75], 0        ; 0x1c0e
    je short @..math_loc_1a16.l13    ; 0x1c13
