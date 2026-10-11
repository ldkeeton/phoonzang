api_idx_000e:
    mov ax, 0xfff2                   ; 0x0961
    db 0xe8, 0xa4, 0xea ; call 0xf40b
    cmp word [dseg_8f20], byte 0     ; 0x0967
    jg short @..api_idx_000e.l1      ; 0x096c
    jmp near @..api_idx_000e.l8      ; 0x096e
@..api_idx_000e.l1:
    mov ax, word [dseg_82ee]         ; 0x0971
    mov cx, word [dseg_8f20]         ; 0x0974
    dec cx                           ; 0x0978
    sub ax, cx                       ; 0x0979
    add ax, strict word 6            ; 0x097b
    mov cx, 4                        ; 0x097e
    cwd                              ; 0x0981
    idiv cx                          ; 0x0982
    mov word [bp - 0x0002], dx       ; 0x0984
    mov ax, dx                       ; 0x0987
    jmp short @..api_idx_000e.l6     ; 0x0989
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x098b
    mov byte [bp - 0x000d], 2        ; 0x098f
    mov ax, 5                        ; 0x0993
    cmp word [bp - 0x0002], byte 0   ; 0x0996
    jne short @..api_idx_000e.l3     ; 0x099a
    mov ax, 4                        ; 0x099c
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x099f
    mov byte [bp - 0x000b], 0        ; 0x09a2
    mov word [bp - 0x0004], 0        ; 0x09a6
    jmp short @..api_idx_000e.l7     ; 0x09ab
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x09ad
    mov byte [bp - 0x000d], 0        ; 0x09b1
    mov ax, 0                        ; 0x09b5
    cmp word [bp - 0x0002], byte 3   ; 0x09b8
    jne short @..api_idx_000e.l5     ; 0x09bc
    mov ax, 1                        ; 0x09be
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x09c1
    jmp short @..api_idx_000e.l7     ; 0x09c4
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x09c6
    je short @..api_idx_000e.l2      ; 0x09c9
    cmp ax, strict word 1            ; 0x09cb
    je short @..api_idx_000e.l4      ; 0x09ce
    cmp ax, strict word 2            ; 0x09d0
    je short @..api_idx_000e.l2      ; 0x09d3
    cmp ax, strict word 3            ; 0x09d5
    je short @..api_idx_000e.l4      ; 0x09d8
@..api_idx_000e.l7:
    lea ax, word [bp - 0x000e]       ; 0x09da
    push ax                          ; 0x09dd
    mov ax, 0                        ; 0x09de
    push ax                          ; 0x09e1
    push word [bp - 0x0004]          ; 0x09e2
    mov ax, 0xf8                     ; 0x09e5
    push ax                          ; 0x09e8
    mov ax, 0x48                     ; 0x09e9
    push ax                          ; 0x09ec
    mov al, byte [bp - 0x000e]       ; 0x09ed
    sub ah, ah                       ; 0x09f0
    mov bx, ax                       ; 0x09f2
    mov al, byte [bx + 0x6eb5]       ; 0x09f4
    sub ah, ah                       ; 0x09f8
    inc ax                           ; 0x09fa
    push ax                          ; 0x09fb
    shl bx, 1                        ; 0x09fc
    mov ax, bx                       ; 0x09fe
    add ax, word [bp - 0x0004]       ; 0x0a00
    mov bx, ax                       ; 0x0a03
    mov al, byte [bx + 0x6e6c]       ; 0x0a05
    sub ah, ah                       ; 0x0a09
    inc ax                           ; 0x0a0b
    push ax                          ; 0x0a0c
    mov ax, 3                        ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x1b                     ; 0x0a11
    push ax                          ; 0x0a14
    call api_idx_0004                ; 0x0a15
    add sp, byte 0x12                ; 0x0a18
@..api_idx_000e.l8:
    cmp word [dseg_8f20], byte 0xff  ; 0x0a1b
    jne short @..api_idx_000e.l9     ; 0x0a20
    mov byte [bp - 0x000e], 1        ; 0x0a22
    mov byte [bp - 0x000d], 0        ; 0x0a26
    lea ax, word [bp - 0x000e]       ; 0x0a2a
    push ax                          ; 0x0a2d
    mov ax, 0                        ; 0x0a2e
    push ax                          ; 0x0a31
    push ax                          ; 0x0a32
    mov ax, 0xf8                     ; 0x0a33
    push ax                          ; 0x0a36
    mov ax, 0x48                     ; 0x0a37
    push ax                          ; 0x0a3a
    mov al, byte [dseg_7b04]         ; 0x0a3b
    sub ah, ah                       ; 0x0a3e
    push ax                          ; 0x0a40
    mov al, byte [dseg_7abc]         ; 0x0a41
    sub ah, ah                       ; 0x0a44
    push ax                          ; 0x0a46
    mov ax, 0xc                      ; 0x0a47
    push ax                          ; 0x0a4a
    mov ax, 0x1c                     ; 0x0a4b
    push ax                          ; 0x0a4e
    call api_idx_0004                ; 0x0a4f
    add sp, byte 0x12                ; 0x0a52
@..api_idx_000e.l9:
    ret                              ; 0x0a55
loc_0a56:
    mov ax, 0                        ; 0x0a56
    db 0xe8, 0xaf, 0xe9 ; call 0xf40b
    mov ax, word [bp + 0x4]          ; 0x0a5c
    shl ax, 1                        ; 0x0a5f
    mov bx, ax                       ; 0x0a61
    mov bx, word [bx - 0x7b96]       ; 0x0a63
    mov al, byte [bx + 0x14]         ; 0x0a67
    sub ah, ah                       ; 0x0a6a
    cmp ax, 0xff                     ; 0x0a6c
    je short @..local.l1             ; 0x0a6f
    mov al, byte [bx + 0x17]         ; 0x0a71
    sub ah, ah                       ; 0x0a74
    push ax                          ; 0x0a76
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    add bx, byte 8                   ; 0x0a7b
    mov ax, bx                       ; 0x0a7e
    push ax                          ; 0x0a80
    mov ax, word [bp + 0x4]          ; 0x0a81
    shl ax, 1                        ; 0x0a84
    mov bx, ax                       ; 0x0a86
    mov bx, word [bx - 0x7b96]       ; 0x0a88
    mov al, byte [bx + 0x16]         ; 0x0a8c
    sub ah, ah                       ; 0x0a8f
    push ax                          ; 0x0a91
    mov ax, 0x8e                     ; 0x0a92
    push ax                          ; 0x0a95
    mov ax, 0x21                     ; 0x0a96
    push ax                          ; 0x0a99
    push word [bx + 0x6]             ; 0x0a9a
    push word [bx + 0x4]             ; 0x0a9d
    push word [bx + 0x2]             ; 0x0aa0
    push word [bx]                   ; 0x0aa3
    mov al, byte [bx + 0x15]         ; 0x0aa5
    sub ah, ah                       ; 0x0aa8
    push ax                          ; 0x0aaa
    call 0xefd1                      ; 0x0aab
    add sp, byte 0x16                ; 0x0aae
@..local.l1:
    ret                              ; 0x0ab1
