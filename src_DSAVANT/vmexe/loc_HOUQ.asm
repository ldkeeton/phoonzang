; auto-generated
loc_HOUQ:
    mov ax, 0                        ; 0x6edc
    call aztec_csav                  ; 0x6edf
    mov ax, 0                        ; 0x6ee2
    push ax                          ; 0x6ee5
    push word [bp + 0x6]             ; 0x6ee6
    push word [bp + 0x4]             ; 0x6ee9
    call api_idx_0050_PLNP           ; 0x6eec
    add sp, byte 6                   ; 0x6eef
    cmp word [bss_8464], byte 0      ; 0x6ef2
    je short @..loc_HOUQ.l2          ; 0x6ef7
    mov ax, word [bss_8464]          ; 0x6ef9
    cmp ax, strict word 6            ; 0x6efc
    je short @..loc_HOUQ.l2          ; 0x6eff
    mov ax, 1                        ; 0x6f01
    cmp word [bss_8464], byte 3      ; 0x6f04
    jge short @..loc_HOUQ.l1         ; 0x6f09
    mov ax, 0                        ; 0x6f0b
@..loc_HOUQ.l1:
    mov cx, 6                        ; 0x6f0e
    imul cx                          ; 0x6f11
    mov bx, ax                       ; 0x6f13
    mov word [bx + bss_90ca], 0      ; 0x6f15
    mov word [bss_8320], 0           ; 0x6f1b
    call run_party_screen_animation  ; 0x6f21
@..loc_HOUQ.l2:
    mov ax, word [bss_9058]          ; 0x6f24
    mov cx, 2                        ; 0x6f27
    cwd                              ; 0x6f2a
    idiv cx                          ; 0x6f2b
    push ax                          ; 0x6f2d
    call api_idx_0004_QUPL           ; 0x6f2e
    pop cx                           ; 0x6f31
    ret                              ; 0x6f32
