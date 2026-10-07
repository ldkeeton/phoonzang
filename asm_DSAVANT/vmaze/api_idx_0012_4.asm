api_idx_0012_4:
    mov ax, 0xffee                   ; 0x9ef7
    call ds_dispatch_f40b            ; 0x9efa
    mov ax, 0xf                      ; 0x9efd
    push ax                          ; 0x9f00
    call ds_dispatch_b7a9            ; 0x9f01
    pop cx                           ; 0x9f04
    mov cx, ax                       ; 0x9f05
    add ax, strict word 0xf          ; 0x9f07
    mov cx, ax                       ; 0x9f0a
    mov ax, 0                        ; 0x9f0c
    sub ax, cx                       ; 0x9f0f
    push ax                          ; 0x9f11
    push word [bp + 0x6]             ; 0x9f12
    push word [bp + 0x4]             ; 0x9f15
    call math_loc_9658               ; 0x9f18
    add sp, byte 6                   ; 0x9f1b
    mov ax, 0xf                      ; 0x9f1e
    push ax                          ; 0x9f21
    call ds_dispatch_b7a9            ; 0x9f22
    pop cx                           ; 0x9f25
    mov cx, ax                       ; 0x9f26
    add ax, strict word 0xf          ; 0x9f28
    mov cx, ax                       ; 0x9f2b
    mov ax, 0                        ; 0x9f2d
    sub ax, cx                       ; 0x9f30
    push ax                          ; 0x9f32
    push word [bp + 0x4]             ; 0x9f33
    push word [bp + 0x6]             ; 0x9f36
    call math_loc_9658               ; 0x9f39
    add sp, byte 6                   ; 0x9f3c
    mov ax, 0x26                     ; 0x9f3f
    imul word [bp + 0x6]             ; 0x9f42
    mov bx, ax                       ; 0x9f45
    cmp byte [bx - 0x7b16], 1        ; 0x9f47
    je short @..api_idx_0012_4.l1    ; 0x9f4c
    cmp word [bp + 0x6], byte 0x13   ; 0x9f4e
    jne short @..api_idx_0012_4.l2   ; 0x9f52
@..api_idx_0012_4.l1:
    mov ax, 1                        ; 0x9f54
    jmp short @..api_idx_0012_4.l3   ; 0x9f57
@..api_idx_0012_4.l2:
    mov ax, 0                        ; 0x9f59
@..api_idx_0012_4.l3:
    mov word [bp - 0x0010], ax       ; 0x9f5c
    mov word [bp - 0x0006], 0        ; 0x9f5f
    mov word [bp - 0x000a], 0        ; 0x9f64
    mov word [bp - 0x0008], 0        ; 0x9f69
    mov word [bp - 0x000c], 0        ; 0x9f6e
    mov word [bp - 0x000e], 0        ; 0x9f73
@..api_idx_0012_4.l4:
    mov ax, 0x26                     ; 0x9f78
    imul word [bp + 0x6]             ; 0x9f7b
    mov bx, ax                       ; 0x9f7e
    mov al, byte [bx - 0x7b00]       ; 0x9f80
    cbw                              ; 0x9f84
    mov cx, 4                        ; 0x9f85
    cwd                              ; 0x9f88
    idiv cx                          ; 0x9f89
    push ax                          ; 0x9f8b
    call ds_dispatch_b7a9            ; 0x9f8c
    pop cx                           ; 0x9f8f
    inc ax                           ; 0x9f90
    mov word [bp - 0x0006], ax       ; 0x9f91
    add word [bp - 0x000a], ax       ; 0x9f94
    mov ax, 0x26                     ; 0x9f97
    imul word [bp + 0x4]             ; 0x9f9a
    mov bx, ax                       ; 0x9f9d
    mov al, byte [bx - 0x7b00]       ; 0x9f9f
    cbw                              ; 0x9fa3
    mov cx, 4                        ; 0x9fa4
    cwd                              ; 0x9fa7
    idiv cx                          ; 0x9fa8
    push ax                          ; 0x9faa
    call ds_dispatch_b7a9            ; 0x9fab
    pop cx                           ; 0x9fae
    inc ax                           ; 0x9faf
    mov word [bp - 0x0008], ax       ; 0x9fb0
    add word [bp - 0x000c], ax       ; 0x9fb3
    mov ax, 0x26                     ; 0x9fb6
    imul word [bp + 0x4]             ; 0x9fb9
    mov bx, ax                       ; 0x9fbc
    mov al, byte [bx - 0x7b00]       ; 0x9fbe
    cbw                              ; 0x9fc2
    push ax                          ; 0x9fc3
    call ds_dispatch_b7a9            ; 0x9fc4
    pop cx                           ; 0x9fc7
    cmp ax, word [bp - 0x000a]       ; 0x9fc8
    jge short @..api_idx_0012_4.l5   ; 0x9fcb
    mov ax, 0x26                     ; 0x9fcd
    imul word [bp + 0x4]             ; 0x9fd0
    mov bx, ax                       ; 0x9fd3
    mov byte [bx - 0x7b16], 7        ; 0x9fd5
    mov word [bp - 0x000e], 0xffff   ; 0x9fda
@..api_idx_0012_4.l5:
    cmp word [bp - 0x000e], byte 0   ; 0x9fdf
    je short @..api_idx_0012_4.l6    ; 0x9fe3
    jmp near @..api_idx_0012_4.l8    ; 0x9fe5
@..api_idx_0012_4.l6:
    mov ax, word [bp - 0x0008]       ; 0x9fe8
    mov cx, 2                        ; 0x9feb
    cwd                              ; 0x9fee
    idiv cx                          ; 0x9fef
    push ax                          ; 0x9ff1
    call ds_dispatch_b7a9            ; 0x9ff2
    pop cx                           ; 0x9ff5
    push ax                          ; 0x9ff6
    mov ax, word [bp - 0x0008]       ; 0x9ff7
    mov cx, 2                        ; 0x9ffa
    cwd                              ; 0x9ffd
    idiv cx                          ; 0x9ffe
    mov cx, ax                       ; 0xa000
    pop ax                           ; 0xa002
    add ax, cx                       ; 0xa003
    push ax                          ; 0xa005
    mov ax, 0x26                     ; 0xa006
    imul word [bp + 0x6]             ; 0xa009
    mov bx, ax                       ; 0xa00c
    mov al, byte [bx - 0x7b00]       ; 0xa00e
    cbw                              ; 0xa012
    mov cx, ax                       ; 0xa013
    pop ax                           ; 0xa015
    cmp ax, cx                       ; 0xa016
    jle short @..api_idx_0012_4.l7   ; 0xa018
    push word [bp + 0x6]             ; 0xa01a
    push word [bp + 0x4]             ; 0xa01d
    call api_idx_0004_16             ; 0xa020
    add sp, byte 4                   ; 0xa023
    mov word [bp - 0x000e], 1        ; 0xa026
    jmp short @..api_idx_0012_4.l8   ; 0xa02b
@..api_idx_0012_4.l7:
    mov ax, 0x26                     ; 0xa02d
    imul word [bp + 0x6]             ; 0xa030
    mov bx, ax                       ; 0xa033
    mov al, byte [bx - 0x7b00]       ; 0xa035
    push ax                          ; 0xa039
    mov ax, 0x26                     ; 0xa03a
    imul word [bp + 0x4]             ; 0xa03d
    mov bx, ax                       ; 0xa040
    mov cl, byte [bx - 0x7b00]       ; 0xa042
    pop ax                           ; 0xa046
    cmp al, cl                       ; 0xa047
    jge short @..api_idx_0012_4.l8   ; 0xa049
    mov ax, 3                        ; 0xa04b
    push ax                          ; 0xa04e
    call ds_dispatch_b7a9            ; 0xa04f
    pop cx                           ; 0xa052
    test ax, ax                      ; 0xa053
    jne short @..api_idx_0012_4.l8   ; 0xa055
    push word [bp + 0x6]             ; 0xa057
    push word [bp + 0x4]             ; 0xa05a
    call api_idx_0010_4              ; 0xa05d
    add sp, byte 4                   ; 0xa060
    mov word [bp - 0x000e], 1        ; 0xa063
@..api_idx_0012_4.l8:
    cmp word [bp - 0x000e], byte 0   ; 0xa068
    jne short @..api_idx_0012_4.l9   ; 0xa06c
    mov ax, 0x26                     ; 0xa06e
    imul word [bp + 0x4]             ; 0xa071
    mov bx, ax                       ; 0xa074
    mov al, byte [bx - 0x7b00]       ; 0xa076
    cbw                              ; 0xa07a
    sub ax, word [bp - 0x0006]       ; 0xa07b
    mov byte [bx - 0x7b00], al       ; 0xa07e
    mov ax, 0x26                     ; 0xa082
    imul word [bp + 0x6]             ; 0xa085
    mov bx, ax                       ; 0xa088
    mov al, byte [bx - 0x7b00]       ; 0xa08a
    cbw                              ; 0xa08e
    sub ax, word [bp - 0x0008]       ; 0xa08f
    mov byte [bx - 0x7b00], al       ; 0xa092
@..api_idx_0012_4.l9:
    cmp word [bp - 0x000e], byte 0   ; 0xa096
    jne short @..api_idx_0012_4.l10  ; 0xa09a
    mov ax, 0x26                     ; 0xa09c
    imul word [bp + 0x4]             ; 0xa09f
    mov bx, ax                       ; 0xa0a2
    cmp byte [bx - 0x7b00], 0        ; 0xa0a4
    jle short @..api_idx_0012_4.l10  ; 0xa0a9
    mov ax, 0x26                     ; 0xa0ab
    imul word [bp + 0x6]             ; 0xa0ae
    mov bx, ax                       ; 0xa0b1
    cmp byte [bx - 0x7b00], 0        ; 0xa0b3
    jle short @..api_idx_0012_4.l10  ; 0xa0b8
    jmp near @..api_idx_0012_4.l4    ; 0xa0ba
@..api_idx_0012_4.l10:
    mov word [bp - 0x0012], 0        ; 0xa0bd
    mov ax, 0x26                     ; 0xa0c2
    imul word [bp + 0x6]             ; 0xa0c5
    mov bx, ax                       ; 0xa0c8
    cmp byte [bx - 0x7b00], 0        ; 0xa0ca
    jg short @..api_idx_0012_4.l13   ; 0xa0cf
    cmp word [bp - 0x0010], byte 0   ; 0xa0d1
    je short @..api_idx_0012_4.l11   ; 0xa0d5
    mov ax, 0xa                      ; 0xa0d7
    push ax                          ; 0xa0da
    call ds_dispatch_b7a9            ; 0xa0db
    pop cx                           ; 0xa0de
    add ax, strict word 0xa          ; 0xa0df
    push ax                          ; 0xa0e2
    mov ax, 0x26                     ; 0xa0e3
    imul word [bp + 0x6]             ; 0xa0e6
    mov bx, ax                       ; 0xa0e9
    pop ax                           ; 0xa0eb
    mov byte [bx - 0x7b00], al       ; 0xa0ec
    jmp short @..api_idx_0012_4.l12  ; 0xa0f0
@..api_idx_0012_4.l11:
    mov word [bp - 0x0012], 1        ; 0xa0f2
