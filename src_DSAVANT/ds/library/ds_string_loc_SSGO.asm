; auto-generated
ds_string_loc_SSGO:
    mov cx, word [bp - 2]            ; 0x4046
    xor bx, bx                       ; 0x4049
.back1:
    shl al, 1                        ; 0x404b
    jb short .forward2               ; 0x404d
    test word [es:bx], 0x8000        ; 0x404f
    jne short .forward1              ; 0x4054
    mov bx, word [es:bx]             ; 0x4056
    jmp short .forward4              ; 0x4059
.forward1:
    mov bx, word [es:bx]             ; 0x405b
    neg bx                           ; 0x405e
    shl bx, 1                        ; 0x4060
    shl bx, 1                        ; 0x4062
.back2:
    loop .back1                      ; 0x4064
    mov cx, 8                        ; 0x4066
    lodsb                            ; 0x4069
    jmp short .back1                 ; 0x406a
.forward2:
    test word [es:bx + 2], 0x8000    ; 0x406c
    jne short .forward3              ; 0x4072
    mov bx, word [es:bx + 2]         ; 0x4074
    jmp short .forward4              ; 0x4078
.forward3:
    mov bx, word [es:bx + 2]         ; 0x407a
    neg bx                           ; 0x407e
    shl bx, 1                        ; 0x4080
    shl bx, 1                        ; 0x4082
    jmp short .back2                 ; 0x4084
.forward4:
    dec cx                           ; 0x4086
    jne short .forward5              ; 0x4087
    mov cx, 8                        ; 0x4089
    lodsb                            ; 0x408c
.forward5:
    mov word [bp - 2], cx            ; 0x408d
    ret                              ; 0x4090
