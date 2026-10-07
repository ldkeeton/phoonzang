api_idx_00b8:
    mov ax, 0xff48                   ; 0x14e7
    call ds_dispatch_f40b            ; 0x14ea
    mov ax, 1                        ; 0x14ed
    push ax                          ; 0x14f0
    call api_idx_000a_2              ; 0x14f1
    pop cx                           ; 0x14f4
    cmp word [bp + 0x4], byte 0      ; 0x14f5
    jne short @..api_idx_00b8.l1     ; 0x14f9
    lea ax, word [bp - 0x0068]       ; 0x14fb
    push ax                          ; 0x14fe
    mov ax, 0x146c                   ; 0x14ff
    push ax                          ; 0x1502
    call ds_dispatch_b53b            ; 0x1503
    add sp, byte 4                   ; 0x1506
    mov ax, 1                        ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0                        ; 0x150d
    push ax                          ; 0x1510
    push word [data_91d4]            ; 0x1511
    lea ax, word [bp - 0x0068]       ; 0x1515
    push ax                          ; 0x1518
    call math_loc_0eb2               ; 0x1519
    add sp, byte 8                   ; 0x151c
    ret                              ; 0x151f
