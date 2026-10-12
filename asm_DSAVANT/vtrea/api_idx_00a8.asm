api_idx_00a8:
    mov ax, 0xff58                   ; 0x5d80
    call ds_aztec_csav               ; 0x5d83
    mov word [bp - 0x0004], 0        ; 0x5d86
    mov word [bp - 0x0002], 0        ; 0x5d8b
    jmp short @..api_idx_00a8.l3     ; 0x5d90
@..api_idx_00a8.l1:
    mov ax, 0x248                    ; 0x5d92
    imul word [bp - 0x0002]          ; 0x5d95
    mov bx, ax                       ; 0x5d98
    cmp byte [bx + 0x5e2f], 0        ; 0x5d9a
    jne short @..api_idx_00a8.l2     ; 0x5d9f
    inc word [bp - 0x0004]           ; 0x5da1
@..api_idx_00a8.l2:
    inc word [bp - 0x0002]           ; 0x5da4
@..api_idx_00a8.l3:
    mov ax, word [bp - 0x0002]       ; 0x5da7
    cmp ax, word [bss_69c8]          ; 0x5daa
    jl short @..api_idx_00a8.l1      ; 0x5dae
    mov ax, word [bss_84a2]          ; 0x5db0
    mov dx, word [bss_84a4]          ; 0x5db3
    mov cx, 0x14                     ; 0x5db7
    mov bx, 0                        ; 0x5dba
    call ds_loc_4be6                 ; 0x5dbd
    push ax                          ; 0x5dc0
    push dx                          ; 0x5dc1
    mov ax, word [bss_69c8]          ; 0x5dc2
    sub ax, word [bp - 0x0004]       ; 0x5dc5
    cwd                              ; 0x5dc8
    mov cx, ax                       ; 0x5dc9
    mov bx, dx                       ; 0x5dcb
    pop dx                           ; 0x5dcd
    pop ax                           ; 0x5dce
    push ax                          ; 0x5dcf
    push dx                          ; 0x5dd0
    mul bx                           ; 0x5dd1
    mov bx, ax                       ; 0x5dd3
    pop ax                           ; 0x5dd5
    mul cx                           ; 0x5dd6
    add bx, ax                       ; 0x5dd8
    pop ax                           ; 0x5dda
    mul cx                           ; 0x5ddb
    add dx, bx                       ; 0x5ddd
    mov word [bp - 0x0006], dx       ; 0x5ddf
    mov word [bp - 0x0008], ax       ; 0x5de2
    mov ax, word [bp - 0x0008]       ; 0x5de5
    mov dx, word [bp - 0x0006]       ; 0x5de8
    add word [bss_84a2], ax          ; 0x5deb
    adc word [bss_84a4], dx          ; 0x5def
    mov ax, word [bss_84a2]          ; 0x5df3
    mov dx, word [bss_84a4]          ; 0x5df6
    push ax                          ; 0x5dfa
    push dx                          ; 0x5dfb
    mov ax, word [bp - 0x0004]       ; 0x5dfc
    cwd                              ; 0x5dff
    mov cx, ax                       ; 0x5e00
    mov bx, dx                       ; 0x5e02
    pop dx                           ; 0x5e04
    pop ax                           ; 0x5e05
    call ds_loc_4be6                 ; 0x5e06
    mov word [bp - 0x0006], dx       ; 0x5e09
    mov word [bp - 0x0008], ax       ; 0x5e0c
    lea ax, word [bp - 0x0058]       ; 0x5e0f
    push ax                          ; 0x5e12
    mov ax, 0x1389                   ; 0x5e13
    push ax                          ; 0x5e16
    call ds_app_mem_0782             ; 0x5e17
    add sp, byte 4                   ; 0x5e1a
    lea ax, word [bp - 0x00a8]       ; 0x5e1d
    push ax                          ; 0x5e21
    push word [bp - 0x0006]          ; 0x5e22
    push word [bp - 0x0008]          ; 0x5e25
    call ds_app_0422                 ; 0x5e28
    add sp, byte 6                   ; 0x5e2b
    mov ax, 0x24                     ; 0x5e2e
    push ax                          ; 0x5e31
    lea ax, word [bp - 0x00a8]       ; 0x5e32
    push ax                          ; 0x5e36
    lea ax, word [bp - 0x0058]       ; 0x5e37
    push ax                          ; 0x5e3a
    call ds_app_string_0547          ; 0x5e3b
    add sp, byte 6                   ; 0x5e3e
    mov ax, 0x41                     ; 0x5e41
    push ax                          ; 0x5e44
    mov ax, 0                        ; 0x5e45
    push ax                          ; 0x5e48
    push word [bss_91d4]             ; 0x5e49
    lea ax, word [bp - 0x0058]       ; 0x5e4d
    push ax                          ; 0x5e50
    call loc_0eb2                    ; 0x5e51
    add sp, byte 8                   ; 0x5e54
    mov word [bp - 0x0002], 0        ; 0x5e57
    jmp short @..api_idx_00a8.l6     ; 0x5e5c
@..api_idx_00a8.l4:
    mov ax, 0x248                    ; 0x5e5e
    imul word [bp - 0x0002]          ; 0x5e61
    mov bx, ax                       ; 0x5e64
    cmp byte [bx + 0x5e2f], 0        ; 0x5e66
    jne short @..api_idx_00a8.l5     ; 0x5e6b
    mov ax, word [bp - 0x0008]       ; 0x5e6d
    mov dx, word [bp - 0x0006]       ; 0x5e70
    add word [bx + 0x5c00], ax       ; 0x5e73
    adc word [bx + 0x5c02], dx       ; 0x5e77
@..api_idx_00a8.l5:
    inc word [bp - 0x0002]           ; 0x5e7b
@..api_idx_00a8.l6:
    mov ax, word [bp - 0x0002]       ; 0x5e7e
    cmp ax, word [bss_69c8]          ; 0x5e81
    jl short @..api_idx_00a8.l4      ; 0x5e85
    ret                              ; 0x5e87
