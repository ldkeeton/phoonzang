; auto-generated
api_idx_0004_QUPL:
    mov ax, 0xfffc                   ; 0x1a5f
    call aztec_csav                  ; 0x1a62
    mov word [bss_90e4], 1           ; 0x1a65
    call flush_keyboard              ; 0x1a6b
    mov ax, word [bp + 0x4]          ; 0x1a6e
    cwd                              ; 0x1a71
    les bx, word [dseg_0002]         ; 0x1a72
    mov cx, word [es:bx]             ; 0x1a76
    mov bx, word [es:bx + 0x2]       ; 0x1a79
    add ax, cx                       ; 0x1a7d
    adc dx, bx                       ; 0x1a7f
    mov word [bp - 0x0002], dx       ; 0x1a81
    mov word [bp - 0x0004], ax       ; 0x1a84
@..api_idx_0004_QUPL.l1:
    les bx, word [dseg_0002]         ; 0x1a87
    mov ax, word [es:bx]             ; 0x1a8b
    mov dx, word [es:bx + 0x2]       ; 0x1a8e
    cmp dx, word [bp - 0x0002]       ; 0x1a92
    jg short @..api_idx_0004_QUPL.l2 ; 0x1a95
    jne short @..api_idx_0004_QUPL.l3 ; 0x1a97
    cmp ax, word [bp - 0x0004]       ; 0x1a99
    jb short @..api_idx_0004_QUPL.l3 ; 0x1a9c
@..api_idx_0004_QUPL.l2:
    jmp short @..api_idx_0004_QUPL.l6 ; 0x1a9e
@..api_idx_0004_QUPL.l3:
    call ds_app_TMKJ                 ; 0x1aa0
    test ax, ax                      ; 0x1aa3
    je short @..api_idx_0004_QUPL.l4 ; 0x1aa5
    ret                              ; 0x1aa7
@..api_idx_0004_QUPL.l4:
    mov ax, 1                        ; 0x1aa8
    push ax                          ; 0x1aab
    call poll_filtered_key           ; 0x1aac
    pop cx                           ; 0x1aaf
    test ax, ax                      ; 0x1ab0
    je short @..api_idx_0004_QUPL.l5 ; 0x1ab2
    mov ax, 1                        ; 0x1ab4
    push ax                          ; 0x1ab7
    call get_filtered_key            ; 0x1ab8
    pop cx                           ; 0x1abb
    cmp al, 0xd                      ; 0x1abc
    jne short @..api_idx_0004_QUPL.l5 ; 0x1abe
    ret                              ; 0x1ac0
@..api_idx_0004_QUPL.l5:
    call api_idx_0006_TMLR           ; 0x1ac1
    jmp short @..api_idx_0004_QUPL.l1 ; 0x1ac4
@..api_idx_0004_QUPL.l6:
    ret                              ; 0x1ac6
