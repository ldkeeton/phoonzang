leaf_loc_2e45:
    push si                          ; 0x2e45
    mov si, 0x234a                   ; 0x2e46
@..leaf_loc_2e45.l1:
    cmp byte [si + 0x6], 0           ; 0x2e49
    je short @..leaf_loc_2e45.l4     ; 0x2e4d
    add si, byte 0x0d                ; 0x2e4f
    cmp si, data_244e                ; 0x2e52
    jb short @..leaf_loc_2e45.l3     ; 0x2e56
    mov ax, 0                        ; 0x2e58
@..leaf_loc_2e45.l2:
    pop si                           ; 0x2e5b
    ret                              ; 0x2e5c
@..leaf_loc_2e45.l3:
    jmp short @..leaf_loc_2e45.l1    ; 0x2e5d
@..leaf_loc_2e45.l4:
    mov ax, si                       ; 0x2e5f
    jmp short @..leaf_loc_2e45.l2    ; 0x2e61
