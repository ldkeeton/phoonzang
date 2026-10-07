leaf_loc_0f3b:
    and di, strict word 0x3fff       ; 0x0f3b
    and si, strict word 0x3fff       ; 0x0f3f
    mov ah, 0x44                     ; 0x0f43
    mov al, 0                        ; 0x0f45
    mov bx, word [cs:data_0f6f]      ; 0x0f47
    mov dx, word [cs:data_0201]      ; 0x0f4c
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:data_0f6d]      ; 0x0f53
    je short @..leaf_loc_0f3b.l1     ; 0x0f58
    or si, strict word 0x4000        ; 0x0f5a
    mov ah, 0x44                     ; 0x0f5e
    mov al, 1                        ; 0x0f60
    mov bx, word [cs:data_0f6d]      ; 0x0f62
    mov dx, word [cs:data_0201]      ; 0x0f67
    int 0x67 ; EMS (Expanded Memory)
@..leaf_loc_0f3b.l1:
    ret                              ; 0x0f6e
