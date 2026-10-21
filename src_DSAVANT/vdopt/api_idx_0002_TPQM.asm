; auto-generated
api_idx_0002_TPQM:
    mov ax, 0xfffe                   ; 0x065b
    call aztec_csav                  ; 0x065e
    mov bx, word [maze_tables]       ; 0x0661
    mov si, word [party_map_piece]   ; 0x0665
    mov al, byte [bx + si + 0xb40]   ; 0x0669
    sub ah, ah                       ; 0x066d
    mov word [bp - 0x0002], ax       ; 0x066f
@..api_idx_0002_TPQM.l1:
    push word [bp - 0x0002]          ; 0x0672
    push word [party_map_piece]      ; 0x0675
    push word [party_cell_y]         ; 0x0679
    push word [party_cell_x]         ; 0x067d
    call find_object_at              ; 0x0681
    add sp, byte 8                   ; 0x0684
    mov word [bp - 0x0002], ax       ; 0x0687
    cmp ax, strict word 0xffff       ; 0x068a
    je short @..api_idx_0002_TPQM.l4 ; 0x068d
    mov bx, word [maze_tables]       ; 0x068f
    mov si, ax                       ; 0x0693
    cmp byte [bx + si + 0x5a0], 7    ; 0x0695
    jne short @..api_idx_0002_TPQM.l3 ; 0x069a
    mov ax, 2                        ; 0x069c
    push ax                          ; 0x069f
    mov ax, word [party_tag]         ; 0x06a0
    shl ax, 1                        ; 0x06a3
    push ax                          ; 0x06a5
    shl si, 1                        ; 0x06a6
    push word [bx + si + 0x3c0]      ; 0x06a8
    call get_bits                    ; 0x06ac
    add sp, byte 6                   ; 0x06af
    cmp ax, strict word 1            ; 0x06b2
    je short @..api_idx_0002_TPQM.l2 ; 0x06b5
    mov ax, 2                        ; 0x06b7
    push ax                          ; 0x06ba
    mov ax, word [party_tag]         ; 0x06bb
    shl ax, 1                        ; 0x06be
    push ax                          ; 0x06c0
    mov ax, word [bp - 0x0002]       ; 0x06c1
    shl ax, 1                        ; 0x06c4
    mov si, ax                       ; 0x06c6
    mov bx, word [maze_tables]       ; 0x06c8
    push word [bx + si + 0x3c0]      ; 0x06cc
    call get_bits                    ; 0x06d0
    add sp, byte 6                   ; 0x06d3
    cmp ax, strict word 2            ; 0x06d6
    jne short @..api_idx_0002_TPQM.l3 ; 0x06d9
@..api_idx_0002_TPQM.l2:
    mov ax, word [bp - 0x0002]       ; 0x06db
    ret                              ; 0x06de
@..api_idx_0002_TPQM.l3:
    inc word [bp - 0x0002]           ; 0x06df
    jmp short @..api_idx_0002_TPQM.l1 ; 0x06e2
@..api_idx_0002_TPQM.l4:
    mov ax, 0xffff                   ; 0x06e4
    ret                              ; 0x06e7
