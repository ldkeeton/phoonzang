; auto-generated
api_idx_0004_OQNP:
    mov ax, 0xfffc                   ; 0x199c
    call aztec_csav                  ; 0x199f
    mov word [bp - 0x0004], 0        ; 0x19a2
    mov word [bp - 0x0002], 0        ; 0x19a7
@..api_idx_0004_OQNP.l1:
    mov ax, 6                        ; 0x19ac
    imul word [bp - 0x0002]          ; 0x19af
    mov bx, ax                       ; 0x19b2
    mov al, byte [bx + spell_table]  ; 0x19b4
    sub ah, ah                       ; 0x19b8
    cmp ax, word [bp + 0x6]          ; 0x19ba
    jne short @..api_idx_0004_OQNP.l2 ; 0x19bd
    push word [bp - 0x0002]          ; 0x19bf
    mov ax, 0x248                    ; 0x19c2
    imul word [bp + 0x4]             ; 0x19c5
    add ax, 0x5e12                   ; 0x19c8
    push ax                          ; 0x19cb
    call ds_leaf_loc_PRVP            ; 0x19cc
    add sp, byte 4                   ; 0x19cf
    test ax, ax                      ; 0x19d2
    je short @..api_idx_0004_OQNP.l2 ; 0x19d4
    mov ax, 0x14                     ; 0x19d6
    imul word [bp - 0x0004]          ; 0x19d9
    add ax, bss_0e38                 ; 0x19dc
    push ax                          ; 0x19df
    mov ax, word [bp - 0x0002]       ; 0x19e0
    add ax, 0xfa0                    ; 0x19e3
    push ax                          ; 0x19e6
    call load_message_string         ; 0x19e7
    add sp, byte 4                   ; 0x19ea
    mov ax, word [bp - 0x0002]       ; 0x19ed
    mov cx, word [bp - 0x0004]       ; 0x19f0
    shl cx, 1                        ; 0x19f3
    mov bx, cx                       ; 0x19f5
    mov word [bx - 0x6efa], ax       ; 0x19f7
    inc word [bp - 0x0004]           ; 0x19fb
@..api_idx_0004_OQNP.l2:
    inc word [bp - 0x0002]           ; 0x19fe
    mov ax, word [bp - 0x0002]       ; 0x1a01
    cmp ax, strict word 0x66         ; 0x1a04
    jl short @..api_idx_0004_OQNP.l1 ; 0x1a07
    mov ax, word [bp - 0x0004]       ; 0x1a09
    ret                              ; 0x1a0c
