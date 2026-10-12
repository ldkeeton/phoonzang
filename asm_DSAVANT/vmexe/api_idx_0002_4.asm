api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x1f98
    call ds_aztec_csav               ; 0x1f9b
    mov ax, 0x2c                     ; 0x1f9e
    imul word [bp + 0x6]             ; 0x1fa1
    mov si, ax                       ; 0x1fa4
    mov ax, word [bp + 0x4]          ; 0x1fa6
    shl ax, 1                        ; 0x1fa9
    mov bx, ax                       ; 0x1fab
    mov bx, word [bx - 0x7b7e]       ; 0x1fad
    mov al, byte [bx + si + 0x22]    ; 0x1fb1
    sub ah, ah                       ; 0x1fb4
    cmp ax, word [bp + 0xc]          ; 0x1fb6
    jge short @..api_idx_0002_4.l1   ; 0x1fb9
    push word [bp + 0x6]             ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbe
    call loc_1f5d                    ; 0x1fc1
    add sp, byte 4                   ; 0x1fc4
    test ax, ax                      ; 0x1fc7
    je short @..api_idx_0002_4.l2    ; 0x1fc9
@..api_idx_0002_4.l1:
    ret                              ; 0x1fcb
@..api_idx_0002_4.l2:
    cmp word [bp + 0x4], byte 0      ; 0x1fcc
    jne short @..api_idx_0002_4.l3   ; 0x1fd0
    mov ax, 0xe                      ; 0x1fd2
    push ax                          ; 0x1fd5
    mov ax, word [bss_8490]          ; 0x1fd6
    add ax, 0x9a                     ; 0x1fd9
    push ax                          ; 0x1fdc
    mov ax, 0x248                    ; 0x1fdd
    imul word [bp + 0x6]             ; 0x1fe0
    add ax, 0x5d9c                   ; 0x1fe3
    push ax                          ; 0x1fe6
    call ds_aztec_movmem             ; 0x1fe7
    add sp, byte 6                   ; 0x1fea
@..api_idx_0002_4.l3:
    mov word [bp - 0x0002], 0        ; 0x1fed
    cmp word [bp + 0xa], byte 0      ; 0x1ff2
    je short @..api_idx_0002_4.l4    ; 0x1ff6
    mov ax, 0x64                     ; 0x1ff8
    push ax                          ; 0x1ffb
    call ds_app_09f0                 ; 0x1ffc
    pop cx                           ; 0x1fff
    push ax                          ; 0x2000
    mov ax, word [bp + 0x4]          ; 0x2001
    shl ax, 1                        ; 0x2004
    mov bx, ax                       ; 0x2006
    mov bx, word [bx - 0x7b70]       ; 0x2008
    mov si, word [bp + 0xa]          ; 0x200c
    mov al, byte [bx + si + 0x9a]    ; 0x200f
    sub ah, ah                       ; 0x2013
    mov cx, ax                       ; 0x2015
    sub ax, word [bp + 0xe]          ; 0x2017
    mov cx, ax                       ; 0x201a
    pop ax                           ; 0x201c
    cmp ax, cx                       ; 0x201d
    jle short @..api_idx_0002_4.l6   ; 0x201f
@..api_idx_0002_4.l4:
    mov al, byte [bp + 0xc]          ; 0x2021
    push ax                          ; 0x2024
    mov ax, 0x2c                     ; 0x2025
    imul word [bp + 0x6]             ; 0x2028
    mov si, ax                       ; 0x202b
    mov ax, word [bp + 0x4]          ; 0x202d
    shl ax, 1                        ; 0x2030
    mov bx, ax                       ; 0x2032
    mov bx, word [bx - 0x7b7e]       ; 0x2034
    pop ax                           ; 0x2038
    mov byte [bx + si + 0x22], al    ; 0x2039
    cmp word [bp + 0xc], byte 3      ; 0x203c
    jl short @..api_idx_0002_4.l5    ; 0x2040
    push word [bp + 0x6]             ; 0x2042
    push word [bp + 0x4]             ; 0x2045
    call api_idx_0004_7              ; 0x2048
    add sp, byte 4                   ; 0x204b
    cmp word [bp + 0x4], byte 0      ; 0x204e
    jne short @..api_idx_0002_4.l5   ; 0x2052
    mov ax, 0x248                    ; 0x2054
    imul word [bp + 0x6]             ; 0x2057
    mov bx, ax                       ; 0x205a
    mov al, byte [bx + 0x5e2c]       ; 0x205c
    sub ah, ah                       ; 0x2060
    add ax, strict word 8            ; 0x2062
    mov word [bp - 0x0002], ax       ; 0x2065
@..api_idx_0002_4.l5:
    push word [bp - 0x0002]          ; 0x2068
    mov ax, 1                        ; 0x206b
    push ax                          ; 0x206e
    push word [bp + 0x8]             ; 0x206f
    push word [bp + 0x6]             ; 0x2072
    push word [bp + 0x4]             ; 0x2075
    call loc_1e35                    ; 0x2078
    add sp, byte 0x0a                ; 0x207b
    jmp short @..api_idx_0002_4.l7   ; 0x207e
@..api_idx_0002_4.l6:
    cmp word [bp + 0x12], byte 1     ; 0x2080
    jne short @..api_idx_0002_4.l7   ; 0x2084
    mov ax, 0                        ; 0x2086
    push ax                          ; 0x2089
    push ax                          ; 0x208a
    mov ax, 0xd8f                    ; 0x208b
    push ax                          ; 0x208e
    push word [bp + 0x6]             ; 0x208f
    push word [bp + 0x4]             ; 0x2092
    call loc_1e35                    ; 0x2095
    add sp, byte 0x0a                ; 0x2098
@..api_idx_0002_4.l7:
    ret                              ; 0x209b
