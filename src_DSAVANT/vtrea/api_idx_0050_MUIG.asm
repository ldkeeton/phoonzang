; auto-generated
api_idx_0050_MUIG:
    mov ax, 0xffb0                   ; 0x7f5a
    call aztec_csav                  ; 0x7f5d
    mov ax, 0x138c                   ; 0x7f60
    push ax                          ; 0x7f63
    call loc_SNOI                    ; 0x7f64
    pop cx                           ; 0x7f67
    mov ax, 1                        ; 0x7f68
    push ax                          ; 0x7f6b
    call api_idx_000a_TIPG           ; 0x7f6c
    pop cx                           ; 0x7f6f
    push word [bss_0e2c]             ; 0x7f70
    push word [bss_0e2a]             ; 0x7f74
    call ds_app_TSGV                 ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov ax, 0                        ; 0x7f7e
    push ax                          ; 0x7f81
    mov ax, 0xa4                     ; 0x7f82
    push ax                          ; 0x7f85
    mov ax, 0x12e                    ; 0x7f86
    push ax                          ; 0x7f89
    call gfx_entry_33                ; 0x7f8a
    add sp, byte 6                   ; 0x7f8d
    call ds_app_NNSU                 ; 0x7f90
    mov word [bss_8450], ax          ; 0x7f93
    test ax, ax                      ; 0x7f96
    je short @..api_idx_0050_MUIG.l1 ; 0x7f98
    mov ax, 0                        ; 0x7f9a
    push ax                          ; 0x7f9d
    mov ax, 3                        ; 0x7f9e
    push ax                          ; 0x7fa1
    call ds_app_file_KRUQ            ; 0x7fa2
    add sp, byte 4                   ; 0x7fa5
    mov ax, 1                        ; 0x7fa8
    push ax                          ; 0x7fab
    mov ax, 2                        ; 0x7fac
    push ax                          ; 0x7faf
    call ds_app_file_KRUQ            ; 0x7fb0
    add sp, byte 4                   ; 0x7fb3
    mov ax, word [dseg_0112]         ; 0x7fb6
    mov word [bss_844e], ax          ; 0x7fb9
    mov ax, 0                        ; 0x7fbc
    push ax                          ; 0x7fbf
    push word [bss_844e]             ; 0x7fc0
    push ax                          ; 0x7fc4
    call ds_app_UKGP                 ; 0x7fc5
    add sp, byte 6                   ; 0x7fc8
    mov word [bss_844c], ax          ; 0x7fcb
@..api_idx_0050_MUIG.l1:
    lea ax, word [bp - 0x0050]       ; 0x7fce
    push ax                          ; 0x7fd1
    mov ax, 0x1388                   ; 0x7fd2
    push ax                          ; 0x7fd5
    call ds_app_mem_TIMR             ; 0x7fd6
    add sp, byte 4                   ; 0x7fd9
    mov ax, 0xa9                     ; 0x7fdc
    push ax                          ; 0x7fdf
    mov ax, 0xffff                   ; 0x7fe0
    push ax                          ; 0x7fe3
    push word [bss_91d4]             ; 0x7fe4
    lea ax, word [bp - 0x0050]       ; 0x7fe8
    push ax                          ; 0x7feb
    call loc_OOHI                    ; 0x7fec
    add sp, byte 8                   ; 0x7fef
    cmp word [bss_8450], byte 0      ; 0x7ff2
    je short @..api_idx_0050_MUIG.l4 ; 0x7ff7
@..api_idx_0050_MUIG.l2:
    call gfx_entry_52                ; 0x7ff9
    test ax, ax                      ; 0x7ffc
    je short @..api_idx_0050_MUIG.l3 ; 0x7ffe
    jmp short @..api_idx_0050_MUIG.l2 ; 0x8000
@..api_idx_0050_MUIG.l3:
    mov ax, 0x190                    ; 0x8002
    push ax                          ; 0x8005
    call ds_leaf_loc_UJPS            ; 0x8006
    pop cx                           ; 0x8009
    push word [bss_91d4]             ; 0x800a
    push word [bss_91d4]             ; 0x800e
    call api_idx_0004_IMVS           ; 0x8012
    add sp, byte 4                   ; 0x8015
    mov ax, word [dseg_0110]         ; 0x8018
    mov word [bss_844e], ax          ; 0x801b
    mov ax, 1                        ; 0x801e
    push ax                          ; 0x8021
    push word [bss_844e]             ; 0x8022
    push ax                          ; 0x8026
    call ds_app_UKGP                 ; 0x8027
    add sp, byte 6                   ; 0x802a
    mov word [bss_844c], ax          ; 0x802d
@..api_idx_0050_MUIG.l4:
    cmp word [bss_84a4], byte 0      ; 0x8030
    jl short @..api_idx_0050_MUIG.l5 ; 0x8035
    jne short @..api_idx_0050_MUIG.l6 ; 0x8037
    cmp word [bss_84a2], byte 0      ; 0x8039
    ja short @..api_idx_0050_MUIG.l6 ; 0x803e
@..api_idx_0050_MUIG.l5:
    jmp short @..api_idx_0050_MUIG.l7 ; 0x8040
@..api_idx_0050_MUIG.l6:
    call api_idx_00a8_JSHI           ; 0x8042
@..api_idx_0050_MUIG.l7:
    mov ax, 0                        ; 0x8045
    push ax                          ; 0x8048
    mov ax, 0xa4                     ; 0x8049
    push ax                          ; 0x804c
    mov ax, 0x12e                    ; 0x804d
    push ax                          ; 0x8050
    call gfx_entry_34                ; 0x8051
    add sp, byte 6                   ; 0x8054
    mov ax, 0                        ; 0x8057
    mov dx, 0                        ; 0x805a
    push dx                          ; 0x805d
    push ax                          ; 0x805e
    call ds_app_TSGV                 ; 0x805f
    add sp, byte 4                   ; 0x8062
    cmp word [bss_84a0], byte 0xff   ; 0x8065
    je short @..api_idx_0050_MUIG.l8 ; 0x806a
    mov word [bss_905e], 0xf         ; 0x806c
    call loc_HUIS                    ; 0x8072
@..api_idx_0050_MUIG.l8:
    cmp word [bss_8450], byte 0      ; 0x8075
    je short @..api_idx_0050_MUIG.l9 ; 0x807a
    push word [bss_844c]             ; 0x807c
    push word [bss_844e]             ; 0x8080
    call animate_sprite_up           ; 0x8084
    add sp, byte 4                   ; 0x8087
    mov ax, 1                        ; 0x808a
    push ax                          ; 0x808d
    call ds_app_gfx_entry_51_VGJR    ; 0x808e
    pop cx                           ; 0x8091
    mov ax, 0                        ; 0x8092
    push ax                          ; 0x8095
    call ds_app_gfx_entry_51_VGJR    ; 0x8096
    pop cx                           ; 0x8099
@..api_idx_0050_MUIG.l9:
    call loc_VSIT                    ; 0x809a
    ret                              ; 0x809d
