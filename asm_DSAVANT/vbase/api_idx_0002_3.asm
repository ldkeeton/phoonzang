; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x6756
    call aztec_csav                  ; 0x6759
    cmp word [bss_906a], byte 0      ; 0x675c
    je short @..api_idx_0002_3.l1    ; 0x6761
    mov ax, 1                        ; 0x6763
    push ax                          ; 0x6766
    push word [bss_9068]             ; 0x6767
    call ds_app_file_16a0            ; 0x676b
    add sp, byte 4                   ; 0x676e
    mov word [bss_906a], 0           ; 0x6771
@..api_idx_0002_3.l1:
    call ds_app_138c                 ; 0x6777
    mov ax, 0                        ; 0x677a
    push ax                          ; 0x677d
    mov ax, 0x8f                     ; 0x677e
    push ax                          ; 0x6781
    mov ax, 0xf7                     ; 0x6782
    push ax                          ; 0x6785
    mov ax, 0x20                     ; 0x6786
    push ax                          ; 0x6789
    mov ax, 0x48                     ; 0x678a
    push ax                          ; 0x678d
    call thunk_7                     ; 0x678e
    add sp, byte 0x0a                ; 0x6791
    mov ax, 0                        ; 0x6794
    push ax                          ; 0x6797
    push word [bss_8d08]             ; 0x6798
    push word [bss_8d06]             ; 0x679c
    call thunk_13                    ; 0x67a0
    add sp, byte 6                   ; 0x67a3
    mov word [bp - 0x0002], 0        ; 0x67a6
@..api_idx_0002_3.l2:
    mov ax, 0                        ; 0x67ab
    push ax                          ; 0x67ae
    mov ax, word [bp - 0x0002]       ; 0x67af
    shl ax, 1                        ; 0x67b2
    shl ax, 1                        ; 0x67b4
    mov bx, ax                       ; 0x67b6
    push word [bx + 0x69a6]          ; 0x67b8
    push word [bx + 0x69a4]          ; 0x67bc
    call thunk_13                    ; 0x67c0
    add sp, byte 6                   ; 0x67c3
    inc word [bp - 0x0002]           ; 0x67c6
    mov ax, word [bp - 0x0002]       ; 0x67c9
    cmp ax, strict word 6            ; 0x67cc
    jl short @..api_idx_0002_3.l2    ; 0x67cf
    cmp word [bss_8460], byte 0      ; 0x67d1
    jle short @..api_idx_0002_3.l3   ; 0x67d6
    push word [bss_8460]             ; 0x67d8
    call api_idx_0002_6              ; 0x67dc
    pop cx                           ; 0x67df
@..api_idx_0002_3.l3:
    mov ax, 0xc7                     ; 0x67e0
    push ax                          ; 0x67e3
    mov ax, 0x13f                    ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0                        ; 0x67e8
    push ax                          ; 0x67eb
    push ax                          ; 0x67ec
    call thunk_4                     ; 0x67ed
    add sp, byte 8                   ; 0x67f0
    mov word [bss_69c8], 0           ; 0x67f3
    mov word [bss_830a], 4           ; 0x67f9
    ret                              ; 0x67ff
