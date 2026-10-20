; auto-generated
api_idx_0004_PHNO:
    mov ax, 0xfffc                   ; 0x28a1
    call aztec_csav                  ; 0x28a4
    mov word [bp - 0x0004], 0        ; 0x28a7
    mov word [bp - 0x0002], 0        ; 0x28ac
@..api_idx_0004_PHNO.l1:
    push word [bp - 0x0002]          ; 0x28b1
    mov ax, bss_8822                 ; 0x28b4
    push ax                          ; 0x28b7
    call ds_leaf_loc_PRVP            ; 0x28b8
    add sp, byte 4                   ; 0x28bb
    test ax, ax                      ; 0x28be
    je short @..api_idx_0004_PHNO.l2 ; 0x28c0
    mov ax, 1                        ; 0x28c2
    push ax                          ; 0x28c5
    push word [bp - 0x0002]          ; 0x28c6
    mov al, byte [bss_91c6]          ; 0x28c9
    cbw                              ; 0x28cc
    mov cx, 0x26                     ; 0x28cd
    imul cx                          ; 0x28d0
    add ax, 0x8504                   ; 0x28d2
    push ax                          ; 0x28d5
    call set_bitmap_bit              ; 0x28d6
    add sp, byte 6                   ; 0x28d9
@..api_idx_0004_PHNO.l2:
    push word [bp - 0x0002]          ; 0x28dc
    mov al, byte [bss_91c6]          ; 0x28df
    cbw                              ; 0x28e2
    mov cx, 0x26                     ; 0x28e3
    imul cx                          ; 0x28e6
    add ax, 0x8504                   ; 0x28e8
    push ax                          ; 0x28eb
    call ds_leaf_loc_PRVP            ; 0x28ec
    add sp, byte 4                   ; 0x28ef
    test ax, ax                      ; 0x28f2
    je short @..api_idx_0004_PHNO.l3 ; 0x28f4
    mov ax, 1                        ; 0x28f6
    push ax                          ; 0x28f9
    push word [bp - 0x0002]          ; 0x28fa
    mov ax, bss_8822                 ; 0x28fd
    push ax                          ; 0x2900
    call set_bitmap_bit              ; 0x2901
    add sp, byte 6                   ; 0x2904
@..api_idx_0004_PHNO.l3:
    push word [bp - 0x0002]          ; 0x2907
    mov al, byte [bss_91c6]          ; 0x290a
    cbw                              ; 0x290d
    mov cx, 0x26                     ; 0x290e
    imul cx                          ; 0x2911
    add ax, 0x8504                   ; 0x2913
    push ax                          ; 0x2916
    call ds_leaf_loc_PRVP            ; 0x2917
    add sp, byte 4                   ; 0x291a
    test ax, ax                      ; 0x291d
    je short @..api_idx_0004_PHNO.l4 ; 0x291f
    push word [bp - 0x0002]          ; 0x2921
    call api_idx_0002_OUKN           ; 0x2924
    pop cx                           ; 0x2927
    mov word [bp - 0x0004], 1        ; 0x2928
@..api_idx_0004_PHNO.l4:
    mov ax, 3                        ; 0x292d
    push ax                          ; 0x2930
    call random_below                ; 0x2931
    pop cx                           ; 0x2934
    test ax, ax                      ; 0x2935
    jne short @..api_idx_0004_PHNO.l5 ; 0x2937
    mov ax, 1                        ; 0x2939
    push ax                          ; 0x293c
    push ax                          ; 0x293d
    mov ax, 0xffff                   ; 0x293e
    push ax                          ; 0x2941
    call api_idx_0038_POGI           ; 0x2942
    add sp, byte 6                   ; 0x2945
    test ax, ax                      ; 0x2948
    jne short @..api_idx_0004_PHNO.l5 ; 0x294a
    mov word [bp - 0x0004], 1        ; 0x294c
@..api_idx_0004_PHNO.l5:
    inc word [bp - 0x0002]           ; 0x2951
    mov ax, word [bp - 0x0002]       ; 0x2954
    cmp ax, strict word 0xb          ; 0x2957
    jge short @..api_idx_0004_PHNO.l6 ; 0x295a
    jmp near @..api_idx_0004_PHNO.l1 ; 0x295c
@..api_idx_0004_PHNO.l6:
    mov ax, word [bp - 0x0004]       ; 0x295f
    ret                              ; 0x2962
