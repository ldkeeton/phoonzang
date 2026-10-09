api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x8881
    call ds_dispatch_f40b            ; 0x8884
    mov ax, 0xf                      ; 0x8887
    push ax                          ; 0x888a
    mov ax, 5                        ; 0x888b
    push ax                          ; 0x888e
    call api_idx_0016_2              ; 0x888f
    add sp, byte 4                   ; 0x8892
    mov word [bp - 0x0002], 0        ; 0x8895
@..api_idx_0002_8.l1:
    mov ax, 0x50                     ; 0x889a
    imul word [bp - 0x0002]          ; 0x889d
    mov cx, word [bp - 0x0002]       ; 0x88a0
    shl cx, 1                        ; 0x88a3
    mov bx, cx                       ; 0x88a5
    mov word [bx - 0x5a30], ax       ; 0x88a7
    inc word [bp - 0x0002]           ; 0x88ab
    mov ax, word [bp - 0x0002]       ; 0x88ae
    cmp ax, strict word 5            ; 0x88b1
    jl short @..api_idx_0002_8.l1    ; 0x88b4
    mov ax, 6                        ; 0x88b6
    push ax                          ; 0x88b9
    push word [data_a5d0]            ; 0x88ba
    mov ax, 1                        ; 0x88be
    push ax                          ; 0x88c1
    mov ax, 0xf                      ; 0x88c2
    push ax                          ; 0x88c5
    call api_idx_000a                ; 0x88c6
    add sp, byte 8                   ; 0x88c9
    mov ax, 6                        ; 0x88cc
    push ax                          ; 0x88cf
    push word [data_a5d2]            ; 0x88d0
    mov ax, data_0002                ; 0x88d4
    push ax                          ; 0x88d7
    mov ax, 0xf                      ; 0x88d8
    push ax                          ; 0x88db
    call api_idx_000a                ; 0x88dc
    add sp, byte 8                   ; 0x88df
    mov ax, 6                        ; 0x88e2
    push ax                          ; 0x88e5
    push word [data_a5d4]            ; 0x88e6
    mov ax, 3                        ; 0x88ea
    push ax                          ; 0x88ed
    mov ax, 0xf                      ; 0x88ee
    push ax                          ; 0x88f1
    call api_idx_000a                ; 0x88f2
    add sp, byte 8                   ; 0x88f5
    mov ax, 6                        ; 0x88f8
    push ax                          ; 0x88fb
    push word [data_a5d6]            ; 0x88fc
    mov ax, 4                        ; 0x8900
    push ax                          ; 0x8903
    mov ax, 0xf                      ; 0x8904
    push ax                          ; 0x8907
    call api_idx_000a                ; 0x8908
    add sp, byte 8                   ; 0x890b
    mov ax, 6                        ; 0x890e
    push ax                          ; 0x8911
    push word [data_a5d8]            ; 0x8912
    mov ax, 5                        ; 0x8916
    push ax                          ; 0x8919
    mov ax, 0xf                      ; 0x891a
    push ax                          ; 0x891d
    call api_idx_000a                ; 0x891e
    add sp, byte 8                   ; 0x8921
    mov ax, 0xf                      ; 0x8924
    push ax                          ; 0x8927
    call loc_72c2                    ; 0x8928
    pop cx                           ; 0x892b
    mov ax, 0                        ; 0x892c
    push ax                          ; 0x892f
    mov ax, data_0002                ; 0x8930
    push ax                          ; 0x8933
    mov ax, 0x91                     ; 0x8934
    push ax                          ; 0x8937
    mov ax, 0x13f                    ; 0x8938
    push ax                          ; 0x893b
    mov ax, 0                        ; 0x893c
    push ax                          ; 0x893f
    push ax                          ; 0x8940
    call ds_dispatch_e935            ; 0x8941
    add sp, byte 0x0c                ; 0x8944
    mov word [data_a5b4], dx         ; 0x8947
    mov word [data_a5b2], ax         ; 0x894b
    mov ax, 0xf                      ; 0x894e
    push ax                          ; 0x8951
    mov ax, 4                        ; 0x8952
    push ax                          ; 0x8955
    call api_idx_0016_2              ; 0x8956
    add sp, byte 4                   ; 0x8959
    mov ax, 0x10                     ; 0x895c
    push ax                          ; 0x895f
    mov ax, 8                        ; 0x8960
    push ax                          ; 0x8963
    call api_idx_0016_2              ; 0x8964
    add sp, byte 4                   ; 0x8967
    mov ax, 0x11                     ; 0x896a
    push ax                          ; 0x896d
    mov ax, 7                        ; 0x896e
    push ax                          ; 0x8971
    call api_idx_0016_2              ; 0x8972
    add sp, byte 4                   ; 0x8975
    mov ax, word [bp + 0x6]          ; 0x8978
    mov word [data_a5b8], ax         ; 0x897b
    mov ax, word [bp + 0x8]          ; 0x897e
    mov word [data_a5bc], ax         ; 0x8981
    mov ax, word [bp + 0xa]          ; 0x8984
    mov word [data_a5be], ax         ; 0x8987
    mov word [bp - 0x0002], 0        ; 0x898a
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x898f
    shl ax, 1                        ; 0x8992
    mov bx, ax                       ; 0x8994
    mov word [bx - 0x5a26], 0x140    ; 0x8996
    mov ax, 0x3c                     ; 0x899c
    push ax                          ; 0x899f
    call ds_dispatch_b7a9            ; 0x89a0
    pop cx                           ; 0x89a3
    add ax, strict word 0x28         ; 0x89a4
    mov cx, word [bp - 0x0002]       ; 0x89a7
    shl cx, 1                        ; 0x89aa
    mov bx, cx                       ; 0x89ac
    mov word [bx - 0x5a16], ax       ; 0x89ae
    inc word [bp - 0x0002]           ; 0x89b2
    mov ax, word [bp - 0x0002]       ; 0x89b5
    cmp ax, strict word 8            ; 0x89b8
    jl short @..api_idx_0002_8.l2    ; 0x89bb
    mov word [data_a5e0], 0x13e      ; 0x89bd
    mov word [data_a5f0], 0x2a       ; 0x89c3
    mov word [data_a5e2], 0x140      ; 0x89c9
    mov word [data_a5f2], 0x46       ; 0x89cf
    mov word [data_a5e4], 0xffe2     ; 0x89d5
    mov word [data_a5fc], 0          ; 0x89db
    mov word [data_a5fe], 0          ; 0x89e1
    mov word [data_a5b0], 0          ; 0x89e7
    mov word [data_a4a4], 3          ; 0x89ed
    mov word [data_a5ae], 5          ; 0x89f3
    les bx, word [data_0002]         ; 0x89f9
    mov ax, word [es:bx]             ; 0x89fd
    mov dx, word [es:bx + 0x2]       ; 0x8a00
    mov word [data_908c], dx         ; 0x8a04
    mov word [data_908a], ax         ; 0x8a08
    call api_idx_000a_3              ; 0x8a0b
    mov ax, 0                        ; 0x8a0e
    push ax                          ; 0x8a11
    push ax                          ; 0x8a12
    push ax                          ; 0x8a13
    call ds_dispatch_f0d7            ; 0x8a14
    add sp, byte 6                   ; 0x8a17
    mov ax, 0xc7                     ; 0x8a1a
    push ax                          ; 0x8a1d
    mov ax, 0x13f                    ; 0x8a1e
    push ax                          ; 0x8a21
    mov ax, 0                        ; 0x8a22
    push ax                          ; 0x8a25
    push ax                          ; 0x8a26
    call ds_dispatch_e8da            ; 0x8a27
    add sp, byte 8                   ; 0x8a2a
    mov ax, 0                        ; 0x8a2d
    push ax                          ; 0x8a30
    call ds_dispatch_f0bd            ; 0x8a31
    pop cx                           ; 0x8a34
    mov ax, 0                        ; 0x8a35
    push ax                          ; 0x8a38
    push word [bp + 0x4]             ; 0x8a39
    call loc_6f79                    ; 0x8a3c
    add sp, byte 4                   ; 0x8a3f
    mov ax, 0x11                     ; 0x8a42
    push ax                          ; 0x8a45
    call loc_72c2                    ; 0x8a46
    pop cx                           ; 0x8a49
    mov ax, 0x10                     ; 0x8a4a
    push ax                          ; 0x8a4d
    call loc_72c2                    ; 0x8a4e
    pop cx                           ; 0x8a51
    mov ax, 0xf                      ; 0x8a52
    push ax                          ; 0x8a55
    call loc_72c2                    ; 0x8a56
    pop cx                           ; 0x8a59
    mov ax, 0                        ; 0x8a5a
    push ax                          ; 0x8a5d
    mov ax, 1                        ; 0x8a5e
    push ax                          ; 0x8a61
    push word [data_a5b4]            ; 0x8a62
    push word [data_a5b2]            ; 0x8a66
    call ds_dispatch_e942            ; 0x8a6a
    add sp, byte 8                   ; 0x8a6d
    call loc_85f0                    ; 0x8a70
    ret                              ; 0x8a73
loc_8a74:
    mov ax, 0                        ; 0x8a74
    call ds_dispatch_f40b            ; 0x8a77
    mov ax, 0                        ; 0x8a7a
    push ax                          ; 0x8a7d
    mov ax, 0x9158                   ; 0x8a7e
    push ax                          ; 0x8a81
    call api_idx_0002_5              ; 0x8a82
    add sp, byte 4                   ; 0x8a85
    mov ax, 0                        ; 0x8a88
    push ax                          ; 0x8a8b
    mov ax, data_0002                ; 0x8a8c
    push ax                          ; 0x8a8f
    mov ax, 0x91                     ; 0x8a90
    push ax                          ; 0x8a93
    mov ax, 0x13f                    ; 0x8a94
    push ax                          ; 0x8a97
    mov ax, 0                        ; 0x8a98
    push ax                          ; 0x8a9b
    push ax                          ; 0x8a9c
    call ds_dispatch_e935            ; 0x8a9d
    add sp, byte 0x0c                ; 0x8aa0
    mov word [data_a5b4], dx         ; 0x8aa3
    mov word [data_a5b2], ax         ; 0x8aa7
    mov ax, 0xf                      ; 0x8aaa
    push ax                          ; 0x8aad
    mov ax, 9                        ; 0x8aae
    push ax                          ; 0x8ab1
    call api_idx_0016_2              ; 0x8ab2
    add sp, byte 4                   ; 0x8ab5
    mov ax, 0x11                     ; 0x8ab8
    push ax                          ; 0x8abb
    mov ax, 6                        ; 0x8abc
    push ax                          ; 0x8abf
    call api_idx_0016_2              ; 0x8ac0
    add sp, byte 4                   ; 0x8ac3
    mov ax, word [bp + 0x6]          ; 0x8ac6
    mov word [data_a5b8], ax         ; 0x8ac9
    mov word [data_a5ce], 1          ; 0x8acc
    mov word [data_a5b0], 0          ; 0x8ad2
    mov word [data_a4a4], 4          ; 0x8ad8
    mov word [data_a5e2], 0xff9c     ; 0x8ade
    mov word [data_a5f2], 0x55       ; 0x8ae4
    mov word [data_a600], 0          ; 0x8aea
    mov word [data_a5ae], 5          ; 0x8af0
    les bx, word [data_0002]         ; 0x8af6
    mov ax, word [es:bx]             ; 0x8afa
    mov dx, word [es:bx + 0x2]       ; 0x8afd
    mov word [data_908c], dx         ; 0x8b01
    mov word [data_908a], ax         ; 0x8b05
    call api_idx_000a_3              ; 0x8b08
    mov ax, 0                        ; 0x8b0b
    push ax                          ; 0x8b0e
    push ax                          ; 0x8b0f
    push ax                          ; 0x8b10
    call ds_dispatch_f0d7            ; 0x8b11
    add sp, byte 6                   ; 0x8b14
    mov ax, 0xc7                     ; 0x8b17
    push ax                          ; 0x8b1a
    mov ax, 0x13f                    ; 0x8b1b
    push ax                          ; 0x8b1e
    mov ax, 0                        ; 0x8b1f
    push ax                          ; 0x8b22
    push ax                          ; 0x8b23
    call ds_dispatch_e8da            ; 0x8b24
    add sp, byte 8                   ; 0x8b27
    mov ax, 0                        ; 0x8b2a
    push ax                          ; 0x8b2d
    call ds_dispatch_f0bd            ; 0x8b2e
    pop cx                           ; 0x8b31
    mov ax, 0                        ; 0x8b32
    push ax                          ; 0x8b35
    push word [bp + 0x4]             ; 0x8b36
    call loc_6f79                    ; 0x8b39
    add sp, byte 4                   ; 0x8b3c
    mov ax, 0x11                     ; 0x8b3f
    push ax                          ; 0x8b42
    call loc_72c2                    ; 0x8b43
    pop cx                           ; 0x8b46
    mov ax, 0xf                      ; 0x8b47
    push ax                          ; 0x8b4a
    call loc_72c2                    ; 0x8b4b
    pop cx                           ; 0x8b4e
    mov ax, 0                        ; 0x8b4f
    push ax                          ; 0x8b52
    mov ax, 1                        ; 0x8b53
    push ax                          ; 0x8b56
    push word [data_a5b4]            ; 0x8b57
    push word [data_a5b2]            ; 0x8b5b
    call ds_dispatch_e942            ; 0x8b5f
    add sp, byte 8                   ; 0x8b62
    call loc_85f0                    ; 0x8b65
    ret                              ; 0x8b68
