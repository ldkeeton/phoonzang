; auto-generated
api_idx_0002_JLUK:
    mov ax, 0xfffe                   ; 0x6800
    call aztec_csav                  ; 0x6803
    cmp word [bss_906a], byte 0      ; 0x6806
    je short @..api_idx_0002_JLUK.l1 ; 0x680b
    mov ax, 1                        ; 0x680d
    push ax                          ; 0x6810
    push word [bss_9068]             ; 0x6811
    call restore_saved_screen        ; 0x6815
    add sp, byte 4                   ; 0x6818
    mov word [bss_906a], 0           ; 0x681b
@..api_idx_0002_JLUK.l1:
    mov ax, 1                        ; 0x6821
    push ax                          ; 0x6824
    push word [bss_8d08]             ; 0x6825
    push word [bss_8d06]             ; 0x6829
    call gfx_restore_area            ; 0x682d
    add sp, byte 6                   ; 0x6830
    mov word [bp - 0x0002], 0        ; 0x6833
@..api_idx_0002_JLUK.l2:
    mov ax, 1                        ; 0x6838
    push ax                          ; 0x683b
    mov ax, word [bp - 0x0002]       ; 0x683c
    shl ax, 1                        ; 0x683f
    shl ax, 1                        ; 0x6841
    mov bx, ax                       ; 0x6843
    push word [bx + 0x69a6]          ; 0x6845
    push word [bx + 0x69a4]          ; 0x6849
    call gfx_restore_area            ; 0x684d
    add sp, byte 6                   ; 0x6850
    inc word [bp - 0x0002]           ; 0x6853
    mov ax, word [bp - 0x0002]       ; 0x6856
    cmp ax, strict word 6            ; 0x6859
    jl short @..api_idx_0002_JLUK.l2 ; 0x685c
    mov word [bp - 0x0002], 0        ; 0x685e
@..api_idx_0002_JLUK.l3:
    mov ax, 1                        ; 0x6863
    push ax                          ; 0x6866
    mov ax, word [bp - 0x0002]       ; 0x6867
    shl ax, 1                        ; 0x686a
    shl ax, 1                        ; 0x686c
    mov bx, ax                       ; 0x686e
    push word [bx - 0x7d2e]          ; 0x6870
    push word [bx - 0x7d30]          ; 0x6874
    call gfx_restore_area            ; 0x6878
    add sp, byte 6                   ; 0x687b
    inc word [bp - 0x0002]           ; 0x687e
    mov ax, word [bp - 0x0002]       ; 0x6881
    cmp ax, strict word 6            ; 0x6884
    jl short @..api_idx_0002_JLUK.l3 ; 0x6887
    call ds_app_VKRR                 ; 0x6889
    mov ax, 0                        ; 0x688c
    push ax                          ; 0x688f
    call ds_app_gfx_entry_22_VNHP    ; 0x6890
    pop cx                           ; 0x6893
    mov ax, 3                        ; 0x6894
    push ax                          ; 0x6897
    call ds_app_gfx_entry_22_VNHP    ; 0x6898
    pop cx                           ; 0x689b
    mov ax, 4                        ; 0x689c
    push ax                          ; 0x689f
    call ds_app_gfx_entry_22_VNHP    ; 0x68a0
    pop cx                           ; 0x68a3
    mov ax, 6                        ; 0x68a4
    push ax                          ; 0x68a7
    call ds_app_gfx_entry_22_VNHP    ; 0x68a8
    pop cx                           ; 0x68ab
    mov ax, 8                        ; 0x68ac
    push ax                          ; 0x68af
    call ds_app_gfx_entry_22_VNHP    ; 0x68b0
    pop cx                           ; 0x68b3
    mov ax, 0xe                      ; 0x68b4
    push ax                          ; 0x68b7
    call ds_app_gfx_entry_22_VNHP    ; 0x68b8
    pop cx                           ; 0x68bb
    ret                              ; 0x68bc
