; auto-generated
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x36af
    call aztec_csav                  ; 0x36b2
    mov ax, word [bss_0e0e]          ; 0x36b5
    mov word [bp - 0x0006], ax       ; 0x36b8
    mov word [bp - 0x0002], 0        ; 0x36bb
    jmp short @..api_idx_0006_2.l3   ; 0x36c0
@..api_idx_0006_2.l1:
    mov bx, word [bp - 0x0006]       ; 0x36c2
    mov al, byte [bx]                ; 0x36c5
    sub ah, ah                       ; 0x36c7
    cmp ax, word [bss_830c]          ; 0x36c9
    jne short @..api_idx_0006_2.l2   ; 0x36cd
    mov ax, word [bss_8f3e]          ; 0x36cf
    xchg al, ah                      ; 0x36d2
    sub al, al                       ; 0x36d4
    mov dx, word [bss_8f42]          ; 0x36d6
    mov cx, 4                        ; 0x36da
    shl dx, cl                       ; 0x36dd
    mov cx, dx                       ; 0x36df
    add ax, cx                       ; 0x36e1
    add ax, word [bss_8f40]          ; 0x36e3
    mov word [bp - 0x0004], ax       ; 0x36e7
    cmp ax, word [bx + 0x2]          ; 0x36ea
    jne short @..api_idx_0006_2.l2   ; 0x36ed
    mov ax, bx                       ; 0x36ef
    ret                              ; 0x36f1
@..api_idx_0006_2.l2:
    add word [bp - 0x0006], byte 8   ; 0x36f2
    inc word [bp - 0x0002]           ; 0x36f6
@..api_idx_0006_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x36f9
    cmp ax, word [bss_5910]          ; 0x36fc
    jl short @..api_idx_0006_2.l1    ; 0x3700
    mov ax, 0                        ; 0x3702
    ret                              ; 0x3705
