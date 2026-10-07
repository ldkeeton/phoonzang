api_idx_001e:
    mov ax, 0xffe2                   ; 0x529a
    call ds_dispatch_f40b            ; 0x529d
    mov word [bp - 0x0004], 0x14a    ; 0x52a0
    mov ax, word [data_8f1c]         ; 0x52a5
    mov dx, word [data_8f1e]         ; 0x52a8
    push ax                          ; 0x52ac
    push dx                          ; 0x52ad
    mov ax, word [bp - 0x0004]       ; 0x52ae
    cwd                              ; 0x52b1
    mov cx, ax                       ; 0x52b2
    mov bx, dx                       ; 0x52b4
    pop dx                           ; 0x52b6
    pop ax                           ; 0x52b7
    sub ax, cx                       ; 0x52b8
    sbb dx, bx                       ; 0x52ba
    mov cx, 0x5a0                    ; 0x52bc
    mov bx, 0                        ; 0x52bf
    call ds_dispatch_f9cd            ; 0x52c2
    mov word [bp - 0x0006], ax       ; 0x52c5
    cmp ax, strict word 0            ; 0x52c8
    jl short @..api_idx_001e.l1      ; 0x52cb
    cmp ax, 0x36c                    ; 0x52cd
    jl short @..api_idx_001e.l2      ; 0x52d0
@..api_idx_001e.l1:
    ret                              ; 0x52d2
