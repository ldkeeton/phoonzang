; auto-generated
loc_NNGU:
    push bp                          ; 0x0992
    mov bp, sp                       ; 0x0993
    mov ax, 0x144f                   ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0                        ; 0x0999
    push ax                          ; 0x099c
    mov ax, 0x16                     ; 0x099d
    push ax                          ; 0x09a0
    call loc_STSN_040f               ; 0x09a1
    add sp, byte 6                   ; 0x09a4
    push word [bp + 0x4]             ; 0x09a7
    push word [bp + 0x4]             ; 0x09aa
    call aztec_strlen                ; 0x09ad
    pop cx                           ; 0x09b0
    inc ax                           ; 0x09b1
    mov cx, 2                        ; 0x09b2
    cwd                              ; 0x09b5
    idiv cx                          ; 0x09b6
    mov cx, ax                       ; 0x09b8
    mov ax, 0x28                     ; 0x09ba
    sub ax, cx                       ; 0x09bd
    push ax                          ; 0x09bf
    mov ax, 0x16                     ; 0x09c0
    push ax                          ; 0x09c3
    call loc_STSN_040f               ; 0x09c4
    add sp, byte 6                   ; 0x09c7
    call loc_NJKV                    ; 0x09ca
@..loc_NNGU.l1:
    call dos_con_in_noecho           ; 0x09cd
    cmp ax, strict word 0xd          ; 0x09d0
    je short @..loc_NNGU.l2          ; 0x09d3
    jmp short @..loc_NNGU.l1         ; 0x09d5
@..loc_NNGU.l2:
    mov ax, 0x149f                   ; 0x09d7
    push ax                          ; 0x09da
    mov ax, 0                        ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x16                     ; 0x09df
    push ax                          ; 0x09e2
    call loc_STSN_040f               ; 0x09e3
    add sp, byte 6                   ; 0x09e6
    mov ax, 0x2648                   ; 0x09e9
    push ax                          ; 0x09ec
    push ax                          ; 0x09ed
    call aztec_strlen                ; 0x09ee
    pop cx                           ; 0x09f1
    inc ax                           ; 0x09f2
    mov cx, 2                        ; 0x09f3
    cwd                              ; 0x09f6
    idiv cx                          ; 0x09f7
    mov cx, ax                       ; 0x09f9
    mov ax, 0x28                     ; 0x09fb
    sub ax, cx                       ; 0x09fe
    push ax                          ; 0x0a00
    mov ax, 0x16                     ; 0x0a01
    push ax                          ; 0x0a04
    call loc_STSN_040f               ; 0x0a05
    add sp, byte 6                   ; 0x0a08
    mov sp, bp                       ; 0x0a0b
    pop bp                           ; 0x0a0d
    ret                              ; 0x0a0e
