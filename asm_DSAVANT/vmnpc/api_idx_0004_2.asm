api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0e15
    call aztec_csav                  ; 0x0e18
    cmp word [bss_93d4], byte 2      ; 0x0e1b
    jle short @..api_idx_0004_2.l1   ; 0x0e20
    call api_idx_0002                ; 0x0e22
    jmp short @..api_idx_0004_2.l2   ; 0x0e25
@..api_idx_0004_2.l1:
    inc word [bss_93d4]              ; 0x0e27
@..api_idx_0004_2.l2:
    mov ax, 3                        ; 0x0e2b
    push ax                          ; 0x0e2e
    call api_idx_0006                ; 0x0e2f
    pop cx                           ; 0x0e32
    mov word [bp - 0x0004], 0        ; 0x0e33
@..api_idx_0004_2.l3:
    mov ax, word [bp - 0x0004]       ; 0x0e38
    shl ax, 1                        ; 0x0e3b
    mov bx, ax                       ; 0x0e3d
    cmp word [bx - 0x6c34], byte 0   ; 0x0e3f
    je short @..api_idx_0004_2.l4    ; 0x0e44
    mov ax, 2                        ; 0x0e46
    push ax                          ; 0x0e49
    mov ax, word [bp - 0x0004]       ; 0x0e4a
    mov cx, 7                        ; 0x0e4d
    shl ax, cl                       ; 0x0e50
    add ax, 0x91cc                   ; 0x0e52
    push ax                          ; 0x0e55
    call ds_loc_3aca                 ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    inc ax                           ; 0x0e5c
    mov cx, 2                        ; 0x0e5d
    cwd                              ; 0x0e60
    idiv cx                          ; 0x0e61
    mov cx, ax                       ; 0x0e63
    mov ax, 0xa0                     ; 0x0e65
    sub ax, cx                       ; 0x0e68
    mov word [bp - 0x0002], ax       ; 0x0e6a
    jmp short @..api_idx_0004_2.l5   ; 0x0e6d
@..api_idx_0004_2.l4:
    mov word [bp - 0x0002], 0x44     ; 0x0e6f
@..api_idx_0004_2.l5:
    mov ax, 0xc                      ; 0x0e74
    imul word [bp - 0x0004]          ; 0x0e77
    mov cx, word [bp - 0x0004]       ; 0x0e7a
    shl cx, 1                        ; 0x0e7d
    mov bx, cx                       ; 0x0e7f
    cmp word [bx - 0x6c34], byte 0   ; 0x0e81
    je short @..api_idx_0004_2.l6    ; 0x0e86
    mov cx, 0x92                     ; 0x0e88
    jmp short @..api_idx_0004_2.l7   ; 0x0e8b
@..api_idx_0004_2.l6:
    mov cx, 0x97                     ; 0x0e8d
@..api_idx_0004_2.l7:
    add ax, cx                       ; 0x0e90
    push ax                          ; 0x0e92
    push word [bp - 0x0002]          ; 0x0e93
    call ds_loc_3a50                 ; 0x0e96
    add sp, byte 4                   ; 0x0e99
    mov ax, 0                        ; 0x0e9c
    push ax                          ; 0x0e9f
    mov ax, word [bp - 0x0004]       ; 0x0ea0
    shl ax, 1                        ; 0x0ea3
    mov bx, ax                       ; 0x0ea5
    cmp word [bx - 0x6c34], byte 0   ; 0x0ea7
    je short @..api_idx_0004_2.l8    ; 0x0eac
    mov ax, 0x55                     ; 0x0eae
    jmp short @..api_idx_0004_2.l9   ; 0x0eb1
@..api_idx_0004_2.l8:
    mov ax, 1                        ; 0x0eb3
@..api_idx_0004_2.l9:
    push ax                          ; 0x0eb6
    call ds_loc_3a6a                 ; 0x0eb7
    add sp, byte 4                   ; 0x0eba
    mov ax, word [bp - 0x0004]       ; 0x0ebd
    shl ax, 1                        ; 0x0ec0
    mov bx, ax                       ; 0x0ec2
    push word [bx - 0x6c34]          ; 0x0ec4
    mov ax, word [bp - 0x0004]       ; 0x0ec8
    mov cx, 7                        ; 0x0ecb
    shl ax, cl                       ; 0x0ece
    add ax, 0x91cc                   ; 0x0ed0
    push ax                          ; 0x0ed3
    call ds_string_loc_3a95          ; 0x0ed4
    add sp, byte 4                   ; 0x0ed7
    inc word [bp - 0x0004]           ; 0x0eda
    mov ax, word [bp - 0x0004]       ; 0x0edd
    cmp ax, strict word 4            ; 0x0ee0
    jge short @..api_idx_0004_2.l10  ; 0x0ee3
    jmp near @..api_idx_0004_2.l3    ; 0x0ee5
@..api_idx_0004_2.l10:
    mov ax, 3                        ; 0x0ee8
    push ax                          ; 0x0eeb
    call loc_0c96                    ; 0x0eec
    pop cx                           ; 0x0eef
    ret                              ; 0x0ef0
loc_0ef1:
    mov ax, 0                        ; 0x0ef1
    call aztec_csav                  ; 0x0ef4
    les bx, word [dseg_0002]         ; 0x0ef7
    mov ax, word [es:bx]             ; 0x0efb
    mov dx, word [es:bx + 0x2]       ; 0x0efe
    mov word [bss_9090], dx          ; 0x0f02
    mov word [bss_908e], ax          ; 0x0f06
    mov ax, word [bss_908e]          ; 0x0f09
    mov dx, word [bss_9090]          ; 0x0f0c
    sub ax, word [bss_908a]          ; 0x0f10
    sbb dx, word [bss_908c]          ; 0x0f14
    mov word [bss_9094], dx          ; 0x0f18
    mov word [bss_9092], ax          ; 0x0f1c
    mov ax, word [bss_93d6]          ; 0x0f1f
    cwd                              ; 0x0f22
    mov cx, ax                       ; 0x0f23
    mov bx, dx                       ; 0x0f25
    mov ax, word [bss_9092]          ; 0x0f27
    mov dx, word [bss_9094]          ; 0x0f2a
    cmp bx, dx                       ; 0x0f2e
    jg short @..loc_0ef1.l1          ; 0x0f30
    jne short @..loc_0ef1.l2         ; 0x0f32
    cmp cx, ax                       ; 0x0f34
    jbe short @..loc_0ef1.l2         ; 0x0f36
@..loc_0ef1.l1:
    jmp short @..loc_0ef1.l3         ; 0x0f38
@..loc_0ef1.l2:
    mov ax, word [bss_908e]          ; 0x0f3a
    mov dx, word [bss_9090]          ; 0x0f3d
    mov word [bss_908c], dx          ; 0x0f41
    mov word [bss_908a], ax          ; 0x0f45
    mov ax, 1                        ; 0x0f48
    ret                              ; 0x0f4b
@..loc_0ef1.l3:
    mov ax, 0                        ; 0x0f4c
    ret                              ; 0x0f4f
