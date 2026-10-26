; auto-generated
api_idx_0002_SLOH:
    mov ax, 0xfffe                   ; 0xa3dd
    call aztec_csav                  ; 0xa3e0
    mov word [bp - 2], 0             ; 0xa3e3
    jmp short .forward1              ; 0xa3e8
.back1:
    mov ax, 0xa                      ; 0xa3ea
    imul word [bp - 2]               ; 0xa3ed
    mov cx, ax                       ; 0xa3f0
    mov ax, word [bp + 8]            ; 0xa3f2
    add ax, cx                       ; 0xa3f5
    push ax                          ; 0xa3f7
    mov ax, word [bp + 4]            ; 0xa3f8
    add ax, word [bp - 2]            ; 0xa3fb
    push ax                          ; 0xa3fe
    call load_message_string         ; 0xa3ff
    add sp, byte 4                   ; 0xa402
    inc word [bp - 2]                ; 0xa405
.forward1:
    mov ax, word [bp - 2]            ; 0xa408
    cmp ax, word [bp + 6]            ; 0xa40b
    jl short .back1                  ; 0xa40e
    ret                              ; 0xa410
