api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x69d6
    call ds_dispatch_f40b            ; 0x69d9
    push word [bp + 0xc]             ; 0x69dc
    push word [bp + 0xa]             ; 0x69df
    push word [bp + 0x8]             ; 0x69e2
    push word [bp + 0x6]             ; 0x69e5
    push word [bp + 0x4]             ; 0x69e8
    call api_idx_0006_5              ; 0x69eb
    add sp, byte 0x0a                ; 0x69ee
    mov word [bp - 0x0002], ax       ; 0x69f1
    cmp ax, strict word 0xffff       ; 0x69f4
    jne short @..api_idx_0004_7.l2   ; 0x69f7
    mov ax, word [bss_590e]          ; 0x69f9
    mov word [bp - 0x0002], ax       ; 0x69fc
    inc word [bss_590e]              ; 0x69ff
    mov ax, word [bss_590e]          ; 0x6a03
    cmp ax, 0x200                    ; 0x6a06
    jl short @..api_idx_0004_7.l2    ; 0x6a09
@..api_idx_0004_7.l1:
    mov ax, 0                        ; 0x6a0b
    push ax                          ; 0x6a0e
jumptable_19c1_case_5:
    call ds_dispatch_b7e0            ; 0x6a0f
    pop cx                           ; 0x6a12
    jmp short @..api_idx_0004_7.l1   ; 0x6a13
@..api_idx_0004_7.l2:
    mov ax, 6                        ; 0x6a15
    imul word [bp - 0x0002]          ; 0x6a18
    mov cx, ax                       ; 0x6a1b
    mov ax, word [bss_0e10]          ; 0x6a1d
    add ax, cx                       ; 0x6a20
    mov word [bp - 0x0004], ax       ; 0x6a22
    mov al, byte [bp + 0x4]          ; 0x6a25
    mov bx, word [bp - 0x0004]       ; 0x6a28
    mov byte [bx], al                ; 0x6a2b
    mov al, byte [bp + 0x6]          ; 0x6a2d
    mov bx, word [bp - 0x0004]       ; 0x6a30
    mov byte [bx + 0x1], al          ; 0x6a33
    mov ax, word [bp + 0x8]          ; 0x6a36
    xchg al, ah                      ; 0x6a39
    sub al, al                       ; 0x6a3b
    mov dx, word [bp + 0xa]          ; 0x6a3d
    mov cx, 4                        ; 0x6a40
    shl dx, cl                       ; 0x6a43
    mov cx, dx                       ; 0x6a45
    add ax, cx                       ; 0x6a47
    add ax, word [bp + 0xc]          ; 0x6a49
    mov bx, word [bp - 0x0004]       ; 0x6a4c
    mov word [bx + 0x2], ax          ; 0x6a4f
    mov ax, word [bp + 0x6]          ; 0x6a52
    jmp short @..api_idx_0004_7.l3   ; 0x6a55
    mov ax, word [bp + 0xe]          ; 0x6a57
    mov cx, 4                        ; 0x6a5a
    shl ax, cl                       ; 0x6a5d
    add ax, word [bp + 0x10]         ; 0x6a5f
    xchg al, ah                      ; 0x6a62
    sub al, al                       ; 0x6a64
    mov dx, word [bp + 0x12]         ; 0x6a66
    shl dx, cl                       ; 0x6a69
    mov cx, dx                       ; 0x6a6b
    add ax, cx                       ; 0x6a6d
    add ax, word [bp + 0x14]         ; 0x6a6f
    mov bx, word [bp - 0x0004]       ; 0x6a72
    mov word [bx + 0x4], ax          ; 0x6a75
    jmp short @..local.l79           ; 0x6a78
    mov ax, word [bp + 0xe]          ; 0x6a7a
    mov bx, word [bp - 0x0004]       ; 0x6a7d
    mov word [bx + 0x4], ax          ; 0x6a80
    jmp short @..local.l79           ; 0x6a83
    mov ax, word [bp + 0xe]          ; 0x6a85
    xchg al, ah                      ; 0x6a88
    sub al, al                       ; 0x6a8a
    add ax, word [bp + 0x10]         ; 0x6a8c
    mov bx, word [bp - 0x0004]       ; 0x6a8f
    mov word [bx + 0x4], ax          ; 0x6a92
    jmp short @..local.l79           ; 0x6a95
    mov ax, word [bp + 0x8]          ; 0x6a97
    mov bx, word [bp - 0x0004]       ; 0x6a9a
    mov word [bx + 0x2], ax          ; 0x6a9d
    mov ax, word [bp + 0xe]          ; 0x6aa0
    mov bx, word [bp - 0x0004]       ; 0x6aa3
    mov word [bx + 0x4], ax          ; 0x6aa6
    jmp short @..local.l79           ; 0x6aa9
    sahf                             ; 0x6aab
    mov dx, 0xbac1                   ; 0x6aac
    sar word [bp + si - 0x453f], 0xc1 ; 0x6aaf
    mov dx, 0xbacc                   ; 0x6ab4
    db 0xde, 0xba
@..api_idx_0004_7.l3:
    db 0x3d, 0x07
    add byte [bp + di + 0x8], dh     ; 0x6abb
    xchg bx, ax                      ; 0x6abe
    shl bx, 1                        ; 0x6abf
    jmp [cs:bx - 0x450e]             ; 0x6ac1
@..local.l79:
    ret                              ; 0x6ac6
loc_6ac7:
    mov ax, 0                        ; 0x6ac7
    call ds_dispatch_f40b            ; 0x6aca
    cmp word [bp + 0x4], byte 0      ; 0x6acd
    jle short @..local.l82           ; 0x6ad1
    mov ax, word [bp + 0x4]          ; 0x6ad3
    cmp ax, strict word 5            ; 0x6ad6
    jl short @..local.l80            ; 0x6ad9
    cmp ax, strict word 8            ; 0x6adb
    je short @..local.l80            ; 0x6ade
    cmp ax, strict word 9            ; 0x6ae0
    jne short @..local.l81           ; 0x6ae3
@..local.l80:
    push ax                          ; 0x6ae5
    call ds_dispatch_b7e0            ; 0x6ae6
    pop cx                           ; 0x6ae9
    jmp short @..local.l82           ; 0x6aea
@..local.l81:
    push word [bp + 0x4]             ; 0x6aec
    call ds_dispatch_d7aa            ; 0x6aef
    pop cx                           ; 0x6af2
    mov ax, 0x10                     ; 0x6af3
    push ax                          ; 0x6af6
    call ds_dispatch_b7e0            ; 0x6af7
    pop cx                           ; 0x6afa
    mov ax, 0x10                     ; 0x6afb
    push ax                          ; 0x6afe
    call ds_dispatch_d6c6            ; 0x6aff
    pop cx                           ; 0x6b02
    mov word [bss_598e], 0xffff      ; 0x6b03
@..local.l82:
    ret                              ; 0x6b09
