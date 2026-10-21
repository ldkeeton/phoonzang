; auto-generated
; asm only
ds_string_loc_SSGO:
    mov cx, word [bp - 0x0002]       ; 0x4046
    xor bx, bx                       ; 0x4049
@..ds_string_loc_SSGO.l1:
    shl al, 1                        ; 0x404b
    jb short @..ds_string_loc_SSGO.l4 ; 0x404d
    test word [es:bx], 0x8000        ; 0x404f
    jne short @..ds_string_loc_SSGO.l2 ; 0x4054
    mov bx, word [es:bx]             ; 0x4056
    jmp short @..ds_string_loc_SSGO.l6 ; 0x4059
@..ds_string_loc_SSGO.l2:
    mov bx, word [es:bx]             ; 0x405b
    neg bx                           ; 0x405e
    shl bx, 1                        ; 0x4060
    shl bx, 1                        ; 0x4062
@..ds_string_loc_SSGO.l3:
    loop @..ds_string_loc_SSGO.l1    ; 0x4064
    mov cx, 8                        ; 0x4066
    lodsb                            ; 0x4069
    jmp short @..ds_string_loc_SSGO.l1 ; 0x406a
@..ds_string_loc_SSGO.l4:
    test word [es:bx + 0x2], 0x8000  ; 0x406c
    jne short @..ds_string_loc_SSGO.l5 ; 0x4072
    mov bx, word [es:bx + 0x2]       ; 0x4074
    jmp short @..ds_string_loc_SSGO.l6 ; 0x4078
@..ds_string_loc_SSGO.l5:
    mov bx, word [es:bx + 0x2]       ; 0x407a
    neg bx                           ; 0x407e
    shl bx, 1                        ; 0x4080
    shl bx, 1                        ; 0x4082
    jmp short @..ds_string_loc_SSGO.l3 ; 0x4084
@..ds_string_loc_SSGO.l6:
    dec cx                           ; 0x4086
    jne short @..ds_string_loc_SSGO.l7 ; 0x4087
    mov cx, 8                        ; 0x4089
    lodsb                            ; 0x408c
@..ds_string_loc_SSGO.l7:
    mov word [bp - 0x0002], cx       ; 0x408d
    ret                              ; 0x4090
