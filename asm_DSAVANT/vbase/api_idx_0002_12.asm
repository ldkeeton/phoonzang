; auto-generated
api_idx_0002_12:
    mov ax, 0xfffe                   ; 0x8e6b
    call aztec_csav                  ; 0x8e6e
    mov ax, 0                        ; 0x8e71
    push ax                          ; 0x8e74
    mov ax, 0x919a                   ; 0x8e75
    push ax                          ; 0x8e78
    call api_idx_0002_5              ; 0x8e79
    add sp, byte 4                   ; 0x8e7c
    mov ax, 0                        ; 0x8e7f
    push ax                          ; 0x8e82
    mov ax, 2                        ; 0x8e83
    push ax                          ; 0x8e86
    mov ax, 0x91                     ; 0x8e87
    push ax                          ; 0x8e8a
    mov ax, 0x13f                    ; 0x8e8b
    push ax                          ; 0x8e8e
    mov ax, 0                        ; 0x8e8f
    push ax                          ; 0x8e92
    push ax                          ; 0x8e93
    call ds_loc_3b7c                 ; 0x8e94
    add sp, byte 0x0c                ; 0x8e97
    mov word [bss_a5b4], dx          ; 0x8e9a
    mov word [bss_a5b2], ax          ; 0x8e9e
    mov ax, 0xf                      ; 0x8ea1
    push ax                          ; 0x8ea4
    mov ax, 0xe                      ; 0x8ea5
    push ax                          ; 0x8ea8
    call api_idx_0016_2              ; 0x8ea9
    add sp, byte 4                   ; 0x8eac
    mov ax, 0x10                     ; 0x8eaf
    push ax                          ; 0x8eb2
    mov ax, 0xf                      ; 0x8eb3
    push ax                          ; 0x8eb6
    call api_idx_0016_2              ; 0x8eb7
    add sp, byte 4                   ; 0x8eba
    mov ax, word [bp + 0x6]          ; 0x8ebd
    mov word [bss_a5b8], ax          ; 0x8ec0
    mov ax, word [bp + 0x8]          ; 0x8ec3
    mov word [bss_a5ba], ax          ; 0x8ec6
    mov ax, 0x91a7                   ; 0x8ec9
    push ax                          ; 0x8ecc
    mov ax, 0xa5c6                   ; 0x8ecd
    push ax                          ; 0x8ed0
    call aztec_strcpy                ; 0x8ed1
    add sp, byte 4                   ; 0x8ed4
    mov word [bss_a5ce], 0           ; 0x8ed7
    mov word [bss_a5fa], 0           ; 0x8edd
    mov word [bss_a5fc], 0           ; 0x8ee3
    mov word [bss_a5fe], 0           ; 0x8ee9
    mov word [bss_a5b0], 0           ; 0x8eef
    mov word [bss_a4a4], 8           ; 0x8ef5
    mov word [bss_a5ae], 5           ; 0x8efb
    les bx, word [dseg_0002]         ; 0x8f01
    mov ax, word [es:bx]             ; 0x8f05
    mov dx, word [es:bx + 0x2]       ; 0x8f08
    mov word [bss_908c], dx          ; 0x8f0c
    mov word [bss_908a], ax          ; 0x8f10
    call api_idx_000a_3              ; 0x8f13
    mov ax, 0                        ; 0x8f16
    push ax                          ; 0x8f19
    push ax                          ; 0x8f1a
    push ax                          ; 0x8f1b
    call ds_loc_431e                 ; 0x8f1c
    add sp, byte 6                   ; 0x8f1f
    mov ax, 0xc7                     ; 0x8f22
    push ax                          ; 0x8f25
    mov ax, 0x13f                    ; 0x8f26
    push ax                          ; 0x8f29
    mov ax, 0                        ; 0x8f2a
    push ax                          ; 0x8f2d
    push ax                          ; 0x8f2e
    call ds_loc_3b21                 ; 0x8f2f
    add sp, byte 8                   ; 0x8f32
    mov ax, 0                        ; 0x8f35
    push ax                          ; 0x8f38
    call ds_loc_4304                 ; 0x8f39
    pop cx                           ; 0x8f3c
    mov ax, 0                        ; 0x8f3d
    push ax                          ; 0x8f40
    push word [bp + 0x4]             ; 0x8f41
    call loc_6f79                    ; 0x8f44
    add sp, byte 4                   ; 0x8f47
    mov ax, 0xf                      ; 0x8f4a
    push ax                          ; 0x8f4d
    call loc_72c2                    ; 0x8f4e
    pop cx                           ; 0x8f51
    mov ax, 0x10                     ; 0x8f52
    push ax                          ; 0x8f55
    call loc_72c2                    ; 0x8f56
    pop cx                           ; 0x8f59
    mov ax, 0                        ; 0x8f5a
    push ax                          ; 0x8f5d
    mov ax, 1                        ; 0x8f5e
    push ax                          ; 0x8f61
    push word [bss_a5b4]             ; 0x8f62
    push word [bss_a5b2]             ; 0x8f66
    call ds_loc_3b89                 ; 0x8f6a
    add sp, byte 8                   ; 0x8f6d
    call loc_85f0                    ; 0x8f70
    ret                              ; 0x8f73
