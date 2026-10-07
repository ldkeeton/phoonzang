api_idx_0010:
    mov ax, 0xfff0                   ; 0x0090
    call ds_dispatch_f40b            ; 0x0093
    cmp word [bp + 0x4], byte 0      ; 0x0096
    jl short @..api_idx_0010.l1      ; 0x009a
    cmp word [bp + 0x4], byte 6      ; 0x009c
    jle short @..api_idx_0010.l2     ; 0x00a0
@..api_idx_0010.l1:
    mov ax, 0xffff                   ; 0x00a2
    ret                              ; 0x00a5
