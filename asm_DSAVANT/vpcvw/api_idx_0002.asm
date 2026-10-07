api_idx_0002:
    mov ax, 0xfffe                   ; 0x0027
    call ds_dispatch_f40b            ; 0x002a
    mov ax, 0                        ; 0x002d
    push ax                          ; 0x0030
    call ds_dispatch_ef14            ; 0x0031
    pop cx                           ; 0x0034
    mov ax, 0                        ; 0x0035
    push ax                          ; 0x0038
    mov ax, 1                        ; 0x0039
    push ax                          ; 0x003c
    push word [bp + 0x4]             ; 0x003d
    call ds_dispatch_d161            ; 0x0040
    add sp, byte 4                   ; 0x0043
    push ax                          ; 0x0046
    call ds_dispatch_f909            ; 0x0047
    add sp, byte 4                   ; 0x004a
    mov word [bp - 0x0002], ax       ; 0x004d
    cmp ax, strict word 0xffff       ; 0x0050
    jne short @..api_idx_0002.l1     ; 0x0053
    mov ax, 0x1c                     ; 0x0055
    push ax                          ; 0x0058
    call ds_dispatch_b171            ; 0x0059
    pop cx                           ; 0x005c
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x005d
    push ax                          ; 0x0060
    push word [bp - 0x0002]          ; 0x0061
    call ds_dispatch_efde            ; 0x0064
    add sp, byte 4                   ; 0x0067
    push word [bp - 0x0002]          ; 0x006a
    call ds_dispatch_fda5            ; 0x006d
    pop cx                           ; 0x0070
    cmp word [bp + 0x6], byte 0      ; 0x0071
    je short @..api_idx_0002.l2      ; 0x0075
    mov ax, 0xc7                     ; 0x0077
    push ax                          ; 0x007a
    mov ax, 0x13f                    ; 0x007b
    push ax                          ; 0x007e
    mov ax, 0                        ; 0x007f
    push ax                          ; 0x0082
    push ax                          ; 0x0083
    call ds_dispatch_e8da            ; 0x0084
    add sp, byte 8                   ; 0x0087
@..api_idx_0002.l2:
    ret                              ; 0x008a
