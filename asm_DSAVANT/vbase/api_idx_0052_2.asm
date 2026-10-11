api_idx_0052_2:
    mov ax, 0xffae                   ; 0x4826
    call ds_dispatch_f40b            ; 0x4829
    mov ax, word [bp + 0x4]          ; 0x482c
    jmp near @..api_idx_0052_2.l1    ; 0x482f
    mov ax, 8                        ; 0x4832
    push ax                          ; 0x4835
    mov ax, word [bp + 0x8]          ; 0x4836
    add ax, strict word 0x19         ; 0x4839
    push ax                          ; 0x483c
    mov ax, word [bp + 0x6]          ; 0x483d
    add ax, strict word 0x5c         ; 0x4840
    push ax                          ; 0x4843
    call loc_47bb                    ; 0x4844
    add sp, byte 6                   ; 0x4847
    jmp near @..api_idx_0052_2.l2    ; 0x484a
    mov ax, word [bp + 0x8]          ; 0x484d
    add ax, strict word 0x26         ; 0x4850
    push ax                          ; 0x4853
    mov ax, word [bp + 0x6]          ; 0x4854
    add ax, strict word 0x39         ; 0x4857
    push ax                          ; 0x485a
    mov al, byte [data_5986]         ; 0x485b
    sub ah, ah                       ; 0x485e
    push ax                          ; 0x4860
    call loc_46b8                    ; 0x4861
    add sp, byte 6                   ; 0x4864
    jmp near @..api_idx_0052_2.l2    ; 0x4867
    mov ax, 0x12                     ; 0x486a
    push ax                          ; 0x486d
    mov ax, word [bp + 0x8]          ; 0x486e
    add ax, strict word 0x38         ; 0x4871
    push ax                          ; 0x4874
    mov ax, word [bp + 0x6]          ; 0x4875
    add ax, strict word 0x27         ; 0x4878
    push ax                          ; 0x487b
    mov ax, 0x593a                   ; 0x487c
    push ax                          ; 0x487f
    call loc_4727                    ; 0x4880
    add sp, byte 8                   ; 0x4883
    jmp near @..api_idx_0052_2.l2    ; 0x4886
    mov ax, 0x12                     ; 0x4889
    push ax                          ; 0x488c
    mov ax, word [bp + 0x8]          ; 0x488d
    add ax, strict word 0x44         ; 0x4890
    push ax                          ; 0x4893
    mov ax, word [bp + 0x6]          ; 0x4894
    add ax, strict word 0x27         ; 0x4897
    push ax                          ; 0x489a
    mov ax, 0x594e                   ; 0x489b
    push ax                          ; 0x489e
    call loc_4727                    ; 0x489f
    add sp, byte 8                   ; 0x48a2
    jmp near @..api_idx_0052_2.l2    ; 0x48a5
    mov ax, 7                        ; 0x48a8
    push ax                          ; 0x48ab
    mov ax, word [bp + 0x8]          ; 0x48ac
    add ax, strict word 0x55         ; 0x48af
    push ax                          ; 0x48b2
    mov ax, word [bp + 0x6]          ; 0x48b3
    add ax, strict word 8            ; 0x48b6
    push ax                          ; 0x48b9
    call loc_47bb                    ; 0x48ba
    add sp, byte 6                   ; 0x48bd
    jmp near @..api_idx_0052_2.l2    ; 0x48c0
    mov ax, word [bp + 0x8]          ; 0x48c3
    add ax, strict word 0x62         ; 0x48c6
    push ax                          ; 0x48c9
    mov ax, word [bp + 0x6]          ; 0x48ca
    add ax, strict word 0x69         ; 0x48cd
    push ax                          ; 0x48d0
    mov al, byte [data_597c]         ; 0x48d1
    sub ah, ah                       ; 0x48d4
    push ax                          ; 0x48d6
    call loc_46b8                    ; 0x48d7
    add sp, byte 6                   ; 0x48da
    jmp near @..api_idx_0052_2.l2    ; 0x48dd
    mov ax, word [bp + 0x8]          ; 0x48e0
    add ax, strict word 0x68         ; 0x48e3
    push ax                          ; 0x48e6
    mov ax, word [bp + 0x6]          ; 0x48e7
    add ax, strict word 0x69         ; 0x48ea
    push ax                          ; 0x48ed
    mov al, byte [data_597d]         ; 0x48ee
    sub ah, ah                       ; 0x48f1
    push ax                          ; 0x48f3
    call loc_46b8                    ; 0x48f4
    add sp, byte 6                   ; 0x48f7
    jmp near @..api_idx_0052_2.l2    ; 0x48fa
    mov ax, word [bp + 0x8]          ; 0x48fd
    add ax, strict word 0x6e         ; 0x4900
    push ax                          ; 0x4903
    mov ax, word [bp + 0x6]          ; 0x4904
    add ax, strict word 0x69         ; 0x4907
    push ax                          ; 0x490a
    mov al, byte [data_597e]         ; 0x490b
    sub ah, ah                       ; 0x490e
    push ax                          ; 0x4910
    call loc_46b8                    ; 0x4911
    add sp, byte 6                   ; 0x4914
    jmp near @..api_idx_0052_2.l2    ; 0x4917
    mov ax, 7                        ; 0x491a
    push ax                          ; 0x491d
    mov ax, word [bp + 0x8]          ; 0x491e
    add ax, strict word 0x79         ; 0x4921
    push ax                          ; 0x4924
    mov ax, word [bp + 0x6]          ; 0x4925
    add ax, strict word 8            ; 0x4928
    push ax                          ; 0x492b
    call loc_47bb                    ; 0x492c
    add sp, byte 6                   ; 0x492f
    jmp near @..api_idx_0052_2.l2    ; 0x4932
    mov ax, word [bp + 0x8]          ; 0x4935
    add ax, 0x86                     ; 0x4938
    push ax                          ; 0x493b
    mov ax, word [bp + 0x6]          ; 0x493c
    add ax, strict word 0x69         ; 0x493f
    push ax                          ; 0x4942
    mov al, byte [data_597f]         ; 0x4943
    sub ah, ah                       ; 0x4946
    push ax                          ; 0x4948
    call loc_46b8                    ; 0x4949
    add sp, byte 6                   ; 0x494c
    jmp near @..api_idx_0052_2.l2    ; 0x494f
    mov ax, 6                        ; 0x4952
    push ax                          ; 0x4955
    mov ax, word [bp + 0x8]          ; 0x4956
    add ax, strict word 0x19         ; 0x4959
    push ax                          ; 0x495c
    mov ax, word [bp + 0x6]          ; 0x495d
    add ax, 0xe6                     ; 0x4960
    push ax                          ; 0x4963
    call loc_47bb                    ; 0x4964
    add sp, byte 6                   ; 0x4967
    jmp near @..api_idx_0052_2.l2    ; 0x496a
    mov ax, 3                        ; 0x496d
    push ax                          ; 0x4970
    mov ax, word [bp + 0x8]          ; 0x4971
    add ax, strict word 0x25         ; 0x4974
    push ax                          ; 0x4977
    mov ax, word [bp + 0x6]          ; 0x4978
    add ax, 0xc2                     ; 0x497b
    push ax                          ; 0x497e
    call loc_47bb                    ; 0x497f
    add sp, byte 6                   ; 0x4982
    jmp near @..api_idx_0052_2.l2    ; 0x4985
    mov ax, 6                        ; 0x4988
    push ax                          ; 0x498b
    mov ax, word [bp + 0x8]          ; 0x498c
    add ax, strict word 0x37         ; 0x498f
    push ax                          ; 0x4992
    mov ax, word [bp + 0x6]          ; 0x4993
    add ax, 0xa1                     ; 0x4996
    push ax                          ; 0x4999
    call loc_47bb                    ; 0x499a
    add sp, byte 6                   ; 0x499d
    jmp near @..api_idx_0052_2.l2    ; 0x49a0
    mov ax, 0xa                      ; 0x49a3
    push ax                          ; 0x49a6
    mov ax, word [bp + 0x8]          ; 0x49a7
    add ax, strict word 0x44         ; 0x49aa
    push ax                          ; 0x49ad
    mov ax, word [bp + 0x6]          ; 0x49ae
    add ax, 0xd5                     ; 0x49b1
    push ax                          ; 0x49b4
    mov ax, 0x5964                   ; 0x49b5
    push ax                          ; 0x49b8
    call loc_4727                    ; 0x49b9
    add sp, byte 8                   ; 0x49bc
    jmp near @..api_idx_0052_2.l2    ; 0x49bf
    mov ax, 1                        ; 0x49c2
    push ax                          ; 0x49c5
    mov ax, word [bp + 0x8]          ; 0x49c6
    add ax, strict word 0x68         ; 0x49c9
    push ax                          ; 0x49cc
    mov ax, word [bp + 0x6]          ; 0x49cd
    add ax, 0xfb                     ; 0x49d0
    push ax                          ; 0x49d3
    mov ax, word [bp + 0x8]          ; 0x49d4
    add ax, strict word 0x62         ; 0x49d7
    push ax                          ; 0x49da
    mov ax, word [bp + 0x6]          ; 0x49db
    add ax, 0xe7                     ; 0x49de
    push ax                          ; 0x49e1
    call ds_dispatch_e901            ; 0x49e2
    add sp, byte 0x0a                ; 0x49e5
    mov ax, word [bp + 0x8]          ; 0x49e8
    add ax, strict word 0x63         ; 0x49eb
    push ax                          ; 0x49ee
    mov ax, word [bp + 0x6]          ; 0x49ef
    add ax, 0xe9                     ; 0x49f2
    push ax                          ; 0x49f5
    call ds_dispatch_e809            ; 0x49f6
    add sp, byte 4                   ; 0x49f9
    mov ax, 1                        ; 0x49fc
    push ax                          ; 0x49ff
    mov ax, 0                        ; 0x4a00
    push ax                          ; 0x4a03
    call ds_dispatch_e823            ; 0x4a04
    add sp, byte 4                   ; 0x4a07
    mov ax, 0                        ; 0x4a0a
    push ax                          ; 0x4a0d
    mov ax, 3                        ; 0x4a0e
    push ax                          ; 0x4a11
    mov al, byte [data_5978]         ; 0x4a12
    cbw                              ; 0x4a15
    push ax                          ; 0x4a16
    call ds_dispatch_b2e7            ; 0x4a17
    add sp, byte 6                   ; 0x4a1a
    mov ax, word [bp + 0x8]          ; 0x4a1d
    add ax, strict word 0x68         ; 0x4a20
    push ax                          ; 0x4a23

    db 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x62, 0x00, 0x50, 0x8b, 0x46
    db 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x9e, 0x9e, 0x83, 0xc4, 0x08, 0xe9, 0xe6, 0x00, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50
    db 0x8b, 0x46, 0x08, 0x05, 0x68, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x9c
    db 0x9e, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x08, 0x05, 0x69, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe9
    db 0x00, 0x50, 0xe8, 0x90, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0x9c, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xa0, 0x79
    db 0x59, 0x98, 0x50, 0xe8, 0x4d, 0x68, 0x83, 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50
    db 0x8b, 0x46, 0x06, 0x05, 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x68, 0x00, 0x50, 0x8b, 0x46
    db 0x06, 0x05, 0xe7, 0x00, 0x50, 0xe8, 0x1e, 0x9e, 0x83, 0xc4, 0x08, 0xeb, 0x67, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xb2, 0x00, 0x50, 0xe8
    db 0xe5, 0xfc, 0x83, 0xc4, 0x06, 0xeb, 0x4d, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x7f
    db 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0xcb, 0xfc, 0x83, 0xc4, 0x06, 0xeb
    db 0x33, 0x79, 0x98, 0x94, 0x98, 0xb1, 0x98, 0xd0, 0x98, 0xef, 0x98, 0x0a, 0x99, 0x27, 0x99, 0x44
    db 0x99, 0x61, 0x99, 0x7c, 0x99, 0x99, 0x99, 0xb4, 0x99, 0xcf, 0x99, 0xea, 0x99, 0x6f, 0x9b, 0x09
    db 0x9a, 0x89, 0x9a, 0x08, 0x9b, 0x22, 0x9b

@..api_idx_0052_2.l1:
    cmp ax, strict word 0x13         ; 0x4b1b
    jae short @..api_idx_0052_2.l2   ; 0x4b1e
    xchg bx, ax                      ; 0x4b20
    shl bx, 1                        ; 0x4b21
    jmp [cs:bx - 0x64c4]             ; 0x4b23
@..api_idx_0052_2.l2:
    ret                              ; 0x4b28
loc_4b29:
    mov ax, 0                        ; 0x4b29
    call ds_dispatch_f40b            ; 0x4b2c
    cmp word [bp + 0x6], byte 0      ; 0x4b2f
    jge short @..local.l69           ; 0x4b33
    mov bx, word [bp + 0x4]          ; 0x4b35
    cmp byte [bx + 0x597c], 0        ; 0x4b38
    jbe short @..local.l68           ; 0x4b3d
    dec byte [bx + 0x597c]           ; 0x4b3f
@..local.l68:
    jmp short @..local.l70           ; 0x4b43
@..local.l69:
    cmp word [bp + 0x6], byte 0      ; 0x4b45
    jle short @..local.l70           ; 0x4b49
    mov bx, word [bp + 0x4]          ; 0x4b4b
    mov al, byte [bx + 0x597c]       ; 0x4b4e
    sub ah, ah                       ; 0x4b52
    cmp ax, word [bp + 0x8]          ; 0x4b54
    jge short @..local.l70           ; 0x4b57
    inc byte [bx + 0x597c]           ; 0x4b59
@..local.l70:
    ret                              ; 0x4b5d
loc_4b5e:
    mov ax, 0                        ; 0x4b5e
    call ds_dispatch_f40b            ; 0x4b61
    cmp word [bp + 0x6], byte 0      ; 0x4b64
    jge short @..local.l72           ; 0x4b68
    mov bx, word [bp + 0x4]          ; 0x4b6a
    mov al, byte [bx + 0x5978]       ; 0x4b6d
    cbw                              ; 0x4b71
    cmp ax, word [bp + 0x8]          ; 0x4b72
    jle short @..local.l71           ; 0x4b75
    dec byte [bx + 0x5978]           ; 0x4b77
@..local.l71:
    jmp short @..local.l73           ; 0x4b7b
@..local.l72:
    cmp word [bp + 0x6], byte 0      ; 0x4b7d
    jle short @..local.l73           ; 0x4b81
    mov bx, word [bp + 0x4]          ; 0x4b83
    mov al, byte [bx + 0x5978]       ; 0x4b86
    cbw                              ; 0x4b8a
    cmp ax, word [bp + 0x8]          ; 0x4b8b
    jge short @..local.l73           ; 0x4b8e
    inc byte [bx + 0x5978]           ; 0x4b90
@..local.l73:
    ret                              ; 0x4b94
