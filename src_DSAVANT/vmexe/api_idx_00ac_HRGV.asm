; auto-generated
api_idx_00ac_HRGV:
    mov ax, 0xff54                   ; 0x7962
    call aztec_csav                  ; 0x7965
    mov word [bp - 0x00aa], 0x43     ; 0x7968
    mov word [bp - 0x00ac], 0        ; 0x796e
    mov word [bp - 0x00a8], 0        ; 0x7974
    mov word [bp - 0x00a2], 0        ; 0x797a
    mov bx, word [bp + 0x4]          ; 0x7980
    mov al, byte [bx + 0x1f]         ; 0x7983
    sub ah, ah                       ; 0x7986
    mov word [bp - 0x004e], ax       ; 0x7988
    mov al, byte [bx + 0x20]         ; 0x798b
    sub ah, ah                       ; 0x798e
    mov word [bp - 0x0050], ax       ; 0x7990
    mov word [bp - 0x0076], 0xffff   ; 0x7993
    mov word [bp - 0x0094], 0xffff   ; 0x7998
    mov word [bp - 0x009e], 0        ; 0x799e
    mov word [bp - 0x00a4], 0        ; 0x79a4
    mov word [bss_91d6], 4           ; 0x79aa
    push word [bss_8462]             ; 0x79b0
    push word [bss_8464]             ; 0x79b4
    mov ax, 0x90e6                   ; 0x79b8
    push ax                          ; 0x79bb
    call loc_HJSG                    ; 0x79bc
    add sp, byte 6                   ; 0x79bf
    mov byte [bss_9136], 0           ; 0x79c2
    mov byte [bss_9186], 0           ; 0x79c7
    mov word [bp - 0x00a6], 1        ; 0x79cc
    cmp word [bss_8464], byte 0      ; 0x79d2
    je short @..api_idx_00ac_HRGV.l1 ; 0x79d7
    jmp near loc_7c53                ; 0x79d9
@..api_idx_00ac_HRGV.l1:
    mov ax, 0x9136                   ; 0x79dc
    push ax                          ; 0x79df
    mov ax, word [bp + 0x8]          ; 0x79e0
    add ax, 0xd16                    ; 0x79e3
    push ax                          ; 0x79e6
    call ds_app_mem_TIMR             ; 0x79e7
    add sp, byte 4                   ; 0x79ea
    mov word [bp - 0x00a6], 0        ; 0x79ed
    mov ax, 0x248                    ; 0x79f3
    imul word [bss_8462]             ; 0x79f6
    add ax, word [bp + 0x6]          ; 0x79fa
    mov bx, ax                       ; 0x79fd
    mov al, byte [bx + 0x5d48]       ; 0x79ff
    sub ah, ah                       ; 0x7a03
    mov word [bp - 0x004c], ax       ; 0x7a05
    cmp word [bp + 0x8], byte 8      ; 0x7a08
    jne short @..api_idx_00ac_HRGV.l2 ; 0x7a0c
    mov ax, 0x248                    ; 0x7a0e
    imul word [bss_8462]             ; 0x7a11
    push ax                          ; 0x7a15
    mov ax, 0xc                      ; 0x7a16
    imul word [bp - 0x004c]          ; 0x7a19
    mov cx, ax                       ; 0x7a1c
    pop ax                           ; 0x7a1e
    add ax, cx                       ; 0x7a1f
    mov bx, ax                       ; 0x7a21
    mov al, byte [bx + 0x5c3b]       ; 0x7a23
    sub ah, ah                       ; 0x7a27
    test ax, 0x20                    ; 0x7a29
    jne short @..api_idx_00ac_HRGV.l2 ; 0x7a2c
    mov ax, 0x248                    ; 0x7a2e
    imul word [bss_8462]             ; 0x7a31
    mov bx, ax                       ; 0x7a35
    mov al, byte [bx + 0x5d49]       ; 0x7a37
    sub ah, ah                       ; 0x7a3b
    mov word [bp - 0x004c], ax       ; 0x7a3d
@..api_idx_00ac_HRGV.l2:
    mov bx, word [bp + 0x4]          ; 0x7a40
    cmp byte [bx + 0x2b], 0          ; 0x7a43
    je short @..api_idx_00ac_HRGV.l3 ; 0x7a47
    cmp word [bp + 0x8], byte 4      ; 0x7a49
    je short @..api_idx_00ac_HRGV.l3 ; 0x7a4d
    cmp word [bp + 0x8], byte 8      ; 0x7a4f
    je short @..api_idx_00ac_HRGV.l3 ; 0x7a53
    mov ax, 0x9136                   ; 0x7a55
    push ax                          ; 0x7a58
    mov ax, 2                        ; 0x7a59
    push ax                          ; 0x7a5c
    call ds_app_PUNN                 ; 0x7a5d
    pop cx                           ; 0x7a60
    add ax, 0xd39                    ; 0x7a61
    push ax                          ; 0x7a64
    call ds_app_mem_TIMR             ; 0x7a65
    add sp, byte 4                   ; 0x7a68
@..api_idx_00ac_HRGV.l3:
    cmp word [bp - 0x004c], strict word 0xff ; 0x7a6b
    jne short @..api_idx_00ac_HRGV.l4 ; 0x7a70
    jmp near loc_IJIL                ; 0x7a72
@..api_idx_00ac_HRGV.l4:
    mov ax, 0                        ; 0x7a75
    push ax                          ; 0x7a78
    mov ax, 0x248                    ; 0x7a79
    imul word [bss_8462]             ; 0x7a7c
    push ax                          ; 0x7a80
    mov ax, 0xc                      ; 0x7a81
    imul word [bp - 0x004c]          ; 0x7a84
    mov cx, ax                       ; 0x7a87
    pop ax                           ; 0x7a89
    add ax, cx                       ; 0x7a8a
    mov bx, ax                       ; 0x7a8c
    push word [bx + 0x5c34]          ; 0x7a8e
    lea ax, word [bp - 0x004a]       ; 0x7a92
    push ax                          ; 0x7a95
    mov ax, 1                        ; 0x7a96
    push ax                          ; 0x7a99
    call ds_app_file_NKGK            ; 0x7a9a
    add sp, byte 8                   ; 0x7a9d
    mov ax, 0x248                    ; 0x7aa0
    imul word [bss_8462]             ; 0x7aa3
    push ax                          ; 0x7aa7
    mov ax, 0xc                      ; 0x7aa8
    imul word [bp - 0x004c]          ; 0x7aab
    mov cx, ax                       ; 0x7aae
    pop ax                           ; 0x7ab0
    add ax, cx                       ; 0x7ab1
    mov bx, ax                       ; 0x7ab3
    mov al, byte [bx + 0x5c3b]       ; 0x7ab5
    sub ah, ah                       ; 0x7ab9
    test ax, 0x80                    ; 0x7abb
    je short @..api_idx_00ac_HRGV.l5 ; 0x7abe
    lea ax, word [bp - 0x004a]       ; 0x7ac0
    push ax                          ; 0x7ac3
    mov ax, 0x9186                   ; 0x7ac4
    push ax                          ; 0x7ac7
    call aztec_strcpy                ; 0x7ac8
    add sp, byte 4                   ; 0x7acb
    jmp short @..api_idx_00ac_HRGV.l6 ; 0x7ace
@..api_idx_00ac_HRGV.l5:
    mov ax, 0x9186                   ; 0x7ad0
    push ax                          ; 0x7ad3
    mov al, byte [bp - 0x0011]       ; 0x7ad4
    sub ah, ah                       ; 0x7ad7
    add ax, 0x1770                   ; 0x7ad9
    push ax                          ; 0x7adc
    call ds_app_mem_TIMR             ; 0x7add
    add sp, byte 4                   ; 0x7ae0
@..api_idx_00ac_HRGV.l6:
    mov ax, 0x9186                   ; 0x7ae3
    push ax                          ; 0x7ae6
    call api_idx_0002_GKQL           ; 0x7ae7
    pop cx                           ; 0x7aea
    cmp word [bp + 0x8], byte 4      ; 0x7aeb
    je short @..api_idx_00ac_HRGV.l7 ; 0x7aef
    cmp word [bp + 0x8], byte 8      ; 0x7af1
    je short @..api_idx_00ac_HRGV.l7 ; 0x7af5
    jmp near loc_IJIL                ; 0x7af7
@..api_idx_00ac_HRGV.l7:
    cmp word [bp + 0x8], byte 4      ; 0x7afa
    jne short @..api_idx_00ac_HRGV.l8 ; 0x7afe
    cmp word [bp - 0x0028], byte 0   ; 0x7b00
    je short @..api_idx_00ac_HRGV.l8 ; 0x7b04
    mov ax, word [bp - 0x0028]       ; 0x7b06
    mov word [bp - 0x0094], ax       ; 0x7b09
    mov ax, 0x9136                   ; 0x7b0d
    push ax                          ; 0x7b10
    mov ax, 0xd38                    ; 0x7b11
    push ax                          ; 0x7b14
    call ds_app_mem_TIMR             ; 0x7b15
    add sp, byte 4                   ; 0x7b18
@..api_idx_00ac_HRGV.l8:
    mov ax, 0x248                    ; 0x7b1b
    imul word [bss_8462]             ; 0x7b1e
    push ax                          ; 0x7b22
    mov ax, 0xc                      ; 0x7b23
    imul word [bp - 0x004c]          ; 0x7b26
    mov cx, ax                       ; 0x7b29
    pop ax                           ; 0x7b2b
    add ax, cx                       ; 0x7b2c
    mov bx, ax                       ; 0x7b2e
    mov al, byte [bx + 0x5c39]       ; 0x7b30
    sub ah, ah                       ; 0x7b34
    jmp near loc_7c08                ; 0x7b36
