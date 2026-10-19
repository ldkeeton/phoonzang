; auto-generated
api_idx_0004_NIHO:
    mov ax, 0xfffc                   ; 0x2ec4
    call aztec_csav                  ; 0x2ec7
    mov ax, 1                        ; 0x2eca
    push ax                          ; 0x2ecd
    call gfx_entry_47                ; 0x2ece
    pop cx                           ; 0x2ed1
    mov ax, 0                        ; 0x2ed2
    push ax                          ; 0x2ed5
    mov ax, 1                        ; 0x2ed6
    push ax                          ; 0x2ed9
    push word [bss_9066]             ; 0x2eda
    push word [bss_9064]             ; 0x2ede
    call gfx_restore_screen          ; 0x2ee2
    add sp, byte 8                   ; 0x2ee5
    mov ax, dseg_90a4                ; 0x2ee8
    push ax                          ; 0x2eeb
    mov ax, 0x8f                     ; 0x2eec
    push ax                          ; 0x2eef
    mov ax, 0xf7                     ; 0x2ef0
    push ax                          ; 0x2ef3
    mov ax, 0x21                     ; 0x2ef4
    push ax                          ; 0x2ef7
    mov ax, 0x48                     ; 0x2ef8
    push ax                          ; 0x2efb
    call ds_app_file_LMRK            ; 0x2efc
    add sp, byte 0x0a                ; 0x2eff
    mov word [bss_9068], ax          ; 0x2f02
    mov word [bss_906a], 1           ; 0x2f05
    mov ax, 0                        ; 0x2f0b
    push ax                          ; 0x2f0e
    mov ax, 1                        ; 0x2f0f
    push ax                          ; 0x2f12
    push word [bss_9062]             ; 0x2f13
    push word [bss_9060]             ; 0x2f17
    call gfx_restore_screen          ; 0x2f1b
    add sp, byte 8                   ; 0x2f1e
    mov ax, 0xc                      ; 0x2f21
    push ax                          ; 0x2f24
    call ds_app_gfx_entry_22_VNHP    ; 0x2f25
    pop cx                           ; 0x2f28
    mov ax, 7                        ; 0x2f29
    push ax                          ; 0x2f2c
    call ds_app_gfx_entry_22_VNHP    ; 0x2f2d
    pop cx                           ; 0x2f30
    mov ax, 5                        ; 0x2f31
    push ax                          ; 0x2f34
    call ds_app_SOQK                 ; 0x2f35
    pop cx                           ; 0x2f38
    mov ax, 6                        ; 0x2f39
    push ax                          ; 0x2f3c
    call ds_app_SOQK                 ; 0x2f3d
    pop cx                           ; 0x2f40
    mov ax, 7                        ; 0x2f41
    push ax                          ; 0x2f44
    call ds_app_SOQK                 ; 0x2f45
    pop cx                           ; 0x2f48
    mov ax, 0xa                      ; 0x2f49
    push ax                          ; 0x2f4c
    call ds_app_SOQK                 ; 0x2f4d
    pop cx                           ; 0x2f50
    mov ax, 0xb                      ; 0x2f51
    push ax                          ; 0x2f54
    call ds_app_SOQK                 ; 0x2f55
    pop cx                           ; 0x2f58
    mov ax, 0xc                      ; 0x2f59
    push ax                          ; 0x2f5c
    call ds_app_SOQK                 ; 0x2f5d
    pop cx                           ; 0x2f60
    cmp word [bss_598e], byte 0xff   ; 0x2f61
    je short @..api_idx_0004_NIHO.l1 ; 0x2f66
    mov ax, 0x10                     ; 0x2f68
    push ax                          ; 0x2f6b
    call ds_app_SOQK                 ; 0x2f6c
    pop cx                           ; 0x2f6f
    mov word [bss_598e], 0xffff      ; 0x2f70
@..api_idx_0004_NIHO.l1:
    mov ax, 0                        ; 0x2f76
    push ax                          ; 0x2f79
    call api_idx_000a_UUIH           ; 0x2f7a
    pop cx                           ; 0x2f7d
    mov ax, 1                        ; 0x2f7e
    push ax                          ; 0x2f81
    call ds_app_gfx_entry_22_VNHP    ; 0x2f82
    pop cx                           ; 0x2f85
    mov ax, 2                        ; 0x2f86
    push ax                          ; 0x2f89
    call ds_app_gfx_entry_22_VNHP    ; 0x2f8a
    pop cx                           ; 0x2f8d
    mov ax, 1                        ; 0x2f8e
    push ax                          ; 0x2f91
    push word [bss_8d0c]             ; 0x2f92
    push word [bss_8d0a]             ; 0x2f96
    call gfx_restore_area            ; 0x2f9a
    add sp, byte 6                   ; 0x2f9d
    mov ax, 1                        ; 0x2fa0
    push ax                          ; 0x2fa3
    push word [bss_8d10]             ; 0x2fa4
    push word [bss_8d0e]             ; 0x2fa8
    call gfx_restore_area            ; 0x2fac
    add sp, byte 6                   ; 0x2faf
    cmp word [bss_905e], byte 0x17   ; 0x2fb2
    jne short @..api_idx_0004_NIHO.l2 ; 0x2fb7
    mov ax, 0xc6                     ; 0x2fb9
    push ax                          ; 0x2fbc
    mov ax, 0x109                    ; 0x2fbd
    push ax                          ; 0x2fc0
    mov ax, 0x92                     ; 0x2fc1
    push ax                          ; 0x2fc4
    mov ax, 0x37                     ; 0x2fc5
    push ax                          ; 0x2fc8
    call ds_app_io_VRKV              ; 0x2fc9
    add sp, byte 8                   ; 0x2fcc
@..api_idx_0004_NIHO.l2:
    mov word [bp - 0x0002], 0        ; 0x2fcf
@..api_idx_0004_NIHO.l3:
    mov ax, word [bp - 0x0002]       ; 0x2fd4
    shl ax, 1                        ; 0x2fd7
    mov bx, ax                       ; 0x2fd9
    push word [bx + bss_8490]        ; 0x2fdb
    call aztec_free                  ; 0x2fdf
    pop cx                           ; 0x2fe2
    mov ax, word [bp - 0x0002]       ; 0x2fe3
    shl ax, 1                        ; 0x2fe6
    mov bx, ax                       ; 0x2fe8
    push word [bx + bss_8482]        ; 0x2fea
    call aztec_free                  ; 0x2fee
    pop cx                           ; 0x2ff1
    inc word [bp - 0x0002]           ; 0x2ff2
    mov ax, word [bp - 0x0002]       ; 0x2ff5
    cmp ax, strict word 7            ; 0x2ff8
    jl short @..api_idx_0004_NIHO.l3 ; 0x2ffb
    mov word [bp - 0x0002], 0        ; 0x2ffd
@..api_idx_0004_NIHO.l4:
    mov ax, word [bp - 0x0002]       ; 0x3002
    shl ax, 1                        ; 0x3005
    mov bx, ax                       ; 0x3007
    push word [bx - 0x7b96]          ; 0x3009
    call aztec_free                  ; 0x300d
    pop cx                           ; 0x3010
    inc word [bp - 0x0002]           ; 0x3011
    mov ax, word [bp - 0x0002]       ; 0x3014
    cmp ax, strict word 0xc          ; 0x3017
    jl short @..api_idx_0004_NIHO.l4 ; 0x301a
    mov word [bp - 0x0004], 0xf      ; 0x301c
@..api_idx_0004_NIHO.l5:
    mov bx, word [bp - 0x0004]       ; 0x3021
    mov al, byte [bx + 0x5b48]       ; 0x3024
    sub ah, ah                       ; 0x3028
    cmp ax, 0xff                     ; 0x302a
    je short @..api_idx_0004_NIHO.l6 ; 0x302d
    push bx                          ; 0x302f
    call ds_app_gfx_entry_22_VNHP    ; 0x3030
    pop cx                           ; 0x3033
@..api_idx_0004_NIHO.l6:
    inc word [bp - 0x0004]           ; 0x3034
    mov ax, word [bp - 0x0004]       ; 0x3037
    cmp ax, strict word 0x12         ; 0x303a
    jl short @..api_idx_0004_NIHO.l5 ; 0x303d
    mov ax, 0                        ; 0x303f
    push ax                          ; 0x3042
    mov ax, 1                        ; 0x3043
    push ax                          ; 0x3046
    call ds_app_file_TSNH            ; 0x3047
    add sp, byte 4                   ; 0x304a
    mov ax, 4                        ; 0x304d
    push ax                          ; 0x3050
    mov ax, 5                        ; 0x3051
    push ax                          ; 0x3054
    call ds_app_file_TSNH            ; 0x3055
    add sp, byte 4                   ; 0x3058
    mov ax, 6                        ; 0x305b
    push ax                          ; 0x305e
    mov ax, 7                        ; 0x305f
    push ax                          ; 0x3062
    call ds_app_file_TSNH            ; 0x3063
    add sp, byte 4                   ; 0x3066
    ret                              ; 0x3069
