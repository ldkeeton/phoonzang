; auto-generated
api_idx_0002_PSIJ:
    mov ax, 0xfffe                   ; 0x36b8
    call aztec_csav                  ; 0x36bb
    mov word [bss_90b6], 5           ; 0x36be
    mov word [bp - 0x0002], 0        ; 0x36c4
    jmp short @..api_idx_0002_PSIJ.l2 ; 0x36c9
@..api_idx_0002_PSIJ.l1:
    push word [bp - 0x0002]          ; 0x36cb
    call loc_JQLR                    ; 0x36ce
    pop cx                           ; 0x36d1
    mov ax, 1                        ; 0x36d2
    push ax                          ; 0x36d5
    push word [bp - 0x0002]          ; 0x36d6
    call api_idx_0008_MNJN           ; 0x36d9
    add sp, byte 4                   ; 0x36dc
    inc word [bp - 0x0002]           ; 0x36df
@..api_idx_0002_PSIJ.l2:
    mov ax, word [bp - 0x0002]       ; 0x36e2
    cmp ax, word [bss_69c8]          ; 0x36e5
    jl short @..api_idx_0002_PSIJ.l1 ; 0x36e9
    call api_idx_000c_RTIP           ; 0x36eb
    mov ax, 0                        ; 0x36ee
    push ax                          ; 0x36f1
    call api_idx_005a_STLR           ; 0x36f2
    pop cx                           ; 0x36f5
    call loc_RPUI                    ; 0x36f6
    cmp word [bss_90bc], byte 0      ; 0x36f9
    jne short @..api_idx_0002_PSIJ.l3 ; 0x36fe
    call loc_QUVM                    ; 0x3700
@..api_idx_0002_PSIJ.l3:
    mov word [bss_90bc], 0           ; 0x3703
    mov word [game_state], 0xc       ; 0x3709
    ret                              ; 0x370f
