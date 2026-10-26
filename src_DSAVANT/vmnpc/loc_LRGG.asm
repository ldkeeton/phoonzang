; auto-generated
loc_LRGG:
    mov ax, 0                        ; 0x2472
    call aztec_csav                  ; 0x2475
    cmp word [bss_93ee], byte 0      ; 0x2478
    je short .forward1               ; 0x247d
    call loc_USTG                    ; 0x247f
.forward1:
    push word [bp + 4]               ; 0x2482
    call loc_IPHP                    ; 0x2485
    pop cx                           ; 0x2488
    call reveal_text_line            ; 0x2489
    call next_text_line              ; 0x248c
    cmp word [bp + 6], byte 0        ; 0x248f
    je short .forward2               ; 0x2493
    mov ax, 1                        ; 0x2495
    push ax                          ; 0x2498
    mov ax, 0x48                     ; 0x2499
    push ax                          ; 0x249c
    call wait_ticks_abortable        ; 0x249d
    add sp, byte 4                   ; 0x24a0
.forward2:
    cmp word [bss_93ee], byte 0      ; 0x24a3
    je short .return1                ; 0x24a8
    call loc_SOOS                    ; 0x24aa
.return1:
    ret                              ; 0x24ad
