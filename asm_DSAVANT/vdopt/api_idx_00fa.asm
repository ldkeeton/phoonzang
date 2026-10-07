api_idx_00fa:
    mov ax, 0xff06                   ; 0x1a5d
    call ds_dispatch_f40b            ; 0x1a60
    mov word [bp - 0x0004], 0        ; 0x1a63
    mov word [bp - 0x0006], 0        ; 0x1a68
    mov word [bp - 0x0008], 0        ; 0x1a6d
    mov ax, word [bp + 0x4]          ; 0x1a72
    jmp short @..api_idx_00fa.l1     ; 0x1a75
    add word [bp - 0x0008], byte 0x19 ; 0x1a77
    add word [bp - 0x0008], byte 0x19 ; 0x1a7b
    add word [bp - 0x0006], byte 0x19 ; 0x1a7f
    add word [bp - 0x0008], byte 0x19 ; 0x1a83
    add word [bp - 0x0006], byte 0x19 ; 0x1a87
    add word [bp - 0x0008], byte 0x19 ; 0x1a8b
    add word [bp - 0x0004], byte 0x19 ; 0x1a8f
    add word [bp - 0x0006], byte 0x19 ; 0x1a93
    add word [bp - 0x0004], byte 0x19 ; 0x1a97
    add word [bp - 0x0006], byte 0x19 ; 0x1a9b
    add word [bp - 0x0004], byte 0x32 ; 0x1a9f
    jmp short @..api_idx_00fa.l2     ; 0x1aa3
    or word [bp + di - 0x001a], bp   ; 0x1aa5
    db 0x6a, 0xde ; push 0xffde
    db 0x6a, 0xd6 ; push 0xffd6
    db 0x6a, 0xce ; push 0xffce
    db 0x6a, 0xc6 ; push 0xffc6
    db 0x6a, 0xc2 ; push 0xffc2
    db 0x6a, 0xbe ; push 0xffbe
    db 0x6a
@..api_idx_00fa.l1:
    cmp ax, strict word 8            ; 0x1ab5
    jae short @..api_idx_00fa.l2     ; 0x1ab8
    xchg bx, ax                      ; 0x1aba
    shl bx, 1                        ; 0x1abb
    jmp [cs:bx + 0x6aec]             ; 0x1abd
@..api_idx_00fa.l2:
    mov ax, data_0002                ; 0x1ac2
    push ax                          ; 0x1ac5
    call ds_dispatch_c12a            ; 0x1ac6
    pop cx                           ; 0x1ac9
    mov ax, 0xe                      ; 0x1aca
    push ax                          ; 0x1acd
    mov ax, 0                        ; 0x1ace
    push ax                          ; 0x1ad1
    call ds_dispatch_d61c            ; 0x1ad2
    add sp, byte 4                   ; 0x1ad5
    mov ax, 0xc6                     ; 0x1ad8
    push ax                          ; 0x1adb
    mov ax, 0x109                    ; 0x1adc
    push ax                          ; 0x1adf
    mov ax, 0x92                     ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, 0x37                     ; 0x1ae4
    push ax                          ; 0x1ae7
    call ds_dispatch_e928            ; 0x1ae8
    add sp, byte 8                   ; 0x1aeb
    mov word [data_8d10], dx         ; 0x1aee
    mov word [data_8d0e], ax         ; 0x1af2
    call api_idx_000a_2              ; 0x1af5
    mov word [bp - 0x000a], 0        ; 0x1af8
    mov word [bp - 0x0002], 0        ; 0x1afd
@..api_idx_00fa.l3:
    mov ax, 0x26                     ; 0x1b02
    imul word [bp - 0x0002]          ; 0x1b05
    mov bx, ax                       ; 0x1b08
    cmp byte [bx - 0x7b14], 0x19     ; 0x1b0a
    jb short @..api_idx_00fa.l4      ; 0x1b0f
    jmp near @..api_idx_00fa.l11     ; 0x1b11
@..api_idx_00fa.l4:
    mov ax, 0x64                     ; 0x1b14
    push ax                          ; 0x1b17
    call ds_dispatch_b7a9            ; 0x1b18
    pop cx                           ; 0x1b1b
    cmp ax, word [bp - 0x0008]       ; 0x1b1c
    jl short @..api_idx_00fa.l7      ; 0x1b1f
    mov ax, 0x26                     ; 0x1b21
    imul word [bp - 0x0002]          ; 0x1b24
    mov bx, ax                       ; 0x1b27
    mov al, byte [bx - 0x7b14]       ; 0x1b29
    sub ah, ah                       ; 0x1b2d
    shl ax, 1                        ; 0x1b2f
    shl ax, 1                        ; 0x1b31
    mov bx, ax                       ; 0x1b33
    mov al, byte [bx - 0x7687]       ; 0x1b35
    cbw                              ; 0x1b39
    cmp ax, word [data_830c]         ; 0x1b3a
    jne short @..api_idx_00fa.l5     ; 0x1b3e
    mov ax, 0x64                     ; 0x1b40
    push ax                          ; 0x1b43
    call ds_dispatch_b7a9            ; 0x1b44
    pop cx                           ; 0x1b47
    cmp ax, word [bp - 0x0006]       ; 0x1b48
    jl short @..api_idx_00fa.l7      ; 0x1b4b
@..api_idx_00fa.l5:
    mov ax, 0x26                     ; 0x1b4d
    imul word [bp - 0x0002]          ; 0x1b50
    mov bx, ax                       ; 0x1b53
    mov al, byte [bx - 0x7b13]       ; 0x1b55
    sub ah, ah                       ; 0x1b59
    cmp ax, word [data_8f3e]         ; 0x1b5b
    je short @..api_idx_00fa.l6      ; 0x1b5f
    jmp near @..api_idx_00fa.l11     ; 0x1b61
@..api_idx_00fa.l6:
    mov ax, 0x64                     ; 0x1b64
    push ax                          ; 0x1b67
    call ds_dispatch_b7a9            ; 0x1b68
    pop cx                           ; 0x1b6b
    cmp ax, word [bp - 0x0004]       ; 0x1b6c
    jl short @..api_idx_00fa.l7      ; 0x1b6f
    jmp near @..api_idx_00fa.l11     ; 0x1b71
@..api_idx_00fa.l7:
    mov word [bp - 0x000a], 1        ; 0x1b74
    lea ax, word [bp - 0x005a]       ; 0x1b79
    push ax                          ; 0x1b7c
    mov ax, word [bp - 0x0002]       ; 0x1b7d
    add ax, 0x6a4                    ; 0x1b80
    push ax                          ; 0x1b83
    call ds_dispatch_b53b            ; 0x1b84
    add sp, byte 4                   ; 0x1b87
    mov byte [bp - 0x00aa], 0        ; 0x1b8a
    mov byte [bp - 0x00fa], 0        ; 0x1b8f
    mov ax, 0x26                     ; 0x1b94
    imul word [bp - 0x0002]          ; 0x1b97
    mov bx, ax                       ; 0x1b9a
    cmp byte [bx - 0x7b00], 0        ; 0x1b9c
    je short @..api_idx_00fa.l8      ; 0x1ba1
    cmp word [bp - 0x0002], byte 4   ; 0x1ba3
    jne short @..api_idx_00fa.l9     ; 0x1ba7
    mov ax, 0x40                     ; 0x1ba9
    push ax                          ; 0x1bac
    mov ax, 0x8e64                   ; 0x1bad
    push ax                          ; 0x1bb0
    call ds_dispatch_ec74            ; 0x1bb1
    add sp, byte 4                   ; 0x1bb4
    test ax, ax                      ; 0x1bb7
    je short @..api_idx_00fa.l9      ; 0x1bb9
@..api_idx_00fa.l8:
    lea ax, word [bp - 0x00aa]       ; 0x1bbb
    push ax                          ; 0x1bbf
    mov ax, 0x1e7                    ; 0x1bc0
    push ax                          ; 0x1bc3
    call ds_dispatch_b53b            ; 0x1bc4
    add sp, byte 4                   ; 0x1bc7
    jmp short @..api_idx_00fa.l10    ; 0x1bca
@..api_idx_00fa.l9:
    lea ax, word [bp - 0x00aa]       ; 0x1bcc
    push ax                          ; 0x1bd0
    mov ax, 0x1e5                    ; 0x1bd1
    push ax                          ; 0x1bd4
    call ds_dispatch_b53b            ; 0x1bd5
    add sp, byte 4                   ; 0x1bd8
    lea ax, word [bp - 0x00fa]       ; 0x1bdb
    push ax                          ; 0x1bdf
    mov ax, 0x26                     ; 0x1be0
    imul word [bp - 0x0002]          ; 0x1be3
    mov bx, ax                       ; 0x1be6
    mov al, byte [bx - 0x7b14]       ; 0x1be8
    sub ah, ah                       ; 0x1bec
    add ax, 0x6ea                    ; 0x1bee
    push ax                          ; 0x1bf1
    call ds_dispatch_b53b            ; 0x1bf2
    add sp, byte 4                   ; 0x1bf5
@..api_idx_00fa.l10:
    lea ax, word [bp - 0x00fa]       ; 0x1bf8
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x00aa]       ; 0x1bfd
    push ax                          ; 0x1c01
    lea ax, word [bp - 0x005a]       ; 0x1c02
    push ax                          ; 0x1c05
    call api_idx_0002_4              ; 0x1c06
    add sp, byte 6                   ; 0x1c09
@..api_idx_00fa.l11:
    inc word [bp - 0x0002]           ; 0x1c0c
    mov ax, word [bp - 0x0002]       ; 0x1c0f
    cmp ax, strict word 0x14         ; 0x1c12
    jge short @..api_idx_00fa.l12    ; 0x1c15
    jmp near @..api_idx_00fa.l3      ; 0x1c17
@..api_idx_00fa.l12:
    cmp word [bp - 0x000a], byte 0   ; 0x1c1a
    jne short @..api_idx_00fa.l13    ; 0x1c1e
    lea ax, word [bp - 0x005a]       ; 0x1c20
    push ax                          ; 0x1c23
    mov ax, 0x1e6                    ; 0x1c24
    push ax                          ; 0x1c27
    call ds_dispatch_b53b            ; 0x1c28
    add sp, byte 4                   ; 0x1c2b
    mov ax, 0x9099                   ; 0x1c2e
    push ax                          ; 0x1c31
    mov ax, 0x9098                   ; 0x1c32
    push ax                          ; 0x1c35
    lea ax, word [bp - 0x005a]       ; 0x1c36
    push ax                          ; 0x1c39
    call api_idx_0002_4              ; 0x1c3a
    add sp, byte 6                   ; 0x1c3d
@..api_idx_00fa.l13:
    mov ax, 1                        ; 0x1c40
    push ax                          ; 0x1c43
    push word [data_8d10]            ; 0x1c44
    push word [data_8d0e]            ; 0x1c48
    call ds_dispatch_e94f            ; 0x1c4c
    add sp, byte 6                   ; 0x1c4f
    mov ax, 0xc6                     ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x109                    ; 0x1c56
    push ax                          ; 0x1c59
    mov ax, 0x92                     ; 0x1c5a
