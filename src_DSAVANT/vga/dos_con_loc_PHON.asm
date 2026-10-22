; auto-generated
dos_con_loc_PHON:
    mov ax, cs                       ; 0x0bde
    mov ds, ax                       ; 0x0be0
    mov dx, cseg_0d3c - IMAGE_BASE   ; 0x0be2
    mov ah, 9                        ; 0x0be5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0be9
    int 0x21 ; DOS function dispatcher
loc_TKLO:
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
    je short loc_NTVL                ; 0x0c16
    jmp near loc_LQTO                ; 0x0c18
loc_NTVL:
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
    jae short dos_con_loc_NRMP       ; 0x0c9f
    mov ax, ds                       ; 0x0ca1
    add ax, 0x100                    ; 0x0ca3
    mov ds, ax                       ; 0x0ca6
    mov dx, 0                        ; 0x0ca8
loc_OTIL:
    cmp word [bp - 0x0006], byte 0   ; 0x0cab
    je short loc_PQKR                ; 0x0caf
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
    jmp short loc_OTIL               ; 0x0cda
loc_PQKR:
    mov cx, word [bp - 0x0008]       ; 0x0cdc
    xor dx, dx                       ; 0x0cdf
    mov bx, word [bp + 0xc]          ; 0x0ce1
    mov ah, 0x3f                     ; 0x0ce4
    int 0x21 ; DOS read file (handle)
loc_JKVR:
    pop si                           ; 0x0ce8
    pop di                           ; 0x0ce9
    pop es                           ; 0x0cea
    pop ds                           ; 0x0ceb
    mov sp, bp                       ; 0x0cec
    pop bp                           ; 0x0cee
    ret                              ; 0x0cef
