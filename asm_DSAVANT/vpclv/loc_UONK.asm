; auto-generated
loc_UONK:
    mov ax, 0                        ; 0x0f76
    call aztec_csav                  ; 0x0f79
    mov ax, word [bp + 0x6]          ; 0x0f7c
    add ax, strict word 6            ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    add ax, strict word 0x14         ; 0x0f86
    push ax                          ; 0x0f89
    push word [bp + 0x6]             ; 0x0f8a
    push word [bp + 0x4]             ; 0x0f8d
    call ds_app_URLN                 ; 0x0f90
    add sp, byte 8                   ; 0x0f93
    mov ax, word [bp + 0x8]          ; 0x0f96
    shl ax, 1                        ; 0x0f99
    shl ax, 1                        ; 0x0f9b
    mov bx, ax                       ; 0x0f9d
    push word [word bx + 0x8]        ; 0x0f9f
    mov ax, word [bp + 0x6]          ; 0x0fa3
    add ax, strict word 6            ; 0x0fa6
    push ax                          ; 0x0fa9
    mov ax, word [bp + 0x4]          ; 0x0faa
    add ax, strict word 0x14         ; 0x0fad
    push ax                          ; 0x0fb0
    push word [bp + 0x6]             ; 0x0fb1
    push word [bp + 0x4]             ; 0x0fb4
    call thunk_7                     ; 0x0fb7
    add sp, byte 0x0a                ; 0x0fba
    mov ax, word [bp + 0x6]          ; 0x0fbd
    inc ax                           ; 0x0fc0
    push ax                          ; 0x0fc1
    mov ax, word [bp + 0x4]          ; 0x0fc2
    inc ax                           ; 0x0fc5
    inc ax                           ; 0x0fc6
    push ax                          ; 0x0fc7
    call thunk                       ; 0x0fc8
    add sp, byte 4                   ; 0x0fcb
    cmp word [bp + 0xa], byte 0      ; 0x0fce
    jle short @..loc_UONK.l1         ; 0x0fd2
    mov ax, word [bp + 0xa]          ; 0x0fd4
    cmp ax, word [bp + 0xc]          ; 0x0fd7
    jg short @..loc_UONK.l1          ; 0x0fda
    mov ax, 0                        ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 1                        ; 0x0fe0
    push ax                          ; 0x0fe3
    call thunk_3                     ; 0x0fe4
    add sp, byte 4                   ; 0x0fe7
    mov ax, 0                        ; 0x0fea
    push ax                          ; 0x0fed
    mov ax, 3                        ; 0x0fee
    push ax                          ; 0x0ff1
    push word [bp + 0xa]             ; 0x0ff2
    call ds_app_SHMQ                 ; 0x0ff5
    add sp, byte 6                   ; 0x0ff8
    jmp short @..loc_UONK.l2         ; 0x0ffb
@..loc_UONK.l1:
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push ax                          ; 0x1001
    call thunk_3                     ; 0x1002
    add sp, byte 4                   ; 0x1005
    mov ax, 0                        ; 0x1008
    push ax                          ; 0x100b
    mov ax, 0x909b                   ; 0x100c
    push ax                          ; 0x100f
    call ds_string_loc_PTIK          ; 0x1010
    add sp, byte 4                   ; 0x1013
@..loc_UONK.l2:
    ret                              ; 0x1016
