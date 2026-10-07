api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x5571
    db 0xe8, 0x94, 0x9e ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x5577
    shl ax, 1                        ; 0x557a
    mov bx, ax                       ; 0x557c
    mov ax, word [bx - 0x632c]       ; 0x557e
    mov word [bp - 0x0004], ax       ; 0x5582
    mov ax, 0x248                    ; 0x5585
    imul word [bp + 0x4]             ; 0x5588
    mov bx, ax                       ; 0x558b
    mov al, byte [bx + 0x5e2d]       ; 0x558d
    sub ah, ah                       ; 0x5591
    push ax                          ; 0x5593
    mov ax, word [bp + 0x6]          ; 0x5594
    shl ax, 1                        ; 0x5597
    add ax, 0x9882                   ; 0x5599
    push ax                          ; 0x559c
    db 0xe8, 0xd4, 0x96 ; call 0xec74
    add sp, byte 4                   ; 0x55a0
    test ax, ax                      ; 0x55a3
    je short @..api_idx_0008_4.l1    ; 0x55a5
    mov ax, 0x248                    ; 0x55a7
    imul word [bp + 0x4]             ; 0x55aa
    mov bx, ax                       ; 0x55ad
    mov al, byte [bx + 0x5e2b]       ; 0x55af
    sub ah, ah                       ; 0x55b3
    push ax                          ; 0x55b5
    mov ax, word [bp + 0x6]          ; 0x55b6
    shl ax, 1                        ; 0x55b9
    add ax, 0x98be                   ; 0x55bb
    push ax                          ; 0x55be
    db 0xe8, 0xb2, 0x96 ; call 0xec74
    add sp, byte 4                   ; 0x55c2
    test ax, ax                      ; 0x55c5
    je short @..api_idx_0008_4.l1    ; 0x55c7
    mov ax, 0x248                    ; 0x55c9
    imul word [bp + 0x4]             ; 0x55cc
    mov bx, ax                       ; 0x55cf
    mov al, byte [bx + 0x5e2c]       ; 0x55d1
    sub ah, ah                       ; 0x55d5
    push ax                          ; 0x55d7
    mov ax, word [bp + 0x6]          ; 0x55d8
    add ax, 0x98fa                   ; 0x55db
    push ax                          ; 0x55de
    db 0xe8, 0x92, 0x96 ; call 0xec74
    add sp, byte 4                   ; 0x55e2
    test ax, ax                      ; 0x55e5
    jne short @..api_idx_0008_4.l2   ; 0x55e7
@..api_idx_0008_4.l1:
    mov ax, 0x9b                     ; 0x55e9
    push ax                          ; 0x55ec
    mov ax, 0x49                     ; 0x55ed
    push ax                          ; 0x55f0
    mov ax, 0x5e2                    ; 0x55f1
    push ax                          ; 0x55f4
    call api_idx_0054_2              ; 0x55f5
    add sp, byte 6                   ; 0x55f8
    mov ax, 0                        ; 0x55fb
    ret                              ; 0x55fe
