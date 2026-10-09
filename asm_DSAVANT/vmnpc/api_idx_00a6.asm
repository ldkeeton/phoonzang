api_idx_00a6:
    mov ax, 0xff5a                   ; 0x8dbd
    db 0xe8, 0x48, 0x66 ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x8dc3
@..api_idx_00a6.l1:
    mov word [bp - 0x0004], 0        ; 0x8dc8
    mov ax, 0x2f                     ; 0x8dcd
    push ax                          ; 0x8dd0
    mov ax, 0x32                     ; 0x8dd1
    imul word [bp - 0x0002]          ; 0x8dd4
    add ax, word [bp - 0x0004]       ; 0x8dd7
    add ax, 0xa8c4                   ; 0x8dda
    push ax                          ; 0x8ddd
    db 0xe8, 0x69, 0x60 ; call 0xee4a
    add sp, byte 4                   ; 0x8de1
    mov word [bp - 0x0006], ax       ; 0x8de4
    push ax                          ; 0x8de7
    mov ax, 0x32                     ; 0x8de8
    imul word [bp - 0x0002]          ; 0x8deb
    add ax, word [bp - 0x0004]       ; 0x8dee
    add ax, 0xa8c4                   ; 0x8df1
    push ax                          ; 0x8df4
    lea ax, word [bp - 0x0056]       ; 0x8df5
    push ax                          ; 0x8df8
    call aztec_strncpy               ; 0x8df9
    add sp, byte 6                   ; 0x8dfc
    mov bx, word [bp - 0x0006]       ; 0x8dff
    add bx, bp                       ; 0x8e02
    mov byte [bx - 0x0056], 0x20     ; 0x8e04
    mov byte [bx - 0x0055], 0        ; 0x8e08
    mov ax, word [bp - 0x0006]       ; 0x8e0c
    inc ax                           ; 0x8e0f
    mov word [bp - 0x0004], ax       ; 0x8e10
@..api_idx_00a6.l2:
    mov ax, 0x2f                     ; 0x8e13
    push ax                          ; 0x8e16
    mov ax, 0x32                     ; 0x8e17
    imul word [bp - 0x0002]          ; 0x8e1a
    add ax, word [bp - 0x0004]       ; 0x8e1d
    add ax, 0xa8c4                   ; 0x8e20
    push ax                          ; 0x8e23
    db 0xe8, 0x23, 0x60 ; call 0xee4a
    add sp, byte 4                   ; 0x8e27
    mov word [bp - 0x0006], ax       ; 0x8e2a
    push ax                          ; 0x8e2d
    mov ax, 0x32                     ; 0x8e2e
    imul word [bp - 0x0002]          ; 0x8e31
    add ax, word [bp - 0x0004]       ; 0x8e34
    add ax, 0xa8c4                   ; 0x8e37
    push ax                          ; 0x8e3a
    lea ax, word [bp - 0x00a6]       ; 0x8e3b
    push ax                          ; 0x8e3f
    call aztec_strncpy               ; 0x8e40
    add sp, byte 6                   ; 0x8e43
    mov bx, word [bp - 0x0006]       ; 0x8e46
    add bx, bp                       ; 0x8e49
    mov byte [bx - 0x00a6], 0x20     ; 0x8e4b
    mov byte [bx - 0x00a5], 0        ; 0x8e50
    mov ax, word [bp - 0x0004]       ; 0x8e55
    add ax, word [bp - 0x0006]       ; 0x8e58
    inc ax                           ; 0x8e5b
    mov word [bp - 0x0004], ax       ; 0x8e5c
    lea ax, word [bp - 0x00a6]       ; 0x8e5f
    push ax                          ; 0x8e63
    db 0xe8, 0x29, 0x6c ; call 0xfa90
    pop cx                           ; 0x8e67
    push ax                          ; 0x8e68
    lea ax, word [bp - 0x00a6]       ; 0x8e69
    push ax                          ; 0x8e6d
    push word [bp + 0x4]             ; 0x8e6e
    call aztec_strncmp               ; 0x8e71
    add sp, byte 6                   ; 0x8e74
    test ax, ax                      ; 0x8e77
    jne short @..api_idx_00a6.l3     ; 0x8e79
    lea ax, word [bp - 0x0056]       ; 0x8e7b
    push ax                          ; 0x8e7e
    push word [bp + 0x4]             ; 0x8e7f
    db 0xe8, 0xdf, 0x64 ; call 0xf364
    add sp, byte 4                   ; 0x8e85
    ret                              ; 0x8e88
@..api_idx_00a6.l3:
    mov ax, 0x32                     ; 0x8e89
    imul word [bp - 0x0002]          ; 0x8e8c
    add ax, word [bp - 0x0004]       ; 0x8e8f
    mov bx, ax                       ; 0x8e92
    cmp byte [bx - 0x573c], 0        ; 0x8e94
    je short @..api_idx_00a6.l4      ; 0x8e99
    jmp near @..api_idx_00a6.l2      ; 0x8e9b
@..api_idx_00a6.l4:
    inc word [bp - 0x0002]           ; 0x8e9e
    mov ax, word [bp - 0x0002]       ; 0x8ea1
    cmp ax, strict word 0x26         ; 0x8ea4
    jge short @..api_idx_00a6.l5     ; 0x8ea7
    jmp near @..api_idx_00a6.l1      ; 0x8ea9
@..api_idx_00a6.l5:
    ret                              ; 0x8eac
