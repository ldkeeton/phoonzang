api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x4934
    call ds_dispatch_f40b            ; 0x4937
    mov ax, 0                        ; 0x493a
    push ax                          ; 0x493d
    push ax                          ; 0x493e
    push word [bss_953e]             ; 0x493f
    push word [bss_953c]             ; 0x4943
    call ds_dispatch_e942            ; 0x4947
    add sp, byte 8                   ; 0x494a
    mov ax, 0x53                     ; 0x494d
    push ax                          ; 0x4950
    mov ax, 0x97                     ; 0x4951
    push ax                          ; 0x4954
    mov ax, 0x4d                     ; 0x4955
    push ax                          ; 0x4958
    mov ax, 0x8b                     ; 0x4959
    push ax                          ; 0x495c
    call ds_dispatch_e928            ; 0x495d
    add sp, byte 8                   ; 0x4960
    mov word [bp - 0x0002], dx       ; 0x4963
    mov word [bp - 0x0004], ax       ; 0x4966
    mov ax, 0                        ; 0x4969
    push ax                          ; 0x496c
    push word [bp + 0x4]             ; 0x496d
    call api_idx_0002_5              ; 0x4970
    add sp, byte 4                   ; 0x4973
    mov ax, 0                        ; 0x4976
    push ax                          ; 0x4979
    mov ax, 1                        ; 0x497a
    push ax                          ; 0x497d
    mov ax, 0x10                     ; 0x497e
    push ax                          ; 0x4981
    mov ax, 0x97                     ; 0x4982
    push ax                          ; 0x4985
    mov ax, 0x70                     ; 0x4986
    push ax                          ; 0x4989
    mov ax, 0x44c                    ; 0x498a
    push ax                          ; 0x498d
    call api_idx_0058                ; 0x498e
    add sp, byte 0x0c                ; 0x4991
    mov word [bp - 0x0006], dx       ; 0x4994
    mov word [bp - 0x0008], ax       ; 0x4997
    call ds_dispatch_ec17            ; 0x499a
@..api_idx_0008_3.l1:
    mov ax, 0x13                     ; 0x499d
    push ax                          ; 0x49a0
    call ds_dispatch_b7a9            ; 0x49a1
    pop cx                           ; 0x49a4
    push ax                          ; 0x49a5
    mov ax, 0x248                    ; 0x49a6
    imul word [bp + 0x4]             ; 0x49a9
    mov bx, ax                       ; 0x49ac
    pop ax                           ; 0x49ae
    mov byte [bx + 0x5d6b], al       ; 0x49af
    cmp byte [bx + 0x5e2c], 1        ; 0x49b3
    jne short @..api_idx_0008_3.l2   ; 0x49b8
    inc byte [bx + 0x5d6b]           ; 0x49ba
@..api_idx_0008_3.l2:
    mov ax, 0                        ; 0x49be
    push ax                          ; 0x49c1
    push word [bp - 0x0002]          ; 0x49c2
    push word [bp - 0x0004]          ; 0x49c5
    call ds_dispatch_e94f            ; 0x49c8
    add sp, byte 6                   ; 0x49cb
    mov ax, 0x4d                     ; 0x49ce
    push ax                          ; 0x49d1
    mov ax, 0x8b                     ; 0x49d2
    push ax                          ; 0x49d5
    call ds_dispatch_e809            ; 0x49d6
    add sp, byte 4                   ; 0x49d9
    mov ax, 0                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 1                        ; 0x49e0
    push ax                          ; 0x49e3
    call ds_dispatch_e823            ; 0x49e4
    add sp, byte 4                   ; 0x49e7
    mov ax, 0                        ; 0x49ea
    push ax                          ; 0x49ed
    mov ax, 2                        ; 0x49ee
    push ax                          ; 0x49f1
    mov ax, 0x248                    ; 0x49f2
    imul word [bp + 0x4]             ; 0x49f5
    mov bx, ax                       ; 0x49f8
    mov al, byte [bx + 0x5d6b]       ; 0x49fa
    sub ah, ah                       ; 0x49fe
    push ax                          ; 0x4a00
    call ds_dispatch_b2e7            ; 0x4a01
    add sp, byte 6                   ; 0x4a04
    mov ax, 0x53                     ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 0x97                     ; 0x4a0b
    push ax                          ; 0x4a0e
    mov ax, 0x4d                     ; 0x4a0f
    push ax                          ; 0x4a12
    mov ax, 0x8b                     ; 0x4a13
    push ax                          ; 0x4a16
    call ds_dispatch_e8da            ; 0x4a17
    add sp, byte 8                   ; 0x4a1a
    mov ax, 0x59fe                   ; 0x4a1d
    push ax                          ; 0x4a20
    call ds_dispatch_b90d            ; 0x4a21
    pop cx                           ; 0x4a24
    cmp word [bss_5b3e], byte 0      ; 0x4a25
    jne short @..api_idx_0008_3.l3   ; 0x4a2a
    jmp near @..api_idx_0008_3.l1    ; 0x4a2c
@..api_idx_0008_3.l3:
    mov ax, 1                        ; 0x4a2f
    push ax                          ; 0x4a32
    push ax                          ; 0x4a33
    mov ax, 0x10                     ; 0x4a34
    push ax                          ; 0x4a37
    mov ax, 0x97                     ; 0x4a38
    push ax                          ; 0x4a3b
    mov ax, 0x70                     ; 0x4a3c
    push ax                          ; 0x4a3f
    call ds_dispatch_be5f            ; 0x4a40
    add sp, byte 0x0a                ; 0x4a43
    mov ax, 0                        ; 0x4a46
    push ax                          ; 0x4a49
    mov ax, 1                        ; 0x4a4a
    push ax                          ; 0x4a4d
    mov ax, 0x10                     ; 0x4a4e
    push ax                          ; 0x4a51
    mov ax, 0x97                     ; 0x4a52
    push ax                          ; 0x4a55
    mov ax, 0x70                     ; 0x4a56
    push ax                          ; 0x4a59
    call ds_dispatch_be5f            ; 0x4a5a
    add sp, byte 0x0a                ; 0x4a5d
    mov ax, 1                        ; 0x4a60
    push ax                          ; 0x4a63
    push word [bp - 0x0006]          ; 0x4a64
    push word [bp - 0x0008]          ; 0x4a67
    call ds_dispatch_e94f            ; 0x4a6a
    add sp, byte 6                   ; 0x4a6d
    mov ax, 1                        ; 0x4a70
    push ax                          ; 0x4a73
    push word [bp - 0x0002]          ; 0x4a74
    push word [bp - 0x0004]          ; 0x4a77
    call ds_dispatch_e94f            ; 0x4a7a
    add sp, byte 6                   ; 0x4a7d
    mov ax, 0                        ; 0x4a80
    push ax                          ; 0x4a83
    push word [bp + 0x4]             ; 0x4a84
    call api_idx_0002_5              ; 0x4a87
    add sp, byte 4                   ; 0x4a8a
    mov ax, 0xc7                     ; 0x4a8d
    push ax                          ; 0x4a90
    mov ax, 0x13f                    ; 0x4a91
    push ax                          ; 0x4a94
    mov ax, 0                        ; 0x4a95
    push ax                          ; 0x4a98
    push ax                          ; 0x4a99
    call ds_dispatch_e8da            ; 0x4a9a
    add sp, byte 8                   ; 0x4a9d
    ret                              ; 0x4aa0
loc_4aa1:
    mov ax, 0                        ; 0x4aa1
    call ds_dispatch_f40b            ; 0x4aa4
    mov ax, 0x248                    ; 0x4aa7
    imul word [bp + 0x4]             ; 0x4aaa
    mov bx, ax                       ; 0x4aad
    mov al, byte [bx + 0x5d6b]       ; 0x4aaf
    sub ah, ah                       ; 0x4ab3
    sub ax, word [bp + 0x8]          ; 0x4ab5
    jge short @..local.l46           ; 0x4ab8
    neg ax                           ; 0x4aba
    mov cx, ax                       ; 0x4abc
    jmp short @..local.l47           ; 0x4abe
@..local.l46:
    mov al, byte [bx + 0x5d6b]       ; 0x4ac0
    sub ah, ah                       ; 0x4ac4
    mov cx, ax                       ; 0x4ac6
    sub ax, word [bp + 0x8]          ; 0x4ac8
    mov cx, ax                       ; 0x4acb
@..local.l47:
    shl cx, 1                        ; 0x4acd
    shl cx, 1                        ; 0x4acf
    mov ax, 0x28                     ; 0x4ad1
    sub ax, cx                       ; 0x4ad4
    add bx, word [bp + 0x6]          ; 0x4ad6
    mov byte [bx + 0x5db2], al       ; 0x4ad9
    ret                              ; 0x4add
