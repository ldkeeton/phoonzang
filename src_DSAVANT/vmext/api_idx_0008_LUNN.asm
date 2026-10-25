; auto-generated
api_idx_0008_LUNN:
    mov ax, 0xfff8                   ; 0x1e4f
    call aztec_csav                  ; 0x1e52
    cmp word [bp + 0x10], byte 0     ; 0x1e55
    je short @..api_idx_0008_LUNN.l2 ; 0x1e59
    mov ax, 0                        ; 0x1e5b
    push ax                          ; 0x1e5e
    push word [bp + 0x10]            ; 0x1e5f
    lea ax, word [bp + 0xe]          ; 0x1e62
    push ax                          ; 0x1e65
    lea ax, word [bp + 0xc]          ; 0x1e66
    push ax                          ; 0x1e69
    lea ax, word [bp + 0xa]          ; 0x1e6a
    push ax                          ; 0x1e6d
    lea ax, word [bp + 0x8]          ; 0x1e6e
    push ax                          ; 0x1e71
    lea ax, word [bp + 0x6]          ; 0x1e72
    push ax                          ; 0x1e75
    call loc_VOSO                    ; 0x1e76
    add sp, byte 0x0e                ; 0x1e79
    test ax, ax                      ; 0x1e7c
    je short @..api_idx_0008_LUNN.l2 ; 0x1e7e
    mov ax, word [location_changed]  ; 0x1e80
    jmp short @..api_idx_0008_LUNN.l1 ; 0x1e83
jumptable_1e9c_case_0:
    mov ax, 2                        ; 0x1e85
    ret                              ; 0x1e88
jumptable_1e9c_case_3:
    cmp word [bss_9188], byte 0      ; 0x1e89
    je short jumptable_1e9c_case_1   ; 0x1e8e
    mov ax, 0                        ; 0x1e90
    ret                              ; 0x1e93
jumptable_1e9c_case_1:
    mov ax, 4                        ; 0x1e94
    ret                              ; 0x1e97
jumptable_1e9c_case_5:
    mov ax, 0                        ; 0x1e98
    ret                              ; 0x1e9b
jumptable_1e9c:
    dw jumptable_1e9c_case_0 - IMAGE_BASE + __zres_end ; 0x1e9c
    dw jumptable_1e9c_case_1 - IMAGE_BASE + __zres_end ; 0x1e9e
    dw jumptable_1e9c_case_0 - IMAGE_BASE + __zres_end ; 0x1ea0
    dw jumptable_1e9c_case_3 - IMAGE_BASE + __zres_end ; 0x1ea2
    dw jumptable_1e9c_case_0 - IMAGE_BASE + __zres_end ; 0x1ea4
    dw jumptable_1e9c_case_5 - IMAGE_BASE + __zres_end ; 0x1ea6
@..api_idx_0008_LUNN.l1:
    cmp ax, strict word 6            ; 0x1ea8
    jae short @..api_idx_0008_LUNN.l2 ; 0x1eab
    xchg bx, ax                      ; 0x1ead
    shl bx, 1                        ; 0x1eae
    jmp [cs:bx + jumptable_1e9c - IMAGE_BASE + __zres_end] ; 0x1eb0
@..api_idx_0008_LUNN.l2:
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
    mov ax, word [maze_data]         ; 0x1ecf
    add ax, 0x8b0                    ; 0x1ed2
    push ax                          ; 0x1ed5
    call test_bit                    ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    test ax, ax                      ; 0x1edc
    je short @..api_idx_0008_LUNN.l5 ; 0x1ede
    mov ax, word [location_changed]  ; 0x1ee0
    jmp short @..api_idx_0008_LUNN.l4 ; 0x1ee3
@..api_idx_0008_LUNN.l3:
    mov ax, 0                        ; 0x1ee5
    ret                              ; 0x1ee8
@..api_idx_0008_LUNN.l4:
    cmp ax, strict word 0            ; 0x1ee9
    je short @..api_idx_0008_LUNN.l3 ; 0x1eec
    cmp ax, strict word 3            ; 0x1eee
    je short @..api_idx_0008_LUNN.l3 ; 0x1ef1
@..api_idx_0008_LUNN.l5:
    mov ax, word [party_tag]         ; 0x1ef3
    add ax, word [bp + 0x4]          ; 0x1ef6
    mov cx, 4                        ; 0x1ef9
    cwd                              ; 0x1efc
    idiv cx                          ; 0x1efd
    mov ax, dx                       ; 0x1eff
    jmp short @..api_idx_0008_LUNN.l10 ; 0x1f01
@..api_idx_0008_LUNN.l6:
    push word [bp + 0xe]             ; 0x1f03
    push word [bp + 0xc]             ; 0x1f06
    push word [bp + 0xa]             ; 0x1f09
    push word [bp + 0x8]             ; 0x1f0c
    push word [bp + 0x6]             ; 0x1f0f
    call loc_MMMO                    ; 0x1f12
    add sp, byte 0x0a                ; 0x1f15
    mov word [bp - 0x0004], ax       ; 0x1f18
    jmp short @..api_idx_0008_LUNN.l11 ; 0x1f1b
@..api_idx_0008_LUNN.l7:
    mov ax, 4                        ; 0x1f1d
    push ax                          ; 0x1f20
    push word [bp - 0x0002]          ; 0x1f21
    mov ax, word [maze_data]         ; 0x1f24
    add ax, 0x90                     ; 0x1f27
    push ax                          ; 0x1f2a
    call ds_leaf_loc_NPSL            ; 0x1f2b
    add sp, byte 6                   ; 0x1f2e
    mov word [bp - 0x0004], ax       ; 0x1f31
    jmp short @..api_idx_0008_LUNN.l11 ; 0x1f34
@..api_idx_0008_LUNN.l8:
    mov ax, 4                        ; 0x1f36
    push ax                          ; 0x1f39
    push word [bp - 0x0002]          ; 0x1f3a
    mov ax, word [maze_data]         ; 0x1f3d
    add ax, 0x290                    ; 0x1f40
    push ax                          ; 0x1f43
    call ds_leaf_loc_NPSL            ; 0x1f44
    add sp, byte 6                   ; 0x1f47
    mov word [bp - 0x0004], ax       ; 0x1f4a
    jmp short @..api_idx_0008_LUNN.l11 ; 0x1f4d
@..api_idx_0008_LUNN.l9:
    push word [bp + 0xe]             ; 0x1f4f
    push word [bp + 0xc]             ; 0x1f52
    push word [bp + 0xa]             ; 0x1f55
    push word [bp + 0x8]             ; 0x1f58
    push word [bp + 0x6]             ; 0x1f5b
    call loc_GPIH                    ; 0x1f5e
    add sp, byte 0x0a                ; 0x1f61
    mov word [bp - 0x0004], ax       ; 0x1f64
    jmp short @..api_idx_0008_LUNN.l11 ; 0x1f67
@..api_idx_0008_LUNN.l10:
    cmp ax, strict word 0            ; 0x1f69
    je short @..api_idx_0008_LUNN.l6 ; 0x1f6c
    cmp ax, strict word 1            ; 0x1f6e
    je short @..api_idx_0008_LUNN.l7 ; 0x1f71
    cmp ax, strict word 2            ; 0x1f73
    je short @..api_idx_0008_LUNN.l8 ; 0x1f76
    cmp ax, strict word 3            ; 0x1f78
    je short @..api_idx_0008_LUNN.l9 ; 0x1f7b
@..api_idx_0008_LUNN.l11:
    lea ax, word [bp - 0x0008]       ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0006]       ; 0x1f81
    push ax                          ; 0x1f84
    push word [bp - 0x0002]          ; 0x1f85
    call loc_RRJG                    ; 0x1f88
    add sp, byte 6                   ; 0x1f8b
    mov ax, word [bp - 0x0008]       ; 0x1f8e
    add ax, word [bp + 0x4]          ; 0x1f91
    inc ax                           ; 0x1f94
    mov cx, 4                        ; 0x1f95
    cwd                              ; 0x1f98
    idiv cx                          ; 0x1f99
    mov word [bp - 0x0008], dx       ; 0x1f9b
    cmp dx, word [party_tag]         ; 0x1f9e
    je short @..api_idx_0008_LUNN.l12 ; 0x1fa2
    jmp near jumptable_1ff2_case_0   ; 0x1fa4
@..api_idx_0008_LUNN.l12:
    mov ax, word [bp - 0x0006]       ; 0x1fa7
    jmp short @..api_idx_0008_LUNN.l15 ; 0x1faa
jumptable_1ff2_case_1:
    mov word [bp - 0x0004], 8        ; 0x1fac
    jmp short jumptable_1ff2_case_0  ; 0x1fb1
jumptable_1ff2_case_2:
    mov word [bp - 0x0004], 9        ; 0x1fb3
    jmp short jumptable_1ff2_case_0  ; 0x1fb8
jumptable_1ff2_case_3:
    mov word [bp - 0x0004], 0xa      ; 0x1fba
    jmp short jumptable_1ff2_case_0  ; 0x1fbf
jumptable_1ff2_case_4:
    mov word [bp - 0x0004], 0xb      ; 0x1fc1
    jmp short jumptable_1ff2_case_0  ; 0x1fc6
jumptable_1ff2_case_5:
    cmp word [bss_91aa], byte 0      ; 0x1fc8
    jne short @..api_idx_0008_LUNN.l13 ; 0x1fcd
    mov word [bp - 0x0004], 0xc      ; 0x1fcf
@..api_idx_0008_LUNN.l13:
    jmp short jumptable_1ff2_case_0  ; 0x1fd4
jumptable_1ff2_case_6:
    cmp word [bss_91aa], byte 0      ; 0x1fd6
    jne short @..api_idx_0008_LUNN.l14 ; 0x1fdb
    mov word [bp - 0x0004], 0xd      ; 0x1fdd
@..api_idx_0008_LUNN.l14:
    jmp short jumptable_1ff2_case_0  ; 0x1fe2
jumptable_1ff2_case_10:
    mov word [bp - 0x0004], 0xe      ; 0x1fe4
    jmp short jumptable_1ff2_case_0  ; 0x1fe9
jumptable_1ff2_case_11:
    mov word [bp - 0x0004], 0xf      ; 0x1feb
    jmp short jumptable_1ff2_case_0  ; 0x1ff0
jumptable_1ff2:
    dw jumptable_1ff2_case_0 - IMAGE_BASE + __zres_end ; 0x1ff2
    dw jumptable_1ff2_case_1 - IMAGE_BASE + __zres_end ; 0x1ff4
    dw jumptable_1ff2_case_2 - IMAGE_BASE + __zres_end ; 0x1ff6
    dw jumptable_1ff2_case_3 - IMAGE_BASE + __zres_end ; 0x1ff8
    dw jumptable_1ff2_case_4 - IMAGE_BASE + __zres_end ; 0x1ffa
    dw jumptable_1ff2_case_5 - IMAGE_BASE + __zres_end ; 0x1ffc
    dw jumptable_1ff2_case_6 - IMAGE_BASE + __zres_end ; 0x1ffe
    dw jumptable_1ff2_case_0 - IMAGE_BASE + __zres_end ; 0x2000
    dw jumptable_1ff2_case_0 - IMAGE_BASE + __zres_end ; 0x2002
    dw jumptable_1ff2_case_0 - IMAGE_BASE + __zres_end ; 0x2004
    dw jumptable_1ff2_case_10 - IMAGE_BASE + __zres_end ; 0x2006
    dw jumptable_1ff2_case_11 - IMAGE_BASE + __zres_end ; 0x2008
@..api_idx_0008_LUNN.l15:
    cmp ax, strict word 0xc          ; 0x200a
    jae short jumptable_1ff2_case_0  ; 0x200d
    xchg bx, ax                      ; 0x200f
    shl bx, 1                        ; 0x2010
    jmp [cs:bx + jumptable_1ff2 - IMAGE_BASE + __zres_end] ; 0x2012
jumptable_1ff2_case_0:
    mov ax, word [bp - 0x0004]       ; 0x2017
    ret                              ; 0x201a
