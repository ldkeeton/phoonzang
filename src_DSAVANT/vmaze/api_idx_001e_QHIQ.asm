; auto-generated
api_idx_001e_QHIQ:
    mov ax, 0xffe2                   ; 0x7e46
    call aztec_csav                  ; 0x7e49
    mov ax, word [bss_8d12]          ; 0x7e4c
    shl ax, 1                        ; 0x7e4f
    mov si, ax                       ; 0x7e51
    mov bx, word [bss_0e12]          ; 0x7e53
    mov ax, word [bx + si + 0x1e0]   ; 0x7e57
    mov cx, 0x100                    ; 0x7e5b
    cwd                              ; 0x7e5e
    idiv cx                          ; 0x7e5f
    mov word [bp - 0x0016], ax       ; 0x7e61
    mov ax, word [bx + si + 0x1e0]   ; 0x7e64
    cwd                              ; 0x7e68
    idiv cx                          ; 0x7e69
    mov word [bp - 0x0018], dx       ; 0x7e6b
    mov ax, word [bx + si]           ; 0x7e6e
    cwd                              ; 0x7e70
    idiv cx                          ; 0x7e71
    mov word [bp - 0x001e], ax       ; 0x7e73
    mov ax, word [bx + si]           ; 0x7e76
    cwd                              ; 0x7e78
    idiv cx                          ; 0x7e79
    mov word [bp - 0x001c], dx       ; 0x7e7b
    mov ax, word [bss_82ee]          ; 0x7e7e
    sub ax, word [bp - 0x0016]       ; 0x7e81
    add ax, strict word 4            ; 0x7e84
    mov cx, 4                        ; 0x7e87
    cwd                              ; 0x7e8a
    idiv cx                          ; 0x7e8b
    mov word [bp - 0x001a], dx       ; 0x7e8d
    mov si, word [bss_8d12]          ; 0x7e90
    mov al, byte [bx + si + 0xa50]   ; 0x7e94
    sub ah, ah                       ; 0x7e98
    mov word [bp - 0x0014], ax       ; 0x7e9a
    cmp word [bp - 0x0014], byte 0   ; 0x7e9d
    je short @..api_idx_001e_QHIQ.l1 ; 0x7ea1
    mov ax, 0x12                     ; 0x7ea3
    push ax                          ; 0x7ea6
    call loc_GRON                    ; 0x7ea7
    pop cx                           ; 0x7eaa
    mov ax, 0x10                     ; 0x7eab
    push ax                          ; 0x7eae
    call ds_app_QTIV                 ; 0x7eaf
    pop cx                           ; 0x7eb2
@..api_idx_001e_QHIQ.l1:
    mov ax, word [bss_8d12]          ; 0x7eb3
    shl ax, 1                        ; 0x7eb6
    mov si, ax                       ; 0x7eb8
    mov bx, word [bss_0e12]          ; 0x7eba
    mov ax, word [bx + si + 0x3c0]   ; 0x7ebe
    mov word [bp - 0x0004], ax       ; 0x7ec2
    mov ax, 3                        ; 0x7ec5
    push ax                          ; 0x7ec8
    mov ax, 0                        ; 0x7ec9
    push ax                          ; 0x7ecc
    push word [bp - 0x0004]          ; 0x7ecd
    call ds_dos_con_loc_QJHU         ; 0x7ed0
    add sp, byte 6                   ; 0x7ed3
    mov word [bp - 0x0008], ax       ; 0x7ed6
    mov ax, 3                        ; 0x7ed9
    push ax                          ; 0x7edc
    push ax                          ; 0x7edd
    push word [bp - 0x0004]          ; 0x7ede
    call ds_dos_con_loc_QJHU         ; 0x7ee1
    add sp, byte 6                   ; 0x7ee4
    mov word [bp - 0x000a], ax       ; 0x7ee7
    mov ax, 4                        ; 0x7eea
    push ax                          ; 0x7eed
    mov ax, 6                        ; 0x7eee
    push ax                          ; 0x7ef1
    push word [bp - 0x0004]          ; 0x7ef2
    call ds_dos_con_loc_QJHU         ; 0x7ef5
    add sp, byte 6                   ; 0x7ef8
    mov word [bp - 0x0006], ax       ; 0x7efb
    mov ax, 1                        ; 0x7efe
    push ax                          ; 0x7f01
    mov ax, 0xa                      ; 0x7f02
    push ax                          ; 0x7f05
    push word [bp - 0x0004]          ; 0x7f06
    call ds_dos_con_loc_QJHU         ; 0x7f09
    add sp, byte 6                   ; 0x7f0c
    mov word [bp - 0x0010], ax       ; 0x7f0f
    mov ax, 1                        ; 0x7f12
    push ax                          ; 0x7f15
    mov ax, 0xb                      ; 0x7f16
    push ax                          ; 0x7f19
    push word [bp - 0x0004]          ; 0x7f1a
    call ds_dos_con_loc_QJHU         ; 0x7f1d
    add sp, byte 6                   ; 0x7f20
    mov word [bp - 0x0012], ax       ; 0x7f23
    mov ax, 1                        ; 0x7f26
    push ax                          ; 0x7f29
    mov ax, 0xc                      ; 0x7f2a
    push ax                          ; 0x7f2d
    push word [bp - 0x0004]          ; 0x7f2e
    call ds_dos_con_loc_QJHU         ; 0x7f31
    add sp, byte 6                   ; 0x7f34
    mov word [bp - 0x000e], ax       ; 0x7f37
    mov ax, 1                        ; 0x7f3a
    cmp word [bp - 0x0012], byte 0   ; 0x7f3d
    je short @..api_idx_001e_QHIQ.l2 ; 0x7f41
    mov ax, 6                        ; 0x7f43
@..api_idx_001e_QHIQ.l2:
    mov word [bp - 0x000c], ax       ; 0x7f46
    cmp word [bp - 0x000e], byte 0   ; 0x7f49
    je short @..api_idx_001e_QHIQ.l4 ; 0x7f4d
    cmp word [bp - 0x0010], byte 0   ; 0x7f4f
    je short @..api_idx_001e_QHIQ.l4 ; 0x7f53
    cmp word [bp - 0x0012], byte 0   ; 0x7f55
    je short @..api_idx_001e_QHIQ.l4 ; 0x7f59
    cmp word [bp - 0x001a], byte 0   ; 0x7f5b
    jne short @..api_idx_001e_QHIQ.l4 ; 0x7f5f
    mov ax, word [bss_82ee]          ; 0x7f61
    cmp ax, word [bp - 0x0018]       ; 0x7f64
    jne short @..api_idx_001e_QHIQ.l3 ; 0x7f67
    push word [bp - 0x0014]          ; 0x7f69
    push word [bp - 0x001e]          ; 0x7f6c
    push word [bp - 0x001c]          ; 0x7f6f
    mov ax, 0                        ; 0x7f72
    push ax                          ; 0x7f75
    call api_idx_0018_OIIM           ; 0x7f76
    add sp, byte 8                   ; 0x7f79
    jmp short @..api_idx_001e_QHIQ.l4 ; 0x7f7c
@..api_idx_001e_QHIQ.l3:
    push word [bp - 0x0014]          ; 0x7f7e
    mov ax, 7                        ; 0x7f81
    push ax                          ; 0x7f84
    call loc_HMKT                    ; 0x7f85
    add sp, byte 4                   ; 0x7f88
@..api_idx_001e_QHIQ.l4:
    push word [bp - 0x000a]          ; 0x7f8b
    push word [bp - 0x0008]          ; 0x7f8e
    push word [bp - 0x0006]          ; 0x7f91
    push word [bp - 0x000c]          ; 0x7f94
    push word [bp - 0x0016]          ; 0x7f97
    call set_cell_wall               ; 0x7f9a
    add sp, byte 0x0a                ; 0x7f9d
    cmp word [bp - 0x000e], byte 0   ; 0x7fa0
    je short @..api_idx_001e_QHIQ.l11 ; 0x7fa4
    cmp word [bp - 0x0010], byte 0   ; 0x7fa6
    je short @..api_idx_001e_QHIQ.l9 ; 0x7faa
    cmp word [bp - 0x0012], byte 0   ; 0x7fac
    jne short @..api_idx_001e_QHIQ.l7 ; 0x7fb0
    cmp word [bp - 0x001a], byte 0   ; 0x7fb2
    jne short @..api_idx_001e_QHIQ.l7 ; 0x7fb6
    mov ax, word [bss_82ee]          ; 0x7fb8
    cmp ax, word [bp - 0x0018]       ; 0x7fbb
    jne short @..api_idx_001e_QHIQ.l5 ; 0x7fbe
    push word [bp - 0x0014]          ; 0x7fc0
    push word [bp - 0x001e]          ; 0x7fc3
    push word [bp - 0x001c]          ; 0x7fc6
    mov ax, 1                        ; 0x7fc9
    push ax                          ; 0x7fcc
    call api_idx_0018_OIIM           ; 0x7fcd
    add sp, byte 8                   ; 0x7fd0
    jmp short @..api_idx_001e_QHIQ.l6 ; 0x7fd3
@..api_idx_001e_QHIQ.l5:
    push word [bp - 0x0014]          ; 0x7fd5
    mov ax, 7                        ; 0x7fd8
    push ax                          ; 0x7fdb
    call loc_HMKT                    ; 0x7fdc
    add sp, byte 4                   ; 0x7fdf
@..api_idx_001e_QHIQ.l6:
    jmp short @..api_idx_001e_QHIQ.l8 ; 0x7fe2
@..api_idx_001e_QHIQ.l7:
    cmp word [bp - 0x001a], byte 1   ; 0x7fe4
    jl short @..api_idx_001e_QHIQ.l8 ; 0x7fe8
    cmp word [bp - 0x001a], byte 3   ; 0x7fea
    jg short @..api_idx_001e_QHIQ.l8 ; 0x7fee
    push word [bp - 0x0014]          ; 0x7ff0
    mov ax, 7                        ; 0x7ff3
    push ax                          ; 0x7ff6
    call loc_HMKT                    ; 0x7ff7
    add sp, byte 4                   ; 0x7ffa
@..api_idx_001e_QHIQ.l8:
    call loc_IONR                    ; 0x7ffd
    jmp short @..api_idx_001e_QHIQ.l10 ; 0x8000
@..api_idx_001e_QHIQ.l9:
    call loc_IONR                    ; 0x8002
@..api_idx_001e_QHIQ.l10:
    jmp short @..api_idx_001e_QHIQ.l13 ; 0x8005
@..api_idx_001e_QHIQ.l11:
    cmp word [bp - 0x0010], byte 0   ; 0x8007
    je short @..api_idx_001e_QHIQ.l12 ; 0x800b
    push word [bp - 0x0014]          ; 0x800d
    mov ax, 7                        ; 0x8010
    push ax                          ; 0x8013
    call loc_HMKT                    ; 0x8014
    add sp, byte 4                   ; 0x8017
@..api_idx_001e_QHIQ.l12:
    mov ax, 2                        ; 0x801a
    push ax                          ; 0x801d
    call api_idx_0006_LIGG           ; 0x801e
    pop cx                           ; 0x8021
@..api_idx_001e_QHIQ.l13:
    cmp word [bp - 0x0014], byte 0   ; 0x8022
    je short @..api_idx_001e_QHIQ.l14 ; 0x8026
    mov ax, 0x10                     ; 0x8028
    push ax                          ; 0x802b
    call wait_and_free_sound         ; 0x802c
    pop cx                           ; 0x802f
    mov word [bss_598e], 0xffff      ; 0x8030
@..api_idx_001e_QHIQ.l14:
    mov si, word [bss_8d12]          ; 0x8036
    mov bx, word [bss_0e12]          ; 0x803a
    cmp byte [bx + si + 0x960], 0    ; 0x803e
    jbe short @..api_idx_001e_QHIQ.l15 ; 0x8043
    mov ax, 2                        ; 0x8045
    push ax                          ; 0x8048
    call loc_OUOJ                    ; 0x8049
    pop cx                           ; 0x804c
@..api_idx_001e_QHIQ.l15:
    ret                              ; 0x804d
