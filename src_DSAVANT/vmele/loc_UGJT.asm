; auto-generated
loc_UGJT:
    mov ax, 0xfe5a                   ; 0x331c
    call aztec_csav                  ; 0x331f
    mov ax, 0                        ; 0x3322
    push ax                          ; 0x3325
    mov ax, 0x12                     ; 0x3326
    push ax                          ; 0x3329
    mov ax, cell_slot_ref            ; 0x332a
    push ax                          ; 0x332d
    call aztec_setmem                ; 0x332e
    add sp, byte 6                   ; 0x3331
    mov word [bp - 0x0002], 0        ; 0x3334
@..loc_UGJT.l1:
    mov ax, 0                        ; 0x3339
    push ax                          ; 0x333c
    mov ax, 0x1a4                    ; 0x333d
    push ax                          ; 0x3340
    mov ax, word [bp - 0x0002]       ; 0x3341
    shl ax, 1                        ; 0x3344
    mov bx, ax                       ; 0x3346
    push word [bx + party_char]      ; 0x3348
    call aztec_setmem                ; 0x334c
    add sp, byte 6                   ; 0x334f
    inc word [bp - 0x0002]           ; 0x3352
    mov ax, word [bp - 0x0002]       ; 0x3355
    cmp ax, strict word 7            ; 0x3358
    jl short @..loc_UGJT.l1          ; 0x335b
    mov word [bp - 0x0002], 0        ; 0x335d
@..loc_UGJT.l2:
    mov ax, word [bp - 0x0002]       ; 0x3362
    shl ax, 1                        ; 0x3365
    mov bx, ax                       ; 0x3367
    mov bx, word [bx + party_char]   ; 0x3369
    mov byte [bx + 0x1a1], 0         ; 0x336d
    inc word [bp - 0x0002]           ; 0x3372
    mov ax, word [bp - 0x0002]       ; 0x3375
    cmp ax, strict word 7            ; 0x3378
    jl short @..loc_UGJT.l2          ; 0x337b
    mov word [party_member_count], 0 ; 0x337d
    mov word [bss_845c], 0           ; 0x3383
    mov word [bss_845e], 0xfffe      ; 0x3389
    ret                              ; 0x338f
