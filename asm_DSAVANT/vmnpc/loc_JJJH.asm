; auto-generated
loc_JJJH:
    mov ax, 0                        ; 0x2472
    call aztec_csav                  ; 0x2475
    cmp word [bss_93ee], byte 0      ; 0x2478
    je short @..loc_JJJH.l1          ; 0x247d
    call loc_TIPL                    ; 0x247f
@..loc_JJJH.l1:
    push word [bp + 0x4]             ; 0x2482
    call loc_JVJP                    ; 0x2485
    pop cx                           ; 0x2488
    call api_idx_000e_LSOI           ; 0x2489
    call api_idx_0004_IKJO           ; 0x248c
    cmp word [bp + 0x6], byte 0      ; 0x248f
    je short @..loc_JJJH.l2          ; 0x2493
    mov ax, 1                        ; 0x2495
    push ax                          ; 0x2498
    mov ax, 0x48                     ; 0x2499
    push ax                          ; 0x249c
    call api_idx_0004_HTKK           ; 0x249d
    add sp, byte 4                   ; 0x24a0
@..loc_JJJH.l2:
    cmp word [bss_93ee], byte 0      ; 0x24a3
    je short @..loc_JJJH.l3          ; 0x24a8
    call loc_KSLL                    ; 0x24aa
@..loc_JJJH.l3:
    ret                              ; 0x24ad
