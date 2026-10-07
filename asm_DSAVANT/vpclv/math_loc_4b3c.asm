math_loc_4b3c:
    jl short @..math_loc_4b3c.l1     ; 0x4b3c
    xlatb                            ; 0x4b3e
    cwd                              ; 0x4b3f
    clc                              ; 0x4b40
    cwd                              ; 0x4b41
    jl short @..math_loc_4b3c.l2     ; 0x4b42
    sbb word [bp + si - 0x65c6], bx  ; 0x4b44
    pop bx                           ; 0x4b48
    call far 0x9a9d:0x9a7c           ; 0x4b49
    mov si, 0xfb9a                   ; 0x4b4e
    call far 0x9b3c:0x9b1c           ; 0x4b51
    pop sp                           ; 0x4b56
    wait                             ; 0x4b57
loc_4b58:
    cmp ax, strict word 0xe          ; 0x4b58
    jae short loc_4b65               ; 0x4b5b
    xchg bx, ax                      ; 0x4b5d
    shl bx, 1                        ; 0x4b5e
    jmp [cs:bx - 0x647d]             ; 0x4b60
loc_4b65:
    jmp short loc_4b35               ; 0x4b65
loc_4b67:
    cmp word [bp - 0x0018], byte 0   ; 0x4b67
    jne short loc_4b6e               ; 0x4b6b
    ret                              ; 0x4b6d
