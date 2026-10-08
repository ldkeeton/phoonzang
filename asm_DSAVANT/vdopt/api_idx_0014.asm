api_idx_0014:
    mov ax, 0xffec                   ; 0x09c0
    call ds_dispatch_f40b            ; 0x09c3
    mov word [bp - 0x000e], 0xffff   ; 0x09c6
    mov ax, word [data_8f42]         ; 0x09cb
    mov word [bp - 0x0008], ax       ; 0x09ce
    mov ax, word [data_8f40]         ; 0x09d1
    mov word [bp - 0x000a], ax       ; 0x09d4
    mov ax, word [data_8f3e]         ; 0x09d7
    mov word [bp - 0x000c], ax       ; 0x09da
    push word [bp + 0x6]             ; 0x09dd
    push word [bp + 0x4]             ; 0x09e0
    lea ax, word [bp - 0x000c]       ; 0x09e3
    push ax                          ; 0x09e6
    lea ax, word [bp - 0x000a]       ; 0x09e7
    push ax                          ; 0x09ea
    lea ax, word [bp - 0x0008]       ; 0x09eb
    push ax                          ; 0x09ee
    call api_idx_0004                ; 0x09ef
    add sp, byte 0x0a                ; 0x09f2
    test ax, ax                      ; 0x09f5
    je short @..api_idx_0014.l3      ; 0x09f7
    cmp word [bp + 0xc], byte 0      ; 0x09f9
    jne short @..api_idx_0014.l1     ; 0x09fd
    mov ax, 0x24                     ; 0x09ff
    imul word [bp + 0x8]             ; 0x0a02
    mov cx, word [bp + 0xa]          ; 0x0a05
    shl cx, 1                        ; 0x0a08
    add ax, cx                       ; 0x0a0a
    mov bx, ax                       ; 0x0a0c
    mov word [bx - 0x6f46], 0xffff   ; 0x0a0e
    jmp short @..api_idx_0014.l2     ; 0x0a14
@..api_idx_0014.l1:
    mov ax, word [data_9342]         ; 0x0a16
    push ax                          ; 0x0a19
    mov ax, 0x24                     ; 0x0a1a
    imul word [bp + 0x8]             ; 0x0a1d
    mov cx, ax                       ; 0x0a20
    mov dx, word [bp + 0xa]          ; 0x0a22
    shl dx, 1                        ; 0x0a25
    add ax, dx                       ; 0x0a27
    mov bx, ax                       ; 0x0a29
    pop ax                           ; 0x0a2b
    mov word [bx - 0x6f46], ax       ; 0x0a2c
    mov ax, word [data_9344]         ; 0x0a30
    mov word [bx - 0x6cba], ax       ; 0x0a33
    mov ax, word [data_95ce]         ; 0x0a37
    mov word [bx - 0x6a30], ax       ; 0x0a3a
@..api_idx_0014.l2:
    ret                              ; 0x0a3e
@..api_idx_0014.l3:
    cmp word [data_9858], byte 0     ; 0x0a3f
    je short @..api_idx_0014.l8      ; 0x0a44
    mov bx, word [data_0e12]         ; 0x0a46
    mov si, word [bp - 0x000c]       ; 0x0a4a
    mov al, byte [bx + si + 0xb40]   ; 0x0a4d
    sub ah, ah                       ; 0x0a51
    mov word [bp - 0x0014], ax       ; 0x0a53
@..api_idx_0014.l4:
    push word [bp - 0x0014]          ; 0x0a56
    push word [bp - 0x000c]          ; 0x0a59
    push word [bp - 0x000a]          ; 0x0a5c
    push word [bp - 0x0008]          ; 0x0a5f
    call api_idx_0002                ; 0x0a62
    add sp, byte 8                   ; 0x0a65
    mov word [bp - 0x0014], ax       ; 0x0a68
    cmp ax, strict word 0xffff       ; 0x0a6b
    je short @..api_idx_0014.l7      ; 0x0a6e
    mov bx, word [data_0e12]         ; 0x0a70
    mov si, ax                       ; 0x0a74
    cmp byte [bx + si + 0x5a0], 3    ; 0x0a76
    je short @..api_idx_0014.l5      ; 0x0a7b
    cmp byte [bx + si + 0x5a0], 8    ; 0x0a7d
    jne short @..api_idx_0014.l6     ; 0x0a82
@..api_idx_0014.l5:
    mov ax, 0x24                     ; 0x0a84
    imul word [bp + 0x8]             ; 0x0a87
    mov cx, word [bp + 0xa]          ; 0x0a8a
    shl cx, 1                        ; 0x0a8d
    add ax, cx                       ; 0x0a8f
    mov bx, ax                       ; 0x0a91
    mov word [bx - 0x67a6], 1        ; 0x0a93
@..api_idx_0014.l6:
    inc word [bp - 0x0014]           ; 0x0a99
    jmp short @..api_idx_0014.l4     ; 0x0a9c
@..api_idx_0014.l7:
    jmp short @..api_idx_0014.l9     ; 0x0a9e
@..api_idx_0014.l8:
    mov ax, 0x24                     ; 0x0aa0
    imul word [bp + 0x8]             ; 0x0aa3
    mov cx, word [bp + 0xa]          ; 0x0aa6
    shl cx, 1                        ; 0x0aa9
    add ax, cx                       ; 0x0aab
    mov bx, ax                       ; 0x0aad
    mov word [bx - 0x67a6], 0        ; 0x0aaf
@..api_idx_0014.l9:
    mov ax, word [bp - 0x000c]       ; 0x0ab5
    mov cx, 6                        ; 0x0ab8
    shl ax, cl                       ; 0x0abb
    mov cx, word [bp - 0x000a]       ; 0x0abd
    shl cx, 1                        ; 0x0ac0
    shl cx, 1                        ; 0x0ac2
    shl cx, 1                        ; 0x0ac4
    add ax, cx                       ; 0x0ac6
    add ax, word [bp - 0x0008]       ; 0x0ac8
    mov word [bp - 0x0002], ax       ; 0x0acb
    cmp word [bp + 0xc], byte 0      ; 0x0ace
    jne short @..api_idx_0014.l10    ; 0x0ad2
    push ax                          ; 0x0ad4
    mov ax, 0x8afe                   ; 0x0ad5
    push ax                          ; 0x0ad8
    call ds_dispatch_ec74            ; 0x0ad9
    add sp, byte 4                   ; 0x0adc
    test ax, ax                      ; 0x0adf
    jne short @..api_idx_0014.l10    ; 0x0ae1
    mov ax, 0x24                     ; 0x0ae3
    imul word [bp + 0x8]             ; 0x0ae6
    mov cx, word [bp + 0xa]          ; 0x0ae9
    shl cx, 1                        ; 0x0aec
    add ax, cx                       ; 0x0aee
    mov bx, ax                       ; 0x0af0
    mov word [bx - 0x6f46], 0xffff   ; 0x0af2
    ret                              ; 0x0af8
@..api_idx_0014.l10:
    mov ax, 6                        ; 0x0af9
    push ax                          ; 0x0afc
    push word [bp - 0x0002]          ; 0x0afd
    mov ax, word [data_0e14]         ; 0x0b00
    add ax, 0x4b0                    ; 0x0b03
    push ax                          ; 0x0b06
    call ds_dispatch_ecf6            ; 0x0b07
    add sp, byte 6                   ; 0x0b0a
    mov word [bp - 0x0004], ax       ; 0x0b0d
    mov ax, data_0002                ; 0x0b10
    push ax                          ; 0x0b13
    push word [bp - 0x0002]          ; 0x0b14
    mov ax, word [data_0e14]         ; 0x0b17
    add ax, 0x7b0                    ; 0x0b1a
    push ax                          ; 0x0b1d
    call ds_dispatch_ecf6            ; 0x0b1e
    add sp, byte 6                   ; 0x0b21
    mov word [bp - 0x0006], ax       ; 0x0b24
    cmp word [bp - 0x0004], byte 1   ; 0x0b27
    jne short @..api_idx_0014.l11    ; 0x0b2b
    push word [bp + 0xa]             ; 0x0b2d
    push word [bp + 0x8]             ; 0x0b30
    push word [data_9ae2]            ; 0x0b33
    push ax                          ; 0x0b37
    call loc_095a                    ; 0x0b38
    add sp, byte 8                   ; 0x0b3b
@..api_idx_0014.l11:
    cmp word [bp - 0x0004], byte 2   ; 0x0b3e
    jne short @..api_idx_0014.l12    ; 0x0b42
    push word [bp + 0xa]             ; 0x0b44
    push word [bp + 0x8]             ; 0x0b47
    push word [data_9ae4]            ; 0x0b4a
    push word [bp - 0x0006]          ; 0x0b4e
    call loc_095a                    ; 0x0b51
    add sp, byte 8                   ; 0x0b54
@..api_idx_0014.l12:
    cmp word [bp - 0x0004], byte 8   ; 0x0b57
    jne short @..api_idx_0014.l13    ; 0x0b5b
    mov ax, word [data_9ae6]         ; 0x0b5d
    mov word [bp - 0x000e], ax       ; 0x0b60
@..api_idx_0014.l13:
    cmp word [bp - 0x0004], byte 9   ; 0x0b63
    jne short @..api_idx_0014.l14    ; 0x0b67
    mov ax, word [data_9ae8]         ; 0x0b69
    mov word [bp - 0x000e], ax       ; 0x0b6c
@..api_idx_0014.l14:
    cmp word [bp - 0x0004], byte 0x0d ; 0x0b6f
    jne short @..api_idx_0014.l15    ; 0x0b73
    mov ax, word [data_9aea]         ; 0x0b75
    mov word [bp - 0x000e], ax       ; 0x0b78
@..api_idx_0014.l15:
    cmp word [bp - 0x0004], byte 0x0e ; 0x0b7b
    jne short @..api_idx_0014.l16    ; 0x0b7f
    mov ax, word [data_9aec]         ; 0x0b81
    mov word [bp - 0x000e], ax       ; 0x0b84
@..api_idx_0014.l16:
    cmp word [bp - 0x0004], byte 0x0f ; 0x0b87
    jne short @..api_idx_0014.l17    ; 0x0b8b
    mov ax, word [data_9aee]         ; 0x0b8d
    mov word [bp - 0x000e], ax       ; 0x0b90
@..api_idx_0014.l17:
    cmp word [bp - 0x000e], byte 0xff ; 0x0b93
    je short @..api_idx_0014.l18     ; 0x0b97
    mov ax, word [bp - 0x000e]       ; 0x0b99
    cmp ax, word [data_9af0]         ; 0x0b9c
    jne short @..api_idx_0014.l19    ; 0x0ba0
@..api_idx_0014.l18:
    push word [bp - 0x0002]          ; 0x0ba2
    mov ax, word [data_0e14]         ; 0x0ba5
    add ax, 0x8b0                    ; 0x0ba8
    push ax                          ; 0x0bab
    call ds_dispatch_ec74            ; 0x0bac
    add sp, byte 4                   ; 0x0baf
    test ax, ax                      ; 0x0bb2
    je short @..api_idx_0014.l19     ; 0x0bb4
    mov ax, word [data_9af2]         ; 0x0bb6
    mov word [bp - 0x000e], ax       ; 0x0bb9
@..api_idx_0014.l19:
    mov ax, word [bp - 0x000e]       ; 0x0bbc
    cmp ax, strict word 0xffff       ; 0x0bbf
    je short @..api_idx_0014.l20     ; 0x0bc2
    cmp ax, word [data_9af0]         ; 0x0bc4
    je short @..api_idx_0014.l20     ; 0x0bc8
    cmp ax, word [data_9af2]         ; 0x0bca
    jne short @..api_idx_0014.l21    ; 0x0bce
@..api_idx_0014.l20:
    push word [bp - 0x0002]          ; 0x0bd0
    mov ax, word [data_0e14]         ; 0x0bd3
    add ax, 0x9b0                    ; 0x0bd6
    push ax                          ; 0x0bd9
    call ds_dispatch_ec74            ; 0x0bda
    add sp, byte 4                   ; 0x0bdd
    test ax, ax                      ; 0x0be0
    je short @..api_idx_0014.l21     ; 0x0be2
    mov ax, word [data_9af4]         ; 0x0be4
    mov word [bp - 0x000e], ax       ; 0x0be7
@..api_idx_0014.l21:
    push word [bp - 0x0002]          ; 0x0bea
    mov ax, word [data_0e14]         ; 0x0bed
    add ax, 0x9b0                    ; 0x0bf0
    push ax                          ; 0x0bf3
    call ds_dispatch_ec74            ; 0x0bf4
    add sp, byte 4                   ; 0x0bf7
    test ax, ax                      ; 0x0bfa
    je short @..api_idx_0014.l23     ; 0x0bfc
    mov ax, word [data_830c]         ; 0x0bfe
    jmp short @..api_idx_0014.l22    ; 0x0c01
