leaf_loc_2bb2:
    push bp                          ; 0x2bb2
    mov bp, sp                       ; 0x2bb3
    mov al, byte [bp + 0x4]          ; 0x2bb5
    sub ah, ah                       ; 0x2bb8
    cmp al, 0x61                     ; 0x2bba
    jl short @..leaf_loc_2bb2.l1     ; 0x2bbc
    cmp al, 0x7a                     ; 0x2bbe
    jg short @..leaf_loc_2bb2.l1     ; 0x2bc0
    sub al, 0x20                     ; 0x2bc2
@..leaf_loc_2bb2.l1:
    pop bp                           ; 0x2bc4
    ret                              ; 0x2bc5
