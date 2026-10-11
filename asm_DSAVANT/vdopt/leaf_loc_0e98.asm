leaf_loc_0e98:
    mov ax, word [bss_9b04]          ; 0x0e98
    mov word [bp - 0x0010], ax       ; 0x0e9b
    jmp short loc_0ebd               ; 0x0e9e
jumptable_0ea0:
    dw loc_0ebd - IMAGE_BASE + 0x5055          ; 0x0ea0
    dw leaf_loc_0e80 - IMAGE_BASE + 0x5055     ; 0x0ea2
    dw leaf_loc_0e88 - IMAGE_BASE + 0x5055     ; 0x0ea4
    dw leaf_loc_0e90 - IMAGE_BASE + 0x5055     ; 0x0ea6
    dw leaf_loc_0e98 - IMAGE_BASE + 0x5055     ; 0x0ea8
    dw loc_0ebd - IMAGE_BASE + 0x5055          ; 0x0eaa
    dw leaf_loc_0e90 - IMAGE_BASE + 0x5055     ; 0x0eac
    dw leaf_loc_0e88 - IMAGE_BASE + 0x5055     ; 0x0eae
loc_0eb0:
    cmp ax, strict word 8            ; 0x0eb0
    jae short loc_0ebd               ; 0x0eb3
    xchg bx, ax                      ; 0x0eb5
    shl bx, 1                        ; 0x0eb6
    jmp [cs:bx + 0x5ee7]             ; 0x0eb8
loc_0ebd:
    cmp word [bp - 0x0010], byte 0xff ; 0x0ebd
    je short loc_0edd                ; 0x0ec1
    mov ax, word [bp - 0x0010]       ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0x24                     ; 0x0ec7
    imul word [bp + 0x8]             ; 0x0eca
    mov cx, ax                       ; 0x0ecd
    mov dx, word [bp + 0xa]          ; 0x0ecf
    shl dx, 1                        ; 0x0ed2
    add ax, dx                       ; 0x0ed4
    mov bx, ax                       ; 0x0ed6
    pop ax                           ; 0x0ed8
    mov word [bx - 0x6a54], ax       ; 0x0ed9
loc_0edd:
    ret                              ; 0x0edd
loc_0ede:
    mov ax, 0                        ; 0x0ede
    call ds_dispatch_f40b            ; 0x0ee1
    mov ax, 0x24                     ; 0x0ee4
    imul word [bp + 0x4]             ; 0x0ee7
    mov cx, word [bp + 0x6]          ; 0x0eea
    shl cx, 1                        ; 0x0eed
    add ax, cx                       ; 0x0eef
    mov bx, ax                       ; 0x0ef1
    mov ax, word [bx - 0x6cba]       ; 0x0ef3
    cmp ax, word [bss_9af8]          ; 0x0ef7
    jne short @..local.l25           ; 0x0efb
    mov ax, word [bx - 0x6a30]       ; 0x0efd
    cmp ax, word [bss_9b00]          ; 0x0f01
    jne short @..local.l25           ; 0x0f05
    mov ax, word [bx - 0x6cb8]       ; 0x0f07
    cmp ax, word [bss_9af8]          ; 0x0f0b
    jne short @..local.l25           ; 0x0f0f
    mov ax, word [bx - 0x6a54]       ; 0x0f11
    cmp ax, word [bss_9b00]          ; 0x0f15
    jne short @..local.l25           ; 0x0f19
    mov ax, word [bss_9b06]          ; 0x0f1b
    mov word [bx - 0x6f46], ax       ; 0x0f1e
@..local.l25:
    mov ax, word [bx - 0x6cba]       ; 0x0f22
    cmp ax, word [bss_9afc]          ; 0x0f26
    jne short @..local.l26           ; 0x0f2a
    mov ax, word [bx - 0x6a30]       ; 0x0f2c
    cmp ax, word [bss_9b04]          ; 0x0f30
    jne short @..local.l26           ; 0x0f34
    mov ax, word [bx - 0x6cb8]       ; 0x0f36
    cmp ax, word [bss_9afc]          ; 0x0f3a
    jne short @..local.l26           ; 0x0f3e
    mov ax, word [bx - 0x6a54]       ; 0x0f40
    cmp ax, word [bss_9b04]          ; 0x0f44
    jne short @..local.l26           ; 0x0f48
    mov ax, word [bss_9b08]          ; 0x0f4a
    mov word [bx - 0x6f46], ax       ; 0x0f4d
@..local.l26:
    ret                              ; 0x0f51
loc_0f52:
    mov ax, 0                        ; 0x0f52
    call ds_dispatch_f40b            ; 0x0f55
    mov ax, 0x55                     ; 0x0f58
    push ax                          ; 0x0f5b
    mov ax, 7                        ; 0x0f5c
    imul word [bp + 0x6]             ; 0x0f5f
    add ax, word [bss_9b0a]          ; 0x0f62
    inc ax                           ; 0x0f66
    inc ax                           ; 0x0f67
    inc ax                           ; 0x0f68
    push ax                          ; 0x0f69
    mov ax, 7                        ; 0x0f6a
    imul word [bp + 0x4]             ; 0x0f6d
    add ax, word [bss_9b0c]          ; 0x0f70
    inc ax                           ; 0x0f74
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    push ax                          ; 0x0f77
    call ds_dispatch_e8f4            ; 0x0f78
    add sp, byte 6                   ; 0x0f7b
    ret                              ; 0x0f7e
