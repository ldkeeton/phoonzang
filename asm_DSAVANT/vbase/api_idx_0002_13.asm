api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x8f74
    call ds_dispatch_f40b            ; 0x8f77
    call loc_85f0                    ; 0x8f7a
    cmp word [data_0e32], byte 1     ; 0x8f7d
    jne short @..api_idx_0002_13.l1  ; 0x8f82
    db 0xe8, 0xb2, 0x60 ; call 0xf039
@..api_idx_0002_13.l1:
    mov word [data_0e32], 0          ; 0x8f87
    call ds_dispatch_d9a6            ; 0x8f8d
    mov word [data_8450], ax         ; 0x8f90
    test ax, ax                      ; 0x8f93
    je short @..api_idx_0002_13.l2   ; 0x8f95
    mov ax, 0                        ; 0x8f97
    push ax                          ; 0x8f9a
    mov ax, 5                        ; 0x8f9b
    push ax                          ; 0x8f9e
    call ds_dispatch_d7e7            ; 0x8f9f
    add sp, byte 4                   ; 0x8fa2
    mov ax, word [data_0116]         ; 0x8fa5
    mov word [data_844e], ax         ; 0x8fa8
    mov ax, 1                        ; 0x8fab
    push ax                          ; 0x8fae
    push word [data_844e]            ; 0x8faf
    mov ax, 0                        ; 0x8fb3
    push ax                          ; 0x8fb6
    call ds_dispatch_d964            ; 0x8fb7
    add sp, byte 6                   ; 0x8fba
    mov word [data_844c], ax         ; 0x8fbd
@..api_idx_0002_13.l2:
    mov ax, word [bp + 0x4]          ; 0x8fc0
    jmp near @..api_idx_0002_13.l9   ; 0x8fc3
@..api_idx_0002_13.l3:
    cmp word [bp + 0x4], byte 4      ; 0x8fc6
    jne short @..api_idx_0002_13.l4  ; 0x8fca
    mov ax, 0x63                     ; 0x8fcc
    push ax                          ; 0x8fcf
    push ax                          ; 0x8fd0
    mov ax, 1                        ; 0x8fd1
    push ax                          ; 0x8fd4
    mov ax, 0x63                     ; 0x8fd5
    push ax                          ; 0x8fd8
    mov ax, 0x7ba2                   ; 0x8fd9
    push ax                          ; 0x8fdc
    call loc_8634                    ; 0x8fdd
    add sp, byte 0x0a                ; 0x8fe0
    jmp short @..api_idx_0002_13.l5  ; 0x8fe3
@..api_idx_0002_13.l4:
    mov ax, 0x63                     ; 0x8fe5
    push ax                          ; 0x8fe8
    push ax                          ; 0x8fe9
    mov ax, 1                        ; 0x8fea
    push ax                          ; 0x8fed
    mov ax, 0                        ; 0x8fee
    push ax                          ; 0x8ff1
    mov ax, 0x7b0c                   ; 0x8ff2
    push ax                          ; 0x8ff5
    call loc_8634                    ; 0x8ff6
    add sp, byte 0x0a                ; 0x8ff9
@..api_idx_0002_13.l5:
    mov ax, 0x63                     ; 0x8ffc
    push ax                          ; 0x8fff
    push ax                          ; 0x9000
    mov ax, 0                        ; 0x9001
    push ax                          ; 0x9004
    mov ax, 0x7b20                   ; 0x9005
    push ax                          ; 0x9008
    call api_idx_0002_7              ; 0x9009
    add sp, byte 8                   ; 0x900c
    mov ax, 0x63                     ; 0x900f
    push ax                          ; 0x9012
    push ax                          ; 0x9013
    mov ax, 0                        ; 0x9014
    push ax                          ; 0x9017
    mov ax, 0x7b2a                   ; 0x9018
    push ax                          ; 0x901b
    call api_idx_0002_8              ; 0x901c
    add sp, byte 8                   ; 0x901f
    mov ax, 0                        ; 0x9022
    push ax                          ; 0x9025
    mov ax, 0x7b2f                   ; 0x9026
    push ax                          ; 0x9029
    call api_idx_0002_11             ; 0x902a
    add sp, byte 4                   ; 0x902d
    mov ax, 0                        ; 0x9030
    push ax                          ; 0x9033
    mov ax, 0x7b3e                   ; 0x9034
    push ax                          ; 0x9037
    call api_idx_0002_10             ; 0x9038
    add sp, byte 4                   ; 0x903b
    mov ax, 0x63                     ; 0x903e
    push ax                          ; 0x9041
    mov ax, 0                        ; 0x9042
    push ax                          ; 0x9045
    mov ax, 0x7b48                   ; 0x9046
    push ax                          ; 0x9049
    call api_idx_0002_12             ; 0x904a
    add sp, byte 6                   ; 0x904d
    mov ax, 0                        ; 0x9050
    push ax                          ; 0x9053
    mov ax, 0x63                     ; 0x9054
    push ax                          ; 0x9057
    mov ax, 0x7b4d                   ; 0x9058
    push ax                          ; 0x905b
    call api_idx_0002_12             ; 0x905c
    add sp, byte 6                   ; 0x905f
    mov ax, 0x63                     ; 0x9062
    push ax                          ; 0x9065
    push ax                          ; 0x9066
    mov ax, 0                        ; 0x9067
    push ax                          ; 0x906a
    cmp word [bp + 0x4], byte 4      ; 0x906b
    jne short @..api_idx_0002_13.l6  ; 0x906f
    mov ax, 0x63                     ; 0x9071
@..api_idx_0002_13.l6:
    push ax                          ; 0x9074
    mov ax, 0x7b52                   ; 0x9075
    push ax                          ; 0x9078
    call loc_8634                    ; 0x9079
    add sp, byte 0x0a                ; 0x907c
    mov ax, 0x63                     ; 0x907f
    push ax                          ; 0x9082
    mov ax, 0                        ; 0x9083
    push ax                          ; 0x9086
    mov ax, 1                        ; 0x9087
    push ax                          ; 0x908a
    mov ax, 0x7b5c                   ; 0x908b
    push ax                          ; 0x908e
    call api_idx_0002_7              ; 0x908f
    add sp, byte 8                   ; 0x9092
    mov ax, 0                        ; 0x9095
    push ax                          ; 0x9098
    mov ax, 0x7b66                   ; 0x9099
    push ax                          ; 0x909c
    call loc_8a74                    ; 0x909d
    add sp, byte 4                   ; 0x90a0
    mov ax, 0                        ; 0x90a3
    push ax                          ; 0x90a6
    mov ax, 0x7b70                   ; 0x90a7
    push ax                          ; 0x90aa
    call api_idx_0002_9              ; 0x90ab
    add sp, byte 4                   ; 0x90ae
    jmp near @..api_idx_0002_13.l13  ; 0x90b1
@..api_idx_0002_13.l7:
    mov ax, 0                        ; 0x90b4
    push ax                          ; 0x90b7
    push ax                          ; 0x90b8
    mov ax, 0x63                     ; 0x90b9
    push ax                          ; 0x90bc
    push ax                          ; 0x90bd
    mov ax, 0x7bd4                   ; 0x90be
    push ax                          ; 0x90c1
    call loc_8634                    ; 0x90c2
    add sp, byte 0x0a                ; 0x90c5
    mov ax, 0                        ; 0x90c8
    push ax                          ; 0x90cb
    mov ax, 0x63                     ; 0x90cc
    push ax                          ; 0x90cf
    mov ax, 0x7be3                   ; 0x90d0
    push ax                          ; 0x90d3
    call api_idx_0002_12             ; 0x90d4
    add sp, byte 6                   ; 0x90d7
    mov ax, 0x63                     ; 0x90da
    push ax                          ; 0x90dd
    push ax                          ; 0x90de
    mov ax, 0                        ; 0x90df
    push ax                          ; 0x90e2
    mov ax, 0x7be8                   ; 0x90e3
    push ax                          ; 0x90e6
    call api_idx_0002_7              ; 0x90e7
    add sp, byte 8                   ; 0x90ea
    mov ax, 0x63                     ; 0x90ed
    push ax                          ; 0x90f0
    mov ax, 0                        ; 0x90f1
    push ax                          ; 0x90f4
    mov ax, 0x7bf2                   ; 0x90f5
    push ax                          ; 0x90f8
    call api_idx_0002_12             ; 0x90f9
    add sp, byte 6                   ; 0x90fc
    mov ax, 0x63                     ; 0x90ff
    push ax                          ; 0x9102
    push ax                          ; 0x9103
    mov ax, 0                        ; 0x9104
    push ax                          ; 0x9107
    mov ax, 0x7bf7                   ; 0x9108
    push ax                          ; 0x910b
    call api_idx_0002_8              ; 0x910c
    add sp, byte 8                   ; 0x910f
    mov ax, 0                        ; 0x9112
    push ax                          ; 0x9115
    mov ax, 0x7bfc                   ; 0x9116
    push ax                          ; 0x9119
    call api_idx_0002_11             ; 0x911a
    add sp, byte 4                   ; 0x911d
    mov ax, 0                        ; 0x9120
    push ax                          ; 0x9123
    mov ax, 0x7c06                   ; 0x9124
    push ax                          ; 0x9127
    call api_idx_0002_10             ; 0x9128
    add sp, byte 4                   ; 0x912b
    mov ax, 0                        ; 0x912e
    push ax                          ; 0x9131
    push ax                          ; 0x9132
    mov ax, 0x63                     ; 0x9133
    push ax                          ; 0x9136
    push ax                          ; 0x9137
    mov ax, 0x7c0b                   ; 0x9138
    push ax                          ; 0x913b
    call loc_8634                    ; 0x913c
    add sp, byte 0x0a                ; 0x913f
    mov ax, 0x63                     ; 0x9142
    push ax                          ; 0x9145
    push ax                          ; 0x9146
    mov ax, 1                        ; 0x9147
    push ax                          ; 0x914a
    mov ax, 0                        ; 0x914b
    push ax                          ; 0x914e
    mov ax, 0x7c10                   ; 0x914f
    push ax                          ; 0x9152
    call loc_8634                    ; 0x9153
    add sp, byte 0x0a                ; 0x9156
    mov ax, 0                        ; 0x9159
    push ax                          ; 0x915c
    push ax                          ; 0x915d
    mov ax, 0x63                     ; 0x915e
    push ax                          ; 0x9161
    push ax                          ; 0x9162
    mov ax, 0x7c1a                   ; 0x9163
    push ax                          ; 0x9166
    call loc_8634                    ; 0x9167
    add sp, byte 0x0a                ; 0x916a
    mov ax, 0x63                     ; 0x916d
    push ax                          ; 0x9170
    mov ax, 0                        ; 0x9171
