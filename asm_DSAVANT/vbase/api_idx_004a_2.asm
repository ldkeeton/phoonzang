api_idx_004a_2:
    mov ax, 0xffb6                   ; 0x6a0f
    call ds_aztec_csav               ; 0x6a12
    mov word [bss_82e8], 0           ; 0x6a15
    mov word [bss_8af0], 0           ; 0x6a1b
    jmp short @..api_idx_004a_2.l2   ; 0x6a21
@..api_idx_004a_2.l1:
    mov ax, 1                        ; 0x6a23
    push ax                          ; 0x6a26
    push word [bss_8af0]             ; 0x6a27
    call ds_app_1d81                 ; 0x6a2b
    add sp, byte 4                   ; 0x6a2e
    inc word [bss_8af0]              ; 0x6a31
@..api_idx_004a_2.l2:
    mov ax, word [bss_8af0]          ; 0x6a35
    cmp ax, word [bss_69c8]          ; 0x6a38
    jl short @..api_idx_004a_2.l1    ; 0x6a3c
    mov word [bss_a494], 0xffff      ; 0x6a3e
    mov word [bss_830a], 0xffff      ; 0x6a44
@..api_idx_004a_2.l3:
    cmp word [bss_830a], byte 0      ; 0x6a4a
    jl short @..api_idx_004a_2.l4    ; 0x6a4f
    jmp near @..api_idx_004a_2.l20   ; 0x6a51
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
    cmp word [bss_69c8], byte 1      ; 0x6a77
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
    cmp ax, word [bss_9070]          ; 0x6aae
    jl short @..api_idx_004a_2.l7    ; 0x6ab2
    cmp word [bss_69c8], byte 5      ; 0x6ab4
    jle short @..api_idx_004a_2.l10  ; 0x6ab9
    mov word [bp - 0x0020], 0        ; 0x6abb
@..api_idx_004a_2.l10:
    cmp word [bss_69c8], byte 0      ; 0x6ac0
    jle short @..api_idx_004a_2.l11  ; 0x6ac5
    mov word [bp - 0x0018], 0        ; 0x6ac7
    mov word [bp - 0x0014], 0        ; 0x6acc
@..api_idx_004a_2.l11:
    cmp word [bss_a494], byte 0      ; 0x6ad1
    jne short @..api_idx_004a_2.l12  ; 0x6ad6
    mov ax, 0x15                     ; 0x6ad8
    push ax                          ; 0x6adb
    call ds_app_03b8                 ; 0x6adc
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
    call ds_app_mem_0782             ; 0x6b14
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
    push word [bss_9052]             ; 0x6b2e
    lea ax, word [bp - 0x004a]       ; 0x6b32
    push ax                          ; 0x6b35
    call api_idx_0004                ; 0x6b36
    add sp, byte 0x0e                ; 0x6b39
    mov ax, word [bp - 0x0004]       ; 0x6b3c
    jmp near @..api_idx_004a_2.l18   ; 0x6b3f
jumptable_6bfb_case_1:
    call loc_606d                    ; 0x6b42
    jmp near @..api_idx_004a_2.l19   ; 0x6b45
jumptable_6bfb_case_2:
    call ds_app_20f8                 ; 0x6b48
    mov word [bss_8af0], ax          ; 0x6b4b
    cmp ax, strict word 0xffff       ; 0x6b4e
    je short @..api_idx_004a_2.l13   ; 0x6b51
    mov word [bss_830a], 0x11        ; 0x6b53
    mov word [bss_905e], 4           ; 0x6b59
@..api_idx_004a_2.l13:
    jmp near @..api_idx_004a_2.l19   ; 0x6b5f
jumptable_6bfb_case_3:
    call ds_app_20f8                 ; 0x6b62
    mov word [bss_8af0], ax          ; 0x6b65
    cmp ax, strict word 0xffff       ; 0x6b68
    je short @..api_idx_004a_2.l14   ; 0x6b6b
    mov ax, 1                        ; 0x6b6d
    push ax                          ; 0x6b70
    push word [bss_8af0]             ; 0x6b71
    call api_idx_0006_2              ; 0x6b75
    add sp, byte 4                   ; 0x6b78
@..api_idx_004a_2.l14:
    jmp near @..api_idx_004a_2.l19   ; 0x6b7b
jumptable_6bfb_case_0:
    call loc_62c6                    ; 0x6b7e
    mov word [bss_830a], 0x10        ; 0x6b81
    jmp near @..api_idx_004a_2.l19   ; 0x6b87
jumptable_6bfb_case_4:
    mov word [bp - 0x0002], 0        ; 0x6b8a
    jmp short @..api_idx_004a_2.l16  ; 0x6b8f
@..api_idx_004a_2.l15:
    mov ax, word [bp - 0x0002]       ; 0x6b91
    shl ax, 1                        ; 0x6b94
    mov bx, ax                       ; 0x6b96
    mov bx, word [bx - 0x750e]       ; 0x6b98
    mov byte [bx - 0x6f8a], 1        ; 0x6b9c
    inc word [bp - 0x0002]           ; 0x6ba1
@..api_idx_004a_2.l16:
    mov ax, word [bp - 0x0002]       ; 0x6ba4
    cmp ax, word [bss_69c8]          ; 0x6ba7
    jl short @..api_idx_004a_2.l15   ; 0x6bab
    mov ax, 0                        ; 0x6bad
    push ax                          ; 0x6bb0
    call api_idx_0004_3              ; 0x6bb1
    pop cx                           ; 0x6bb4
    jmp short @..api_idx_004a_2.l19  ; 0x6bb5
jumptable_6bfb_case_5:
    mov ax, 1                        ; 0x6bb7
    push ax                          ; 0x6bba
    call api_idx_0004_3              ; 0x6bbb
    pop cx                           ; 0x6bbe
    jmp short @..api_idx_004a_2.l19  ; 0x6bbf
jumptable_6bfb_case_6:
    mov ax, 0                        ; 0x6bc1
    push ax                          ; 0x6bc4
    call loc_4d0e                    ; 0x6bc5
    pop cx                           ; 0x6bc8
    test ax, ax                      ; 0x6bc9
    je short @..api_idx_004a_2.l17   ; 0x6bcb
    mov ax, 0x912                    ; 0x6bcd
    push ax                          ; 0x6bd0
    call api_idx_0062                ; 0x6bd1
    pop cx                           ; 0x6bd4
    call loc_62c6                    ; 0x6bd5
    call api_idx_0002_4              ; 0x6bd8
    mov word [bss_830a], 3           ; 0x6bdb
@..api_idx_004a_2.l17:
    jmp short @..api_idx_004a_2.l19  ; 0x6be1
jumptable_6bfb_case_7:
    mov ax, 2                        ; 0x6be3
    push ax                          ; 0x6be6
    call api_idx_0004_3              ; 0x6be7
    pop cx                           ; 0x6bea
    jmp short @..api_idx_004a_2.l19  ; 0x6beb
jumptable_6bfb_case_8:
    call loc_62c6                    ; 0x6bed
    call api_idx_0002_4              ; 0x6bf0
    mov word [bss_830a], 3           ; 0x6bf3
    jmp short @..api_idx_004a_2.l19  ; 0x6bf9
jumptable_6bfb:
    dw jumptable_6bfb_case_0 - IMAGE_BASE + 0x5055 ; 0x6bfb
    dw jumptable_6bfb_case_1 - IMAGE_BASE + 0x5055 ; 0x6bfd
    dw jumptable_6bfb_case_2 - IMAGE_BASE + 0x5055 ; 0x6bff
    dw jumptable_6bfb_case_3 - IMAGE_BASE + 0x5055 ; 0x6c01
    dw jumptable_6bfb_case_4 - IMAGE_BASE + 0x5055 ; 0x6c03
    dw jumptable_6bfb_case_5 - IMAGE_BASE + 0x5055 ; 0x6c05
    dw jumptable_6bfb_case_6 - IMAGE_BASE + 0x5055 ; 0x6c07
    dw jumptable_6bfb_case_7 - IMAGE_BASE + 0x5055 ; 0x6c09
    dw jumptable_6bfb_case_8 - IMAGE_BASE + 0x5055 ; 0x6c0b
@..api_idx_004a_2.l18:
    cmp ax, strict word 9            ; 0x6c0d
    jae short @..api_idx_004a_2.l19  ; 0x6c10
    xchg bx, ax                      ; 0x6c12
    shl bx, 1                        ; 0x6c13
    jmp [cs:bx - 0x43be]             ; 0x6c15
@..api_idx_004a_2.l19:
    jmp near @..api_idx_004a_2.l3    ; 0x6c1a
@..api_idx_004a_2.l20:
    ret                              ; 0x6c1d
loc_6c1e:
    mov ax, 0                        ; 0x6c1e
    call ds_aztec_csav               ; 0x6c21
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
    call ds_loc_3b48                 ; 0x6c38
    add sp, byte 0x0a                ; 0x6c3b
    ret                              ; 0x6c3e
loc_6c3f:
    mov ax, 0                        ; 0x6c3f
    call ds_aztec_csav               ; 0x6c42
    mov ax, 0xc6                     ; 0x6c45
    push ax                          ; 0x6c48
    mov ax, 0x13e                    ; 0x6c49
    push ax                          ; 0x6c4c
    mov ax, 0x92                     ; 0x6c4d
    push ax                          ; 0x6c50
    mov ax, 0xc                      ; 0x6c51
    push ax                          ; 0x6c54
    call ds_app_io_0d7a              ; 0x6c55
    add sp, byte 8                   ; 0x6c58
    ret                              ; 0x6c5b
loc_6c5c:
    mov ax, 0                        ; 0x6c5c
    call ds_aztec_csav               ; 0x6c5f
    cmp word [bss_a4a4], byte 0      ; 0x6c62
    jle short @..local.l119          ; 0x6c67
    call loc_73bc                    ; 0x6c69
    test ax, ax                      ; 0x6c6c
    je short @..local.l119           ; 0x6c6e
    call api_idx_000a_3              ; 0x6c70
    mov ax, 0x91                     ; 0x6c73
    push ax                          ; 0x6c76
    mov ax, 0x13f                    ; 0x6c77
    push ax                          ; 0x6c7a
    mov ax, 0                        ; 0x6c7b
    push ax                          ; 0x6c7e
    push ax                          ; 0x6c7f
    call ds_loc_3b21                 ; 0x6c80
    add sp, byte 8                   ; 0x6c83
@..local.l119:
    ret                              ; 0x6c86
