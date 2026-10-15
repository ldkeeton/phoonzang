; auto-generated
loc_VVVH:
    mov ax, 0                        ; 0x8a74
    call aztec_csav                  ; 0x8a77
    mov ax, 0                        ; 0x8a7a
    push ax                          ; 0x8a7d
    mov ax, 0x9158                   ; 0x8a7e
    push ax                          ; 0x8a81
    call api_idx_0002_VTPK           ; 0x8a82
    add sp, byte 4                   ; 0x8a85
    mov ax, 0                        ; 0x8a88
    push ax                          ; 0x8a8b
    mov ax, 2                        ; 0x8a8c
    push ax                          ; 0x8a8f
    mov ax, 0x91                     ; 0x8a90
    push ax                          ; 0x8a93
    mov ax, 0x13f                    ; 0x8a94
    push ax                          ; 0x8a97
    mov ax, 0                        ; 0x8a98
    push ax                          ; 0x8a9b
    push ax                          ; 0x8a9c
    call thunk_11                    ; 0x8a9d
    add sp, byte 0x0c                ; 0x8aa0
    mov word [bss_a5b4], dx          ; 0x8aa3
    mov word [bss_a5b2], ax          ; 0x8aa7
    mov ax, 0xf                      ; 0x8aaa
    push ax                          ; 0x8aad
    mov ax, 9                        ; 0x8aae
    push ax                          ; 0x8ab1
    call api_idx_0016_NVIQ           ; 0x8ab2
    add sp, byte 4                   ; 0x8ab5
    mov ax, 0x11                     ; 0x8ab8
    push ax                          ; 0x8abb
    mov ax, 6                        ; 0x8abc
    push ax                          ; 0x8abf
    call api_idx_0016_NVIQ           ; 0x8ac0
    add sp, byte 4                   ; 0x8ac3
    mov ax, word [bp + 0x6]          ; 0x8ac6
    mov word [bss_a5b8], ax          ; 0x8ac9
    mov word [bss_a5ce], 1           ; 0x8acc
    mov word [bss_a5b0], 0           ; 0x8ad2
    mov word [bss_a4a4], 4           ; 0x8ad8
    mov word [bss_a5e2], 0xff9c      ; 0x8ade
    mov word [bss_a5f2], 0x55        ; 0x8ae4
    mov word [bss_a600], 0           ; 0x8aea
    mov word [bss_a5ae], 5           ; 0x8af0
    les bx, word [dseg_0002]         ; 0x8af6
    mov ax, word [es:bx]             ; 0x8afa
    mov dx, word [es:bx + 0x2]       ; 0x8afd
    mov word [bss_908c], dx          ; 0x8b01
    mov word [bss_908a], ax          ; 0x8b05
    call api_idx_000a_KPKK           ; 0x8b08
    mov ax, 0                        ; 0x8b0b
    push ax                          ; 0x8b0e
    push ax                          ; 0x8b0f
    push ax                          ; 0x8b10
    call thunk_45                    ; 0x8b11
    add sp, byte 6                   ; 0x8b14
    mov ax, 0xc7                     ; 0x8b17
    push ax                          ; 0x8b1a
    mov ax, 0x13f                    ; 0x8b1b
    push ax                          ; 0x8b1e
    mov ax, 0                        ; 0x8b1f
    push ax                          ; 0x8b22
    push ax                          ; 0x8b23
    call thunk_4                     ; 0x8b24
    add sp, byte 8                   ; 0x8b27
    mov ax, 0                        ; 0x8b2a
    push ax                          ; 0x8b2d
    call thunk_43                    ; 0x8b2e
    pop cx                           ; 0x8b31
    mov ax, 0                        ; 0x8b32
    push ax                          ; 0x8b35
    push word [bp + 0x4]             ; 0x8b36
    call loc_HTNP                    ; 0x8b39
    add sp, byte 4                   ; 0x8b3c
    mov ax, 0x11                     ; 0x8b3f
    push ax                          ; 0x8b42
    call loc_JJLM                    ; 0x8b43
    pop cx                           ; 0x8b46
    mov ax, 0xf                      ; 0x8b47
    push ax                          ; 0x8b4a
    call loc_JJLM                    ; 0x8b4b
    pop cx                           ; 0x8b4e
    mov ax, 0                        ; 0x8b4f
    push ax                          ; 0x8b52
    mov ax, 1                        ; 0x8b53
    push ax                          ; 0x8b56
    push word [bss_a5b4]             ; 0x8b57
    push word [bss_a5b2]             ; 0x8b5b
    call thunk_12                    ; 0x8b5f
    add sp, byte 8                   ; 0x8b62
    call loc_SKUK                    ; 0x8b65
    ret                              ; 0x8b68
