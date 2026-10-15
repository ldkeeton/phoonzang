; auto-generated
leaf_loc_PJRP:
    mov ax, word [bp - 0x000a]       ; 0x4ab4
    add ax, word [bp - 0x0006]       ; 0x4ab7
    mov cx, 2                        ; 0x4aba
    cwd                              ; 0x4abd
    idiv cx                          ; 0x4abe
    mov word [bp - 0x000c], ax       ; 0x4ac0
    mov word [bp - 0x0014], 1        ; 0x4ac3
    mov word [bp - 0x0016], 0x1e     ; 0x4ac8
    mov word [bp - 0x0018], 3        ; 0x4acd
    jmp near loc_KMTR                ; 0x4ad2
loc_MUJP:
    mov ax, word [bp - 0x0004]       ; 0x4ad5
    add ax, word [bp - 0x0006]       ; 0x4ad8
    mov cx, 2                        ; 0x4adb
    cwd                              ; 0x4ade
loc_RJPS:
    idiv cx                          ; 0x4adf
    mov word [bp - 0x000c], ax       ; 0x4ae1
    mov word [bp - 0x0014], 0        ; 0x4ae4
    mov word [bp - 0x0016], 0x20     ; 0x4ae9
    mov word [bp - 0x0018], 3        ; 0x4aee
    jmp short loc_KMTR               ; 0x4af3
loc_MOQL:
    mov ax, word [bp - 0x0004]       ; 0x4af5
    add ax, word [bp - 0x0006]       ; 0x4af8
    mov cx, 2                        ; 0x4afb
    cwd                              ; 0x4afe
    idiv cx                          ; 0x4aff
    mov word [bp - 0x000c], ax       ; 0x4b01
    mov word [bp - 0x0014], 3        ; 0x4b04
    mov word [bp - 0x0016], 0x1f     ; 0x4b09
    mov word [bp - 0x0018], 3        ; 0x4b0e
    jmp short loc_KMTR               ; 0x4b13
loc_HPRS:
    mov ax, word [bp - 0x0004]       ; 0x4b15
    add ax, word [bp - 0x0006]       ; 0x4b18
    mov cx, 2                        ; 0x4b1b
    cwd                              ; 0x4b1e
    idiv cx                          ; 0x4b1f
    mov word [bp - 0x000c], ax       ; 0x4b21
    mov word [bp - 0x0014], 2        ; 0x4b24
    mov word [bp - 0x0016], 0x1d     ; 0x4b29
    mov word [bp - 0x0018], 5        ; 0x4b2e
    jmp short loc_KMTR               ; 0x4b33
jumptable_4b3c_case_0:
@..api_idx_0018_NLSO.l1:
    mov word [bp - 0x0018], 0        ; 0x4b35
    jmp short loc_KMTR               ; 0x4b3a
loc_ITVS:
jumptable_4b3c:
    dw jumptable_4b3c_case_0 - IMAGE_BASE + 0x5055 ; 0x4b3c
    dw leaf_loc_VOLM - IMAGE_BASE + 0x5055     ; 0x4b3e
    dw leaf_loc_TVLO - IMAGE_BASE + 0x5055     ; 0x4b40
    dw jumptable_4b3c_case_0 - IMAGE_BASE + 0x5055 ; 0x4b42
    dw leaf_loc_RUVP - IMAGE_BASE + 0x5055     ; 0x4b44
    dw leaf_loc_GOTN - IMAGE_BASE + 0x5055     ; 0x4b46
    dw leaf_loc_JVRQ - IMAGE_BASE + 0x5055     ; 0x4b48
    dw leaf_loc_JVKS - IMAGE_BASE + 0x5055     ; 0x4b4a
    dw leaf_loc_SLHJ - IMAGE_BASE + 0x5055     ; 0x4b4c
    dw leaf_loc_RJJT - IMAGE_BASE + 0x5055     ; 0x4b4e
    dw leaf_loc_PJRP - IMAGE_BASE + 0x5055     ; 0x4b50
    dw loc_MUJP - IMAGE_BASE + 0x5055          ; 0x4b52
    dw loc_MOQL - IMAGE_BASE + 0x5055          ; 0x4b54
    dw loc_HPRS - IMAGE_BASE + 0x5055          ; 0x4b56
@..api_idx_0018_NLSO.l2:
    cmp ax, strict word 0xe          ; 0x4b58
    jae short @..api_idx_0018_NLSO.l3 ; 0x4b5b
    xchg bx, ax                      ; 0x4b5d
    shl bx, 1                        ; 0x4b5e
    jmp [cs:bx - 0x647d]             ; 0x4b60
@..api_idx_0018_NLSO.l3:
    jmp short @..api_idx_0018_NLSO.l1 ; 0x4b65
loc_KMTR:
    cmp word [bp - 0x0018], byte 0   ; 0x4b67
    jne short loc_UNNK               ; 0x4b6b
    ret                              ; 0x4b6d
loc_UNNK:
    mov ax, 0x248                    ; 0x4b6e
    imul word [bp + 0x4]             ; 0x4b71
    mov bx, ax                       ; 0x4b74
    mov ax, word [bx + 0x5c18]       ; 0x4b76
    cmp ax, word [bp - 0x0018]       ; 0x4b7a
    jge short loc_JKHU               ; 0x4b7d
    jmp near loc_NUGN_4cc4           ; 0x4b7f
loc_JKHU:
    add bx, word [bp - 0x0014]       ; 0x4b82
    inc byte [bx + 0x5d50]           ; 0x4b85
    mov word [bp - 0x0002], 0        ; 0x4b89
loc_UNPU:
    mov word [bp - 0x0012], 0        ; 0x4b8e
    mov ax, 0x248                    ; 0x4b93
    imul word [bp + 0x4]             ; 0x4b96
    mov cx, word [bp - 0x0002]       ; 0x4b99
    shl cx, 1                        ; 0x4b9c
    shl cx, 1                        ; 0x4b9e
    add ax, cx                       ; 0x4ba0
    mov bx, ax                       ; 0x4ba2
    cmp word [bx + 0x5c1e], byte 0   ; 0x4ba4
    jle short loc_NTRR               ; 0x4ba9
    mov word [bp - 0x0004], 0        ; 0x4bab
loc_KLLK:
    mov ax, 6                        ; 0x4bb0
    imul word [bp - 0x0004]          ; 0x4bb3
    mov bx, ax                       ; 0x4bb6
    mov al, byte [bx + 0x620]        ; 0x4bb8
    sub ah, ah                       ; 0x4bbc
    cmp ax, word [bp - 0x0002]       ; 0x4bbe
    jne short loc_HPTN               ; 0x4bc1
    push word [bp - 0x0004]          ; 0x4bc3
    mov ax, 0x248                    ; 0x4bc6
    imul word [bp + 0x4]             ; 0x4bc9
    add ax, 0x5e12                   ; 0x4bcc
    push ax                          ; 0x4bcf
    call ds_leaf_loc_KIMU            ; 0x4bd0
    add sp, byte 4                   ; 0x4bd3
    cmp ax, strict word 1            ; 0x4bd6
    jne short loc_HPTN               ; 0x4bd9
    inc word [bp - 0x0012]           ; 0x4bdb
loc_HPTN:
    inc word [bp - 0x0004]           ; 0x4bde
    mov ax, word [bp - 0x0004]       ; 0x4be1
    cmp ax, strict word 0x66         ; 0x4be4
    jl short loc_KLLK                ; 0x4be7
loc_NTRR:
    cmp word [bp - 0x0012], byte 0   ; 0x4be9
    jg short loc_HIUS                ; 0x4bed
    jmp near loc_OHJR                ; 0x4bef
loc_HIUS:
    mov word [bp - 0x000e], 0        ; 0x4bf2
    cmp word [bp - 0x000c], byte 0x0d ; 0x4bf7
    jle short loc_NNUT               ; 0x4bfb
    inc word [bp - 0x000e]           ; 0x4bfd
loc_NNUT:
    cmp word [bp - 0x000c], byte 0x10 ; 0x4c00
    jle short loc_LPNU               ; 0x4c04
    inc word [bp - 0x000e]           ; 0x4c06
loc_LPNU:
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 0x4]             ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov ax, word [bx + 0x5c18]       ; 0x4c11
    push ax                          ; 0x4c15
    mov al, byte [bx + 0x5e3b]       ; 0x4c16
    sub ah, ah                       ; 0x4c1a
    mov cx, ax                       ; 0x4c1c
    pop ax                           ; 0x4c1e
    cmp ax, cx                       ; 0x4c1f
    jge short loc_QONH               ; 0x4c21
    mov ax, word [bp - 0x0002]       ; 0x4c23
    shl ax, 1                        ; 0x4c26
    shl ax, 1                        ; 0x4c28
    add bx, ax                       ; 0x4c2a
    inc word [bx + 0x5c1e]           ; 0x4c2c
    jmp near loc_OHJR                ; 0x4c30
loc_QONH:
    mov ax, 0x248                    ; 0x4c33
    imul word [bp + 0x4]             ; 0x4c36
    add ax, word [bp - 0x0002]       ; 0x4c39
    mov bx, ax                       ; 0x4c3c
    mov al, byte [bx + 0x5d54]       ; 0x4c3e
    sub ah, ah                       ; 0x4c42
    push ax                          ; 0x4c44
    call ds_app_GGUI                 ; 0x4c45
    pop cx                           ; 0x4c48
    push ax                          ; 0x4c49
    mov ax, 0x248                    ; 0x4c4a
    imul word [bp + 0x4]             ; 0x4c4d
    add ax, word [bp - 0x0016]       ; 0x4c50
    mov bx, ax                       ; 0x4c53
    mov al, byte [bx + 0x5d6c]       ; 0x4c55
    sub ah, ah                       ; 0x4c59
    mov cx, 0x14                     ; 0x4c5b
    cwd                              ; 0x4c5e
    idiv cx                          ; 0x4c5f
    push ax                          ; 0x4c61
    call ds_app_GGUI                 ; 0x4c62
    pop cx                           ; 0x4c65
    mov cx, ax                       ; 0x4c66
    pop ax                           ; 0x4c68
    add ax, cx                       ; 0x4c69
    push ax                          ; 0x4c6b
    mov ax, 0x248                    ; 0x4c6c
    imul word [bp + 0x4]             ; 0x4c6f
    mov bx, ax                       ; 0x4c72
    mov al, byte [bx + 0x5d66]       ; 0x4c74
    sub ah, ah                       ; 0x4c78
    mov cx, 6                        ; 0x4c7a
    cwd                              ; 0x4c7d
    idiv cx                          ; 0x4c7e
    imul word [bp - 0x0012]          ; 0x4c80
    mov cx, ax                       ; 0x4c83
    pop ax                           ; 0x4c85
    add ax, cx                       ; 0x4c86
    add ax, word [bp - 0x000e]       ; 0x4c88
    mov word [bp - 0x0010], ax       ; 0x4c8b
    cmp ax, strict word 0xf          ; 0x4c8e
    jle short loc_HPPV               ; 0x4c91
    mov word [bp - 0x0010], 0xf      ; 0x4c93
loc_HPPV:
    mov ax, word [bp - 0x0010]       ; 0x4c98
    mov cx, word [bp - 0x0002]       ; 0x4c9b
    shl cx, 1                        ; 0x4c9e
    shl cx, 1                        ; 0x4ca0
    add bx, cx                       ; 0x4ca2
    add word [bx + 0x5c1e], ax       ; 0x4ca4
    cmp word [bx + 0x5c1e], strict word 0x3e7 ; 0x4ca8
    jle short loc_OHJR               ; 0x4cae
    mov word [bx + 0x5c1e], 0x3e7    ; 0x4cb0
loc_OHJR:
    inc word [bp - 0x0002]           ; 0x4cb6
    mov ax, word [bp - 0x0002]       ; 0x4cb9
    cmp ax, strict word 6            ; 0x4cbc
    jge short loc_NUGN_4cc4          ; 0x4cbf
    jmp near loc_UNPU                ; 0x4cc1
loc_NUGN_4cc4:
    ret                              ; 0x4cc4
