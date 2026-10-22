; auto-generated
api_idx_0058_PMKH:
    mov ax, 0xffa8                   ; 0x89a8
    call aztec_csav                  ; 0x89ab
    mov word [bp - 0x0002], 0        ; 0x89ae
    jmp near @..api_idx_0058_PMKH.l4 ; 0x89b3
@..api_idx_0058_PMKH.l1:
    lea ax, word [bp - 0x002c]       ; 0x89b6
    push ax                          ; 0x89b9
    push word [bp - 0x0002]          ; 0x89ba
    call api_idx_0002_JGQP           ; 0x89bd
    add sp, byte 4                   ; 0x89c0
    lea ax, word [bp - 0x0054]       ; 0x89c3
    push ax                          ; 0x89c6
    push word [bp - 0x0002]          ; 0x89c7
    call api_idx_0006_UKIH           ; 0x89ca
    add sp, byte 4                   ; 0x89cd
    lea ax, word [bp - 0x002c]       ; 0x89d0
    push ax                          ; 0x89d3
    call aztec_strlen                ; 0x89d4
    pop cx                           ; 0x89d7
    mov word [bp - 0x0058], ax       ; 0x89d8
    mov bx, ax                       ; 0x89db
    add bx, bp                       ; 0x89dd
    mov byte [bx - 0x002c], 0x20     ; 0x89df
    mov byte [bx - 0x002b], 0        ; 0x89e3
    lea ax, word [bp - 0x0054]       ; 0x89e7
    push ax                          ; 0x89ea
    call aztec_strlen                ; 0x89eb
    pop cx                           ; 0x89ee
    mov word [bp - 0x0058], ax       ; 0x89ef
    mov bx, ax                       ; 0x89f2
    add bx, bp                       ; 0x89f4
    mov byte [bx - 0x0054], 0x20     ; 0x89f6
    mov byte [bx - 0x0053], 0        ; 0x89fa
    lea ax, word [bp - 0x002c]       ; 0x89fe
    push ax                          ; 0x8a01
    call aztec_strlen                ; 0x8a02
    pop cx                           ; 0x8a05
    push ax                          ; 0x8a06
    lea ax, word [bp - 0x002c]       ; 0x8a07
    push ax                          ; 0x8a0a
    push word [bp + 0x4]             ; 0x8a0b
    call aztec_strncmp               ; 0x8a0e
    add sp, byte 6                   ; 0x8a11
    test ax, ax                      ; 0x8a14
    jne short @..api_idx_0058_PMKH.l2 ; 0x8a16
    lea ax, word [bp - 0x002c]       ; 0x8a18
    push ax                          ; 0x8a1b
    call aztec_strlen                ; 0x8a1c
    pop cx                           ; 0x8a1f
    dec ax                           ; 0x8a20
    push ax                          ; 0x8a21
    push word [bp + 0x4]             ; 0x8a22
    call api_idx_0002_GRRR           ; 0x8a25
    add sp, byte 4                   ; 0x8a28
    mov bx, word [bp + 0x6]          ; 0x8a2b
    mov word [bx], 0                 ; 0x8a2e
    mov ax, word [bp - 0x0002]       ; 0x8a32
    ret                              ; 0x8a35
@..api_idx_0058_PMKH.l2:
    lea ax, word [bp - 0x0054]       ; 0x8a36
    push ax                          ; 0x8a39
    call aztec_strlen                ; 0x8a3a
    pop cx                           ; 0x8a3d
    push ax                          ; 0x8a3e
    lea ax, word [bp - 0x0054]       ; 0x8a3f
    push ax                          ; 0x8a42
    push word [bp + 0x4]             ; 0x8a43
    call aztec_strncmp               ; 0x8a46
    add sp, byte 6                   ; 0x8a49
    test ax, ax                      ; 0x8a4c
    jne short @..api_idx_0058_PMKH.l3 ; 0x8a4e
    lea ax, word [bp - 0x0054]       ; 0x8a50
    push ax                          ; 0x8a53
    call aztec_strlen                ; 0x8a54
    pop cx                           ; 0x8a57
    dec ax                           ; 0x8a58
    push ax                          ; 0x8a59
    push word [bp + 0x4]             ; 0x8a5a
    call api_idx_0002_GRRR           ; 0x8a5d
    add sp, byte 4                   ; 0x8a60
    mov bx, word [bp + 0x6]          ; 0x8a63
    mov word [bx], 1                 ; 0x8a66
    mov ax, word [bp - 0x0002]       ; 0x8a6a
    ret                              ; 0x8a6d
@..api_idx_0058_PMKH.l3:
    inc word [bp - 0x0002]           ; 0x8a6e
@..api_idx_0058_PMKH.l4:
    mov ax, word [bp - 0x0002]       ; 0x8a71
    cmp ax, word [bss_a656]          ; 0x8a74
    jge short @..api_idx_0058_PMKH.l5 ; 0x8a78
    jmp near @..api_idx_0058_PMKH.l1 ; 0x8a7a
@..api_idx_0058_PMKH.l5:
    mov ax, 0xffff                   ; 0x8a7d
    ret                              ; 0x8a80
