string_loc_3a95:
    push bp                          ; 0x3a95
    mov bp, sp                       ; 0x3a96
    cld                              ; 0x3a98
    sub sp, byte 4                   ; 0x3a99
    push si                          ; 0x3a9c
    push es                          ; 0x3a9d
    push ds                          ; 0x3a9e
    mov ax, ds                       ; 0x3a9f
    mov es, ax                       ; 0x3aa1
    mov si, word [bp + 0x4]          ; 0x3aa3
    mov word [bp - 0x0002], si       ; 0x3aa6
@..string_loc_3a95.l1:
    mov si, word [bp - 0x0002]       ; 0x3aa9
    add word [bp - 0x0002], byte 1   ; 0x3aac
    xor ax, ax                       ; 0x3ab0
    lodsb                            ; 0x3ab2
    or al, al                        ; 0x3ab3
    je short @..string_loc_3a95.l2   ; 0x3ab5
    push word [bp + 0x6]             ; 0x3ab7
    push ax                          ; 0x3aba
    call loc_3a77                    ; 0x3abb
    add sp, byte 4                   ; 0x3abe
    jmp short @..string_loc_3a95.l1  ; 0x3ac1
@..string_loc_3a95.l2:
    pop ds                           ; 0x3ac3
    pop es                           ; 0x3ac4
    pop si                           ; 0x3ac5
    mov sp, bp                       ; 0x3ac6
    pop bp                           ; 0x3ac8
    ret                              ; 0x3ac9
loc_3aca:
    push bp                          ; 0x3aca
    mov bp, sp                       ; 0x3acb
    cld                              ; 0x3acd
    sub sp, byte 2                   ; 0x3ace
    push es                          ; 0x3ad1
    push si                          ; 0x3ad2
    mov ax, ds                       ; 0x3ad3
    mov es, ax                       ; 0x3ad5
    mov cx, 0xffff                   ; 0x3ad7
    mov ax, word [bp + 0x6]          ; 0x3ada
    mov bx, 0x364a                   ; 0x3add
    shl ax, 1                        ; 0x3ae0
    add bx, ax                       ; 0x3ae2
    mov ax, word [cs:bx]             ; 0x3ae4
    or ax, ax                        ; 0x3ae7
    je short @..loc_3aca.l2          ; 0x3ae9
    mov es, ax                       ; 0x3aeb
    xor bx, bx                       ; 0x3aed
    mov al, byte [es:bx + 0x7]       ; 0x3aef
    cbw                              ; 0x3af3
    mov word [bp - 0x0002], ax       ; 0x3af4
    xor cx, cx                       ; 0x3af7
    mov si, word [bp + 0x4]          ; 0x3af9
@..loc_3aca.l1:
    mov bx, 0x10                     ; 0x3afc
    xor ah, ah                       ; 0x3aff
    mov al, byte [si]                ; 0x3b01
    or al, al                        ; 0x3b03
    je short @..loc_3aca.l2          ; 0x3b05
    shl ax, 1                        ; 0x3b07
    add bx, ax                       ; 0x3b09
    xor ax, ax                       ; 0x3b0b
    mov al, byte [es:bx + 0x1]       ; 0x3b0d
    add cx, ax                       ; 0x3b11
    add cx, word [bp - 0x0002]       ; 0x3b13
    inc si                           ; 0x3b16
    jmp short @..loc_3aca.l1         ; 0x3b17
@..loc_3aca.l2:
    mov ax, cx                       ; 0x3b19
    pop si                           ; 0x3b1b
    pop es                           ; 0x3b1c
    mov sp, bp                       ; 0x3b1d
    pop bp                           ; 0x3b1f
    ret                              ; 0x3b20
loc_3b21:
    push bp                          ; 0x3b21
    mov bp, sp                       ; 0x3b22
    cld                              ; 0x3b24
    call far [cs:cseg_2fc7 - IMAGE_BASE] ; 0x3b25
    mov sp, bp                       ; 0x3b2a
    pop bp                           ; 0x3b2c
    ret                              ; 0x3b2d
loc_3b2e:
    push bp                          ; 0x3b2e
    mov bp, sp                       ; 0x3b2f
    cld                              ; 0x3b31
    call far [cs:cseg_2fc3 - IMAGE_BASE] ; 0x3b32
    mov sp, bp                       ; 0x3b37
    pop bp                           ; 0x3b39
    ret                              ; 0x3b3a
loc_3b3b:
    push bp                          ; 0x3b3b
    mov bp, sp                       ; 0x3b3c
    cld                              ; 0x3b3e
    call far [cs:cseg_2fcb - IMAGE_BASE] ; 0x3b3f
    mov sp, bp                       ; 0x3b44
    pop bp                           ; 0x3b46
    ret                              ; 0x3b47
loc_3b48:
    push bp                          ; 0x3b48
    mov bp, sp                       ; 0x3b49
    cld                              ; 0x3b4b
    call far [cs:cseg_2fcf - IMAGE_BASE] ; 0x3b4c
    mov sp, bp                       ; 0x3b51
    pop bp                           ; 0x3b53
    ret                              ; 0x3b54
loc_3b55:
    push bp                          ; 0x3b55
    mov bp, sp                       ; 0x3b56
    cld                              ; 0x3b58
    call far [cs:cseg_2fd3 - IMAGE_BASE] ; 0x3b59
    mov sp, bp                       ; 0x3b5e
    pop bp                           ; 0x3b60
    ret                              ; 0x3b61
loc_3b62:
    push bp                          ; 0x3b62
    mov bp, sp                       ; 0x3b63
    cld                              ; 0x3b65
    call far [cs:cseg_3027 - IMAGE_BASE] ; 0x3b66
    mov sp, bp                       ; 0x3b6b
    pop bp                           ; 0x3b6d
    ret                              ; 0x3b6e
loc_3b6f:
    push bp                          ; 0x3b6f
    mov bp, sp                       ; 0x3b70
    cld                              ; 0x3b72
    call far [cs:cseg_2fd7 - IMAGE_BASE] ; 0x3b73
    mov sp, bp                       ; 0x3b78
    pop bp                           ; 0x3b7a
    ret                              ; 0x3b7b
loc_3b7c:
    push bp                          ; 0x3b7c
    mov bp, sp                       ; 0x3b7d
    cld                              ; 0x3b7f
    call far [cs:cseg_3023 - IMAGE_BASE] ; 0x3b80
    mov sp, bp                       ; 0x3b85
    pop bp                           ; 0x3b87
    ret                              ; 0x3b88
loc_3b89:
    push bp                          ; 0x3b89
    mov bp, sp                       ; 0x3b8a
    cld                              ; 0x3b8c
    call far [cs:cseg_302b - IMAGE_BASE] ; 0x3b8d
    mov sp, bp                       ; 0x3b92
    pop bp                           ; 0x3b94
    ret                              ; 0x3b95
loc_3b96:
    push bp                          ; 0x3b96
    mov bp, sp                       ; 0x3b97
    cld                              ; 0x3b99
    call far [cs:cseg_2fdb - IMAGE_BASE] ; 0x3b9a
    mov sp, bp                       ; 0x3b9f
    pop bp                           ; 0x3ba1
    ret                              ; 0x3ba2
loc_3ba3:
    push bp                          ; 0x3ba3
    mov bp, sp                       ; 0x3ba4
    cld                              ; 0x3ba6
    push di                          ; 0x3ba7
    push si                          ; 0x3ba8
    push es                          ; 0x3ba9
    mov ax, ds                       ; 0x3baa
    mov es, ax                       ; 0x3bac
    call leaf_loc_3c0d               ; 0x3bae
    mov ax, word [cs:cseg_30dc - IMAGE_BASE] ; 0x3bb1
    xor dx, dx                       ; 0x3bb5
    mov bx, 0x763d                   ; 0x3bb7
    div bx                           ; 0x3bba
    mov ax, 0x2710                   ; 0x3bbc
    mul dx                           ; 0x3bbf
    mov bx, 0x763d                   ; 0x3bc1
    div bx                           ; 0x3bc4
    and ax, 0x7fff                   ; 0x3bc6
    mov cx, ax                       ; 0x3bc9
    mov ax, word [cs:cseg_30de - IMAGE_BASE] ; 0x3bcb
    xor dx, dx                       ; 0x3bcf
    mov bx, 0x7663                   ; 0x3bd1
    div bx                           ; 0x3bd4
    mov ax, 0x2710                   ; 0x3bd6
    mul dx                           ; 0x3bd9
    mov bx, 0x7663                   ; 0x3bdb
    div bx                           ; 0x3bde
    and ax, 0x7fff                   ; 0x3be0
    add cx, ax                       ; 0x3be3
    and cx, strict word 0x7fff       ; 0x3be5
    mov ax, word [cs:cseg_30e0 - IMAGE_BASE] ; 0x3be9
    xor dx, dx                       ; 0x3bed
    mov bx, 0x7673                   ; 0x3bef
    div bx                           ; 0x3bf2
    mov ax, 0x2710                   ; 0x3bf4
    mul dx                           ; 0x3bf7
    mov bx, 0x7673                   ; 0x3bf9
    div bx                           ; 0x3bfc
    and ax, 0x7fff                   ; 0x3bfe
    add ax, cx                       ; 0x3c01
    and ax, 0x7fff                   ; 0x3c03
    pop es                           ; 0x3c06
    pop si                           ; 0x3c07
    pop di                           ; 0x3c08
    mov sp, bp                       ; 0x3c09
    pop bp                           ; 0x3c0b
    ret                              ; 0x3c0c
