string_loc_4046:
    mov cx, word [bp - 0x0002]       ; 0x4046
    xor bx, bx                       ; 0x4049
@..string_loc_4046.l1:
    shl al, 1                        ; 0x404b
    jb short @..string_loc_4046.l4   ; 0x404d
    test word [es:bx], 0x8000        ; 0x404f
    jne short @..string_loc_4046.l2  ; 0x4054
    mov bx, word [es:bx]             ; 0x4056
    jmp short @..string_loc_4046.l6  ; 0x4059
@..string_loc_4046.l2:
    mov bx, word [es:bx]             ; 0x405b
    neg bx                           ; 0x405e
    shl bx, 1                        ; 0x4060
    shl bx, 1                        ; 0x4062
@..string_loc_4046.l3:
    loop @..string_loc_4046.l1       ; 0x4064
    mov cx, 8                        ; 0x4066
    lodsb                            ; 0x4069
    jmp short @..string_loc_4046.l1  ; 0x406a
@..string_loc_4046.l4:
    test word [es:bx + 0x2], 0x8000  ; 0x406c
    jne short @..string_loc_4046.l5  ; 0x4072
    mov bx, word [es:bx + 0x2]       ; 0x4074
    jmp short @..string_loc_4046.l6  ; 0x4078
@..string_loc_4046.l5:
    mov bx, word [es:bx + 0x2]       ; 0x407a
    neg bx                           ; 0x407e
    shl bx, 1                        ; 0x4080
    shl bx, 1                        ; 0x4082
    jmp short @..string_loc_4046.l3  ; 0x4084
@..string_loc_4046.l6:
    dec cx                           ; 0x4086
    jne short @..string_loc_4046.l7  ; 0x4087
    mov cx, 8                        ; 0x4089
    lodsb                            ; 0x408c
@..string_loc_4046.l7:
    mov word [bp - 0x0002], cx       ; 0x408d
    ret                              ; 0x4090
