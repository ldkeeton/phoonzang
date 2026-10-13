api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x8d84
    call aztec_csav                  ; 0x8d87
    mov ax, 0                        ; 0x8d8a
    push ax                          ; 0x8d8d
    mov ax, 0x9186                   ; 0x8d8e
    push ax                          ; 0x8d91
    call api_idx_0002_5              ; 0x8d92
    add sp, byte 4                   ; 0x8d95
    mov ax, 0                        ; 0x8d98
    push ax                          ; 0x8d9b
    mov ax, 2                        ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, 0x91                     ; 0x8da0
    push ax                          ; 0x8da3
    mov ax, 0x13f                    ; 0x8da4
    push ax                          ; 0x8da7
    mov ax, 0                        ; 0x8da8
    push ax                          ; 0x8dab
    push ax                          ; 0x8dac
    call ds_loc_3b7c                 ; 0x8dad
    add sp, byte 0x0c                ; 0x8db0
    mov word [bss_a5b4], dx          ; 0x8db3
    mov word [bss_a5b2], ax          ; 0x8db7
    mov ax, 0xf                      ; 0x8dba
    push ax                          ; 0x8dbd
    mov ax, 0xc                      ; 0x8dbe
    push ax                          ; 0x8dc1
    call api_idx_0016_2              ; 0x8dc2
    add sp, byte 4                   ; 0x8dc5
    mov ax, 0x9193                   ; 0x8dc8
    push ax                          ; 0x8dcb
    mov ax, 0xa5c6                   ; 0x8dcc
    push ax                          ; 0x8dcf
    call aztec_strcpy                ; 0x8dd0
    add sp, byte 4                   ; 0x8dd3
    mov word [bss_a5fc], 0           ; 0x8dd6
    mov word [bss_a5ce], 0           ; 0x8ddc
    mov word [bss_a5fa], 0           ; 0x8de2
    mov word [bss_a5fe], 0           ; 0x8de8
    mov word [bss_a5b0], 0           ; 0x8dee
    mov word [bss_a4a4], 7           ; 0x8df4
    mov word [bss_a5ae], 5           ; 0x8dfa
    les bx, word [dseg_0002]         ; 0x8e00
    mov ax, word [es:bx]             ; 0x8e04
    mov dx, word [es:bx + 0x2]       ; 0x8e07
    mov word [bss_908c], dx          ; 0x8e0b
    mov word [bss_908a], ax          ; 0x8e0f
    call api_idx_000a_3              ; 0x8e12
    mov ax, 0                        ; 0x8e15
    push ax                          ; 0x8e18
    push ax                          ; 0x8e19
    push ax                          ; 0x8e1a
    call ds_loc_431e                 ; 0x8e1b
    add sp, byte 6                   ; 0x8e1e
    mov ax, 0xc7                     ; 0x8e21
    push ax                          ; 0x8e24
    mov ax, 0x13f                    ; 0x8e25
    push ax                          ; 0x8e28
    mov ax, 0                        ; 0x8e29
    push ax                          ; 0x8e2c
    push ax                          ; 0x8e2d
    call ds_loc_3b21                 ; 0x8e2e
    add sp, byte 8                   ; 0x8e31
    mov ax, 0                        ; 0x8e34
    push ax                          ; 0x8e37
    call ds_loc_4304                 ; 0x8e38
    pop cx                           ; 0x8e3b
    mov ax, 0                        ; 0x8e3c
    push ax                          ; 0x8e3f
    push word [bp + 0x4]             ; 0x8e40
    call loc_6f79                    ; 0x8e43
    add sp, byte 4                   ; 0x8e46
    mov ax, 0xf                      ; 0x8e49
    push ax                          ; 0x8e4c
    call loc_72c2                    ; 0x8e4d
    pop cx                           ; 0x8e50
    mov ax, 0                        ; 0x8e51
    push ax                          ; 0x8e54
    mov ax, 1                        ; 0x8e55
    push ax                          ; 0x8e58
    push word [bss_a5b4]             ; 0x8e59
    push word [bss_a5b2]             ; 0x8e5d
    call ds_loc_3b89                 ; 0x8e61
    add sp, byte 8                   ; 0x8e64
    call loc_85f0                    ; 0x8e67
    ret                              ; 0x8e6a
