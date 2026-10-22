; auto-generated
restore_screen:
    push bp                          ; 0x3ba5
    mov bp, sp                       ; 0x3ba6
    sub sp, byte 0x0e                ; 0x3ba8
    push es                          ; 0x3bab
    push ds                          ; 0x3bac
    push di                          ; 0x3bad
    push si                          ; 0x3bae
    mov ax, ds                       ; 0x3baf
    mov es, ax                       ; 0x3bb1
    cmp word [bp + 0xe], byte 3      ; 0x3bb3
    jne short @..restore_screen.l2   ; 0x3bb7
    lea bx, word [bp - 0x000a]       ; 0x3bb9
    mov dx, bx                       ; 0x3bbc
    mov ax, ss                       ; 0x3bbe
    mov ds, ax                       ; 0x3bc0
    mov cx, 0xa                      ; 0x3bc2
    mov bx, word [bp + 0x12]         ; 0x3bc5
    mov ah, 0x3f                     ; 0x3bc8
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x3bcc
    mov ds, ax                       ; 0x3bd0
    mov cx, word [bp - 0x0004]       ; 0x3bd2
@..restore_screen.l1:
    push cx                          ; 0x3bd5
    mov dx, word [bp - 0x0002]       ; 0x3bd6
    add word [bp - 0x0002], strict word 0x140 ; 0x3bd9
    mov cx, word [bp - 0x0006]       ; 0x3bde
    mov bx, word [bp + 0x12]         ; 0x3be1
    mov ah, 0x3f                     ; 0x3be4
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x3be8
    loop @..restore_screen.l1        ; 0x3be9
    jmp near @..restore_screen.l9    ; 0x3beb
@..restore_screen.l2:
    cmp word [bp + 0xe], byte 2      ; 0x3bee
    je short @..restore_screen.l3    ; 0x3bf2
    jmp near @..restore_screen.l6    ; 0x3bf4
@..restore_screen.l3:
    mov ax, word [bp + 0xc]          ; 0x3bf7
    shl ax, 1                        ; 0x3bfa
    mov bx, data_025b                ; 0x3bfc
    add bx, ax                       ; 0x3bff
    mov ax, word [cs:bx]             ; 0x3c01
    dec ax                           ; 0x3c04
    mov cl, 2                        ; 0x3c05
    shl ax, cl                       ; 0x3c07
    mov bx, data_0bda                ; 0x3c09
    add bx, ax                       ; 0x3c0c
    mov ax, word [cs:bx]             ; 0x3c0e
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x3c11
    mov ds, ax                       ; 0x3c16
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x3c18
    mov es, ax                       ; 0x3c1c
    xor si, si                       ; 0x3c1e
    lodsw                            ; 0x3c20
    mov word [bp - 0x0002], ax       ; 0x3c21
    lodsw                            ; 0x3c24
    lodsw                            ; 0x3c25
    mov word [bp - 0x0004], ax       ; 0x3c26
    lodsw                            ; 0x3c29
    mov word [bp - 0x0006], ax       ; 0x3c2a
    lodsw                            ; 0x3c2d
    lodsw                            ; 0x3c2e
@..restore_screen.l4:
    mov di, word [bp - 0x0002]       ; 0x3c2f
    add word [bp - 0x0002], strict word 0x140 ; 0x3c32
    mov cx, word [bp - 0x0006]       ; 0x3c37
    rep movsb                        ; 0x3c3a
    dec word [bp - 0x0004]           ; 0x3c3c
    jne short @..restore_screen.l4   ; 0x3c3f
    cmp word [bp + 0x10], byte 0     ; 0x3c41
    je short @..restore_screen.l5    ; 0x3c45
    mov ax, word [bp + 0xc]          ; 0x3c47
    shl ax, 1                        ; 0x3c4a
    mov bx, data_025b                ; 0x3c4c
    add bx, ax                       ; 0x3c4f
    mov ax, word [cs:bx]             ; 0x3c51
    mov word [cs:bx], 0              ; 0x3c54
    dec word [cs:cseg_0baa - IMAGE_BASE] ; 0x3c59
    call loc_PPJL                    ; 0x3c5e
@..restore_screen.l5:
    jmp near @..restore_screen.l9    ; 0x3c61
@..restore_screen.l6:
    mov ax, word [bp + 0xc]          ; 0x3c64
    shl ax, 1                        ; 0x3c67
    mov bx, data_029b                ; 0x3c69
    add bx, ax                       ; 0x3c6c
    mov ax, word [cs:bx]             ; 0x3c6e
    dec ax                           ; 0x3c71
    mov cl, 2                        ; 0x3c72
    shl ax, cl                       ; 0x3c74
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x3c76
    add bx, ax                       ; 0x3c79
    mov ax, word [cs:bx]             ; 0x3c7b
    mov word [bp - 0x0002], ax       ; 0x3c7e
    mov cl, 0xa                      ; 0x3c81
    shr ax, cl                       ; 0x3c83
    mov word [cs:ems_cur_page - IMAGE_BASE], ax ; 0x3c85
    call ems_map_pages               ; 0x3c89
    mov si, word [bp - 0x0002]       ; 0x3c8c
    and si, strict word 0x3ff        ; 0x3c8f
    mov cl, 4                        ; 0x3c93
    shl si, cl                       ; 0x3c95
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x3c97
    mov es, ax                       ; 0x3c9b
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x3c9d
    mov ds, ax                       ; 0x3ca1
    lodsw                            ; 0x3ca3
    mov word [bp - 0x0002], ax       ; 0x3ca4
    lodsw                            ; 0x3ca7
    lodsw                            ; 0x3ca8
    mov word [bp - 0x0004], ax       ; 0x3ca9
    lodsw                            ; 0x3cac
    mov word [bp - 0x0006], ax       ; 0x3cad
    lodsw                            ; 0x3cb0
    lodsw                            ; 0x3cb1
@..restore_screen.l7:
    mov di, word [bp - 0x0002]       ; 0x3cb2
    add word [bp - 0x0002], strict word 0x140 ; 0x3cb5
    mov cx, word [bp - 0x0006]       ; 0x3cba
    rep movsb                        ; 0x3cbd
    test si, 0xc000                  ; 0x3cbf
    je short @..restore_screen.l8    ; 0x3cc3
    inc word [cs:ems_cur_page - IMAGE_BASE] ; 0x3cc5
    mov ax, word [cs:ems_cur_page - IMAGE_BASE] ; 0x3cca
    call ems_map_pages               ; 0x3cce
    and si, strict word 0x3fff       ; 0x3cd1
@..restore_screen.l8:
    dec word [bp - 0x0004]           ; 0x3cd5
    jne short @..restore_screen.l7   ; 0x3cd8
    cmp word [bp + 0x10], byte 0     ; 0x3cda
    je short @..restore_screen.l9    ; 0x3cde
    mov cx, word [cs:cseg_028f - IMAGE_BASE] ; 0x3ce0
    dec cx                           ; 0x3ce5
    mov word [cs:cseg_028f - IMAGE_BASE], cx ; 0x3ce6
    mov ax, word [bp + 0xc]          ; 0x3ceb
    shl ax, 1                        ; 0x3cee
    mov bx, data_029b                ; 0x3cf0
    add bx, ax                       ; 0x3cf3
    mov ax, word [cs:bx]             ; 0x3cf5
    mov word [cs:bx], 0              ; 0x3cf8
    call leaf_loc_MIUO               ; 0x3cfd
    call loc_KLNH                    ; 0x3d00
@..restore_screen.l9:
    pop si                           ; 0x3d03
    pop di                           ; 0x3d04
    pop ds                           ; 0x3d05
    pop es                           ; 0x3d06
    mov sp, bp                       ; 0x3d07
    pop bp                           ; 0x3d09
    ret                              ; 0x3d0a
