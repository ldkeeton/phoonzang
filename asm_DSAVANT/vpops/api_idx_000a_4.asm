api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x2947
    call ds_dispatch_f40b            ; 0x294a
    call loc_108d                    ; 0x294d
    mov ax, 1                        ; 0x2950
    push ax                          ; 0x2953
    push ax                          ; 0x2954
    mov ax, 0x7ea                    ; 0x2955
    push ax                          ; 0x2958
    push word [bp + 0x4]             ; 0x2959
    call api_idx_0044                ; 0x295c
    add sp, byte 8                   ; 0x295f
    mov word [bp - 0x0004], ax       ; 0x2962
    mov ax, word [dseg_904e]         ; 0x2965
    mov word [bp - 0x0002], ax       ; 0x2968
    cmp word [bp - 0x0004], byte 1   ; 0x296b
    jne short @..api_idx_000a_4.l1   ; 0x296f
    mov ax, 0xffff                   ; 0x2971
    ret                              ; 0x2974
@..api_idx_000a_4.l1:
    mov ax, word [bp - 0x0002]       ; 0x2975
    mov cx, 0x100                    ; 0x2978
    cwd                              ; 0x297b
    idiv cx                          ; 0x297c
    mov word [bp - 0x0006], ax       ; 0x297e
    mov word [bp - 0x0008], dx       ; 0x2981
    mov ax, 6                        ; 0x2984
    imul dx                          ; 0x2987
    mov bx, ax                       ; 0x2989
    cmp byte [bx + 0x624], 1         ; 0x298b
    jne short @..api_idx_000a_4.l3   ; 0x2990
    call ds_dispatch_ceb1            ; 0x2992
    mov word [bp - 0x000a], ax       ; 0x2995
    cmp ax, strict word 0xffff       ; 0x2998
    jne short @..api_idx_000a_4.l2   ; 0x299b
    mov ax, 0xffff                   ; 0x299d
    ret                              ; 0x29a0
@..api_idx_000a_4.l2:
    mov ax, 0x2c                     ; 0x29a1
    imul word [bp + 0x4]             ; 0x29a4
    mov si, ax                       ; 0x29a7
    mov bx, word [dseg_8482]         ; 0x29a9
    mov byte [bx + si + 0x1f], 0     ; 0x29ad
    mov al, byte [bp - 0x000a]       ; 0x29b1
    push ax                          ; 0x29b4
    mov ax, 0x2c                     ; 0x29b5
    imul word [bp + 0x4]             ; 0x29b8
    mov si, ax                       ; 0x29bb
    mov bx, word [dseg_8482]         ; 0x29bd
    pop ax                           ; 0x29c1
    mov byte [bx + si + 0x20], al    ; 0x29c2
@..api_idx_000a_4.l3:
    mov ax, word [bp - 0x0008]       ; 0x29c5
    cmp ax, strict word 0x13         ; 0x29c8
    je short @..api_idx_000a_4.l4    ; 0x29cb
    cmp ax, strict word 0x58         ; 0x29cd
    je short @..api_idx_000a_4.l4    ; 0x29d0
    cmp ax, strict word 0x42         ; 0x29d2
    jne short @..api_idx_000a_4.l5   ; 0x29d5
@..api_idx_000a_4.l4:
    mov ax, 0x2c                     ; 0x29d7
    imul word [bp + 0x4]             ; 0x29da
    mov si, ax                       ; 0x29dd
    mov bx, word [dseg_8482]         ; 0x29df
    mov byte [bx + si + 0x1f], 0     ; 0x29e3
@..api_idx_000a_4.l5:
    mov ax, word [bp - 0x0006]       ; 0x29e7
    xchg al, ah                      ; 0x29ea
    sub al, al                       ; 0x29ec
    add ax, word [bp - 0x0008]       ; 0x29ee
    ret                              ; 0x29f1
