math_loc_13c0:
    mov ax, 0                        ; 0x13c0
    call ds_dispatch_f40b            ; 0x13c3
    mov word [data_919e], 0          ; 0x13c6
    mov ax, word [data_830c]         ; 0x13cc
    cmp ax, word [data_8f28]         ; 0x13cf
    jne short @..math_loc_13c0.l1    ; 0x13d3
    mov ax, word [data_8f3e]         ; 0x13d5
    cmp ax, word [data_8f2a]         ; 0x13d8
    jne short @..math_loc_13c0.l1    ; 0x13dc
    mov ax, word [data_8f42]         ; 0x13de
    cmp ax, word [data_8f2e]         ; 0x13e1
    jne short @..math_loc_13c0.l1    ; 0x13e5
    mov ax, word [data_8f40]         ; 0x13e7
    cmp ax, word [data_8f2c]         ; 0x13ea
    jne short @..math_loc_13c0.l1    ; 0x13ee
    mov word [data_919e], 1          ; 0x13f0
@..math_loc_13c0.l1:
    ret                              ; 0x13f6
