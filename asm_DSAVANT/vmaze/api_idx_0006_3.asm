api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x20dc
    call ds_dispatch_f40b            ; 0x20df
    mov ax, word [dseg_0e0e]         ; 0x20e2
    mov word [bp - 0x0006], ax       ; 0x20e5
    mov word [bp - 0x0002], 0        ; 0x20e8
    jmp short @..api_idx_0006_3.l3   ; 0x20ed
@..api_idx_0006_3.l1:
    mov bx, word [bp - 0x0006]       ; 0x20ef
    mov al, byte [bx]                ; 0x20f2
    sub ah, ah                       ; 0x20f4
    cmp ax, word [dseg_830c]         ; 0x20f6
    jne short @..api_idx_0006_3.l2   ; 0x20fa
    mov ax, word [dseg_8f3e]         ; 0x20fc
    xchg al, ah                      ; 0x20ff
    sub al, al                       ; 0x2101
    mov dx, word [dseg_8f42]         ; 0x2103
    mov cx, 4                        ; 0x2107
    shl dx, cl                       ; 0x210a
    mov cx, dx                       ; 0x210c
    add ax, cx                       ; 0x210e
    add ax, word [dseg_8f40]         ; 0x2110
    mov word [bp - 0x0004], ax       ; 0x2114
    cmp ax, word [bx + 0x2]          ; 0x2117
    jne short @..api_idx_0006_3.l2   ; 0x211a
    mov ax, bx                       ; 0x211c
    ret                              ; 0x211e
@..api_idx_0006_3.l2:
    add word [bp - 0x0006], byte 8   ; 0x211f
    inc word [bp - 0x0002]           ; 0x2123
@..api_idx_0006_3.l3:
    mov ax, word [bp - 0x0002]       ; 0x2126
    cmp ax, word [dseg_5910]         ; 0x2129
    jl short @..api_idx_0006_3.l1    ; 0x212d
    mov ax, 0                        ; 0x212f
    ret                              ; 0x2132
