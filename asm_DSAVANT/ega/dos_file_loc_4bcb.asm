dos_file_loc_4bcb:
    mov cx, word [bp - 0x0002]       ; 0x4bcb
    xor bx, bx                       ; 0x4bce
@..dos_file_loc_4bcb.l1:
    shl al, 1                        ; 0x4bd0
    jb short @..dos_file_loc_4bcb.l4 ; 0x4bd2
    test word [bx], 0x8000           ; 0x4bd4
    jne short @..dos_file_loc_4bcb.l2 ; 0x4bd8
    mov bx, word [bx]                ; 0x4bda
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4bdc
@..dos_file_loc_4bcb.l2:
    mov bx, word [bx]                ; 0x4bde
    neg bx                           ; 0x4be0
    shl bx, 1                        ; 0x4be2
    shl bx, 1                        ; 0x4be4
@..dos_file_loc_4bcb.l3:
    loop @..dos_file_loc_4bcb.l1     ; 0x4be6
    mov cx, 8                        ; 0x4be8
    lodsb                            ; 0x4beb
    cmp si, strict word 0x1400       ; 0x4bec
    jb short @..dos_file_loc_4bcb.l1 ; 0x4bf0
    push ax                          ; 0x4bf2
    push di                          ; 0x4bf3
    push bx                          ; 0x4bf4
    push cx                          ; 0x4bf5
    mov dx, 0x400                    ; 0x4bf6
    mov bx, word [bp + 0xc]          ; 0x4bf9
    mov cx, 0x1000                   ; 0x4bfc
    mov ah, 0x3f                     ; 0x4bff
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c03
    pop cx                           ; 0x4c06
    pop bx                           ; 0x4c07
    pop di                           ; 0x4c08
    pop ax                           ; 0x4c09
    jmp short @..dos_file_loc_4bcb.l1 ; 0x4c0a
@..dos_file_loc_4bcb.l4:
    test word [bx + 0x2], 0x8000     ; 0x4c0c
    jne short @..dos_file_loc_4bcb.l5 ; 0x4c11
    mov bx, word [bx + 0x2]          ; 0x4c13
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4c16
@..dos_file_loc_4bcb.l5:
    mov bx, word [bx + 0x2]          ; 0x4c18
    neg bx                           ; 0x4c1b
    shl bx, 1                        ; 0x4c1d
    shl bx, 1                        ; 0x4c1f
    jmp short @..dos_file_loc_4bcb.l3 ; 0x4c21
@..dos_file_loc_4bcb.l6:
    dec cx                           ; 0x4c23
    jne short @..dos_file_loc_4bcb.l7 ; 0x4c24
    mov cx, 8                        ; 0x4c26
    lodsb                            ; 0x4c29
    cmp si, strict word 0x1400       ; 0x4c2a
    jb short @..dos_file_loc_4bcb.l7 ; 0x4c2e
    push ax                          ; 0x4c30
    push di                          ; 0x4c31
    push bx                          ; 0x4c32
    push cx                          ; 0x4c33
    mov dx, 0x400                    ; 0x4c34
    mov bx, word [bp + 0xc]          ; 0x4c37
    mov cx, 0x1000                   ; 0x4c3a
    mov ah, 0x3f                     ; 0x4c3d
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c41
    pop cx                           ; 0x4c44
    pop bx                           ; 0x4c45
    pop di                           ; 0x4c46
    pop ax                           ; 0x4c47
@..dos_file_loc_4bcb.l7:
    mov word [bp - 0x0002], cx       ; 0x4c48
    ret                              ; 0x4c4b
loc_4c4c:
    push bp                          ; 0x4c4c
    mov bp, sp                       ; 0x4c4d
    sub sp, byte 0x0a                ; 0x4c4f
    push ds                          ; 0x4c52
    push es                          ; 0x4c53
    push si                          ; 0x4c54
    push di                          ; 0x4c55
    mov ax, ds                       ; 0x4c56
    mov es, ax                       ; 0x4c58
    mov ax, word [bp + 0xc]          ; 0x4c5a
    cmp ax, strict word 0x14         ; 0x4c5d
    jb short @..local.l132           ; 0x4c60
    jmp near @..local.l134           ; 0x4c62
@..local.l132:
    shl ax, 1                        ; 0x4c65
    shl ax, 1                        ; 0x4c67
    mov bx, 0x4ab4                   ; 0x4c69
    add bx, ax                       ; 0x4c6c
    mov ax, word [cs:bx]             ; 0x4c6e
    or ax, ax                        ; 0x4c71
    jne short @..local.l133          ; 0x4c73
    jmp near @..local.l134           ; 0x4c75
@..local.l133:
    mov word [cs:bx], 0              ; 0x4c78
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x4c7d
    dec cx                           ; 0x4c82
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x4c83
    call loc_4c93                    ; 0x4c88
@..local.l134:
    pop di                           ; 0x4c8b
    pop si                           ; 0x4c8c
    pop es                           ; 0x4c8d
    pop ds                           ; 0x4c8e
    mov sp, bp                       ; 0x4c8f
    pop bp                           ; 0x4c91
    ret                              ; 0x4c92
loc_4c93:
    call leaf_loc_4ca9               ; 0x4c93
    call leaf_loc_4cbe               ; 0x4c96
    call leaf_loc_4ce8               ; 0x4c99
    call leaf_loc_4cd3               ; 0x4c9c
    call leaf_loc_4cfd               ; 0x4c9f
    call dos_con_loc_4d13            ; 0x4ca2
    call leaf_loc_4d55               ; 0x4ca5
    ret                              ; 0x4ca8
