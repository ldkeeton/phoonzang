api_idx_0006_9:
    mov ax, 0xfffa                   ; 0x99dd
    call ds_aztec_csav               ; 0x99e0
    mov ax, 0x26                     ; 0x99e3
    imul word [bp + 0x4]             ; 0x99e6
    mov bx, ax                       ; 0x99e9
    mov al, byte [bx - 0x7b15]       ; 0x99eb
    sub ah, ah                       ; 0x99ef
    mov word [bp - 0x0006], ax       ; 0x99f1
    mov word [bp - 0x0002], 0        ; 0x99f4
@..api_idx_0006_9.l1:
    mov ax, 6                        ; 0x99f9
    imul word [bp - 0x0002]          ; 0x99fc
    mov bx, ax                       ; 0x99ff
    cmp byte [bx - 0x7b59], 0        ; 0x9a01
    jbe short @..api_idx_0006_9.l3   ; 0x9a06
    mov al, byte [bx - 0x7b5a]       ; 0x9a08
    sub ah, ah                       ; 0x9a0c
    cmp ax, word [bp - 0x0006]       ; 0x9a0e
    jne short @..api_idx_0006_9.l3   ; 0x9a11
    push word [bp - 0x0002]          ; 0x9a13
    mov ax, 0x26                     ; 0x9a16
    imul word [bp + 0x4]             ; 0x9a19
    add ax, 0x8504                   ; 0x9a1c
    push ax                          ; 0x9a1f
    call ds_leaf_loc_3ebb            ; 0x9a20
    add sp, byte 4                   ; 0x9a23
    test ax, ax                      ; 0x9a26
    je short @..api_idx_0006_9.l2    ; 0x9a28
    push word [bp - 0x0002]          ; 0x9a2a
    mov ax, 0x26                     ; 0x9a2d
    imul word [bp + 0x4]             ; 0x9a30
    add ax, 0x850a                   ; 0x9a33
    push ax                          ; 0x9a36
    call ds_leaf_loc_3ebb            ; 0x9a37
    add sp, byte 4                   ; 0x9a3a
    test ax, ax                      ; 0x9a3d
    jne short @..api_idx_0006_9.l2   ; 0x9a3f
    mov ax, 4                        ; 0x9a41
    push ax                          ; 0x9a44
    call ds_app_09f0                 ; 0x9a45
    pop cx                           ; 0x9a48
    test ax, ax                      ; 0x9a49
    jne short @..api_idx_0006_9.l2   ; 0x9a4b
    push word [bp - 0x0006]          ; 0x9a4d
    mov ax, 4                        ; 0x9a50
    push ax                          ; 0x9a53
    push word [bp - 0x0002]          ; 0x9a54
    push word [bp + 0x4]             ; 0x9a57
    call api_idx_0002_22             ; 0x9a5a
    add sp, byte 8                   ; 0x9a5d
    push word [bp - 0x0002]          ; 0x9a60
    mov ax, 0xffff                   ; 0x9a63
    push ax                          ; 0x9a66
    push word [bp + 0x4]             ; 0x9a67
    call api_idx_0002_24             ; 0x9a6a
    add sp, byte 6                   ; 0x9a6d
@..api_idx_0006_9.l2:
    ret                              ; 0x9a70
@..api_idx_0006_9.l3:
    inc word [bp - 0x0002]           ; 0x9a71
    mov ax, word [bp - 0x0002]       ; 0x9a74
    cmp ax, strict word 0xb          ; 0x9a77
    jge short @..api_idx_0006_9.l4   ; 0x9a7a
    jmp near @..api_idx_0006_9.l1    ; 0x9a7c
@..api_idx_0006_9.l4:
    ret                              ; 0x9a7f
