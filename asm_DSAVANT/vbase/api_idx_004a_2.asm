api_idx_004a_2:
    mov ax, 0xffb6                   ; 0x6a0f
    call ds_dispatch_f40b            ; 0x6a12
    mov word [data_82e8], 0          ; 0x6a15
    mov word [data_8af0], 0          ; 0x6a1b
    jmp short @..api_idx_004a_2.l2   ; 0x6a21
@..api_idx_004a_2.l1:
    mov ax, 1                        ; 0x6a23
    push ax                          ; 0x6a26
    push word [data_8af0]            ; 0x6a27
    call ds_dispatch_cb3a            ; 0x6a2b
    add sp, byte 4                   ; 0x6a2e
    inc word [data_8af0]             ; 0x6a31
@..api_idx_004a_2.l2:
    mov ax, word [data_8af0]         ; 0x6a35
    cmp ax, word [data_69c8]         ; 0x6a38
    jl short @..api_idx_004a_2.l1    ; 0x6a3c
    mov word [data_a494], 0xffff     ; 0x6a3e
    mov word [data_830a], 0xffff     ; 0x6a44
@..api_idx_004a_2.l3:
    cmp word [data_830a], byte 0     ; 0x6a4a
    jl short @..api_idx_004a_2.l4    ; 0x6a4f
    jmp near @..api_idx_004a_2.l15   ; 0x6a51
@..api_idx_004a_2.l4:
    mov word [bp - 0x0002], 0        ; 0x6a54
@..api_idx_004a_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x6a59
    shl ax, 1                        ; 0x6a5c
    mov bx, ax                       ; 0x6a5e
    add bx, bp                       ; 0x6a60
    mov word [bx - 0x0022], 1        ; 0x6a62
    inc word [bp - 0x0002]           ; 0x6a67
    mov ax, word [bp - 0x0002]       ; 0x6a6a
    cmp ax, strict word 9            ; 0x6a6d
    jl short @..api_idx_004a_2.l5    ; 0x6a70
    mov word [bp - 0x0010], 0xffff   ; 0x6a72
    cmp word [data_69c8], byte 1     ; 0x6a77
    jge short @..api_idx_004a_2.l6   ; 0x6a7c
    mov word [bp - 0x001e], 0        ; 0x6a7e
    mov word [bp - 0x001c], 0        ; 0x6a83
    mov word [bp - 0x001a], 0        ; 0x6a88
@..api_idx_004a_2.l6:
    mov word [bp - 0x0020], 0        ; 0x6a8d
    mov word [bp - 0x0002], 0        ; 0x6a92
    jmp short @..api_idx_004a_2.l9   ; 0x6a97
@..api_idx_004a_2.l7:
    mov bx, word [bp - 0x0002]       ; 0x6a99
    cmp byte [bx - 0x6f8a], 1        ; 0x6a9c
    jne short @..api_idx_004a_2.l8   ; 0x6aa1
    mov word [bp - 0x0020], 1        ; 0x6aa3
@..api_idx_004a_2.l8:
    inc word [bp - 0x0002]           ; 0x6aa8
@..api_idx_004a_2.l9:
    mov ax, word [bp - 0x0002]       ; 0x6aab
    cmp ax, word [data_9070]         ; 0x6aae
    jl short @..api_idx_004a_2.l7    ; 0x6ab2
    cmp word [data_69c8], byte 5     ; 0x6ab4
    jle short @..api_idx_004a_2.l10  ; 0x6ab9
    mov word [bp - 0x0020], 0        ; 0x6abb
@..api_idx_004a_2.l10:
    cmp word [data_69c8], byte 0     ; 0x6ac0
    jle short @..api_idx_004a_2.l11  ; 0x6ac5
    mov word [bp - 0x0018], 0        ; 0x6ac7
    mov word [bp - 0x0014], 0        ; 0x6acc
@..api_idx_004a_2.l11:
    cmp word [data_a494], byte 0     ; 0x6ad1
    jne short @..api_idx_004a_2.l12  ; 0x6ad6
    mov ax, 0x15                     ; 0x6ad8
    push ax                          ; 0x6adb
    call ds_dispatch_b171            ; 0x6adc
    pop cx                           ; 0x6adf
@..api_idx_004a_2.l12:
    lea ax, word [bp - 0x0022]       ; 0x6ae0
    push ax                          ; 0x6ae3
    mov ax, 1                        ; 0x6ae4
    push ax                          ; 0x6ae7
    mov ax, 9                        ; 0x6ae8
    push ax                          ; 0x6aeb
    mov ax, 0xd                      ; 0x6aec
    push ax                          ; 0x6aef
    mov ax, 0x12                     ; 0x6af0
    push ax                          ; 0x6af3
    mov ax, 0x24                     ; 0x6af4
    push ax                          ; 0x6af7
    mov ax, 0x61                     ; 0x6af8
    push ax                          ; 0x6afb
    mov ax, 0x3e8                    ; 0x6afc
    push ax                          ; 0x6aff
    call loc_023a                    ; 0x6b00
    add sp, byte 0x10                ; 0x6b03
    mov word [bp - 0x0004], ax       ; 0x6b06
    lea ax, word [bp - 0x004a]       ; 0x6b09
    push ax                          ; 0x6b0c
    mov ax, word [bp - 0x0004]       ; 0x6b0d
    add ax, 0x3e8                    ; 0x6b10
    push ax                          ; 0x6b13
    call ds_dispatch_b53b            ; 0x6b14
    add sp, byte 4                   ; 0x6b17
    mov ax, 0x1a                     ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0xd                      ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0x12                     ; 0x6b22
    push ax                          ; 0x6b25
    mov ax, 0x24                     ; 0x6b26
    push ax                          ; 0x6b29
    mov ax, 0x61                     ; 0x6b2a
    push ax                          ; 0x6b2d
    push word [data_9052]            ; 0x6b2e
    lea ax, word [bp - 0x004a]       ; 0x6b32
    push ax                          ; 0x6b35
    call api_idx_0004                ; 0x6b36
    add sp, byte 0x0e                ; 0x6b39
    mov ax, word [bp - 0x0004]       ; 0x6b3c
    jmp near @..api_idx_004a_2.l13   ; 0x6b3f

    db 0xe8, 0x28, 0xf5, 0xe9, 0xd2, 0x00, 0xe8, 0x66, 0x63, 0xa3, 0xf0, 0x8a, 0x3d, 0xff, 0xff, 0x74
    db 0x0c, 0xc7, 0x06, 0x0a, 0x83, 0x11, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x04, 0x00, 0xe9, 0xb8, 0x00
    db 0xe8, 0x4c, 0x63, 0xa3, 0xf0, 0x8a, 0x3d, 0xff, 0xff, 0x74, 0x0e, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x36, 0xf0, 0x8a, 0xe8, 0x63, 0xf6, 0x83, 0xc4, 0x04, 0xe9, 0x9c, 0x00, 0xe8, 0x45, 0xf7, 0xc7
    db 0x06, 0x0a, 0x83, 0x10, 0x00, 0xe9, 0x90, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x13, 0x8b
    db 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0xf2, 0x8a, 0xc6, 0x87, 0x76, 0x90, 0x01, 0xff
    db 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xe4, 0xb8, 0x00, 0x00, 0x50, 0xe8
    db 0xb1, 0xfa, 0x59, 0xeb, 0x63, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xa7, 0xfa, 0x59, 0xeb, 0x59, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x46, 0xe1, 0x59, 0x85, 0xc0, 0x74, 0x14, 0xb8, 0x12, 0x09, 0x50, 0xe8
    db 0xc1, 0xdf, 0x59, 0xe8, 0xee, 0xf6, 0xe8, 0x25, 0xfc, 0xc7, 0x06, 0x0a, 0x83, 0x03, 0x00, 0xeb
    db 0x37, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x7b, 0xfa, 0x59, 0xeb, 0x2d, 0xe8, 0xd6, 0xf6, 0xe8, 0x0d
    db 0xfc, 0xc7, 0x06, 0x0a, 0x83, 0x03, 0x00, 0xeb, 0x1f, 0xc5, 0xbb, 0x89, 0xbb, 0x8f, 0xbb, 0xa9
    db 0xbb, 0xd1, 0xbb, 0xfe, 0xbb, 0x08, 0xbc, 0x2a, 0xbc, 0x34, 0xbc

@..api_idx_004a_2.l13:
    cmp ax, strict word 9            ; 0x6c0d
    jae short @..api_idx_004a_2.l14  ; 0x6c10
    xchg bx, ax                      ; 0x6c12
    shl bx, 1                        ; 0x6c13
    jmp [cs:bx - 0x43be]             ; 0x6c15
@..api_idx_004a_2.l14:
    jmp near @..api_idx_004a_2.l3    ; 0x6c1a
@..api_idx_004a_2.l15:
    ret                              ; 0x6c1d
loc_6c1e:
    mov ax, 0                        ; 0x6c1e
    call ds_dispatch_f40b            ; 0x6c21
    mov ax, 0                        ; 0x6c24
    push ax                          ; 0x6c27
    mov ax, 0xc6                     ; 0x6c28
    push ax                          ; 0x6c2b
    mov ax, 0x13f                    ; 0x6c2c
    push ax                          ; 0x6c2f
    mov ax, 0x92                     ; 0x6c30
    push ax                          ; 0x6c33
    mov ax, 0                        ; 0x6c34
    push ax                          ; 0x6c37
    call ds_dispatch_e901            ; 0x6c38
    add sp, byte 0x0a                ; 0x6c3b
    ret                              ; 0x6c3e
loc_6c3f:
    mov ax, 0                        ; 0x6c3f
    call ds_dispatch_f40b            ; 0x6c42
    mov ax, 0xc6                     ; 0x6c45
    push ax                          ; 0x6c48
    mov ax, 0x13e                    ; 0x6c49
    push ax                          ; 0x6c4c
    mov ax, 0x92                     ; 0x6c4d
    push ax                          ; 0x6c50
    mov ax, 0xc                      ; 0x6c51
    push ax                          ; 0x6c54
    call ds_dispatch_bb33            ; 0x6c55
    add sp, byte 8                   ; 0x6c58
    ret                              ; 0x6c5b
loc_6c5c:
    mov ax, 0                        ; 0x6c5c
    call ds_dispatch_f40b            ; 0x6c5f
    cmp word [data_a4a4], byte 0     ; 0x6c62
    jle short @..local.l120          ; 0x6c67
    call loc_73bc                    ; 0x6c69
    test ax, ax                      ; 0x6c6c
    je short @..local.l120           ; 0x6c6e
    call api_idx_000a_3              ; 0x6c70
    mov ax, 0x91                     ; 0x6c73
    push ax                          ; 0x6c76
    mov ax, 0x13f                    ; 0x6c77
    push ax                          ; 0x6c7a
    mov ax, 0                        ; 0x6c7b
    push ax                          ; 0x6c7e
    push ax                          ; 0x6c7f
    call ds_dispatch_e8da            ; 0x6c80
    add sp, byte 8                   ; 0x6c83
@..local.l120:
    ret                              ; 0x6c86
