; auto-generated
api_idx_0004_OPGP:
    mov ax, 0xfffc                   ; 0x6665
    call aztec_csav                  ; 0x6668
    mov word [bss_95b2], 0           ; 0x666b
    cmp word [bss_904c], byte 0      ; 0x6671
    jne short @..api_idx_0004_OPGP.l3 ; 0x6676
    call api_idx_00aa_SLMI           ; 0x6678
    call ds_app_LPKV                 ; 0x667b
    mov word [bss_a494], ax          ; 0x667e
    test ax, ax                      ; 0x6681
    jne short @..api_idx_0004_OPGP.l1 ; 0x6683
    mov word [bp - 0x0002], 0xffff   ; 0x6685
    jmp short @..api_idx_0004_OPGP.l2 ; 0x668a
@..api_idx_0004_OPGP.l1:
    mov ax, 0xc                      ; 0x668c
    push ax                          ; 0x668f
    call ds_app_OIGN                 ; 0x6690
    pop cx                           ; 0x6693
    push word [bp + 0x4]             ; 0x6694
    call api_idx_0038_HNUN           ; 0x6697
    pop cx                           ; 0x669a
    mov word [bp - 0x0002], ax       ; 0x669b
@..api_idx_0004_OPGP.l2:
    mov word [bss_904c], 1           ; 0x669e
    jmp short @..api_idx_0004_OPGP.l4 ; 0x66a4
@..api_idx_0004_OPGP.l3:
    push word [bp + 0x4]             ; 0x66a6
    call api_idx_0038_HNUN           ; 0x66a9
    pop cx                           ; 0x66ac
    mov word [bp - 0x0002], ax       ; 0x66ad
@..api_idx_0004_OPGP.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x66b0
    jne short @..api_idx_0004_OPGP.l5 ; 0x66b4
    mov ax, 0xc6                     ; 0x66b6
    push ax                          ; 0x66b9
    mov ax, 0x109                    ; 0x66ba
    push ax                          ; 0x66bd
    mov ax, 0x8e                     ; 0x66be
    push ax                          ; 0x66c1
    mov ax, 0x36                     ; 0x66c2
    push ax                          ; 0x66c5
    call gfx_entry_16                ; 0x66c6
    add sp, byte 8                   ; 0x66c9
    ret                              ; 0x66cc
@..api_idx_0004_OPGP.l5:
    push word [bss_830c]             ; 0x66cd
    mov ax, 0                        ; 0x66d1
    push ax                          ; 0x66d4
    call ds_app_IMTG                 ; 0x66d5
    add sp, byte 4                   ; 0x66d8
    mov ax, 0                        ; 0x66db
    push ax                          ; 0x66de
    mov ax, 8                        ; 0x66df
    push ax                          ; 0x66e2
    mov ax, bss_8cfe                 ; 0x66e3
    push ax                          ; 0x66e6
    call aztec_setmem                ; 0x66e7
    add sp, byte 6                   ; 0x66ea
    mov word [bss_82ea], 0           ; 0x66ed
    mov ax, word [bss_82ee]          ; 0x66f3
    shl ax, 1                        ; 0x66f6
    mov word [bss_82f0], ax          ; 0x66f8
    mov word [bss_82ec], 0           ; 0x66fb
    mov word [bp - 0x0004], 0xf      ; 0x6701
@..api_idx_0004_OPGP.l6:
    mov bx, word [bp - 0x0004]       ; 0x6706
    mov byte [bx + 0x5b48], 0xff     ; 0x6709
    mov byte [bx + 0x5b5a], 0        ; 0x670e
    inc word [bp - 0x0004]           ; 0x6713
    mov ax, word [bp - 0x0004]       ; 0x6716
    cmp ax, strict word 0x12         ; 0x6719
    jl short @..api_idx_0004_OPGP.l6 ; 0x671c
    mov word [bss_5b70], 0           ; 0x671e
    mov word [bss_5b6e], 0           ; 0x6724
    mov word [bss_5b6c], 0xffff      ; 0x672a
    cmp word [bss_904c], byte 2      ; 0x6730
    je short @..api_idx_0004_OPGP.l7 ; 0x6735
    call ds_app_string_MPHP          ; 0x6737
    mov word [bss_904c], 2           ; 0x673a
@..api_idx_0004_OPGP.l7:
    cmp word [bss_95b2], byte 0      ; 0x6740
    jle short @..api_idx_0004_OPGP.l8 ; 0x6745
    push word [bss_95b2]             ; 0x6747
    call api_idx_0002_HQSQ           ; 0x674b
    pop cx                           ; 0x674e
@..api_idx_0004_OPGP.l8:
    mov word [bss_830a], 6           ; 0x674f
    ret                              ; 0x6755
