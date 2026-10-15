; auto-generated
loc_INQQ:
    mov ax, 0                        ; 0x189b
    call aztec_csav                  ; 0x189e
    push word [bp + 0x6]             ; 0x18a1
    mov ax, word [bp + 0x4]          ; 0x18a4
    dec ax                           ; 0x18a7
    push ax                          ; 0x18a8
    lea ax, word [bp + 0xc]          ; 0x18a9
    push ax                          ; 0x18ac
    lea ax, word [bp + 0xa]          ; 0x18ad
    push ax                          ; 0x18b0
    lea ax, word [bp + 0x8]          ; 0x18b1
    push ax                          ; 0x18b4
    call api_idx_0004_HROJ           ; 0x18b5
    add sp, byte 0x0a                ; 0x18b8
    test ax, ax                      ; 0x18bb
    je short @..loc_INQQ.l5          ; 0x18bd
    mov ax, word [bss_5b6e]          ; 0x18bf
    mov cx, 2                        ; 0x18c2
    cwd                              ; 0x18c5
    idiv cx                          ; 0x18c6
    mov ax, dx                       ; 0x18c8
    test ax, ax                      ; 0x18ca
    je short @..loc_INQQ.l1          ; 0x18cc
    mov ax, cx                       ; 0x18ce
    jmp short @..loc_INQQ.l4         ; 0x18d0
@..loc_INQQ.l1:
    mov ax, word [bss_5b6e]          ; 0x18d2
    cmp ax, strict word 6            ; 0x18d5
    je short @..loc_INQQ.l2          ; 0x18d8
    cmp word [bss_9188], byte 0      ; 0x18da
    je short @..loc_INQQ.l3          ; 0x18df
@..loc_INQQ.l2:
    mov ax, 0                        ; 0x18e1
    jmp short @..loc_INQQ.l4         ; 0x18e4
@..loc_INQQ.l3:
    mov ax, 4                        ; 0x18e6
@..loc_INQQ.l4:
    ret                              ; 0x18e9
@..loc_INQQ.l5:
    mov ax, 4                        ; 0x18ea
    push ax                          ; 0x18ed
    mov ax, word [bp + 0xc]          ; 0x18ee
    mov cx, 6                        ; 0x18f1
    shl ax, cl                       ; 0x18f4
    mov cx, word [bp + 0xa]          ; 0x18f6
    shl cx, 1                        ; 0x18f9
    shl cx, 1                        ; 0x18fb
    shl cx, 1                        ; 0x18fd
    add ax, cx                       ; 0x18ff
    add ax, word [bp + 0x8]          ; 0x1901
    push ax                          ; 0x1904
    mov ax, word [bss_0e14]          ; 0x1905
    add ax, 0x290                    ; 0x1908
    push ax                          ; 0x190b
    call ds_leaf_loc_JIKQ            ; 0x190c
    add sp, byte 6                   ; 0x190f
    ret                              ; 0x1912
