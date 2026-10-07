api_idx_001e:
    mov ax, 0xffe2                   ; 0x3d29
    call ds_dispatch_f40b            ; 0x3d2c
    mov word [bp - 0x0004], 0x14a    ; 0x3d2f
    mov ax, word [data_8f1c]         ; 0x3d34
    mov dx, word [data_8f1e]         ; 0x3d37
    push ax                          ; 0x3d3b
    push dx                          ; 0x3d3c
    mov ax, word [bp - 0x0004]       ; 0x3d3d
    cwd                              ; 0x3d40
    mov cx, ax                       ; 0x3d41
    mov bx, dx                       ; 0x3d43
    pop dx                           ; 0x3d45
    pop ax                           ; 0x3d46
    sub ax, cx                       ; 0x3d47
    sbb dx, bx                       ; 0x3d49
    mov cx, 0x5a0                    ; 0x3d4b
    mov bx, 0                        ; 0x3d4e
    call ds_dispatch_f9cd            ; 0x3d51
    mov word [bp - 0x0006], ax       ; 0x3d54
    cmp ax, strict word 0            ; 0x3d57
    jl short @..api_idx_001e.l1      ; 0x3d5a
    cmp ax, 0x36c                    ; 0x3d5c
    jl short @..api_idx_001e.l2      ; 0x3d5f
@..api_idx_001e.l1:
    ret                              ; 0x3d61
