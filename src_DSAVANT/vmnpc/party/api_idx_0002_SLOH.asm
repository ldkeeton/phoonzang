; auto-generated
api_idx_0002_SLOH:
    mov ax, 0xfffe                   ; 0xa3dd
    call aztec_csav                  ; 0xa3e0
    mov word [bp - 0x0002], 0        ; 0xa3e3
    jmp short @..api_idx_0002_SLOH.l2 ; 0xa3e8
@..api_idx_0002_SLOH.l1:
    mov ax, 0xa                      ; 0xa3ea
    imul word [bp - 0x0002]          ; 0xa3ed
    mov cx, ax                       ; 0xa3f0
    mov ax, word [bp + 0x8]          ; 0xa3f2
    add ax, cx                       ; 0xa3f5
    push ax                          ; 0xa3f7
    mov ax, word [bp + 0x4]          ; 0xa3f8
    add ax, word [bp - 0x0002]       ; 0xa3fb
    push ax                          ; 0xa3fe
    call load_message_string         ; 0xa3ff
    add sp, byte 4                   ; 0xa402
    inc word [bp - 0x0002]           ; 0xa405
@..api_idx_0002_SLOH.l2:
    mov ax, word [bp - 0x0002]       ; 0xa408
    cmp ax, word [bp + 0x6]          ; 0xa40b
    jl short @..api_idx_0002_SLOH.l1 ; 0xa40e
    ret                              ; 0xa410
