; auto-generated
api_idx_0004_THGV:
    mov ax, 0xfffc                   ; 0x799e
    call aztec_csav                  ; 0x79a1
    mov ax, word [party_region]      ; 0x79a4
    shl ax, 1                        ; 0x79a7
    mov si, ax                       ; 0x79a9
    mov bx, word [maze_tables]       ; 0x79ab
    mov ax, word [bx + si + 0x3c0]   ; 0x79af
    mov word [bp - 2], ax            ; 0x79b3
    mov ax, 2                        ; 0x79b6
    push ax                          ; 0x79b9
    mov ax, 0                        ; 0x79ba
    push ax                          ; 0x79bd
    push word [bp - 2]               ; 0x79be
    call get_bits                    ; 0x79c1
    add sp, byte 6                   ; 0x79c4
    mov word [bp - 4], ax            ; 0x79c7
    cmp word [bp - 4], byte 0        ; 0x79ca
    jne short @..api_idx_0004_THGV.l1 ; 0x79ce
    mov word [bss_9b4a], 0           ; 0x79d0
@..api_idx_0004_THGV.l1:
    mov ax, 1                        ; 0x79d6
    push ax                          ; 0x79d9
    mov ax, 6                        ; 0x79da
    push ax                          ; 0x79dd
    push word [bp - 2]               ; 0x79de
    call get_bits                    ; 0x79e1
    add sp, byte 6                   ; 0x79e4
    cmp ax, strict word 1            ; 0x79e7
    jne short @..api_idx_0004_THGV.l2 ; 0x79ea
    mov ax, 2                        ; 0x79ec
    push ax                          ; 0x79ef
    mov ax, 4                        ; 0x79f0
    push ax                          ; 0x79f3
    push word [bp - 2]               ; 0x79f4
    call get_bits                    ; 0x79f7
    add sp, byte 6                   ; 0x79fa
    mov word [found_object_owner], ax ; 0x79fd
    cmp ax, word [party_tag]         ; 0x7a00
    je short @..api_idx_0004_THGV.l2 ; 0x7a04
    ret                              ; 0x7a06
@..api_idx_0004_THGV.l2:
    mov ax, 1                        ; 0x7a07
    push ax                          ; 0x7a0a
    mov ax, 2                        ; 0x7a0b
    push ax                          ; 0x7a0e
    push word [bp - 2]               ; 0x7a0f
    call get_bits                    ; 0x7a12
    add sp, byte 6                   ; 0x7a15
    push ax                          ; 0x7a18
    mov ax, word [party_region]      ; 0x7a19
    shl ax, 1                        ; 0x7a1c
    mov si, ax                       ; 0x7a1e
    mov bx, word [maze_tables]       ; 0x7a20
    push word [bx + si]              ; 0x7a24
    call loc_MLLK                    ; 0x7a26
    add sp, byte 4                   ; 0x7a29
    push word [bp - 4]               ; 0x7a2c
    call mark_region_bits            ; 0x7a2f
    pop cx                           ; 0x7a32
    ret                              ; 0x7a33
