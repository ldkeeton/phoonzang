; auto-generated
leaf_loc_319f:
    jmp short @..leaf_loc_319f.l2    ; 0x319f
@..leaf_loc_319f.l1:
    add si, word [bp - 0x0030]       ; 0x31a1
@..leaf_loc_319f.l2:
    add word [bp - 0x003c], dx       ; 0x31a4
    mov bx, word [bp - 0x003c]       ; 0x31a7
    cmp bx, word [bp - 0x0034]       ; 0x31aa
    jb short @..leaf_loc_319f.l3     ; 0x31ad
    sub bx, word [bp - 0x0034]       ; 0x31af
    mov word [bp - 0x003c], bx       ; 0x31b2
    inc si                           ; 0x31b5
@..leaf_loc_319f.l3:
    cmp si, word [bp - 0x0032]       ; 0x31b6
    jb short @..leaf_loc_319f.l5     ; 0x31b9
@..leaf_loc_319f.l4:
    ret                              ; 0x31bb
@..leaf_loc_319f.l5:
    test si, 0x8000                  ; 0x31bc
    jne short @..leaf_loc_319f.l4    ; 0x31c0
    mov cl, 3                        ; 0x31c2
    mov ax, si                       ; 0x31c4
    shr ax, cl                       ; 0x31c6
    mov bx, ax                       ; 0x31c8
    mov ax, si                       ; 0x31ca
    and al, 7                        ; 0x31cc
    mov cl, al                       ; 0x31ce
    mov al, 0x80                     ; 0x31d0
    shr al, cl                       ; 0x31d2
    or byte [cs:bx + di], al         ; 0x31d4
    jmp short @..leaf_loc_319f.l1    ; 0x31d7
