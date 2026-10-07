api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x4ade
    call ds_dispatch_f40b            ; 0x4ae1
    mov word [bp - 0x0002], 0        ; 0x4ae4
@..api_idx_0002_9.l1:
    mov ax, 9                        ; 0x4ae9
    push ax                          ; 0x4aec
    push word [bp - 0x0002]          ; 0x4aed
    push word [bp + 0x4]             ; 0x4af0
    call math_loc_4aa1               ; 0x4af3
    add sp, byte 6                   ; 0x4af6
    inc word [bp - 0x0002]           ; 0x4af9
    mov ax, word [bp - 0x0002]       ; 0x4afc
    cmp ax, strict word 0x60         ; 0x4aff
    jl short @..api_idx_0002_9.l1    ; 0x4b02
    ret                              ; 0x4b04
