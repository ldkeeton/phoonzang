; auto-generated
leaf_loc_3a51:
    jmp short @..leaf_loc_3a51.l2    ; 0x3a51
@..leaf_loc_3a51.l1:
    add si, word [bp - 0x0030]       ; 0x3a53
@..leaf_loc_3a51.l2:
    add word [bp - 0x003c], dx       ; 0x3a56
    mov bx, word [bp - 0x003c]       ; 0x3a59
    cmp bx, word [bp - 0x0034]       ; 0x3a5c
    jb short @..leaf_loc_3a51.l3     ; 0x3a5f
    sub bx, word [bp - 0x0034]       ; 0x3a61
    mov word [bp - 0x003c], bx       ; 0x3a64
    inc si                           ; 0x3a67
@..leaf_loc_3a51.l3:
    cmp si, word [bp - 0x0032]       ; 0x3a68
    jb short @..leaf_loc_3a51.l5     ; 0x3a6b
@..leaf_loc_3a51.l4:
    ret                              ; 0x3a6d
@..leaf_loc_3a51.l5:
    test si, 0x8000                  ; 0x3a6e
    jne short @..leaf_loc_3a51.l4    ; 0x3a72
    mov cl, 3                        ; 0x3a74
    mov ax, si                       ; 0x3a76
    shr ax, cl                       ; 0x3a78
    mov bx, ax                       ; 0x3a7a
    mov ax, si                       ; 0x3a7c
    and al, 7                        ; 0x3a7e
    mov cl, al                       ; 0x3a80
    mov al, 0x80                     ; 0x3a82
    shr al, cl                       ; 0x3a84
    or byte [cs:bx + di], al         ; 0x3a86
    jmp short @..leaf_loc_3a51.l1    ; 0x3a89
