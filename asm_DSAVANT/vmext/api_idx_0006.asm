; auto-generated
api_idx_0006:
    mov ax, 0xfffa                   ; 0x14c7
    call aztec_csav                  ; 0x14ca
    mov ax, word [bss_0e0e]          ; 0x14cd
    mov word [bp - 0x0006], ax       ; 0x14d0
    mov word [bp - 0x0002], 0        ; 0x14d3
    jmp short @..api_idx_0006.l3     ; 0x14d8
@..api_idx_0006.l1:
    mov bx, word [bp - 0x0006]       ; 0x14da
    mov al, byte [bx]                ; 0x14dd
    sub ah, ah                       ; 0x14df
    cmp ax, word [bss_830c]          ; 0x14e1
    jne short @..api_idx_0006.l2     ; 0x14e5
    mov ax, word [bss_8f3e]          ; 0x14e7
    xchg al, ah                      ; 0x14ea
    sub al, al                       ; 0x14ec
    mov dx, word [bss_8f42]          ; 0x14ee
    mov cx, 4                        ; 0x14f2
    shl dx, cl                       ; 0x14f5
    mov cx, dx                       ; 0x14f7
    add ax, cx                       ; 0x14f9
    add ax, word [bss_8f40]          ; 0x14fb
    mov word [bp - 0x0004], ax       ; 0x14ff
    cmp ax, word [bx + 0x2]          ; 0x1502
    jne short @..api_idx_0006.l2     ; 0x1505
    mov ax, bx                       ; 0x1507
    ret                              ; 0x1509
@..api_idx_0006.l2:
    add word [bp - 0x0006], byte 8   ; 0x150a
    inc word [bp - 0x0002]           ; 0x150e
@..api_idx_0006.l3:
    mov ax, word [bp - 0x0002]       ; 0x1511
    cmp ax, word [bss_5910]          ; 0x1514
    jl short @..api_idx_0006.l1      ; 0x1518
    mov ax, 0                        ; 0x151a
    ret                              ; 0x151d
