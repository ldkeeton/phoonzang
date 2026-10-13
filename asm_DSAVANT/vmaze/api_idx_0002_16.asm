api_idx_0002_16:
    mov ax, 0xfffe                   ; 0x89d0
    call aztec_csav                  ; 0x89d3
    mov ax, word [bp + 0x6]          ; 0x89d6
    mov word [bp - 0x0002], ax       ; 0x89d9
    jmp short @..api_idx_0002_16.l2  ; 0x89dc
@..api_idx_0002_16.l1:
    mov ax, word [bp - 0x0002]       ; 0x89de
    mov cx, 8                        ; 0x89e1
    cwd                              ; 0x89e4
    idiv cx                          ; 0x89e5
    mov si, ax                       ; 0x89e7
    mov bx, word [bp + 0x4]          ; 0x89e9
    mov al, byte [bx + si]           ; 0x89ec
    cbw                              ; 0x89ee
    push ax                          ; 0x89ef
    mov ax, word [bp - 0x0002]       ; 0x89f0
    cwd                              ; 0x89f3
    idiv cx                          ; 0x89f4
    mov cx, dx                       ; 0x89f6
    mov dx, 1                        ; 0x89f8
    shl dx, cl                       ; 0x89fb
    mov cx, dx                       ; 0x89fd
    not cx                           ; 0x89ff
    pop ax                           ; 0x8a01
    and ax, cx                       ; 0x8a02
    mov byte [bx + si], al           ; 0x8a04
    inc word [bp - 0x0002]           ; 0x8a06
@..api_idx_0002_16.l2:
    mov ax, word [bp + 0x6]          ; 0x8a09
    inc ax                           ; 0x8a0c
    inc ax                           ; 0x8a0d
    cmp ax, word [bp - 0x0002]       ; 0x8a0e
    jg short @..api_idx_0002_16.l1   ; 0x8a11
    ret                              ; 0x8a13
