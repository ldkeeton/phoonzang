math_loc_aa3f:
    mov ax, 0                        ; 0xaa3f
    call ds_dispatch_f40b            ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call ds_dispatch_b7a9            ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx - 0x7b13], al       ; 0xaa57
    mov al, byte [bx - 0x7b14]       ; 0xaa5b
    cmp al, byte [bx - 0x7b17]       ; 0xaa5f
    jne short @..math_loc_aa3f.l2    ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call ds_dispatch_b7a9            ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..math_loc_aa3f.l2    ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx - 0x7aff]       ; 0xaa79
    mov byte [bx - 0x7b00], al       ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call ds_dispatch_b7a9            ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..math_loc_aa3f.l1    ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx - 0x7b16], 2        ; 0xaa95
    mov byte [bx - 0x7b13], 0        ; 0xaa9a
    ret                              ; 0xaa9f
@..math_loc_aa3f.l1:
    jmp short @..math_loc_aa3f.l3    ; 0xaaa0
@..math_loc_aa3f.l2:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 0x4]             ; 0xaaaa
    call api_idx_0002_25             ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short @..math_loc_aa3f.l3     ; 0xaab5
    ret                              ; 0xaab7
@..math_loc_aa3f.l3:
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
