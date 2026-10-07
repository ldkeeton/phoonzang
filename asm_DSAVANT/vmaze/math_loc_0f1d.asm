math_loc_0f1d:
    mov ax, 0                        ; 0x0f1d
    call ds_dispatch_f40b            ; 0x0f20
    les bx, word [0x0002]            ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 0x2]       ; 0x0f2a
    sub ax, word [data_908a]         ; 0x0f2e
    sbb dx, word [data_908c]         ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [data_9192]         ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short @..math_loc_0f1d.l1     ; 0x0f44
    jne short @..math_loc_0f1d.l2    ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short @..math_loc_0f1d.l2    ; 0x0f4a
@..math_loc_0f1d.l1:
    jmp short @..math_loc_0f1d.l3    ; 0x0f4c
@..math_loc_0f1d.l2:
    les bx, word [0x0002]            ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 0x2]       ; 0x0f55
    mov word [data_908c], dx         ; 0x0f59
    mov word [data_908a], ax         ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
