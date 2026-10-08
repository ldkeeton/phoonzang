string_loc_4b07:
    cmp al, 0x2a                     ; 0x4b07
    jne short @..string_loc_4b07.l1  ; 0x4b09
    push ds                          ; 0x4b0b
    pop es                           ; 0x4b0c
    mov di, word [bp + 0x8]          ; 0x4b0d
    mov dx, word [es:di]             ; 0x4b10
    add di, byte 2                   ; 0x4b13
    mov word [bp + 0x8], di          ; 0x4b16
    lodsb                            ; 0x4b19
    ret                              ; 0x4b1a
@..string_loc_4b07.l1:
    sub dx, dx                       ; 0x4b1b
    mov ah, 0                        ; 0x4b1d
@..string_loc_4b07.l2:
    cmp al, 0x30                     ; 0x4b1f
    jb short @..string_loc_4b07.l3   ; 0x4b21
    cmp al, 0x39                     ; 0x4b23
    ja short @..string_loc_4b07.l3   ; 0x4b25
    sub al, 0x30                     ; 0x4b27
    shl dx, 1                        ; 0x4b29
    mov cx, dx                       ; 0x4b2b
    shl dx, 1                        ; 0x4b2d
    shl dx, 1                        ; 0x4b2f
    add dx, cx                       ; 0x4b31
    add dx, ax                       ; 0x4b33
    lodsb                            ; 0x4b35
    jmp short @..string_loc_4b07.l2  ; 0x4b36
@..string_loc_4b07.l3:
    ret                              ; 0x4b38
