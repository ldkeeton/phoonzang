api_idx_000e:
    mov ax, 0xfff2                   ; 0x0704
    call ds_dispatch_f40b            ; 0x0707
    mov bx, word [bp + 0xe]          ; 0x070a
    mov byte [bx], 0                 ; 0x070d
    mov ax, word [bp + 0x4]          ; 0x0710
    shl ax, 1                        ; 0x0713
    mov bx, ax                       ; 0x0715
    mov bx, word [bx - 0x7b7e]       ; 0x0717
    cmp byte [bx + 0x19f], 0xff      ; 0x071b
    jne short @..api_idx_000e.l1     ; 0x0720
    ret                              ; 0x0722
@..api_idx_000e.l1:
    mov al, byte [bx + 0x19f]        ; 0x0723
    cbw                              ; 0x0727
    mov word [bp - 0x0002], ax       ; 0x0728
    mov word [bp - 0x000e], 0        ; 0x072b
    mov cx, 0x15e                    ; 0x0730
    imul cx                          ; 0x0733
    push ax                          ; 0x0735
    mov ax, 3                        ; 0x0736
    imul word [bp + 0x8]             ; 0x0739
    add ax, word [bp + 0xa]          ; 0x073c
    mov bx, ax                       ; 0x073f
    mov al, byte [bx - 0x7bd0]       ; 0x0741
    sub ah, ah                       ; 0x0745
    mov cx, ax                       ; 0x0747
    pop ax                           ; 0x0749
    add ax, cx                       ; 0x074a
    mov bx, ax                       ; 0x074c
    mov al, byte [bx + 0x6a1a]       ; 0x074e
    sub ah, ah                       ; 0x0752
    mov word [bp - 0x0004], ax       ; 0x0754
    jmp near @..api_idx_000e.l15     ; 0x0757
