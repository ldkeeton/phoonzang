; auto-generated
mark_slot_pair_processed:
    mov ax, 0                        ; 0xa215
    call aztec_csav                  ; 0xa218
    mov ax, 3                        ; 0xa21b
    push ax                          ; 0xa21e
    call random_below                ; 0xa21f
    pop cx                           ; 0xa222
    test ax, ax                      ; 0xa223
    jne short .forward1              ; 0xa225
    mov ax, 0xffff                   ; 0xa227
    push ax                          ; 0xa22a
    mov ax, 5                        ; 0xa22b
    push ax                          ; 0xa22e
    push word [bp + 6]               ; 0xa22f
    push word [bp + 4]               ; 0xa232
    call find_or_add_loaded_record   ; 0xa235
    add sp, byte 8                   ; 0xa238
    mov ax, 0xf                      ; 0xa23b
    push ax                          ; 0xa23e
    call random_below                ; 0xa23f
    pop cx                           ; 0xa242
    add ax, strict word 0xfffb       ; 0xa243
    push ax                          ; 0xa246
    push word [bp + 6]               ; 0xa247
    push word [bp + 4]               ; 0xa24a
    call adjust_target_weight        ; 0xa24d
    add sp, byte 6                   ; 0xa250
    mov ax, 0xf                      ; 0xa253
    push ax                          ; 0xa256
    call random_below                ; 0xa257
    pop cx                           ; 0xa25a
    add ax, strict word 0xfffb       ; 0xa25b
    push ax                          ; 0xa25e
    push word [bp + 4]               ; 0xa25f
    push word [bp + 6]               ; 0xa262
    call adjust_target_weight        ; 0xa265
    add sp, byte 6                   ; 0xa268
.forward1:
    mov ax, 0x16                     ; 0xa26b
    imul word [bp + 4]               ; 0xa26e
    add ax, word [bp + 6]            ; 0xa271
    mov bx, ax                       ; 0xa274
    mov byte [bx + slot_pair_processed], 1 ; 0xa276
    mov ax, 0x16                     ; 0xa27b
    imul word [bp + 6]               ; 0xa27e
    add ax, word [bp + 4]            ; 0xa281
    mov bx, ax                       ; 0xa284
    mov byte [bx + slot_pair_processed], 1 ; 0xa286
    ret                              ; 0xa28b
