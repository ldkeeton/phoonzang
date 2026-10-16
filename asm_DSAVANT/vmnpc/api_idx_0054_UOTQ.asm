; auto-generated
api_idx_0054_UOTQ:
    mov ax, 0xffac                   ; 0x9d30
    call aztec_csav                  ; 0x9d33
    mov ax, word [bss_9e42]          ; 0x9d36
    mov word [bp - 0x0002], ax       ; 0x9d39
    mov cx, 0x14                     ; 0x9d3c
    imul cx                          ; 0x9d3f
    mov bx, ax                       ; 0x9d41
    cmp word [bx - 0x617a], byte 0   ; 0x9d43
    jge short @..api_idx_0054_UOTQ.l1 ; 0x9d48
    mov ax, word [bx - 0x617a]       ; 0x9d4a
    add word [bp - 0x0002], ax       ; 0x9d4e
@..api_idx_0054_UOTQ.l1:
    push word [bp - 0x0002]          ; 0x9d51
    call loc_UPRU                    ; 0x9d54
    pop cx                           ; 0x9d57
    mov word [bp - 0x0004], ax       ; 0x9d58
    mov ax, 0x14                     ; 0x9d5b
    imul word [bp - 0x0002]          ; 0x9d5e
    mov bx, ax                       ; 0x9d61
    cmp word [bx - 0x617a], byte 3   ; 0x9d63
    jne short @..api_idx_0054_UOTQ.l2 ; 0x9d68
    mov ax, 0x659                    ; 0x9d6a
    push ax                          ; 0x9d6d
    mov ax, word [bp - 0x0004]       ; 0x9d6e
    inc ax                           ; 0x9d71
    inc ax                           ; 0x9d72
    inc ax                           ; 0x9d73
    push ax                          ; 0x9d74
    call loc_OJVU                    ; 0x9d75
    add sp, byte 4                   ; 0x9d78
    ret                              ; 0x9d7b
@..api_idx_0054_UOTQ.l2:
    mov ax, word [bss_9e46]          ; 0x9d7c
    jmp near @..api_idx_0054_UOTQ.l34 ; 0x9d7f
jumptable_a27d_case_0:
    cmp word [bss_9e62], byte 1      ; 0x9d82
    je short @..api_idx_0054_UOTQ.l3 ; 0x9d87
    jmp near @..api_idx_0054_UOTQ.l16 ; 0x9d89
@..api_idx_0054_UOTQ.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x9d8c
    je short @..api_idx_0054_UOTQ.l4 ; 0x9d90
    jmp near @..api_idx_0054_UOTQ.l16 ; 0x9d92
@..api_idx_0054_UOTQ.l4:
    cmp word [bss_9e52], byte 1      ; 0x9d95
    je short @..api_idx_0054_UOTQ.l5 ; 0x9d9a
    cmp word [bss_9e54], byte 1      ; 0x9d9c
    je short @..api_idx_0054_UOTQ.l5 ; 0x9da1
    jmp near @..api_idx_0054_UOTQ.l16 ; 0x9da3
@..api_idx_0054_UOTQ.l5:
    mov ax, 0                        ; 0x9da6
    push ax                          ; 0x9da9
    mov ax, 0x69a                    ; 0x9daa
    push ax                          ; 0x9dad
    push word [bss_b04e]             ; 0x9dae
    call api_idx_00ba_TUGQ           ; 0x9db2
    add sp, byte 6                   ; 0x9db5
    cmp ax, strict word 3            ; 0x9db8
    je short @..api_idx_0054_UOTQ.l6 ; 0x9dbb
    jmp near @..api_idx_0054_UOTQ.l14 ; 0x9dbd
@..api_idx_0054_UOTQ.l6:
    mov ax, 0x248                    ; 0x9dc0
    imul word [bss_b04e]             ; 0x9dc3
    mov bx, ax                       ; 0x9dc7
    cmp word [bx + 0x5c0a], byte 0   ; 0x9dc9
    jg short @..api_idx_0054_UOTQ.l7 ; 0x9dce
    jne short @..api_idx_0054_UOTQ.l8 ; 0x9dd0
    cmp word [bx + 0x5c08], byte 0x32 ; 0x9dd2
    jb short @..api_idx_0054_UOTQ.l8 ; 0x9dd7
@..api_idx_0054_UOTQ.l7:
    jmp short @..api_idx_0054_UOTQ.l11 ; 0x9dd9
@..api_idx_0054_UOTQ.l8:
    push word [bss_b04e]             ; 0x9ddb
    call api_idx_0006_TLLQ           ; 0x9ddf
    pop cx                           ; 0x9de2
    mov ax, 0x248                    ; 0x9de3
    imul word [bss_b04e]             ; 0x9de6
    mov bx, ax                       ; 0x9dea
    cmp word [bx + 0x5c0a], byte 0   ; 0x9dec
    jg short @..api_idx_0054_UOTQ.l9 ; 0x9df1
    jne short @..api_idx_0054_UOTQ.l10 ; 0x9df3
    cmp word [bx + 0x5c08], byte 0x32 ; 0x9df5
    jb short @..api_idx_0054_UOTQ.l10 ; 0x9dfa
@..api_idx_0054_UOTQ.l9:
    jmp short @..api_idx_0054_UOTQ.l11 ; 0x9dfc
@..api_idx_0054_UOTQ.l10:
    mov ax, 0x9103                   ; 0x9dfe
    push ax                          ; 0x9e01
    mov ax, 0x66c                    ; 0x9e02
    push ax                          ; 0x9e05
    call api_idx_0080_TKTP           ; 0x9e06
    add sp, byte 4                   ; 0x9e09
    ret                              ; 0x9e0c
@..api_idx_0054_UOTQ.l11:
    mov ax, 0x248                    ; 0x9e0d
    imul word [bss_b04e]             ; 0x9e10
    mov bx, ax                       ; 0x9e14
    add word [bx + 0x5c08], byte 0xce ; 0x9e16
    adc word [bx + 0x5c0a], byte 0xff ; 0x9e1b
    add word [bss_91b6], byte 0x32   ; 0x9e20
    adc word [bss_91b8], byte 0      ; 0x9e25
    cmp word [bss_9d68], byte 0      ; 0x9e2a
    jne short @..api_idx_0054_UOTQ.l12 ; 0x9e2f
    cmp word [bss_91a8], byte 0      ; 0x9e31
    jle short @..api_idx_0054_UOTQ.l12 ; 0x9e36
    mov ax, 0                        ; 0x9e38
    push ax                          ; 0x9e3b
    lea ax, word [bp - 0x0054]       ; 0x9e3c
    push ax                          ; 0x9e3f
    call api_idx_0084_VMPP           ; 0x9e40
    add sp, byte 4                   ; 0x9e43
    lea ax, word [bp - 0x0054]       ; 0x9e46
    push ax                          ; 0x9e49
    mov ax, 0x651                    ; 0x9e4a
    push ax                          ; 0x9e4d
    call api_idx_0080_TKTP           ; 0x9e4e
    add sp, byte 4                   ; 0x9e51
    mov word [bss_9d68], 1           ; 0x9e54
    jmp short @..api_idx_0054_UOTQ.l13 ; 0x9e5a
@..api_idx_0054_UOTQ.l12:
    mov ax, 0                        ; 0x9e5c
    push ax                          ; 0x9e5f
    push ax                          ; 0x9e60
    mov ax, 0xffff                   ; 0x9e61
    push ax                          ; 0x9e64
    call api_idx_0038_POGI           ; 0x9e65
    add sp, byte 6                   ; 0x9e68
@..api_idx_0054_UOTQ.l13:
    jmp short @..api_idx_0054_UOTQ.l15 ; 0x9e6b
@..api_idx_0054_UOTQ.l14:
    mov ax, 0x9104                   ; 0x9e6d
    push ax                          ; 0x9e70
    mov ax, 0x649                    ; 0x9e71
    push ax                          ; 0x9e74
    call api_idx_0080_TKTP           ; 0x9e75
    add sp, byte 4                   ; 0x9e78
@..api_idx_0054_UOTQ.l15:
    ret                              ; 0x9e7b
@..api_idx_0054_UOTQ.l16:
    cmp word [bss_9e62], byte 0      ; 0x9e7c
    jne short @..api_idx_0054_UOTQ.l17 ; 0x9e81
    cmp word [bss_9e64], byte 0      ; 0x9e83
    jne short @..api_idx_0054_UOTQ.l17 ; 0x9e88
    mov word [bss_9e62], 1           ; 0x9e8a
    mov word [bss_9e54], 1           ; 0x9e90
@..api_idx_0054_UOTQ.l17:
    cmp word [bss_9e62], byte 1      ; 0x9e96
    jne short @..api_idx_0054_UOTQ.l19 ; 0x9e9b
    cmp word [bss_9e5e], byte 1      ; 0x9e9d
    jne short @..api_idx_0054_UOTQ.l18 ; 0x9ea2
    mov ax, 0x659                    ; 0x9ea4
    push ax                          ; 0x9ea7
    mov ax, word [bp - 0x0004]       ; 0x9ea8
    inc ax                           ; 0x9eab
    inc ax                           ; 0x9eac
    inc ax                           ; 0x9ead
    push ax                          ; 0x9eae
    call loc_OJVU                    ; 0x9eaf
    add sp, byte 4                   ; 0x9eb2
    ret                              ; 0x9eb5
@..api_idx_0054_UOTQ.l18:
    cmp word [bss_9e54], byte 1      ; 0x9eb6
    jne short @..api_idx_0054_UOTQ.l19 ; 0x9ebb
    mov ax, 0x654                    ; 0x9ebd
    push ax                          ; 0x9ec0
    mov ax, word [bp - 0x0004]       ; 0x9ec1
    inc ax                           ; 0x9ec4
    inc ax                           ; 0x9ec5
    push ax                          ; 0x9ec6
    call loc_OJVU                    ; 0x9ec7
    add sp, byte 4                   ; 0x9eca
    ret                              ; 0x9ecd
jumptable_a27d_case_1:
@..api_idx_0054_UOTQ.l19:
    cmp word [bss_9e62], byte 1      ; 0x9ece
    je short @..api_idx_0054_UOTQ.l20 ; 0x9ed3
    jmp near @..api_idx_0054_UOTQ.l31 ; 0x9ed5
@..api_idx_0054_UOTQ.l20:
    cmp word [bss_9e52], byte 0      ; 0x9ed8
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9edd
    cmp word [bss_9e54], byte 0      ; 0x9edf
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9ee4
    cmp word [bss_9e56], byte 0      ; 0x9ee6
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9eeb
    cmp word [bss_9e58], byte 0      ; 0x9eed
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9ef2
    cmp word [bss_9e5a], byte 0      ; 0x9ef4
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9ef9
    cmp word [bss_9e5c], byte 0      ; 0x9efb
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9f00
    cmp word [bss_9e5e], byte 0      ; 0x9f02
    jne short @..api_idx_0054_UOTQ.l21 ; 0x9f07
    mov word [bss_9e54], 1           ; 0x9f09
@..api_idx_0054_UOTQ.l21:
    cmp word [bss_9e52], byte 1      ; 0x9f0f
    jne short @..api_idx_0054_UOTQ.l23 ; 0x9f14
    mov ax, 0x14                     ; 0x9f16
    imul word [bp - 0x0002]          ; 0x9f19
    mov bx, ax                       ; 0x9f1c
    cmp word [bx - 0x617a], byte 0   ; 0x9f1e
    je short @..api_idx_0054_UOTQ.l22 ; 0x9f23
    lea ax, word [bp - 0x0054]       ; 0x9f25
    push ax                          ; 0x9f28
    push word [bss_9e44]             ; 0x9f29
    push word [bss_9e42]             ; 0x9f2d
    call loc_UIIS                    ; 0x9f31
    add sp, byte 6                   ; 0x9f34
    lea ax, word [bp - 0x0054]       ; 0x9f37
    push ax                          ; 0x9f3a
    mov ax, 0x652                    ; 0x9f3b
    push ax                          ; 0x9f3e
    call api_idx_0080_TKTP           ; 0x9f3f
    add sp, byte 4                   ; 0x9f42
    ret                              ; 0x9f45
@..api_idx_0054_UOTQ.l22:
    mov ax, 0x653                    ; 0x9f46
    push ax                          ; 0x9f49
    mov ax, word [bp - 0x0004]       ; 0x9f4a
    inc ax                           ; 0x9f4d
    push ax                          ; 0x9f4e
    call loc_OJVU                    ; 0x9f4f
    add sp, byte 4                   ; 0x9f52
    ret                              ; 0x9f55
@..api_idx_0054_UOTQ.l23:
    cmp word [bss_9e54], byte 1      ; 0x9f56
    jne short @..api_idx_0054_UOTQ.l24 ; 0x9f5b
    mov ax, 0x654                    ; 0x9f5d
    push ax                          ; 0x9f60
    mov ax, word [bp - 0x0004]       ; 0x9f61
    inc ax                           ; 0x9f64
    inc ax                           ; 0x9f65
    push ax                          ; 0x9f66
    call loc_OJVU                    ; 0x9f67
    add sp, byte 4                   ; 0x9f6a
    ret                              ; 0x9f6d
@..api_idx_0054_UOTQ.l24:
    cmp word [bss_9e56], byte 1      ; 0x9f6e
    jne short @..api_idx_0054_UOTQ.l25 ; 0x9f73
    mov ax, 0x9105                   ; 0x9f75
    push ax                          ; 0x9f78
    mov ax, 0x655                    ; 0x9f79
    push ax                          ; 0x9f7c
    call api_idx_0080_TKTP           ; 0x9f7d
    add sp, byte 4                   ; 0x9f80
    ret                              ; 0x9f83
@..api_idx_0054_UOTQ.l25:
    cmp word [bss_9e58], byte 1      ; 0x9f84
    jne short @..api_idx_0054_UOTQ.l26 ; 0x9f89
    mov ax, 0x656                    ; 0x9f8b
    push ax                          ; 0x9f8e
    mov ax, word [bp - 0x0004]       ; 0x9f8f
    add ax, strict word 4            ; 0x9f92
    push ax                          ; 0x9f95
    call loc_OJVU                    ; 0x9f96
    add sp, byte 4                   ; 0x9f99
    ret                              ; 0x9f9c
@..api_idx_0054_UOTQ.l26:
    cmp word [bss_9e5a], byte 1      ; 0x9f9d
    jne short @..api_idx_0054_UOTQ.l27 ; 0x9fa2
    mov ax, 0x9106                   ; 0x9fa4
    push ax                          ; 0x9fa7
    mov ax, 0x657                    ; 0x9fa8
    push ax                          ; 0x9fab
    call api_idx_0080_TKTP           ; 0x9fac
    add sp, byte 4                   ; 0x9faf
    ret                              ; 0x9fb2
@..api_idx_0054_UOTQ.l27:
    cmp word [bss_9e5c], byte 1      ; 0x9fb3
    jne short @..api_idx_0054_UOTQ.l28 ; 0x9fb8
    mov ax, 0x658                    ; 0x9fba
    push ax                          ; 0x9fbd
    mov ax, word [bp - 0x0004]       ; 0x9fbe
    inc ax                           ; 0x9fc1
    inc ax                           ; 0x9fc2
    push ax                          ; 0x9fc3
    call loc_OJVU                    ; 0x9fc4
    add sp, byte 4                   ; 0x9fc7
    ret                              ; 0x9fca
@..api_idx_0054_UOTQ.l28:
    cmp word [bss_9e5e], byte 1      ; 0x9fcb
    jne short @..api_idx_0054_UOTQ.l30 ; 0x9fd0
    cmp word [bp - 0x0002], byte 0   ; 0x9fd2
    jne short @..api_idx_0054_UOTQ.l29 ; 0x9fd6
    mov ax, 0x9107                   ; 0x9fd8
    push ax                          ; 0x9fdb
    mov ax, 0x65a                    ; 0x9fdc
    push ax                          ; 0x9fdf
    call api_idx_0080_TKTP           ; 0x9fe0
    add sp, byte 4                   ; 0x9fe3
    ret                              ; 0x9fe6
@..api_idx_0054_UOTQ.l29:
    mov ax, 0x9108                   ; 0x9fe7
    push ax                          ; 0x9fea
    mov ax, 0x65b                    ; 0x9feb
    push ax                          ; 0x9fee
    call api_idx_0080_TKTP           ; 0x9fef
    add sp, byte 4                   ; 0x9ff2
    ret                              ; 0x9ff5
@..api_idx_0054_UOTQ.l30:
    jmp short @..api_idx_0054_UOTQ.l33 ; 0x9ff6
@..api_idx_0054_UOTQ.l31:
    cmp word [bp - 0x0002], byte 0   ; 0x9ff8
    jne short @..api_idx_0054_UOTQ.l32 ; 0x9ffc
    mov ax, 0x9109                   ; 0x9ffe
    push ax                          ; 0xa001
    mov ax, 0x65c                    ; 0xa002
    push ax                          ; 0xa005
    call api_idx_0080_TKTP           ; 0xa006
    add sp, byte 4                   ; 0xa009
    ret                              ; 0xa00c
@..api_idx_0054_UOTQ.l32:
    mov ax, 0x910a                   ; 0xa00d
    push ax                          ; 0xa010
    mov ax, 0x663                    ; 0xa011
    push ax                          ; 0xa014
    call api_idx_0080_TKTP           ; 0xa015
    add sp, byte 4                   ; 0xa018
    ret                              ; 0xa01b
@..api_idx_0054_UOTQ.l33:
    jmp near @..api_idx_0054_UOTQ.l35 ; 0xa01c
jumptable_a27d_case_4:
    cmp word [bss_9e62], byte 1      ; 0xa01f
    jne short @..loc_a01f.l6         ; 0xa024
    cmp word [bss_9e78], byte 0      ; 0xa026
    jne short @..loc_a01f.l5         ; 0xa02b
    cmp word [bss_9e54], byte 1      ; 0xa02d
    jne short @..loc_a01f.l1         ; 0xa032
    mov ax, 0x910b                   ; 0xa034
    push ax                          ; 0xa037
    mov ax, 0x667                    ; 0xa038
    push ax                          ; 0xa03b
    call api_idx_0080_TKTP           ; 0xa03c
    add sp, byte 4                   ; 0xa03f
    jmp short @..loc_a01f.l4         ; 0xa042
@..loc_a01f.l1:
    cmp word [bss_9e58], byte 1      ; 0xa044
    je short @..loc_a01f.l2          ; 0xa049
    cmp word [bss_9e5c], byte 1      ; 0xa04b
    je short @..loc_a01f.l2          ; 0xa050
    cmp word [bss_9e5e], byte 1      ; 0xa052
    jne short @..loc_a01f.l3         ; 0xa057
@..loc_a01f.l2:
    mov ax, 0x910c                   ; 0xa059
    push ax                          ; 0xa05c
    mov ax, 0x66b                    ; 0xa05d
    push ax                          ; 0xa060
    call api_idx_0080_TKTP           ; 0xa061
    add sp, byte 4                   ; 0xa064
    jmp short @..loc_a01f.l4         ; 0xa067
@..loc_a01f.l3:
    mov ax, 0x910d                   ; 0xa069
    push ax                          ; 0xa06c
    mov ax, 0x65f                    ; 0xa06d
    push ax                          ; 0xa070
    call api_idx_0080_TKTP           ; 0xa071
    add sp, byte 4                   ; 0xa074
@..loc_a01f.l4:
    ret                              ; 0xa077
@..loc_a01f.l5:
    mov ax, 0x910e                   ; 0xa078
    push ax                          ; 0xa07b
    mov ax, 0x65b                    ; 0xa07c
    push ax                          ; 0xa07f
    call api_idx_0080_TKTP           ; 0xa080
    add sp, byte 4                   ; 0xa083
    ret                              ; 0xa086
@..loc_a01f.l6:
    cmp word [bp - 0x0002], byte 0   ; 0xa087
    jne short @..loc_a01f.l7         ; 0xa08b
    mov ax, 0x910f                   ; 0xa08d
    push ax                          ; 0xa090
    mov ax, 0x660                    ; 0xa091
    push ax                          ; 0xa094
    call api_idx_0080_TKTP           ; 0xa095
    add sp, byte 4                   ; 0xa098
    ret                              ; 0xa09b
@..loc_a01f.l7:
    mov ax, 0x9110                   ; 0xa09c
    push ax                          ; 0xa09f
    mov ax, 0x65b                    ; 0xa0a0
    push ax                          ; 0xa0a3
    call api_idx_0080_TKTP           ; 0xa0a4
    add sp, byte 4                   ; 0xa0a7
    ret                              ; 0xa0aa
jumptable_a27d_case_5:
    cmp word [bss_9e62], byte 1      ; 0xa0ab
    jne short @..loc_a0ab.l4         ; 0xa0b0
    cmp word [bss_9e78], byte 0      ; 0xa0b2
    jne short @..loc_a0ab.l3         ; 0xa0b7
    cmp word [bss_9e54], byte 1      ; 0xa0b9
    jne short @..loc_a0ab.l1         ; 0xa0be
    mov ax, 0x9111                   ; 0xa0c0
    push ax                          ; 0xa0c3
    mov ax, 0x668                    ; 0xa0c4
    push ax                          ; 0xa0c7
    call api_idx_0080_TKTP           ; 0xa0c8
    add sp, byte 4                   ; 0xa0cb
    jmp short @..loc_a0ab.l2         ; 0xa0ce
@..loc_a0ab.l1:
    mov ax, 0x9112                   ; 0xa0d0
    push ax                          ; 0xa0d3
    mov ax, 0x65f                    ; 0xa0d4
    push ax                          ; 0xa0d7
    call api_idx_0080_TKTP           ; 0xa0d8
    add sp, byte 4                   ; 0xa0db
@..loc_a0ab.l2:
    ret                              ; 0xa0de
@..loc_a0ab.l3:
    mov ax, 0x9113                   ; 0xa0df
    push ax                          ; 0xa0e2
    mov ax, 0x65b                    ; 0xa0e3
    push ax                          ; 0xa0e6
    call api_idx_0080_TKTP           ; 0xa0e7
    add sp, byte 4                   ; 0xa0ea
    ret                              ; 0xa0ed
@..loc_a0ab.l4:
    cmp word [bss_9e78], byte 0      ; 0xa0ee
    jle short @..loc_a0ab.l5         ; 0xa0f3
    mov ax, 0x659                    ; 0xa0f5
    push ax                          ; 0xa0f8
    mov ax, word [bp - 0x0004]       ; 0xa0f9
    inc ax                           ; 0xa0fc
    inc ax                           ; 0xa0fd
    inc ax                           ; 0xa0fe
    push ax                          ; 0xa0ff
    call loc_OJVU                    ; 0xa100
    add sp, byte 4                   ; 0xa103
    ret                              ; 0xa106
@..loc_a0ab.l5:
    mov ax, 0x9114                   ; 0xa107
    push ax                          ; 0xa10a
    mov ax, 0x664                    ; 0xa10b
    push ax                          ; 0xa10e
    call api_idx_0080_TKTP           ; 0xa10f
    add sp, byte 4                   ; 0xa112
    ret                              ; 0xa115
jumptable_a27d_case_6:
    cmp word [bss_9e62], byte 1      ; 0xa116
    jne short @..loc_a116.l3         ; 0xa11b
    cmp word [bss_9e54], byte 1      ; 0xa11d
    jne short @..loc_a116.l1         ; 0xa122
    mov ax, 0x9115                   ; 0xa124
    push ax                          ; 0xa127
    mov ax, 0x667                    ; 0xa128
    push ax                          ; 0xa12b
    call api_idx_0080_TKTP           ; 0xa12c
    add sp, byte 4                   ; 0xa12f
    jmp short @..loc_a116.l2         ; 0xa132
@..loc_a116.l1:
    mov ax, 0x9116                   ; 0xa134
    push ax                          ; 0xa137
    mov ax, 0x65f                    ; 0xa138
    push ax                          ; 0xa13b
    call api_idx_0080_TKTP           ; 0xa13c
    add sp, byte 4                   ; 0xa13f
@..loc_a116.l2:
    ret                              ; 0xa142
@..loc_a116.l3:
    mov ax, 0x9117                   ; 0xa143
    push ax                          ; 0xa146
    mov ax, 0x665                    ; 0xa147
    push ax                          ; 0xa14a
    call api_idx_0080_TKTP           ; 0xa14b
    add sp, byte 4                   ; 0xa14e
    ret                              ; 0xa151
jumptable_a27d_case_8:
    cmp word [bss_9e62], byte 1      ; 0xa152
    je short @..loc_a152.l1          ; 0xa157
    jmp near @..loc_a152.l7          ; 0xa159
@..loc_a152.l1:
    cmp word [bss_9e52], byte 1      ; 0xa15c
    jne short @..loc_a152.l2         ; 0xa161
    mov ax, 0x9118                   ; 0xa163
    push ax                          ; 0xa166
    mov ax, 0x65e                    ; 0xa167
    push ax                          ; 0xa16a
    call api_idx_0080_TKTP           ; 0xa16b
    add sp, byte 4                   ; 0xa16e
    ret                              ; 0xa171
@..loc_a152.l2:
    cmp word [bss_9e54], byte 1      ; 0xa172
    jne short @..loc_a152.l3         ; 0xa177
    mov ax, 0x654                    ; 0xa179
    push ax                          ; 0xa17c
    mov ax, word [bp - 0x0004]       ; 0xa17d
    inc ax                           ; 0xa180
    inc ax                           ; 0xa181
    push ax                          ; 0xa182
    call loc_OJVU                    ; 0xa183
    add sp, byte 4                   ; 0xa186
    ret                              ; 0xa189
@..loc_a152.l3:
    cmp word [bss_9e58], byte 1      ; 0xa18a
    jne short @..loc_a152.l4         ; 0xa18f
    mov ax, 0x656                    ; 0xa191
    push ax                          ; 0xa194
    mov ax, word [bp - 0x0004]       ; 0xa195
    add ax, strict word 4            ; 0xa198
    push ax                          ; 0xa19b
    call loc_OJVU                    ; 0xa19c
    add sp, byte 4                   ; 0xa19f
    ret                              ; 0xa1a2
@..loc_a152.l4:
    cmp word [bss_9e5a], byte 1      ; 0xa1a3
    jne short @..loc_a152.l5         ; 0xa1a8
    mov ax, 0x9119                   ; 0xa1aa
    push ax                          ; 0xa1ad
    mov ax, 0x657                    ; 0xa1ae
    push ax                          ; 0xa1b1
    call api_idx_0080_TKTP           ; 0xa1b2
    add sp, byte 4                   ; 0xa1b5
    ret                              ; 0xa1b8
@..loc_a152.l5:
    cmp word [bss_9e56], byte 1      ; 0xa1b9
    jne short @..loc_a152.l6         ; 0xa1be
    mov ax, 0x911a                   ; 0xa1c0
    push ax                          ; 0xa1c3
    mov ax, 0x655                    ; 0xa1c4
    push ax                          ; 0xa1c7
    call api_idx_0080_TKTP           ; 0xa1c8
    add sp, byte 4                   ; 0xa1cb
    ret                              ; 0xa1ce
@..loc_a152.l6:
    mov ax, 0x659                    ; 0xa1cf
    push ax                          ; 0xa1d2
    mov ax, word [bp - 0x0004]       ; 0xa1d3
    inc ax                           ; 0xa1d6
    inc ax                           ; 0xa1d7
    inc ax                           ; 0xa1d8
    push ax                          ; 0xa1d9
    call loc_OJVU                    ; 0xa1da
    add sp, byte 4                   ; 0xa1dd
    ret                              ; 0xa1e0
@..loc_a152.l7:
    mov ax, 0x911b                   ; 0xa1e1
    push ax                          ; 0xa1e4
    mov ax, 0x661                    ; 0xa1e5
    push ax                          ; 0xa1e8
    call api_idx_0080_TKTP           ; 0xa1e9
    add sp, byte 4                   ; 0xa1ec
    ret                              ; 0xa1ef
jumptable_a27d_case_9:
    cmp word [bss_9e62], byte 1      ; 0xa1f0
    je short @..loc_a1f0.l1          ; 0xa1f5
    jmp near @..loc_a1f0.l7          ; 0xa1f7
@..loc_a1f0.l1:
    cmp word [bss_9e52], byte 1      ; 0xa1fa
    je short @..loc_a1f0.l2          ; 0xa1ff
    cmp word [bss_9e5a], byte 1      ; 0xa201
    jne short @..loc_a1f0.l3         ; 0xa206
@..loc_a1f0.l2:
    mov ax, 0x911c                   ; 0xa208
    push ax                          ; 0xa20b
    mov ax, 0x65e                    ; 0xa20c
    push ax                          ; 0xa20f
    call api_idx_0080_TKTP           ; 0xa210
    add sp, byte 4                   ; 0xa213
    ret                              ; 0xa216
@..loc_a1f0.l3:
    cmp word [bss_9e54], byte 1      ; 0xa217
    jne short @..loc_a1f0.l4         ; 0xa21c
    mov ax, 0x911d                   ; 0xa21e
    push ax                          ; 0xa221
    mov ax, 0x662                    ; 0xa222
    push ax                          ; 0xa225
    call api_idx_0080_TKTP           ; 0xa226
    add sp, byte 4                   ; 0xa229
    ret                              ; 0xa22c
@..loc_a1f0.l4:
    cmp word [bss_9e58], byte 1      ; 0xa22d
    jne short @..loc_a1f0.l5         ; 0xa232
    mov ax, 0x656                    ; 0xa234
    push ax                          ; 0xa237
    mov ax, word [bp - 0x0004]       ; 0xa238
    add ax, strict word 4            ; 0xa23b
    push ax                          ; 0xa23e
    call loc_OJVU                    ; 0xa23f
    add sp, byte 4                   ; 0xa242
    ret                              ; 0xa245
@..loc_a1f0.l5:
    cmp word [bss_9e56], byte 1      ; 0xa246
    jne short @..loc_a1f0.l6         ; 0xa24b
    mov ax, 0x911e                   ; 0xa24d
    push ax                          ; 0xa250
    mov ax, 0x655                    ; 0xa251
    push ax                          ; 0xa254
    call api_idx_0080_TKTP           ; 0xa255
    add sp, byte 4                   ; 0xa258
    ret                              ; 0xa25b
@..loc_a1f0.l6:
    mov ax, 0x659                    ; 0xa25c
    push ax                          ; 0xa25f
    mov ax, word [bp - 0x0004]       ; 0xa260
    inc ax                           ; 0xa263
    inc ax                           ; 0xa264
    inc ax                           ; 0xa265
    push ax                          ; 0xa266
    call loc_OJVU                    ; 0xa267
    add sp, byte 4                   ; 0xa26a
    ret                              ; 0xa26d
@..loc_a1f0.l7:
    mov ax, 0x911f                   ; 0xa26e
    push ax                          ; 0xa271
    mov ax, 0x663                    ; 0xa272
    push ax                          ; 0xa275
    call api_idx_0080_TKTP           ; 0xa276
    add sp, byte 4                   ; 0xa279
    ret                              ; 0xa27c
jumptable_a27d:
    dw jumptable_a27d_case_0 - IMAGE_BASE + 0x5055 ; 0xa27d
    dw jumptable_a27d_case_1 - IMAGE_BASE + 0x5055 ; 0xa27f
    dw jumptable_a27d_case_1 - IMAGE_BASE + 0x5055 ; 0xa281
    dw jumptable_a27d_case_1 - IMAGE_BASE + 0x5055 ; 0xa283
    dw jumptable_a27d_case_4 - IMAGE_BASE + 0x5055 ; 0xa285
    dw jumptable_a27d_case_5 - IMAGE_BASE + 0x5055 ; 0xa287
    dw jumptable_a27d_case_6 - IMAGE_BASE + 0x5055 ; 0xa289
    dw jumptable_a27d_case_6 - IMAGE_BASE + 0x5055 ; 0xa28b
    dw jumptable_a27d_case_8 - IMAGE_BASE + 0x5055 ; 0xa28d
    dw jumptable_a27d_case_9 - IMAGE_BASE + 0x5055 ; 0xa28f
@..api_idx_0054_UOTQ.l34:
    cmp ax, strict word 0xa          ; 0xa291
    jae short @..api_idx_0054_UOTQ.l35 ; 0xa294
    xchg bx, ax                      ; 0xa296
    shl bx, 1                        ; 0xa297
    jmp [cs:bx - 0x0d3c]             ; 0xa299
@..api_idx_0054_UOTQ.l35:
    ret                              ; 0xa29e
