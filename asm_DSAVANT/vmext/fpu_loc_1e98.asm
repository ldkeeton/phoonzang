fpu_loc_1e98:
    mov ax, 0                        ; 0x1e98
    ret                              ; 0x1e9b
jumptable_1e9c:
    dw fpu_loc_1e85 - IMAGE_BASE + 0x5055      ; 0x1e9c
    dw fpu_loc_1e94 - IMAGE_BASE + 0x5055      ; 0x1e9e
    dw fpu_loc_1e85 - IMAGE_BASE + 0x5055      ; 0x1ea0
    dw fpu_loc_1e89 - IMAGE_BASE + 0x5055      ; 0x1ea2
    dw fpu_loc_1e85 - IMAGE_BASE + 0x5055      ; 0x1ea4
    dw fpu_loc_1e98 - IMAGE_BASE + 0x5055      ; 0x1ea6
@..api_idx_0008_4.l1:
    cmp ax, strict word 6            ; 0x1ea8
    jae short @..api_idx_0008_4.l2   ; 0x1eab
    xchg bx, ax                      ; 0x1ead
    shl bx, 1                        ; 0x1eae
    jmp [cs:bx + 0x6ee3]             ; 0x1eb0
@..api_idx_0008_4.l2:
    mov ax, word [bp + 0xe]          ; 0x1eb5
    mov cx, 6                        ; 0x1eb8
    shl ax, cl                       ; 0x1ebb
    mov cx, word [bp + 0xc]          ; 0x1ebd
    shl cx, 1                        ; 0x1ec0
    shl cx, 1                        ; 0x1ec2
    shl cx, 1                        ; 0x1ec4
    add ax, cx                       ; 0x1ec6
    add ax, word [bp + 0xa]          ; 0x1ec8
    mov word [bp - 0x0002], ax       ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, word [bss_0e14]          ; 0x1ecf
    add ax, 0x8b0                    ; 0x1ed2
    push ax                          ; 0x1ed5
    call ds_dispatch_ec74            ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    test ax, ax                      ; 0x1edc
    je short @..api_idx_0008_4.l5    ; 0x1ede
    mov ax, word [bss_91a8]          ; 0x1ee0
    jmp short @..api_idx_0008_4.l4   ; 0x1ee3
@..api_idx_0008_4.l3:
    mov ax, 0                        ; 0x1ee5
    ret                              ; 0x1ee8
@..api_idx_0008_4.l4:
    cmp ax, strict word 0            ; 0x1ee9
    je short @..api_idx_0008_4.l3    ; 0x1eec
    cmp ax, strict word 3            ; 0x1eee
    je short @..api_idx_0008_4.l3    ; 0x1ef1
@..api_idx_0008_4.l5:
    mov ax, word [bss_82ee]          ; 0x1ef3
    add ax, word [bp + 0x4]          ; 0x1ef6
    mov cx, 4                        ; 0x1ef9
    cwd                              ; 0x1efc
    idiv cx                          ; 0x1efd
    mov ax, dx                       ; 0x1eff
    jmp short @..api_idx_0008_4.l10  ; 0x1f01
@..api_idx_0008_4.l6:
    push word [bp + 0xe]             ; 0x1f03
    push word [bp + 0xc]             ; 0x1f06
    push word [bp + 0xa]             ; 0x1f09
    push word [bp + 0x8]             ; 0x1f0c
    push word [bp + 0x6]             ; 0x1f0f
    call loc_189b                    ; 0x1f12
    add sp, byte 0x0a                ; 0x1f15
    mov word [bp - 0x0004], ax       ; 0x1f18
    jmp short @..api_idx_0008_4.l11  ; 0x1f1b
@..api_idx_0008_4.l7:
    mov ax, 4                        ; 0x1f1d
    push ax                          ; 0x1f20
    push word [bp - 0x0002]          ; 0x1f21
    mov ax, word [bss_0e14]          ; 0x1f24
    add ax, 0x90                     ; 0x1f27
    push ax                          ; 0x1f2a
    call ds_dispatch_ecf6            ; 0x1f2b
    add sp, byte 6                   ; 0x1f2e
    mov word [bp - 0x0004], ax       ; 0x1f31
    jmp short @..api_idx_0008_4.l11  ; 0x1f34
@..api_idx_0008_4.l8:
    mov ax, 4                        ; 0x1f36
    push ax                          ; 0x1f39
    push word [bp - 0x0002]          ; 0x1f3a
    mov ax, word [bss_0e14]          ; 0x1f3d
    add ax, 0x290                    ; 0x1f40
    push ax                          ; 0x1f43
    call ds_dispatch_ecf6            ; 0x1f44
    add sp, byte 6                   ; 0x1f47
    mov word [bp - 0x0004], ax       ; 0x1f4a
    jmp short @..api_idx_0008_4.l11  ; 0x1f4d
@..api_idx_0008_4.l9:
    push word [bp + 0xe]             ; 0x1f4f
    push word [bp + 0xc]             ; 0x1f52
    push word [bp + 0xa]             ; 0x1f55
    push word [bp + 0x8]             ; 0x1f58
    push word [bp + 0x6]             ; 0x1f5b
    call loc_1823                    ; 0x1f5e
    add sp, byte 0x0a                ; 0x1f61
    mov word [bp - 0x0004], ax       ; 0x1f64
    jmp short @..api_idx_0008_4.l11  ; 0x1f67
@..api_idx_0008_4.l10:
    cmp ax, strict word 0            ; 0x1f69
    je short @..api_idx_0008_4.l6    ; 0x1f6c
    cmp ax, strict word 1            ; 0x1f6e
    je short @..api_idx_0008_4.l7    ; 0x1f71
    cmp ax, strict word 2            ; 0x1f73
    je short @..api_idx_0008_4.l8    ; 0x1f76
    cmp ax, strict word 3            ; 0x1f78
    je short @..api_idx_0008_4.l9    ; 0x1f7b
@..api_idx_0008_4.l11:
    lea ax, word [bp - 0x0008]       ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0006]       ; 0x1f81
    push ax                          ; 0x1f84
    push word [bp - 0x0002]          ; 0x1f85
    call loc_19e4                    ; 0x1f88
    add sp, byte 6                   ; 0x1f8b
    mov ax, word [bp - 0x0008]       ; 0x1f8e
    add ax, word [bp + 0x4]          ; 0x1f91
    inc ax                           ; 0x1f94
    mov cx, 4                        ; 0x1f95
    cwd                              ; 0x1f98
    idiv cx                          ; 0x1f99
    mov word [bp - 0x0008], dx       ; 0x1f9b
    cmp dx, word [bss_82ee]          ; 0x1f9e
    je short @..api_idx_0008_4.l12   ; 0x1fa2
    jmp near @..api_idx_0008_4.l16   ; 0x1fa4
@..api_idx_0008_4.l12:
    mov ax, word [bp - 0x0006]       ; 0x1fa7
    jmp short @..api_idx_0008_4.l15  ; 0x1faa
loc_1fac:
    mov word [bp - 0x0004], 8        ; 0x1fac
    jmp short @..api_idx_0008_4.l16  ; 0x1fb1
loc_1fb3:
    mov word [bp - 0x0004], 9        ; 0x1fb3
    jmp short @..api_idx_0008_4.l16  ; 0x1fb8
loc_1fba:
    mov word [bp - 0x0004], 0xa      ; 0x1fba
    jmp short @..api_idx_0008_4.l16  ; 0x1fbf
loc_1fc1:
    mov word [bp - 0x0004], 0xb      ; 0x1fc1
    jmp short @..api_idx_0008_4.l16  ; 0x1fc6
loc_1fc8:
    cmp word [bss_91aa], byte 0      ; 0x1fc8
    jne short @..api_idx_0008_4.l13  ; 0x1fcd
    mov word [bp - 0x0004], 0xc      ; 0x1fcf
@..api_idx_0008_4.l13:
    jmp short @..api_idx_0008_4.l16  ; 0x1fd4
loc_1fd6:
    cmp word [bss_91aa], byte 0      ; 0x1fd6
    jne short @..api_idx_0008_4.l14  ; 0x1fdb
    mov word [bp - 0x0004], 0xd      ; 0x1fdd
@..api_idx_0008_4.l14:
    jmp short @..api_idx_0008_4.l16  ; 0x1fe2
loc_1fe4:
    mov word [bp - 0x0004], 0xe      ; 0x1fe4
    jmp short @..api_idx_0008_4.l16  ; 0x1fe9
loc_1feb:
    mov word [bp - 0x0004], 0xf      ; 0x1feb
    jmp short @..api_idx_0008_4.l16  ; 0x1ff0
jumptable_1ff2:
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x1ff2
    dw loc_1fac - IMAGE_BASE + 0x5055          ; 0x1ff4
    dw loc_1fb3 - IMAGE_BASE + 0x5055          ; 0x1ff6
    dw loc_1fba - IMAGE_BASE + 0x5055          ; 0x1ff8
    dw loc_1fc1 - IMAGE_BASE + 0x5055          ; 0x1ffa
    dw loc_1fc8 - IMAGE_BASE + 0x5055          ; 0x1ffc
    dw loc_1fd6 - IMAGE_BASE + 0x5055          ; 0x1ffe
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2000
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2002
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2004
    dw loc_1fe4 - IMAGE_BASE + 0x5055          ; 0x2006
    dw loc_1feb - IMAGE_BASE + 0x5055          ; 0x2008
@..api_idx_0008_4.l15:
    cmp ax, strict word 0xc          ; 0x200a
    jae short @..api_idx_0008_4.l16  ; 0x200d
    xchg bx, ax                      ; 0x200f
    shl bx, 1                        ; 0x2010
    jmp [cs:bx + 0x7039]             ; 0x2012
jumptable_1ff2_case_0:
@..api_idx_0008_4.l16:
    mov ax, word [bp - 0x0004]       ; 0x2017
    ret                              ; 0x201a
