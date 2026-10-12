string_loc_6c08:
    mov word [bss_95a6], 0           ; 0x6c08
    mov word [bss_830a], 0x17        ; 0x6c0e
    jmp short loc_6c37               ; 0x6c14
jumptable_6c16:
    dw loc_69cc - IMAGE_BASE + 0x5055          ; 0x6c16
    dw loc_6ad6 - IMAGE_BASE + 0x5055          ; 0x6c18
    dw loc_69cc - IMAGE_BASE + 0x5055          ; 0x6c1a
    dw loc_6a66 - IMAGE_BASE + 0x5055          ; 0x6c1c
    dw loc_6a66 - IMAGE_BASE + 0x5055          ; 0x6c1e
    dw loc_6a66 - IMAGE_BASE + 0x5055          ; 0x6c20
    dw loc_6a66 - IMAGE_BASE + 0x5055          ; 0x6c22
    dw loc_6b5d - IMAGE_BASE + 0x5055          ; 0x6c24
    dw string_loc_6c00 - IMAGE_BASE + 0x5055   ; 0x6c26
    dw string_loc_6c08 - IMAGE_BASE + 0x5055   ; 0x6c28
loc_6c2a:
    cmp ax, strict word 0xa          ; 0x6c2a
    jae short loc_6c37               ; 0x6c2d
    xchg bx, ax                      ; 0x6c2f
    shl bx, 1                        ; 0x6c30
    jmp [cs:bx - 0x43a3]             ; 0x6c32
loc_6c37:
    cmp word [bp - 0x000c], byte 0   ; 0x6c37
    jl short loc_6c52                ; 0x6c3b
    mov ax, word [bss_69c8]          ; 0x6c3d
    dec ax                           ; 0x6c40
    cmp ax, word [bp - 0x000c]       ; 0x6c41
    jl short loc_6c52                ; 0x6c44
    mov ax, 4                        ; 0x6c46
    push ax                          ; 0x6c49
    call ds_app_09f0                 ; 0x6c4a
    pop cx                           ; 0x6c4d
    test ax, ax                      ; 0x6c4e
    jne short loc_6c5d               ; 0x6c50
loc_6c52:
    push word [bss_69c8]             ; 0x6c52
    call ds_app_09f0                 ; 0x6c56
    pop cx                           ; 0x6c59
    mov word [bp - 0x000c], ax       ; 0x6c5a
loc_6c5d:
    mov ax, 0x248                    ; 0x6c5d
    imul word [bp - 0x000c]          ; 0x6c60
    add ax, word [bss_9136]          ; 0x6c63
    mov bx, ax                       ; 0x6c67
    mov al, byte [bx + 0x5db2]       ; 0x6c69
    cbw                              ; 0x6c6d
    push ax                          ; 0x6c6e
    mov ax, 0x248                    ; 0x6c6f
    imul word [bp - 0x000c]          ; 0x6c72
    mov bx, ax                       ; 0x6c75
    mov al, byte [bx + 0x5d6a]       ; 0x6c77
    sub ah, ah                       ; 0x6c7b
    mov cx, ax                       ; 0x6c7d
    pop ax                           ; 0x6c7f
    add ax, cx                       ; 0x6c80
    add ax, word [bss_964e]          ; 0x6c82
    mov word [bp - 0x000a], ax       ; 0x6c86
    mov al, byte [bss_91c7]          ; 0x6c89
    sub ah, ah                       ; 0x6c8c
    mov bx, ax                       ; 0x6c8e
    mov al, byte [bx - 0x7622]       ; 0x6c90
    cbw                              ; 0x6c94
    add ax, word [bss_964e]          ; 0x6c95
    mov word [bp - 0x0002], ax       ; 0x6c99
    cmp word [bss_830a], byte 0x0a   ; 0x6c9c
    je short loc_6d0a                ; 0x6ca1
    cmp ax, strict word 0xfff6       ; 0x6ca3
    jl short loc_6cae                ; 0x6ca6
    cmp word [bp - 0x000a], byte 0xf6 ; 0x6ca8
    jge short loc_6d0a               ; 0x6cac
loc_6cae:
    mov ax, 0x64                     ; 0x6cae
    push ax                          ; 0x6cb1
    call ds_app_09f0                 ; 0x6cb2
    pop cx                           ; 0x6cb5
    add ax, strict word 0xff9c       ; 0x6cb6
    mov word [bp - 0x0008], ax       ; 0x6cb9
    cmp ax, word [bp - 0x0002]       ; 0x6cbc
    jl short loc_6cc6                ; 0x6cbf
    cmp ax, word [bp - 0x000a]       ; 0x6cc1
    jge short loc_6d0a               ; 0x6cc4
loc_6cc6:
    mov ax, 2                        ; 0x6cc6
    push ax                          ; 0x6cc9
    call ds_app_09f0                 ; 0x6cca
    pop cx                           ; 0x6ccd
    cmp ax, strict word 1            ; 0x6cce
    jne short loc_6ce2               ; 0x6cd1
    mov ax, 1                        ; 0x6cd3
    push ax                          ; 0x6cd6
    call loc_2963                    ; 0x6cd7
    pop cx                           ; 0x6cda
    mov word [bp - 0x0006], 8        ; 0x6cdb
    jmp short loc_6d0a               ; 0x6ce0
loc_6ce2:
    cmp word [bss_830a], byte 0x17   ; 0x6ce2
    je short loc_6d0a                ; 0x6ce7
    mov ax, 0x55                     ; 0x6ce9
    push ax                          ; 0x6cec
    mov ax, 0                        ; 0x6ced
    push ax                          ; 0x6cf0
    mov ax, 1                        ; 0x6cf1
    push ax                          ; 0x6cf4
    mov ax, 0x606                    ; 0x6cf5
    push ax                          ; 0x6cf8
    call api_idx_0050                ; 0x6cf9
    add sp, byte 8                   ; 0x6cfc
    mov word [bss_95a6], 1           ; 0x6cff
    mov word [bp - 0x0006], 8        ; 0x6d05
loc_6d0a:
    cmp word [bp - 0x0006], byte 8   ; 0x6d0a
    je short loc_6d19                ; 0x6d0e
    cmp word [bp - 0x0006], byte 9   ; 0x6d10
    je short loc_6d19                ; 0x6d14
    jmp near loc_67ce                ; 0x6d16
loc_6d19:
    cmp word [bss_9d62], byte 1      ; 0x6d19
    jne short loc_6d40               ; 0x6d1e
    mov ax, 5                        ; 0x6d20
    push ax                          ; 0x6d23
    call ds_app_09f0                 ; 0x6d24
    pop cx                           ; 0x6d27
    mov cx, ax                       ; 0x6d28
    add ax, strict word 5            ; 0x6d2a
    mov cx, ax                       ; 0x6d2d
    mov ax, 0                        ; 0x6d2f
    sub ax, cx                       ; 0x6d32
    push ax                          ; 0x6d34
    mov ax, 0                        ; 0x6d35
    push ax                          ; 0x6d38
    push ax                          ; 0x6d39
    call loc_85f9                    ; 0x6d3a
    add sp, byte 6                   ; 0x6d3d
loc_6d40:
    cmp word [bss_830a], byte 0x0a   ; 0x6d40
    jne short loc_6d5d               ; 0x6d45
    mov ax, 0                        ; 0x6d47
    push ax                          ; 0x6d4a
    push ax                          ; 0x6d4b
    push ax                          ; 0x6d4c
    mov ax, 6                        ; 0x6d4d
    push ax                          ; 0x6d50
    mov ax, 0                        ; 0x6d51
    push ax                          ; 0x6d54
    call api_idx_0006_3              ; 0x6d55
    add sp, byte 0x0a                ; 0x6d58
    jmp short loc_6d78               ; 0x6d5b
loc_6d5d:
    cmp word [bss_830a], byte 0x17   ; 0x6d5d
    je short loc_6d78                ; 0x6d62
    mov ax, 0                        ; 0x6d64
    push ax                          ; 0x6d67
    push ax                          ; 0x6d68
    push ax                          ; 0x6d69
    mov ax, 7                        ; 0x6d6a
    push ax                          ; 0x6d6d
    mov ax, 0                        ; 0x6d6e
    push ax                          ; 0x6d71
    call api_idx_0006_3              ; 0x6d72
    add sp, byte 0x0a                ; 0x6d75
loc_6d78:
    cmp word [bss_95a6], byte 1      ; 0x6d78
    jne short loc_6d9c               ; 0x6d7d
    mov word [bss_93dc], 1           ; 0x6d7f
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 1                        ; 0x6d89
    push ax                          ; 0x6d8c
    call api_idx_005e                ; 0x6d8d
    add sp, byte 4                   ; 0x6d90
    mov word [bss_843a], 0           ; 0x6d93
    call loc_109f                    ; 0x6d99
loc_6d9c:
    ret                              ; 0x6d9c
loc_6d9d:
    mov ax, 0                        ; 0x6d9d
    call ds_aztec_csav               ; 0x6da0
    mov word [bss_93da], 0           ; 0x6da3
    cmp byte [bss_91ca], 0           ; 0x6da9
    jle short @..local.l82           ; 0x6dae
    mov al, byte [bss_91ca]          ; 0x6db0
    cbw                              ; 0x6db3
    push ax                          ; 0x6db4
    call ds_app_29f1                 ; 0x6db5
    pop cx                           ; 0x6db8
    mov word [bss_93da], 0x10        ; 0x6db9
@..local.l82:
    cmp byte [bss_91c3], 0           ; 0x6dbf
    je short @..local.l83            ; 0x6dc4
    mov ax, 0xf                      ; 0x6dc6
    push ax                          ; 0x6dc9
    mov al, byte [bss_91c3]          ; 0x6dca
    sub ah, ah                       ; 0x6dcd
    push ax                          ; 0x6dcf
    call ds_app_file_2863            ; 0x6dd0
    add sp, byte 4                   ; 0x6dd3
    mov word [bss_843a], 0xf         ; 0x6dd6
    mov ax, 0xffff                   ; 0x6ddc
    push ax                          ; 0x6ddf
    mov ax, 0                        ; 0x6de0
    push ax                          ; 0x6de3
    push ax                          ; 0x6de4
    mov ax, 0xf                      ; 0x6de5
    push ax                          ; 0x6de8
    call api_idx_0008                ; 0x6de9
    add sp, byte 8                   ; 0x6dec
    jmp short @..local.l84           ; 0x6def
@..local.l83:
    mov word [bss_843a], 0           ; 0x6df1
@..local.l84:
    mov word [bss_93dc], 1           ; 0x6df7
    mov ax, 1                        ; 0x6dfd
    push ax                          ; 0x6e00
    mov ax, 0                        ; 0x6e01
    push ax                          ; 0x6e04
    call api_idx_005e                ; 0x6e05
    add sp, byte 4                   ; 0x6e08
    call loc_109f                    ; 0x6e0b
    ret                              ; 0x6e0e
