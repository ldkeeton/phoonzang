api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x5df5
    call ds_aztec_csav               ; 0x5df8
    mov ax, 0x248                    ; 0x5dfb
    imul word [bp + 0x4]             ; 0x5dfe
    mov bx, ax                       ; 0x5e01
    mov al, byte [bx + 0x5d67]       ; 0x5e03
    sub ah, ah                       ; 0x5e07
    push ax                          ; 0x5e09
    mov al, byte [bx + 0x5d66]       ; 0x5e0a
    sub ah, ah                       ; 0x5e0e
    mov cx, ax                       ; 0x5e10
    shl ax, 1                        ; 0x5e12
    mov cx, ax                       ; 0x5e14
    pop ax                           ; 0x5e16
    add ax, cx                       ; 0x5e17
    mov cx, 3                        ; 0x5e19
    cwd                              ; 0x5e1c
    idiv cx                          ; 0x5e1d
    mov word [bp - 0x0002], ax       ; 0x5e1f
    mov word [bp - 0x0004], 0        ; 0x5e22
    cmp ax, strict word 0xd          ; 0x5e27
    jle short @..api_idx_0004_7.l1   ; 0x5e2a
    inc word [bp - 0x0004]           ; 0x5e2c
@..api_idx_0004_7.l1:
    cmp ax, strict word 0x10         ; 0x5e2f
    jle short @..api_idx_0004_7.l2   ; 0x5e32
    inc word [bp - 0x0004]           ; 0x5e34
@..api_idx_0004_7.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x5e37
    jne short @..api_idx_0004_7.l3   ; 0x5e3c
    inc word [bp - 0x0004]           ; 0x5e3e
@..api_idx_0004_7.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x5e41
    jne short @..api_idx_0004_7.l4   ; 0x5e46
    dec word [bp - 0x0004]           ; 0x5e48
@..api_idx_0004_7.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x5e4b
    sub ah, ah                       ; 0x5e4f
    jmp near @..api_idx_0004_7.l5    ; 0x5e51
jumptable_6059_case_0:
    mov ax, word [bp - 0x0004]       ; 0x5e54
    inc ax                           ; 0x5e57
    push ax                          ; 0x5e58
    push ax                          ; 0x5e59
    push ax                          ; 0x5e5a
    push ax                          ; 0x5e5b
    push ax                          ; 0x5e5c
    push ax                          ; 0x5e5d
    push word [bp + 0x4]             ; 0x5e5e
    call loc_5d7e                    ; 0x5e61
    add sp, byte 0x0e                ; 0x5e64
    jmp near @..api_idx_0004_7.l6    ; 0x5e67
jumptable_6059_case_1:
    mov ax, 0x248                    ; 0x5e6a
    imul word [bp + 0x4]             ; 0x5e6d
    mov bx, ax                       ; 0x5e70
    mov byte [bx + 0x5d50], 2        ; 0x5e72
    mov ax, word [bp - 0x0004]       ; 0x5e77
    inc ax                           ; 0x5e7a
    inc ax                           ; 0x5e7b
    inc ax                           ; 0x5e7c
    push ax                          ; 0x5e7d
    mov ax, word [bp - 0x0004]       ; 0x5e7e
    inc ax                           ; 0x5e81
    inc ax                           ; 0x5e82
    push ax                          ; 0x5e83
    push ax                          ; 0x5e84
    push ax                          ; 0x5e85
    mov ax, word [bp - 0x0004]       ; 0x5e86
    inc ax                           ; 0x5e89
    inc ax                           ; 0x5e8a
    inc ax                           ; 0x5e8b
    push ax                          ; 0x5e8c
    push ax                          ; 0x5e8d
    push word [bp + 0x4]             ; 0x5e8e
    call loc_5d7e                    ; 0x5e91
    add sp, byte 0x0e                ; 0x5e94
    jmp near @..api_idx_0004_7.l6    ; 0x5e97
jumptable_6059_case_2:
    mov ax, 0x248                    ; 0x5e9a
    imul word [bp + 0x4]             ; 0x5e9d
    mov bx, ax                       ; 0x5ea0
    mov byte [bx + 0x5d51], 2        ; 0x5ea2
    mov ax, word [bp - 0x0004]       ; 0x5ea7
    inc ax                           ; 0x5eaa
    inc ax                           ; 0x5eab
    inc ax                           ; 0x5eac
    push ax                          ; 0x5ead
    push ax                          ; 0x5eae
    mov ax, word [bp - 0x0004]       ; 0x5eaf
    inc ax                           ; 0x5eb2
    inc ax                           ; 0x5eb3
    push ax                          ; 0x5eb4
    push ax                          ; 0x5eb5
    mov ax, word [bp - 0x0004]       ; 0x5eb6
    inc ax                           ; 0x5eb9
    inc ax                           ; 0x5eba
    inc ax                           ; 0x5ebb
    push ax                          ; 0x5ebc
    mov ax, word [bp - 0x0004]       ; 0x5ebd
    inc ax                           ; 0x5ec0
    inc ax                           ; 0x5ec1
    push ax                          ; 0x5ec2
    push word [bp + 0x4]             ; 0x5ec3
    call loc_5d7e                    ; 0x5ec6
    add sp, byte 0x0e                ; 0x5ec9
    jmp near @..api_idx_0004_7.l6    ; 0x5ecc
jumptable_6059_case_4:
    mov ax, word [bp - 0x0004]       ; 0x5ecf
    inc ax                           ; 0x5ed2
    push ax                          ; 0x5ed3
    mov ax, word [bp - 0x0004]       ; 0x5ed4
    inc ax                           ; 0x5ed7
    inc ax                           ; 0x5ed8
    push ax                          ; 0x5ed9
    push ax                          ; 0x5eda
    push ax                          ; 0x5edb
    mov ax, word [bp - 0x0004]       ; 0x5edc
    inc ax                           ; 0x5edf
    push ax                          ; 0x5ee0
    push ax                          ; 0x5ee1
    push word [bp + 0x4]             ; 0x5ee2
    call loc_5d7e                    ; 0x5ee5
    add sp, byte 0x0e                ; 0x5ee8
    jmp near @..api_idx_0004_7.l6    ; 0x5eeb
jumptable_6059_case_5:
    mov ax, 0x248                    ; 0x5eee
    imul word [bp + 0x4]             ; 0x5ef1
    mov bx, ax                       ; 0x5ef4
    mov byte [bx + 0x5d52], 2        ; 0x5ef6
    mov ax, word [bp - 0x0004]       ; 0x5efb
    inc ax                           ; 0x5efe
    inc ax                           ; 0x5eff
    push ax                          ; 0x5f00
    push ax                          ; 0x5f01
    mov ax, word [bp - 0x0004]       ; 0x5f02
    inc ax                           ; 0x5f05
    inc ax                           ; 0x5f06
    inc ax                           ; 0x5f07
    push ax                          ; 0x5f08
    push ax                          ; 0x5f09
    mov ax, word [bp - 0x0004]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    inc ax                           ; 0x5f0e
    push ax                          ; 0x5f0f
    mov ax, word [bp - 0x0004]       ; 0x5f10
    inc ax                           ; 0x5f13
    inc ax                           ; 0x5f14
    inc ax                           ; 0x5f15
    push ax                          ; 0x5f16
    push word [bp + 0x4]             ; 0x5f17
    call loc_5d7e                    ; 0x5f1a
    add sp, byte 0x0e                ; 0x5f1d
    jmp near @..api_idx_0004_7.l6    ; 0x5f20
jumptable_6059_case_6:
    mov ax, word [bp - 0x0004]       ; 0x5f23
    inc ax                           ; 0x5f26
    push ax                          ; 0x5f27
    mov ax, word [bp - 0x0004]       ; 0x5f28
    inc ax                           ; 0x5f2b
    inc ax                           ; 0x5f2c
    push ax                          ; 0x5f2d
    mov ax, word [bp - 0x0004]       ; 0x5f2e
    inc ax                           ; 0x5f31
    push ax                          ; 0x5f32
    push ax                          ; 0x5f33
    mov ax, word [bp - 0x0004]       ; 0x5f34
    inc ax                           ; 0x5f37
    inc ax                           ; 0x5f38
    push ax                          ; 0x5f39
    push ax                          ; 0x5f3a
    push word [bp + 0x4]             ; 0x5f3b
    call loc_5d7e                    ; 0x5f3e
    add sp, byte 0x0e                ; 0x5f41
    jmp near @..api_idx_0004_7.l6    ; 0x5f44
jumptable_6059_case_7:
    mov ax, 0x248                    ; 0x5f47
    imul word [bp + 0x4]             ; 0x5f4a
    mov bx, ax                       ; 0x5f4d
    mov byte [bx + 0x5d53], 2        ; 0x5f4f
    mov ax, word [bp - 0x0004]       ; 0x5f54
    inc ax                           ; 0x5f57
    inc ax                           ; 0x5f58
    push ax                          ; 0x5f59
    mov ax, word [bp - 0x0004]       ; 0x5f5a
    add ax, strict word 4            ; 0x5f5d
    push ax                          ; 0x5f60
    mov ax, word [bp - 0x0004]       ; 0x5f61
    inc ax                           ; 0x5f64
    inc ax                           ; 0x5f65
    push ax                          ; 0x5f66
    push ax                          ; 0x5f67
    push ax                          ; 0x5f68
    mov ax, word [bp - 0x0004]       ; 0x5f69
    inc ax                           ; 0x5f6c
    inc ax                           ; 0x5f6d
    inc ax                           ; 0x5f6e
    push ax                          ; 0x5f6f
    push word [bp + 0x4]             ; 0x5f70
    call loc_5d7e                    ; 0x5f73
    add sp, byte 0x0e                ; 0x5f76
    jmp near @..api_idx_0004_7.l6    ; 0x5f79
jumptable_6059_case_8:
    mov ax, word [bp - 0x0004]       ; 0x5f7c
    inc ax                           ; 0x5f7f
    inc ax                           ; 0x5f80
    push ax                          ; 0x5f81
    mov ax, word [bp - 0x0004]       ; 0x5f82
    inc ax                           ; 0x5f85
    push ax                          ; 0x5f86
    push ax                          ; 0x5f87
    mov ax, word [bp - 0x0004]       ; 0x5f88
    inc ax                           ; 0x5f8b
    inc ax                           ; 0x5f8c
    push ax                          ; 0x5f8d
    push ax                          ; 0x5f8e
    mov ax, word [bp - 0x0004]       ; 0x5f8f
    inc ax                           ; 0x5f92
    push ax                          ; 0x5f93
    push word [bp + 0x4]             ; 0x5f94
    call loc_5d7e                    ; 0x5f97
    add sp, byte 0x0e                ; 0x5f9a
    jmp near @..api_idx_0004_7.l6    ; 0x5f9d
jumptable_6059_case_9:
    mov ax, 0x248                    ; 0x5fa0
    imul word [bp + 0x4]             ; 0x5fa3
    mov bx, ax                       ; 0x5fa6
    mov byte [bx + 0x5d50], 1        ; 0x5fa8
    mov byte [bx + 0x5d51], 1        ; 0x5fad
    mov ax, word [bp - 0x0004]       ; 0x5fb2
    inc ax                           ; 0x5fb5
    inc ax                           ; 0x5fb6
    inc ax                           ; 0x5fb7
    push ax                          ; 0x5fb8
    mov ax, word [bp - 0x0004]       ; 0x5fb9
    inc ax                           ; 0x5fbc
    inc ax                           ; 0x5fbd
    push ax                          ; 0x5fbe
    push ax                          ; 0x5fbf
    push ax                          ; 0x5fc0
    push ax                          ; 0x5fc1
    push ax                          ; 0x5fc2
    push word [bp + 0x4]             ; 0x5fc3
    call loc_5d7e                    ; 0x5fc6
    add sp, byte 0x0e                ; 0x5fc9
    jmp near @..api_idx_0004_7.l6    ; 0x5fcc
jumptable_6059_case_10:
    mov ax, word [bp - 0x0004]       ; 0x5fcf
    inc ax                           ; 0x5fd2
    inc ax                           ; 0x5fd3
    push ax                          ; 0x5fd4
    mov ax, word [bp - 0x0004]       ; 0x5fd5
    inc ax                           ; 0x5fd8
    push ax                          ; 0x5fd9
    push ax                          ; 0x5fda
    mov ax, word [bp - 0x0004]       ; 0x5fdb
    inc ax                           ; 0x5fde
    inc ax                           ; 0x5fdf
    push ax                          ; 0x5fe0
    push ax                          ; 0x5fe1
    mov ax, word [bp - 0x0004]       ; 0x5fe2
    inc ax                           ; 0x5fe5
    push ax                          ; 0x5fe6
    push word [bp + 0x4]             ; 0x5fe7
    call loc_5d7e                    ; 0x5fea
    add sp, byte 0x0e                ; 0x5fed
    jmp near @..api_idx_0004_7.l6    ; 0x5ff0
jumptable_6059_case_11:
    mov ax, word [bp - 0x0004]       ; 0x5ff3
    inc ax                           ; 0x5ff6
    inc ax                           ; 0x5ff7
    push ax                          ; 0x5ff8
    mov ax, word [bp - 0x0004]       ; 0x5ff9
    inc ax                           ; 0x5ffc
    push ax                          ; 0x5ffd
    push ax                          ; 0x5ffe
    push ax                          ; 0x5fff
    mov ax, word [bp - 0x0004]       ; 0x6000
    inc ax                           ; 0x6003
    inc ax                           ; 0x6004
    push ax                          ; 0x6005
    push ax                          ; 0x6006
    push word [bp + 0x4]             ; 0x6007
    call loc_5d7e                    ; 0x600a
    add sp, byte 0x0e                ; 0x600d
    jmp short @..api_idx_0004_7.l6   ; 0x6010
jumptable_6059_case_12:
    mov ax, word [bp - 0x0004]       ; 0x6012
    inc ax                           ; 0x6015
    push ax                          ; 0x6016
    mov ax, word [bp - 0x0004]       ; 0x6017
    inc ax                           ; 0x601a
    inc ax                           ; 0x601b
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x0004]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    push ax                          ; 0x6023
    push ax                          ; 0x6024
    mov ax, word [bp - 0x0004]       ; 0x6025
    inc ax                           ; 0x6028
    inc ax                           ; 0x6029
    push ax                          ; 0x602a
    push word [bp + 0x4]             ; 0x602b
    call loc_5d7e                    ; 0x602e
    add sp, byte 0x0e                ; 0x6031
    jmp short @..api_idx_0004_7.l6   ; 0x6034
jumptable_6059_case_13:
    mov ax, word [bp - 0x0004]       ; 0x6036
    inc ax                           ; 0x6039
    push ax                          ; 0x603a
    push ax                          ; 0x603b
    mov ax, word [bp - 0x0004]       ; 0x603c
    inc ax                           ; 0x603f
    inc ax                           ; 0x6040
    push ax                          ; 0x6041
    push ax                          ; 0x6042
    mov ax, word [bp - 0x0004]       ; 0x6043
    inc ax                           ; 0x6046
    push ax                          ; 0x6047
    mov ax, word [bp - 0x0004]       ; 0x6048
    inc ax                           ; 0x604b
    inc ax                           ; 0x604c
    push ax                          ; 0x604d
    push word [bp + 0x4]             ; 0x604e
    call loc_5d7e                    ; 0x6051
    add sp, byte 0x0e                ; 0x6054
    jmp short @..api_idx_0004_7.l6   ; 0x6057
jumptable_6059:
    dw jumptable_6059_case_0 - IMAGE_BASE + 0x5055 ; 0x6059
    dw jumptable_6059_case_1 - IMAGE_BASE + 0x5055 ; 0x605b
    dw jumptable_6059_case_2 - IMAGE_BASE + 0x5055 ; 0x605d
    dw jumptable_6059_case_0 - IMAGE_BASE + 0x5055 ; 0x605f
    dw jumptable_6059_case_4 - IMAGE_BASE + 0x5055 ; 0x6061
    dw jumptable_6059_case_5 - IMAGE_BASE + 0x5055 ; 0x6063
    dw jumptable_6059_case_6 - IMAGE_BASE + 0x5055 ; 0x6065
    dw jumptable_6059_case_7 - IMAGE_BASE + 0x5055 ; 0x6067
    dw jumptable_6059_case_8 - IMAGE_BASE + 0x5055 ; 0x6069
    dw jumptable_6059_case_9 - IMAGE_BASE + 0x5055 ; 0x606b
    dw jumptable_6059_case_10 - IMAGE_BASE + 0x5055 ; 0x606d
    dw jumptable_6059_case_11 - IMAGE_BASE + 0x5055 ; 0x606f
    dw jumptable_6059_case_12 - IMAGE_BASE + 0x5055 ; 0x6071
    dw jumptable_6059_case_13 - IMAGE_BASE + 0x5055 ; 0x6073
@..api_idx_0004_7.l5:
    cmp ax, strict word 0xe          ; 0x6075
    jae short @..api_idx_0004_7.l6   ; 0x6078
    xchg bx, ax                      ; 0x607a
    shl bx, 1                        ; 0x607b
    jmp [cs:bx - 0x4f60]             ; 0x607d
@..api_idx_0004_7.l6:
    ret                              ; 0x6082
