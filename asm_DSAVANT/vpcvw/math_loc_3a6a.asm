math_loc_3a6a:
    mov ax, 0                        ; 0x3a6a
    call ds_dispatch_f40b            ; 0x3a6d
    mov ax, 0xbb                     ; 0x3a70
    push ax                          ; 0x3a73
    mov ax, 0xab                     ; 0x3a74
    push ax                          ; 0x3a77
    mov ax, 0x70                     ; 0x3a78
    push ax                          ; 0x3a7b
    mov ax, 1                        ; 0x3a7c
    push ax                          ; 0x3a7f
    call ds_dispatch_e8da            ; 0x3a80
    add sp, byte 8                   ; 0x3a83
    call ds_dispatch_ec17            ; 0x3a86
@..math_loc_3a6a.l1:
    call ds_dispatch_baef            ; 0x3a89
    test ax, ax                      ; 0x3a8c
    jne short @..math_loc_3a6a.l2    ; 0x3a8e
    jmp short @..math_loc_3a6a.l1    ; 0x3a90
@..math_loc_3a6a.l2:
    mov ax, 0                        ; 0x3a92
    push ax                          ; 0x3a95
    push ax                          ; 0x3a96
    push word [data_93f8]            ; 0x3a97
    push word [data_93f6]            ; 0x3a9b
    call ds_dispatch_e942            ; 0x3a9f
    add sp, byte 8                   ; 0x3aa2
    mov word [data_9566], 0          ; 0x3aa5
    ret                              ; 0x3aab
