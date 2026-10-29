; auto-generated
loc_LLMG:
    mov ax, 0                        ; 0x47bb
    call aztec_csav                  ; 0x47be
    mov ax, 0x16                     ; 0x47c1
    push ax                          ; 0x47c4
    mov ax, word [bp + 6]            ; 0x47c5
    add ax, strict word 8            ; 0x47c8
    push ax                          ; 0x47cb
    mov ax, 6                        ; 0x47cc
    imul word [bp + 8]               ; 0x47cf
    add ax, word [bp + 4]            ; 0x47d2
    push ax                          ; 0x47d5
    push word [bp + 6]               ; 0x47d6
    push word [bp + 4]               ; 0x47d9
    call loc_MNNG                    ; 0x47dc
    add sp, byte 0xa                 ; 0x47df
    mov ax, word [bp + 6]            ; 0x47e2
    add ax, strict word 9            ; 0x47e5
    push ax                          ; 0x47e8
    mov ax, 6                        ; 0x47e9
    imul word [bp + 8]               ; 0x47ec
    add ax, word [bp + 4]            ; 0x47ef
    inc ax                           ; 0x47f2
    push ax                          ; 0x47f3
    mov ax, word [bp + 6]            ; 0x47f4
    dec ax                           ; 0x47f7
    push ax                          ; 0x47f8
    mov ax, word [bp + 4]            ; 0x47f9
    dec ax                           ; 0x47fc
    push ax                          ; 0x47fd
    call call_show_area              ; 0x47fe
    add sp, byte 8                   ; 0x4801
    mov ax, 0                        ; 0x4804
    push ax                          ; 0x4807
    mov ax, word [bp + 6]            ; 0x4808
    add ax, strict word 8            ; 0x480b
    push ax                          ; 0x480e
    mov ax, 6                        ; 0x480f
    imul word [bp + 8]               ; 0x4812
    add ax, word [bp + 4]            ; 0x4815
    push ax                          ; 0x4818
    push word [bp + 6]               ; 0x4819
    push word [bp + 4]               ; 0x481c
    call loc_MNNG                    ; 0x481f
    add sp, byte 0xa                 ; 0x4822
    ret                              ; 0x4825
