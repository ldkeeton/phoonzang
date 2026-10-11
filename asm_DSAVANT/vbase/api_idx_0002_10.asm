api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x8ca3
    call ds_dispatch_f40b            ; 0x8ca6
    mov ax, 0                        ; 0x8ca9
    push ax                          ; 0x8cac
    mov ax, 0x9172                   ; 0x8cad
    push ax                          ; 0x8cb0
    call api_idx_0002_5              ; 0x8cb1
    add sp, byte 4                   ; 0x8cb4
    mov ax, 0                        ; 0x8cb7
    push ax                          ; 0x8cba
    mov ax, 2                        ; 0x8cbb
    push ax                          ; 0x8cbe
    mov ax, 0x91                     ; 0x8cbf
    push ax                          ; 0x8cc2
    mov ax, 0x13f                    ; 0x8cc3
    push ax                          ; 0x8cc6
    mov ax, 0                        ; 0x8cc7
    push ax                          ; 0x8cca
    push ax                          ; 0x8ccb
    call ds_dispatch_e935            ; 0x8ccc
    add sp, byte 0x0c                ; 0x8ccf
    mov word [dseg_a5b4], dx         ; 0x8cd2
    mov word [dseg_a5b2], ax         ; 0x8cd6
    mov ax, 0xf                      ; 0x8cd9
    push ax                          ; 0x8cdc
    mov ax, 0xd                      ; 0x8cdd
    push ax                          ; 0x8ce0
    call api_idx_0016_2              ; 0x8ce1
    add sp, byte 4                   ; 0x8ce4
    mov ax, word [bp + 0x6]          ; 0x8ce7
    mov word [dseg_a5b6], ax         ; 0x8cea
    mov ax, 0x917f                   ; 0x8ced
    push ax                          ; 0x8cf0
    mov ax, 0xa5c6                   ; 0x8cf1
    push ax                          ; 0x8cf4
    call ds_dispatch_f364            ; 0x8cf5
    add sp, byte 4                   ; 0x8cf8
    mov word [dseg_a5ce], 0          ; 0x8cfb
    mov word [dseg_a5fa], 0          ; 0x8d01
    mov word [dseg_a5b0], 0          ; 0x8d07
    mov word [dseg_a4a4], 6          ; 0x8d0d
    mov word [dseg_a5ae], 5          ; 0x8d13
    les bx, word [dseg_0002]         ; 0x8d19
    mov ax, word [es:bx]             ; 0x8d1d
    mov dx, word [es:bx + 0x2]       ; 0x8d20
    mov word [dseg_908c], dx         ; 0x8d24
    mov word [dseg_908a], ax         ; 0x8d28
    call api_idx_000a_3              ; 0x8d2b
    mov ax, 0                        ; 0x8d2e
    push ax                          ; 0x8d31
    push ax                          ; 0x8d32
    push ax                          ; 0x8d33
    call ds_dispatch_f0d7            ; 0x8d34
    add sp, byte 6                   ; 0x8d37
    mov ax, 0xc7                     ; 0x8d3a
    push ax                          ; 0x8d3d
    mov ax, 0x13f                    ; 0x8d3e
    push ax                          ; 0x8d41
    mov ax, 0                        ; 0x8d42
    push ax                          ; 0x8d45
    push ax                          ; 0x8d46
    call ds_dispatch_e8da            ; 0x8d47
    add sp, byte 8                   ; 0x8d4a
    mov ax, 0                        ; 0x8d4d
    push ax                          ; 0x8d50
    call ds_dispatch_f0bd            ; 0x8d51
    pop cx                           ; 0x8d54
    mov ax, 0                        ; 0x8d55
    push ax                          ; 0x8d58
    push word [bp + 0x4]             ; 0x8d59
    call loc_6f79                    ; 0x8d5c
    add sp, byte 4                   ; 0x8d5f
    mov ax, 0xf                      ; 0x8d62
    push ax                          ; 0x8d65
    call loc_72c2                    ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, 0                        ; 0x8d6a
    push ax                          ; 0x8d6d
    mov ax, 1                        ; 0x8d6e
    push ax                          ; 0x8d71
    push word [dseg_a5b4]            ; 0x8d72
    push word [dseg_a5b2]            ; 0x8d76
    call ds_dispatch_e942            ; 0x8d7a
    add sp, byte 8                   ; 0x8d7d
    call loc_85f0                    ; 0x8d80
    ret                              ; 0x8d83
