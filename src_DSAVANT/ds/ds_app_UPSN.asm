; auto-generated
ds_app_UPSN: ; Aztec csav frame=0x0008
    mov ax, 0xfff8                   ; 0x1a23
    call aztec_csav                  ; 0x1a26
    mov ax, 0x248                    ; 0x1a29
    imul word [bp + 0x4]             ; 0x1a2c
    push ax                          ; 0x1a2f
    mov ax, 0xc                      ; 0x1a30
    imul word [bp + 0x6]             ; 0x1a33
    mov cx, ax                       ; 0x1a36
    pop ax                           ; 0x1a38
    add ax, cx                       ; 0x1a39
    mov bx, ax                       ; 0x1a3b
    mov al, byte [bx + 0x5c3b]       ; 0x1a3d
    sub ah, ah                       ; 0x1a41
    and ax, strict word 0xfffe       ; 0x1a43
    mov byte [bx + 0x5c3b], al       ; 0x1a46
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp + 0x4]             ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    mov byte [bx + 0x5e30], 0        ; 0x1a52
    mov byte [bx + 0x5e31], 0        ; 0x1a57
    mov word [bp - 0x0002], 0        ; 0x1a5c
@..ds_app_UPSN.l1:
    mov ax, 0x248                    ; 0x1a61
    imul word [bp + 0x4]             ; 0x1a64
    add ax, word [bp - 0x0002]       ; 0x1a67
    mov bx, ax                       ; 0x1a6a
    mov al, byte [bx + 0x5d8e]       ; 0x1a6c
    mov byte [bx + 0x5d9c], al       ; 0x1a70
    inc word [bp - 0x0002]           ; 0x1a74
    mov ax, word [bp - 0x0002]       ; 0x1a77
    cmp ax, strict word 0xe          ; 0x1a7a
    jl short @..ds_app_UPSN.l1       ; 0x1a7d
    mov word [bp - 0x0002], 0        ; 0x1a7f
@..ds_app_UPSN.l2:
    mov ax, 0x248                    ; 0x1a84
    imul word [bp + 0x4]             ; 0x1a87
    add ax, word [bp - 0x0002]       ; 0x1a8a
    mov bx, ax                       ; 0x1a8d
    mov al, byte [bx + 0x5d48]       ; 0x1a8f
    sub ah, ah                       ; 0x1a93
    cmp ax, word [bp + 0x6]          ; 0x1a95
    je short @..ds_app_UPSN.l3       ; 0x1a98
    jmp near @..ds_app_UPSN.l5       ; 0x1a9a
@..ds_app_UPSN.l3:
    mov byte [bx + 0x5d48], 0xff     ; 0x1a9d
    mov ax, word [bp - 0x0002]       ; 0x1aa2
    jmp short @..ds_app_UPSN.l4      ; 0x1aa5
jumptable_1aff_case_0:
    push word [bp - 0x0002]          ; 0x1aa7
    push word [bp + 0x4]             ; 0x1aaa
    call ds_app_mem_TMKK             ; 0x1aad
    add sp, byte 4                   ; 0x1ab0
    mov ax, 0x248                    ; 0x1ab3
    imul word [bp + 0x4]             ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0xc                      ; 0x1aba
    imul word [bp + 0x6]             ; 0x1abd
    mov cx, ax                       ; 0x1ac0
    pop ax                           ; 0x1ac2
    add ax, cx                       ; 0x1ac3
    mov bx, ax                       ; 0x1ac5
    mov al, byte [bx + 0x5c3f]       ; 0x1ac7
    push ax                          ; 0x1acb
    mov ax, 0x248                    ; 0x1acc
    imul word [bp + 0x4]             ; 0x1acf
    mov bx, ax                       ; 0x1ad2
    pop ax                           ; 0x1ad4
    add byte [bx + 0x5dab], al       ; 0x1ad5
    jmp short @..ds_app_UPSN.l5      ; 0x1ad9
jumptable_1aff_case_2:
    mov ax, 0x248                    ; 0x1adb
    imul word [bp + 0x4]             ; 0x1ade
    mov bx, ax                       ; 0x1ae1
    mov byte [bx + 0x5dac], 0        ; 0x1ae3
    jmp short @..ds_app_UPSN.l5      ; 0x1ae8
jumptable_1aff_case_3:
    mov ax, 0x248                    ; 0x1aea
    imul word [bp + 0x4]             ; 0x1aed
    mov bx, ax                       ; 0x1af0
    mov al, byte [bx + 0x5daa]       ; 0x1af2
    add bx, word [bp - 0x0002]       ; 0x1af6
    mov byte [bx + 0x5daa], al       ; 0x1af9
    jmp short @..ds_app_UPSN.l5      ; 0x1afd
jumptable_1aff:
    dw jumptable_1aff_case_0 - IMAGE_BASE      ; 0x1aff
    dw jumptable_1aff_case_0 - IMAGE_BASE      ; 0x1b01
    dw jumptable_1aff_case_2 - IMAGE_BASE      ; 0x1b03
    dw jumptable_1aff_case_3 - IMAGE_BASE      ; 0x1b05
    dw jumptable_1aff_case_3 - IMAGE_BASE      ; 0x1b07
    dw jumptable_1aff_case_3 - IMAGE_BASE      ; 0x1b09
    dw jumptable_1aff_case_3 - IMAGE_BASE      ; 0x1b0b
    dw jumptable_1aff_case_3 - IMAGE_BASE      ; 0x1b0d
@..ds_app_UPSN.l4:
    cmp ax, strict word 8            ; 0x1b0f
    jae short @..ds_app_UPSN.l5      ; 0x1b12
    xchg bx, ax                      ; 0x1b14
    shl bx, 1                        ; 0x1b15
    jmp [cs:bx + jumptable_1aff - IMAGE_BASE] ; 0x1b17
@..ds_app_UPSN.l5:
    mov ax, 0x248                    ; 0x1b1c
    imul word [bp + 0x4]             ; 0x1b1f
    add ax, word [bp - 0x0002]       ; 0x1b22
    mov bx, ax                       ; 0x1b25
    mov al, byte [bx + 0x5d48]       ; 0x1b27
    sub ah, ah                       ; 0x1b2b
    cmp ax, 0xff                     ; 0x1b2d
    jne short @..ds_app_UPSN.l6      ; 0x1b30
    jmp near @..ds_app_UPSN.l12      ; 0x1b32
@..ds_app_UPSN.l6:
    mov word [bp - 0x0004], 0        ; 0x1b35
@..ds_app_UPSN.l7:
    mov ax, 0x248                    ; 0x1b3a
    imul word [bp + 0x4]             ; 0x1b3d
    push ax                          ; 0x1b40
    add ax, word [bp - 0x0002]       ; 0x1b41
    mov bx, ax                       ; 0x1b44
    mov al, byte [bx + 0x5d48]       ; 0x1b46
    sub ah, ah                       ; 0x1b4a
    mov cx, 0xc                      ; 0x1b4c
    imul cx                          ; 0x1b4f
    mov cx, ax                       ; 0x1b51
    pop ax                           ; 0x1b53
    add ax, cx                       ; 0x1b54
    add ax, word [bp - 0x0004]       ; 0x1b56
    mov bx, ax                       ; 0x1b59
    mov al, byte [bx + 0x5c3c]       ; 0x1b5b
    sub ah, ah                       ; 0x1b5f
    mov cx, 0x10                     ; 0x1b61
    cwd                              ; 0x1b64
    idiv cx                          ; 0x1b65
    mov word [bp - 0x0006], ax       ; 0x1b67
    mov ax, 0xa                      ; 0x1b6a
    imul dx                          ; 0x1b6d
    mov word [bp - 0x0008], ax       ; 0x1b6f
    mov ax, 0x7d                     ; 0x1b72
    push ax                          ; 0x1b75
    mov ax, 0                        ; 0x1b76
    push ax                          ; 0x1b79
    mov ax, 0x248                    ; 0x1b7a
    imul word [bp + 0x4]             ; 0x1b7d
    add ax, word [bp - 0x0006]       ; 0x1b80
    mov bx, ax                       ; 0x1b83
    mov al, byte [bx + 0x5d9c]       ; 0x1b85
    sub ah, ah                       ; 0x1b89
    add ax, word [bp - 0x0008]       ; 0x1b8b
    push ax                          ; 0x1b8e
    call clamp_between               ; 0x1b8f
    add sp, byte 6                   ; 0x1b92
    push ax                          ; 0x1b95
    mov ax, 0x248                    ; 0x1b96
    imul word [bp + 0x4]             ; 0x1b99
    mov cx, ax                       ; 0x1b9c
    add ax, word [bp - 0x0006]       ; 0x1b9e
    mov bx, ax                       ; 0x1ba1
    pop ax                           ; 0x1ba3
    mov byte [bx + 0x5d9c], al       ; 0x1ba4
    inc word [bp - 0x0004]           ; 0x1ba8
    mov ax, word [bp - 0x0004]       ; 0x1bab
    cmp ax, strict word 2            ; 0x1bae
    jl short @..ds_app_UPSN.l7       ; 0x1bb1
    mov ax, 0x248                    ; 0x1bb3
    imul word [bp + 0x4]             ; 0x1bb6
    push ax                          ; 0x1bb9
    add ax, word [bp - 0x0002]       ; 0x1bba
    mov bx, ax                       ; 0x1bbd
    mov al, byte [bx + 0x5d48]       ; 0x1bbf
    sub ah, ah                       ; 0x1bc3
    mov cx, 0xc                      ; 0x1bc5
    imul cx                          ; 0x1bc8
    mov cx, ax                       ; 0x1bca
    pop ax                           ; 0x1bcc
    add ax, cx                       ; 0x1bcd
    mov bx, ax                       ; 0x1bcf
    mov al, byte [bx + 0x5c3e]       ; 0x1bd1
    sub ah, ah                       ; 0x1bd5
    mov cx, 0x10                     ; 0x1bd7
    cwd                              ; 0x1bda
    idiv cx                          ; 0x1bdb
    mov word [bp - 0x0006], ax       ; 0x1bdd
    mov word [bp - 0x0008], dx       ; 0x1be0
    mov ax, 0x248                    ; 0x1be3
    imul word [bp + 0x4]             ; 0x1be6
    mov bx, ax                       ; 0x1be9
    mov al, byte [bx + 0x5e30]       ; 0x1beb
    sub ah, ah                       ; 0x1bef
    mov dx, word [bp - 0x0008]       ; 0x1bf1
    cmp ax, dx                       ; 0x1bf4
    jge short @..ds_app_UPSN.l8      ; 0x1bf6
    mov ax, dx                       ; 0x1bf8
    jmp short @..ds_app_UPSN.l9      ; 0x1bfa
@..ds_app_UPSN.l8:
    mov al, byte [bx + 0x5e30]       ; 0x1bfc
    sub ah, ah                       ; 0x1c00
@..ds_app_UPSN.l9:
    mov byte [bx + 0x5e30], al       ; 0x1c02
    mov al, byte [bx + 0x5e31]       ; 0x1c06
    sub ah, ah                       ; 0x1c0a
    cmp ax, word [bp - 0x0006]       ; 0x1c0c
    jge short @..ds_app_UPSN.l10     ; 0x1c0f
    mov ax, word [bp - 0x0006]       ; 0x1c11
    jmp short @..ds_app_UPSN.l11     ; 0x1c14
@..ds_app_UPSN.l10:
    mov al, byte [bx + 0x5e31]       ; 0x1c16
    sub ah, ah                       ; 0x1c1a
@..ds_app_UPSN.l11:
    mov byte [bx + 0x5e31], al       ; 0x1c1c
@..ds_app_UPSN.l12:
    inc word [bp - 0x0002]           ; 0x1c20
    mov ax, word [bp - 0x0002]       ; 0x1c23
    cmp ax, strict word 8            ; 0x1c26
    jge short @..ds_app_UPSN.l13     ; 0x1c29
    jmp near @..ds_app_UPSN.l2       ; 0x1c2b
@..ds_app_UPSN.l13:
    ret                              ; 0x1c2e
