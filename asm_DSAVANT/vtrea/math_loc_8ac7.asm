math_loc_8ac7:
    mov ax, 0                        ; 0x8ac7
    call ds_dispatch_f40b            ; 0x8aca
    push word [bp + 0x6]             ; 0x8acd
    mov ax, 0xa                      ; 0x8ad0
    imul word [bp + 0x8]             ; 0x8ad3
    add ax, word [bp + 0x4]          ; 0x8ad6
    dec ax                           ; 0x8ad9
    push ax                          ; 0x8ada
    call ds_dispatch_e809            ; 0x8adb
    add sp, byte 4                   ; 0x8ade
    mov ax, 7                        ; 0x8ae1
    push ax                          ; 0x8ae4
    mov ax, 0                        ; 0x8ae5
    cmp word [bp + 0xa], byte 0      ; 0x8ae8
    je short @..math_loc_8ac7.l1     ; 0x8aec
    mov ax, 1                        ; 0x8aee
@..math_loc_8ac7.l1:
    add ax, strict word 0x10         ; 0x8af1
    sub ah, ah                       ; 0x8af4
    push ax                          ; 0x8af6
    call ds_dispatch_e830            ; 0x8af7
    add sp, byte 4                   ; 0x8afa
    push word [bp + 0x6]             ; 0x8afd
    mov ax, 0xa                      ; 0x8b00
    imul word [bp + 0x8]             ; 0x8b03
    add ax, word [bp + 0x4]          ; 0x8b06
    push ax                          ; 0x8b09
    call ds_dispatch_e809            ; 0x8b0a
    add sp, byte 4                   ; 0x8b0d
    mov ax, 0                        ; 0x8b10
    push ax                          ; 0x8b13
    push ax                          ; 0x8b14
    call ds_dispatch_e823            ; 0x8b15
    add sp, byte 4                   ; 0x8b18
    mov ax, data_0002                ; 0x8b1b
    push ax                          ; 0x8b1e
    mov ax, word [bp + 0x8]          ; 0x8b1f
    inc ax                           ; 0x8b22
    sub ah, ah                       ; 0x8b23
    push ax                          ; 0x8b25
    call ds_dispatch_e830            ; 0x8b26
    add sp, byte 4                   ; 0x8b29
    cmp word [bp + 0x8], byte 0      ; 0x8b2c
    jne short @..math_loc_8ac7.l2    ; 0x8b30
    cmp word [bp + 0xa], byte 0      ; 0x8b32
    jne short @..math_loc_8ac7.l2    ; 0x8b36
    mov ax, 0xc2                     ; 0x8b38
    push ax                          ; 0x8b3b
    mov ax, word [bp + 0x6]          ; 0x8b3c
    add ax, strict word 8            ; 0x8b3f
    push ax                          ; 0x8b42
    mov ax, word [bp + 0x4]          ; 0x8b43
    dec ax                           ; 0x8b46
    push ax                          ; 0x8b47
    push word [bp + 0x6]             ; 0x8b48
    push ax                          ; 0x8b4b
    call ds_dispatch_e901            ; 0x8b4c
    add sp, byte 0x0a                ; 0x8b4f
@..math_loc_8ac7.l2:
    ret                              ; 0x8b52
