fpu_loc_6a97:
    mov ax, word [bp + 0x8]          ; 0x6a97
    mov bx, word [bp - 0x0004]       ; 0x6a9a
    mov word [bx + 0x2], ax          ; 0x6a9d
    mov ax, word [bp + 0xe]          ; 0x6aa0
    mov bx, word [bp - 0x0004]       ; 0x6aa3
    mov word [bx + 0x4], ax          ; 0x6aa6
    jmp short loc_6ac6               ; 0x6aa9
jumptable_6aab:
    dw fpu_loc_6a57 - IMAGE_BASE + 0x5055      ; 0x6aab
    dw fpu_loc_6a7a - IMAGE_BASE + 0x5055      ; 0x6aad
    dw fpu_loc_6a7a - IMAGE_BASE + 0x5055      ; 0x6aaf
    dw fpu_loc_6a7a - IMAGE_BASE + 0x5055      ; 0x6ab1
    dw fpu_loc_6a7a - IMAGE_BASE + 0x5055      ; 0x6ab3
    dw fpu_loc_6a85 - IMAGE_BASE + 0x5055      ; 0x6ab5
    dw fpu_loc_6a97 - IMAGE_BASE + 0x5055      ; 0x6ab7
@..api_idx_0004_7.l3:
    cmp ax, strict word 7            ; 0x6ab9
    jae short loc_6ac6               ; 0x6abc
    xchg bx, ax                      ; 0x6abe
    shl bx, 1                        ; 0x6abf
    jmp [cs:bx - 0x450e]             ; 0x6ac1
loc_6ac6:
    ret                              ; 0x6ac6
loc_6ac7:
    mov ax, 0                        ; 0x6ac7
    call ds_aztec_csav               ; 0x6aca
    cmp word [bp + 0x4], byte 0      ; 0x6acd
    jle short @..loc_6ac7.l3         ; 0x6ad1
    mov ax, word [bp + 0x4]          ; 0x6ad3
    cmp ax, strict word 5            ; 0x6ad6
    jl short @..loc_6ac7.l1          ; 0x6ad9
    cmp ax, strict word 8            ; 0x6adb
    je short @..loc_6ac7.l1          ; 0x6ade
    cmp ax, strict word 9            ; 0x6ae0
    jne short @..loc_6ac7.l2         ; 0x6ae3
@..loc_6ac7.l1:
    push ax                          ; 0x6ae5
    call ds_app_0a27                 ; 0x6ae6
    pop cx                           ; 0x6ae9
    jmp short @..loc_6ac7.l3         ; 0x6aea
@..loc_6ac7.l2:
    push word [bp + 0x4]             ; 0x6aec
    call ds_app_29f1                 ; 0x6aef
    pop cx                           ; 0x6af2
    mov ax, 0x10                     ; 0x6af3
    push ax                          ; 0x6af6
    call ds_app_0a27                 ; 0x6af7
    pop cx                           ; 0x6afa
    mov ax, 0x10                     ; 0x6afb
    push ax                          ; 0x6afe
    call ds_app_290d                 ; 0x6aff
    pop cx                           ; 0x6b02
    mov word [bss_598e], 0xffff      ; 0x6b03
@..loc_6ac7.l3:
    ret                              ; 0x6b09
