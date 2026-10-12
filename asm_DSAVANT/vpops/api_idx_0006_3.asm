api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x36c0
    call ds_aztec_csav               ; 0x36c3
    mov word [bp - 0x0002], 0xffff   ; 0x36c6
    mov word [bp - 0x0006], 0        ; 0x36cb
    mov ax, 8                        ; 0x36d0
    push ax                          ; 0x36d3
    call ds_app_09f0                 ; 0x36d4
    pop cx                           ; 0x36d7
    inc ax                           ; 0x36d8
    mov word [bp - 0x0004], ax       ; 0x36d9
@..api_idx_0006_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x36dc
    inc ax                           ; 0x36df
    mov cx, 8                        ; 0x36e0
    cwd                              ; 0x36e3
    idiv cx                          ; 0x36e4
    mov word [bp - 0x0002], dx       ; 0x36e6
    push dx                          ; 0x36e9
    push word [bp + 0x4]             ; 0x36ea
    call ds_leaf_loc_3ebb            ; 0x36ed
    add sp, byte 4                   ; 0x36f0
    cmp ax, strict word 1            ; 0x36f3
    jne short @..api_idx_0006_3.l2   ; 0x36f6
    dec word [bp - 0x0004]           ; 0x36f8
    jmp short @..api_idx_0006_3.l3   ; 0x36fb
@..api_idx_0006_3.l2:
    inc word [bp - 0x0006]           ; 0x36fd
@..api_idx_0006_3.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x3700
    jle short @..api_idx_0006_3.l4   ; 0x3704
    cmp word [bp - 0x0006], byte 0x64 ; 0x3706
    jl short @..api_idx_0006_3.l1    ; 0x370a
@..api_idx_0006_3.l4:
    mov ax, word [bp - 0x0002]       ; 0x370c
    ret                              ; 0x370f
