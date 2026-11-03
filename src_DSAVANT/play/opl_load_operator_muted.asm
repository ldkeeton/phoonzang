; auto-generated
opl_load_operator_muted:
    push ax                          ; 0x12b0
    push bx                          ; 0x12b1
    mov ah, 0x20                     ; 0x12b2
    add ah, bh                       ; 0x12b4
    lodsb                            ; 0x12b6
    call opl_write                   ; 0x12b7
    mov ah, 0x40                     ; 0x12ba
    add ah, bh                       ; 0x12bc
    lodsb                            ; 0x12be
    or al, 0x3f                      ; 0x12bf
    call opl_write                   ; 0x12c1
    mov ah, 0x60                     ; 0x12c4
    add ah, bh                       ; 0x12c6
    lodsb                            ; 0x12c8
    call opl_write                   ; 0x12c9
    mov ah, 0x80                     ; 0x12cc
    add ah, bh                       ; 0x12ce
    lodsb                            ; 0x12d0
    call opl_write                   ; 0x12d1
    mov ah, 0xe0                     ; 0x12d4
    add ah, bh                       ; 0x12d6
    lodsb                            ; 0x12d8
    call opl_write                   ; 0x12d9
    pop bx                           ; 0x12dc
    pop ax                           ; 0x12dd
    ret                              ; 0x12de
