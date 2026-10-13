api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x3a96
    call aztec_csav                  ; 0x3a99
    mov ax, 0                        ; 0x3a9c
    push ax                          ; 0x3a9f
    call api_idx_0006                ; 0x3aa0
    pop cx                           ; 0x3aa3
    call loc_10b6                    ; 0x3aa4
    mov ax, 1                        ; 0x3aa7
    push ax                          ; 0x3aaa
    push ax                          ; 0x3aab
    mov ax, 0x7ea                    ; 0x3aac
    push ax                          ; 0x3aaf
    push word [bp + 0x4]             ; 0x3ab0
    call api_idx_0044                ; 0x3ab3
    add sp, byte 8                   ; 0x3ab6
    test ax, ax                      ; 0x3ab9
    je short @..api_idx_0004_10.l1   ; 0x3abb
    jmp near @..api_idx_0004_10.l5   ; 0x3abd
@..api_idx_0004_10.l1:
    mov ax, word [bss_904e]          ; 0x3ac0
    mov cx, 0x100                    ; 0x3ac3
    cwd                              ; 0x3ac6
    idiv cx                          ; 0x3ac7
    mov word [bp - 0x0004], ax       ; 0x3ac9
    mov word [bp - 0x0002], dx       ; 0x3acc
    mov ax, 6                        ; 0x3acf
    imul dx                          ; 0x3ad2
    mov bx, ax                       ; 0x3ad4
    cmp byte [bx + 0x624], 1         ; 0x3ad6
    jne short @..api_idx_0004_10.l2  ; 0x3adb
    call ds_app_io_20f8              ; 0x3add
    mov word [bss_9650], ax          ; 0x3ae0
    cmp ax, strict word 0xffff       ; 0x3ae3
    jne short @..api_idx_0004_10.l2  ; 0x3ae6
    mov word [bp - 0x0002], 0xffff   ; 0x3ae8
@..api_idx_0004_10.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x3aed
    jge short @..api_idx_0004_10.l3  ; 0x3af1
    jmp near @..api_idx_0004_10.l5   ; 0x3af3
@..api_idx_0004_10.l3:
    mov ax, 6                        ; 0x3af6
    imul word [bp - 0x0002]          ; 0x3af9
    mov bx, ax                       ; 0x3afc
    mov al, byte [bx + 0x622]        ; 0x3afe
    sub ah, ah                       ; 0x3b02
    imul word [bp - 0x0004]          ; 0x3b04
    push ax                          ; 0x3b07
    mov ax, 0x248                    ; 0x3b08
    imul word [bp + 0x4]             ; 0x3b0b
    mov cx, ax                       ; 0x3b0e
    mov al, byte [bx + 0x620]        ; 0x3b10
    sub ah, ah                       ; 0x3b14
    mov dx, ax                       ; 0x3b16
    shl ax, 1                        ; 0x3b18
    shl ax, 1                        ; 0x3b1a
    mov dx, ax                       ; 0x3b1c
    add cx, ax                       ; 0x3b1e
    mov bx, cx                       ; 0x3b20
    pop ax                           ; 0x3b22
    sub word [bx + 0x5c1c], ax       ; 0x3b23
    push word [bss_9650]             ; 0x3b27
    push word [bp - 0x0004]          ; 0x3b2b
    push word [bp - 0x0002]          ; 0x3b2e
    push word [bp + 0x4]             ; 0x3b31
    call api_idx_0008_3              ; 0x3b34
    add sp, byte 8                   ; 0x3b37
    push word [bp - 0x0004]          ; 0x3b3a
    call ds_app_09f0                 ; 0x3b3d
    pop cx                           ; 0x3b40
    push ax                          ; 0x3b41
    mov ax, 6                        ; 0x3b42
    imul word [bp - 0x0002]          ; 0x3b45
    mov bx, ax                       ; 0x3b48
    mov al, byte [bx + 0x621]        ; 0x3b4a
    sub ah, ah                       ; 0x3b4e
    mov cx, ax                       ; 0x3b50
    pop ax                           ; 0x3b52
    add ax, cx                       ; 0x3b53
    add ax, word [bp - 0x0004]       ; 0x3b55
    push ax                          ; 0x3b58
    mov ax, 0x248                    ; 0x3b59
    imul word [bp + 0x4]             ; 0x3b5c
    mov bx, ax                       ; 0x3b5f
    pop ax                           ; 0x3b61
    sub word [bx + 0x5c10], ax       ; 0x3b62
    cmp word [bx + 0x5c10], byte 0   ; 0x3b66
    jge short @..api_idx_0004_10.l4  ; 0x3b6b
    mov word [bx + 0x5c10], 0        ; 0x3b6d
    mov ax, 6                        ; 0x3b73
    push ax                          ; 0x3b76
    call ds_app_09f0                 ; 0x3b77
    pop cx                           ; 0x3b7a
    add ax, strict word 6            ; 0x3b7b
    push ax                          ; 0x3b7e
    mov ax, 0x248                    ; 0x3b7f
    imul word [bp + 0x4]             ; 0x3b82
    mov bx, ax                       ; 0x3b85
    pop ax                           ; 0x3b87
    mov byte [bx + 0x5d5c], al       ; 0x3b88
@..api_idx_0004_10.l4:
    mov ax, 1                        ; 0x3b8c
    push ax                          ; 0x3b8f
    push word [bp + 0x4]             ; 0x3b90
    call ds_app_1d81                 ; 0x3b93
    add sp, byte 4                   ; 0x3b96
@..api_idx_0004_10.l5:
    ret                              ; 0x3b99
