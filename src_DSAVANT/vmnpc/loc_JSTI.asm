; auto-generated
loc_JSTI:
    mov ax, 0                        ; 0x6d9d
    call aztec_csav                  ; 0x6da0
    mov word [bss_93da], 0           ; 0x6da3
    cmp byte [bss_91ca], 0           ; 0x6da9
    jle short @..loc_JSTI.l1         ; 0x6dae
    mov al, byte [bss_91ca]          ; 0x6db0
    cbw                              ; 0x6db3
    push ax                          ; 0x6db4
    call ds_app_QTIV                 ; 0x6db5
    pop cx                           ; 0x6db8
    mov word [bss_93da], 0x10        ; 0x6db9
@..loc_JSTI.l1:
    cmp byte [bss_91c3], 0           ; 0x6dbf
    je short @..loc_JSTI.l2          ; 0x6dc4
    mov ax, 0xf                      ; 0x6dc6
    push ax                          ; 0x6dc9
    mov al, byte [bss_91c3]          ; 0x6dca
    sub ah, ah                       ; 0x6dcd
    push ax                          ; 0x6dcf
    call load_monster_picture        ; 0x6dd0
    add sp, byte 4                   ; 0x6dd3
    mov word [bss_843a], 0xf         ; 0x6dd6
    mov ax, 0xffff                   ; 0x6ddc
    push ax                          ; 0x6ddf
    mov ax, 0                        ; 0x6de0
    push ax                          ; 0x6de3
    push ax                          ; 0x6de4
    mov ax, 0xf                      ; 0x6de5
    push ax                          ; 0x6de8
    call api_idx_0008_JGKT           ; 0x6de9
    add sp, byte 8                   ; 0x6dec
    jmp short @..loc_JSTI.l3         ; 0x6def
@..loc_JSTI.l2:
    mov word [bss_843a], 0           ; 0x6df1
@..loc_JSTI.l3:
    mov word [bss_93dc], 1           ; 0x6df7
    mov ax, 1                        ; 0x6dfd
    push ax                          ; 0x6e00
    mov ax, 0                        ; 0x6e01
    push ax                          ; 0x6e04
    call api_idx_005e_SHOL           ; 0x6e05
    add sp, byte 4                   ; 0x6e08
    call loc_RPUI                    ; 0x6e0b
    ret                              ; 0x6e0e
