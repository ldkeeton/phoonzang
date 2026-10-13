api_idx_0002_27:
    mov ax, 0xfffe                   ; 0xa9a4
    call ds_aztec_csav               ; 0xa9a7
    mov ax, 0x26                     ; 0xa9aa
    imul word [bp + 0x4]             ; 0xa9ad
    mov bx, ax                       ; 0xa9b0
    mov al, byte [bx - 0x7b12]       ; 0xa9b2
    sub ah, ah                       ; 0xa9b6
    mov word [bp - 0x0002], ax       ; 0xa9b8
    inc byte [bx - 0x7b13]           ; 0xa9bb
    mov al, byte [bx - 0x7b13]       ; 0xa9bf
    sub ah, ah                       ; 0xa9c3
    push ax                          ; 0xa9c5
    call ds_app_09f0                 ; 0xa9c6
    pop cx                           ; 0xa9c9
    cmp ax, strict word 0x18         ; 0xa9ca
    jle short @..api_idx_0002_27.l1  ; 0xa9cd
    mov ax, 0x26                     ; 0xa9cf
    imul word [bp + 0x4]             ; 0xa9d2
    mov bx, ax                       ; 0xa9d5
    mov al, byte [bx - 0x7b15]       ; 0xa9d7
    sub ah, ah                       ; 0xa9db
    push ax                          ; 0xa9dd
    mov ax, 7                        ; 0xa9de
    push ax                          ; 0xa9e1
    push word [bp - 0x0002]          ; 0xa9e2
    push word [bp + 0x4]             ; 0xa9e5
    call api_idx_0002_22             ; 0xa9e8
    add sp, byte 8                   ; 0xa9eb
    mov ax, 1                        ; 0xa9ee
    push ax                          ; 0xa9f1
    mov ax, word [bp - 0x0002]       ; 0xa9f2
    add ax, strict word 0xc          ; 0xa9f5
    push ax                          ; 0xa9f8
    mov ax, 0x26                     ; 0xa9f9
    imul word [bp + 0x4]             ; 0xa9fc
    add ax, 0x850a                   ; 0xa9ff
    push ax                          ; 0xaa02
    call ds_leaf_loc_3e88            ; 0xaa03
    add sp, byte 6                   ; 0xaa06
    mov ax, 0x26                     ; 0xaa09
    imul word [bp + 0x4]             ; 0xaa0c
    mov bx, ax                       ; 0xaa0f
    mov byte [bx - 0x7b16], 0        ; 0xaa11
    mov ax, 6                        ; 0xaa16
    imul word [bp - 0x0002]          ; 0xaa19
    mov bx, ax                       ; 0xaa1c
    cmp byte [bx - 0x7b56], 0xff     ; 0xaa1e
    je short @..api_idx_0002_27.l1   ; 0xaa23
    mov al, byte [bx - 0x7b56]       ; 0xaa25
    push ax                          ; 0xaa29
    mov ax, 0x26                     ; 0xaa2a
    imul word [bp + 0x4]             ; 0xaa2d
    mov bx, ax                       ; 0xaa30
    pop ax                           ; 0xaa32
    mov byte [bx - 0x7b15], al       ; 0xaa33
    push word [bp + 0x4]             ; 0xaa37
    call loc_946a                    ; 0xaa3a
    pop cx                           ; 0xaa3d
@..api_idx_0002_27.l1:
    ret                              ; 0xaa3e
loc_aa3f:
    mov ax, 0                        ; 0xaa3f
    call ds_aztec_csav               ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call ds_app_09f0                 ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx - 0x7b13], al       ; 0xaa57
    mov al, byte [bx - 0x7b14]       ; 0xaa5b
    cmp al, byte [bx - 0x7b17]       ; 0xaa5f
    jne short @..loc_aa3f.l2         ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call ds_app_09f0                 ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..loc_aa3f.l2         ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx - 0x7aff]       ; 0xaa79
    mov byte [bx - 0x7b00], al       ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call ds_app_09f0                 ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..loc_aa3f.l1         ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx - 0x7b16], 2        ; 0xaa95
    mov byte [bx - 0x7b13], 0        ; 0xaa9a
    ret                              ; 0xaa9f
@..loc_aa3f.l1:
    jmp short @..loc_aa3f.l3         ; 0xaaa0
@..loc_aa3f.l2:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 0x4]             ; 0xaaaa
    call api_idx_0002_25             ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short @..loc_aa3f.l3          ; 0xaab5
    ret                              ; 0xaab7
@..loc_aa3f.l3:
    mov ax, 0xffff                   ; 0xaab8
    push ax                          ; 0xaabb
    push word [bp + 0x4]             ; 0xaabc
    call api_idx_0008_5              ; 0xaabf
    add sp, byte 4                   ; 0xaac2
    mov ax, 0x26                     ; 0xaac5
    imul word [bp + 0x4]             ; 0xaac8
    mov bx, ax                       ; 0xaacb
    mov byte [bx - 0x7b16], 6        ; 0xaacd
    ret                              ; 0xaad2
loc_aad3:
    mov ax, 0                        ; 0xaad3
    call ds_aztec_csav               ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..loc_aad3.l1          ; 0xaae6
    ret                              ; 0xaae8
@..loc_aad3.l1:
    mov al, byte [bx - 0x7b16]       ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..loc_aad3.l3          ; 0xaaef
    push word [bp + 0x4]             ; 0xaaf2
    call api_idx_0004_15             ; 0xaaf5
    pop cx                           ; 0xaaf8
    jmp near @..loc_aad3.l4          ; 0xaaf9
    mov ax, 5                        ; 0xaafc
    push ax                          ; 0xaaff
    push ax                          ; 0xab00
    push word [bp + 0x4]             ; 0xab01
    call api_idx_0002_25             ; 0xab04
    add sp, byte 6                   ; 0xab07
    jmp near @..loc_aad3.l4          ; 0xab0a
    push word [bp + 0x4]             ; 0xab0d
    call api_idx_0010_5              ; 0xab10
    pop cx                           ; 0xab13
    jmp near @..loc_aad3.l4          ; 0xab14
    mov ax, 0xffff                   ; 0xab17
    push ax                          ; 0xab1a
    push word [bp + 0x4]             ; 0xab1b
    call api_idx_0002_26             ; 0xab1e
    add sp, byte 4                   ; 0xab21
    jmp short @..loc_aad3.l4         ; 0xab24
    push word [bp + 0x4]             ; 0xab26
    call api_idx_0002_27             ; 0xab29
    pop cx                           ; 0xab2c
    jmp short @..loc_aad3.l4         ; 0xab2d
    mov ax, 0x26                     ; 0xab2f
    imul word [bp + 0x4]             ; 0xab32
    mov bx, ax                       ; 0xab35
    mov al, byte [bx - 0x7b12]       ; 0xab37
    sub ah, ah                       ; 0xab3b
    push ax                          ; 0xab3d
    push word [bp + 0x4]             ; 0xab3e
    call api_idx_0002_26             ; 0xab41
    add sp, byte 4                   ; 0xab44
    jmp short @..loc_aad3.l4         ; 0xab47
    push word [bp + 0x4]             ; 0xab49
    call loc_aa3f                    ; 0xab4c
    pop cx                           ; 0xab4f
    jmp short @..loc_aad3.l4         ; 0xab50
    mov ax, 0xffff                   ; 0xab52
    push ax                          ; 0xab55
    push word [bp + 0x4]             ; 0xab56
    call api_idx_0002_26             ; 0xab59
    add sp, byte 4                   ; 0xab5c
    mov ax, 0x26                     ; 0xab5f
    imul word [bp + 0x4]             ; 0xab62
    mov bx, ax                       ; 0xab65
    cmp byte [bx - 0x7b16], 7        ; 0xab67
    jne short @..loc_aad3.l2         ; 0xab6c
    mov ax, 0xffff                   ; 0xab6e
    push ax                          ; 0xab71
    push word [bp + 0x4]             ; 0xab72
    call api_idx_0002_26             ; 0xab75
    add sp, byte 4                   ; 0xab78
@..loc_aad3.l2:
    jmp short @..loc_aad3.l4         ; 0xab7b
    db 0x39, 0xfb, 0x43, 0xfb, 0x54, 0xfb, 0x5e
loc_ab84:
    sti                              ; 0xab84
    db 0x6d, 0xfb, 0x76, 0xfb, 0x90, 0xfb, 0x99, 0xfb
@..loc_aad3.l3:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..loc_aad3.l4         ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx - 0x043c]             ; 0xab95
@..loc_aad3.l4:
    ret                              ; 0xab9a
