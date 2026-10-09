api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x3974
    call ds_dispatch_f40b            ; 0x3977
    push word [bp + 0x6]             ; 0x397a
    push word [bp + 0x6]             ; 0x397d
    mov ax, 0x7f1                    ; 0x3980
    cmp word [bp + 0x6], byte 0      ; 0x3983
    je short @..api_idx_0004_5.l1    ; 0x3987
    mov ax, 0x7ea                    ; 0x3989
@..api_idx_0004_5.l1:
    push ax                          ; 0x398c
    push word [bp + 0x4]             ; 0x398d
    call api_idx_0050                ; 0x3990
    add sp, byte 8                   ; 0x3993
    test ax, ax                      ; 0x3996
    je short @..api_idx_0004_5.l2    ; 0x3998
    jmp near @..api_idx_0004_5.l6    ; 0x399a
@..api_idx_0004_5.l2:
    mov ax, word [data_904e]         ; 0x399d
    mov cx, 0x100                    ; 0x39a0
    cwd                              ; 0x39a3
    idiv cx                          ; 0x39a4
    mov word [bp - 0x0004], ax       ; 0x39a6
    mov word [bp - 0x0002], dx       ; 0x39a9
    mov ax, 6                        ; 0x39ac
    imul dx                          ; 0x39af
    mov bx, ax                       ; 0x39b1
    cmp byte [bx + 0x624], 1         ; 0x39b3
    jne short @..api_idx_0004_5.l3   ; 0x39b8
    call api_idx_0012_2              ; 0x39ba
    mov word [data_9564], ax         ; 0x39bd
    cmp ax, strict word 0xffff       ; 0x39c0
    jne short @..api_idx_0004_5.l3   ; 0x39c3
    mov word [bp - 0x0002], 0xffff   ; 0x39c5
@..api_idx_0004_5.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x39ca
    jge short @..api_idx_0004_5.l4   ; 0x39ce
    jmp near @..api_idx_0004_5.l6    ; 0x39d0
@..api_idx_0004_5.l4:
    mov ax, 6                        ; 0x39d3
    imul word [bp - 0x0002]          ; 0x39d6
    mov bx, ax                       ; 0x39d9
    mov al, byte [bx + 0x622]        ; 0x39db
    sub ah, ah                       ; 0x39df
    imul word [bp - 0x0004]          ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, 0x248                    ; 0x39e5
    imul word [bp + 0x4]             ; 0x39e8
    mov cx, ax                       ; 0x39eb
    mov al, byte [bx + 0x620]        ; 0x39ed
    sub ah, ah                       ; 0x39f1
    mov dx, ax                       ; 0x39f3
    shl ax, 1                        ; 0x39f5
    shl ax, 1                        ; 0x39f7
    mov dx, ax                       ; 0x39f9
    add cx, ax                       ; 0x39fb
    mov bx, cx                       ; 0x39fd
    pop ax                           ; 0x39ff
    sub word [bx + 0x5c1c], ax       ; 0x3a00
    push word [bp - 0x0004]          ; 0x3a04
    call ds_dispatch_b7a9            ; 0x3a07
    pop cx                           ; 0x3a0a
    push ax                          ; 0x3a0b
    mov ax, 6                        ; 0x3a0c
    imul word [bp - 0x0002]          ; 0x3a0f
    mov bx, ax                       ; 0x3a12
    mov al, byte [bx + 0x621]        ; 0x3a14
    sub ah, ah                       ; 0x3a18
    mov cx, ax                       ; 0x3a1a
    pop ax                           ; 0x3a1c
    add ax, cx                       ; 0x3a1d
    add ax, word [bp - 0x0004]       ; 0x3a1f
    push ax                          ; 0x3a22
    mov ax, 0x248                    ; 0x3a23
    imul word [bp + 0x4]             ; 0x3a26
    mov bx, ax                       ; 0x3a29
    pop ax                           ; 0x3a2b
    sub word [bx + 0x5c10], ax       ; 0x3a2c
    cmp word [bx + 0x5c10], byte 0   ; 0x3a30
    jge short @..api_idx_0004_5.l5   ; 0x3a35
    mov word [bx + 0x5c10], 0        ; 0x3a37
    mov ax, 6                        ; 0x3a3d
    push ax                          ; 0x3a40
    call ds_dispatch_b7a9            ; 0x3a41
    pop cx                           ; 0x3a44
    add ax, strict word 6            ; 0x3a45
    push ax                          ; 0x3a48
    mov ax, 0x248                    ; 0x3a49
    imul word [bp + 0x4]             ; 0x3a4c
    mov bx, ax                       ; 0x3a4f
    pop ax                           ; 0x3a51
    mov byte [bx + 0x5d5c], al       ; 0x3a52
@..api_idx_0004_5.l5:
    push word [data_9564]            ; 0x3a56
    push word [bp - 0x0004]          ; 0x3a5a
    push word [bp - 0x0002]          ; 0x3a5d
    push word [bp + 0x4]             ; 0x3a60
    call api_idx_0008_2              ; 0x3a63
    add sp, byte 8                   ; 0x3a66
@..api_idx_0004_5.l6:
    ret                              ; 0x3a69
loc_3a6a:
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
@..local.l41:
    call ds_dispatch_baef            ; 0x3a89
    test ax, ax                      ; 0x3a8c
    jne short @..local.l42           ; 0x3a8e
    jmp short @..local.l41           ; 0x3a90
@..local.l42:
    mov ax, 0                        ; 0x3a92
    push ax                          ; 0x3a95
    push ax                          ; 0x3a96
    push word [data_93f8]            ; 0x3a97
    push word [data_93f6]            ; 0x3a9b
    call ds_dispatch_e942            ; 0x3a9f
    add sp, byte 8                   ; 0x3aa2
    mov word [data_9566], 0          ; 0x3aa5
    ret                              ; 0x3aab
