api_idx_0002:
    mov ax, 0xfffe                   ; 0x28fc
    call ds_dispatch_f40b            ; 0x28ff
    mov ax, word [bp + 0x4]          ; 0x2902
    cmp ax, word [bss_8466]          ; 0x2905
    jle short @..api_idx_0002.l1     ; 0x2909
    mov ax, 0xffff                   ; 0x290b
    ret                              ; 0x290e
@..api_idx_0002.l1:
    mov word [bp - 0x0002], 0        ; 0x290f
    jmp short @..api_idx_0002.l4     ; 0x2914
@..api_idx_0002.l2:
    mov ax, 0x2c                     ; 0x2916
    imul word [bp - 0x0002]          ; 0x2919
    mov si, ax                       ; 0x291c
    mov ax, word [bp + 0x4]          ; 0x291e
    shl ax, 1                        ; 0x2921
    mov bx, ax                       ; 0x2923
    mov bx, word [bx - 0x7b7e]       ; 0x2925
    cmp byte [bx + si + 0x2a], 0xff  ; 0x2929
    jne short @..api_idx_0002.l3     ; 0x292d
    mov ax, 6                        ; 0x292f
    imul word [bp + 0x6]             ; 0x2932
    mov cx, word [bp + 0x8]          ; 0x2935
    shl cx, 1                        ; 0x2938
    add ax, cx                       ; 0x293a
    mov bx, ax                       ; 0x293c
    mov word [bx - 0x6f42], 1        ; 0x293e
    mov ax, 0xa                      ; 0x2944
    imul word [bp + 0x4]             ; 0x2947
    add ax, word [bp - 0x0002]       ; 0x294a
    mov word [bx - 0x7bc6], ax       ; 0x294d
    mov ax, 0xa                      ; 0x2951
    imul word [bp + 0x6]             ; 0x2954
    add ax, word [bp + 0x8]          ; 0x2957
    mov cx, word [bp + 0x4]          ; 0x295a
    shl cx, 1                        ; 0x295d
    mov bx, cx                       ; 0x295f
    mov bx, word [bx - 0x7b7e]       ; 0x2961
    mov byte [bx + si + 0x2a], al    ; 0x2965
    mov ax, 0xffff                   ; 0x2968
    push ax                          ; 0x296b
    push word [bp + 0x8]             ; 0x296c
    push word [bp + 0x6]             ; 0x296f
    push word [bp + 0x4]             ; 0x2972
    call api_idx_000a_2              ; 0x2975
    add sp, byte 8                   ; 0x2978
    mov ax, 0                        ; 0x297b
    ret                              ; 0x297e
@..api_idx_0002.l3:
    inc word [bp - 0x0002]           ; 0x297f
@..api_idx_0002.l4:
    mov ax, word [bp + 0x4]          ; 0x2982
    shl ax, 1                        ; 0x2985
    mov bx, ax                       ; 0x2987
    mov bx, word [bx - 0x7b7e]       ; 0x2989
    mov al, byte [bx + 0x1a1]        ; 0x298d
    sub ah, ah                       ; 0x2991
    cmp ax, word [bp - 0x0002]       ; 0x2993
    jle short @..api_idx_0002.l5     ; 0x2996
    jmp near @..api_idx_0002.l2      ; 0x2998
@..api_idx_0002.l5:
    mov ax, 0xffff                   ; 0x299b
    ret                              ; 0x299e
loc_299f:
    mov ax, 0                        ; 0x299f
    call ds_dispatch_f40b            ; 0x29a2
    jmp short @..local.l61           ; 0x29a5
@..local.l59:
    push word [bp + 0x8]             ; 0x29a7
    push word [bp + 0x6]             ; 0x29aa
    push word [bp + 0x4]             ; 0x29ad
    call api_idx_0002                ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short @..local.l60           ; 0x29b8
    ret                              ; 0x29ba
@..local.l60:
    inc word [bp + 0x4]              ; 0x29bb
@..local.l61:
    cmp word [bp + 0x4], byte 3      ; 0x29be
    jle short @..local.l59           ; 0x29c2
    ret                              ; 0x29c4
