api_idx_000c:
    mov ax, 0xfff4                   ; 0x0cb5
    call ds_dispatch_f40b            ; 0x0cb8
    call loc_0140                    ; 0x0cbb
    les bx, word [0x0002]            ; 0x0cbe
    mov ax, word [es:bx]             ; 0x0cc2
    mov dx, word [es:bx + 0x2]       ; 0x0cc5
    add ax, strict word 0x24         ; 0x0cc9
    adc dx, byte 0                   ; 0x0ccc
    mov word [data_919c], dx         ; 0x0ccf
    mov word [data_919a], ax         ; 0x0cd3
    call api_idx_0002_3              ; 0x0cd6
    mov ax, word [bp + 0x4]          ; 0x0cd9
    mov word [data_830c], ax         ; 0x0cdc
    push ax                          ; 0x0cdf
    mov ax, 2                        ; 0x0ce0
    push ax                          ; 0x0ce3
    call ds_dispatch_d5a2            ; 0x0ce4
    add sp, byte 4                   ; 0x0ce7
    cmp word [data_830c], byte 0     ; 0x0cea
    jge short @..api_idx_000c.l1     ; 0x0cef
    mov word [data_830a], 7          ; 0x0cf1
    ret                              ; 0x0cf7
