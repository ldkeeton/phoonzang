; auto-generated
api_idx_000e_RMNP:
    mov ax, 0xfff2                   ; 0x2a8b
    call aztec_csav                  ; 0x2a8e
    mov word [bss_91d6], 4           ; 0x2a91
    cmp word [bp + 0x10], byte 0     ; 0x2a97
    jle short .forward1              ; 0x2a9b
    push word [bp + 0x10]            ; 0x2a9d
    push word [bp + 0xa]             ; 0x2aa0
    push word [bp + 4]               ; 0x2aa3
    call loc_QUJT                    ; 0x2aa6
    add sp, byte 6                   ; 0x2aa9
    mov word [bp - 8], ax            ; 0x2aac
    jmp short .forward2              ; 0x2aaf
.forward1:
    mov ax, word [bp + 0x10]         ; 0x2ab1
    mov word [bp - 8], ax            ; 0x2ab4
.forward2:
    cmp word [bp + 0x12], byte 0     ; 0x2ab7
    jle short .forward3              ; 0x2abb
    push word [bp + 0x12]            ; 0x2abd
    push word [bp + 0xa]             ; 0x2ac0
    push word [bp + 4]               ; 0x2ac3
    call loc_QUJT                    ; 0x2ac6
    add sp, byte 6                   ; 0x2ac9
    mov word [bp - 0xa], ax          ; 0x2acc
    jmp short .forward4              ; 0x2acf
.forward3:
    mov ax, word [bp + 0x12]         ; 0x2ad1
    mov word [bp - 0xa], ax          ; 0x2ad4
.forward4:
    cmp word [bp + 0x18], byte 0     ; 0x2ad7
    jle short .forward5              ; 0x2adb
    push word [bp + 0x18]            ; 0x2add
    push word [bp + 0xa]             ; 0x2ae0
    push word [bp + 4]               ; 0x2ae3
    call loc_QUJT                    ; 0x2ae6
    add sp, byte 6                   ; 0x2ae9
    mov word [bp - 0xc], ax          ; 0x2aec
    jmp short .forward6              ; 0x2aef
.forward5:
    mov ax, word [bp + 0x18]         ; 0x2af1
    mov word [bp - 0xc], ax          ; 0x2af4
.forward6:
    cmp word [bp + 0x1a], byte 0     ; 0x2af7
    jle short .forward7              ; 0x2afb
    push word [bp + 0x1a]            ; 0x2afd
    push word [bp + 0xa]             ; 0x2b00
    push word [bp + 4]               ; 0x2b03
    call loc_QUJT                    ; 0x2b06
    add sp, byte 6                   ; 0x2b09
    mov word [bp - 0xe], ax          ; 0x2b0c
    jmp short .forward8              ; 0x2b0f
.forward7:
    mov ax, word [bp + 0x1a]         ; 0x2b11
    mov word [bp - 0xe], ax          ; 0x2b14
.forward8:
    mov ax, word [bp - 8]            ; 0x2b17
    cmp ax, word [bp + 0x10]         ; 0x2b1a
    jne short .forward9              ; 0x2b1d
    mov ax, word [bp - 0xa]          ; 0x2b1f
    cmp ax, word [bp + 0x12]         ; 0x2b22
    jne short .forward9              ; 0x2b25
    mov ax, word [bp - 0xc]          ; 0x2b27
    cmp ax, word [bp + 0x18]         ; 0x2b2a
    jne short .forward9              ; 0x2b2d
    mov ax, word [bp - 0xe]          ; 0x2b2f
    cmp ax, word [bp + 0x1a]         ; 0x2b32
    je short .forward10              ; 0x2b35
.forward9:
    mov ax, MSG_SPELL_REDUCED        ; 0x2b37
    push ax                          ; 0x2b3a
    call loc_PKMT                    ; 0x2b3b
    pop cx                           ; 0x2b3e
.forward10:
    lea ax, word [bp - 6]            ; 0x2b3f
    push ax                          ; 0x2b42
    lea ax, word [bp - 4]            ; 0x2b43
    push ax                          ; 0x2b46
    push word [bp + 6]               ; 0x2b47
    push word [bp + 4]               ; 0x2b4a
    call api_idx_0006_OMUL           ; 0x2b4d
    add sp, byte 8                   ; 0x2b50
    mov ax, word [bp - 4]            ; 0x2b53
    mov word [bp - 2], ax            ; 0x2b56
    jmp near .forward14              ; 0x2b59
.back1:
    push word [bp + 0xe]             ; 0x2b5c
    push word [bp + 0xa]             ; 0x2b5f
    push word [bp + 0xc]             ; 0x2b62
    push word [bp - 0xa]             ; 0x2b65
    push word [bp - 8]               ; 0x2b68
    push word [bp - 2]               ; 0x2b6b
    push word [bp + 4]               ; 0x2b6e
    call api_idx_0022_ROTQ           ; 0x2b71
    add sp, byte 0xe                 ; 0x2b74
    cmp ax, strict word 0            ; 0x2b77
    jle short .forward12             ; 0x2b7a
    cmp word [bp + 0x16], byte 1     ; 0x2b7c
    jne short .forward11             ; 0x2b80
    mov ax, 0                        ; 0x2b82
    push ax                          ; 0x2b85
    mov ax, 0xd50                    ; 0x2b86
    push ax                          ; 0x2b89
    push word [bp + 0xe]             ; 0x2b8a
    push word [bp + 0x14]            ; 0x2b8d
    push word [bp + 0xa]             ; 0x2b90
    push word [bp + 8]               ; 0x2b93
    push word [bp - 2]               ; 0x2b96
    push word [bp + 4]               ; 0x2b99
    call api_idx_0002_UTVG           ; 0x2b9c
    add sp, byte 0x10                ; 0x2b9f
    jmp short .forward12             ; 0x2ba2
.forward11:
    mov ax, 0                        ; 0x2ba4
    push ax                          ; 0x2ba7
    mov ax, 0xd50                    ; 0x2ba8
    push ax                          ; 0x2bab
    push word [bp + 0x1c]            ; 0x2bac
    push word [bp - 0xe]             ; 0x2baf
    push word [bp - 0xc]             ; 0x2bb2
    push word [bp + 0xe]             ; 0x2bb5
    push word [bp + 0x14]            ; 0x2bb8
    push word [bp + 0xa]             ; 0x2bbb
    push word [bp + 8]               ; 0x2bbe
    push word [bp - 2]               ; 0x2bc1
    push word [bp + 4]               ; 0x2bc4
    call api_idx_0006_QJOL           ; 0x2bc7
    add sp, byte 0x16                ; 0x2bca
.forward12:
    cmp word [bp + 4], byte 0        ; 0x2bcd
    jne short .forward13             ; 0x2bd1
    mov ax, 0                        ; 0x2bd3
    push ax                          ; 0x2bd6
    push word [bp - 2]               ; 0x2bd7
    call api_idx_0004_MLLS           ; 0x2bda
    add sp, byte 4                   ; 0x2bdd
.forward13:
    inc word [bp - 2]                ; 0x2be0
.forward14:
    mov ax, word [bp - 4]            ; 0x2be3
    add ax, word [bp - 6]            ; 0x2be6
    cmp ax, word [bp - 2]            ; 0x2be9
    jle short .return1               ; 0x2bec
    jmp near .back1                  ; 0x2bee
.return1:
    ret                              ; 0x2bf1
