api_idx_000e:
    mov ax, 0xfff2                   ; 0x0656
    call ds_dispatch_f40b            ; 0x0659
    mov bx, word [bp + 0xe]          ; 0x065c
    mov byte [bx], 0                 ; 0x065f
    mov ax, word [bp + 0x4]          ; 0x0662
    shl ax, 1                        ; 0x0665
    mov bx, ax                       ; 0x0667
    mov bx, word [bx - 0x7b7e]       ; 0x0669
    cmp byte [bx + 0x19f], 0xff      ; 0x066d
    jne short @..api_idx_000e.l1     ; 0x0672
    ret                              ; 0x0674
@..api_idx_000e.l1:
    mov al, byte [bx + 0x19f]        ; 0x0675
    cbw                              ; 0x0679
    mov word [bp - 0x0002], ax       ; 0x067a
    mov word [bp - 0x000e], 0        ; 0x067d
    mov cx, 0x15e                    ; 0x0682
    imul cx                          ; 0x0685
    push ax                          ; 0x0687
    mov ax, 3                        ; 0x0688
    imul word [bp + 0x8]             ; 0x068b
    add ax, word [bp + 0xa]          ; 0x068e
    mov bx, ax                       ; 0x0691
    mov al, byte [bx - 0x7bd0]       ; 0x0693
    sub ah, ah                       ; 0x0697
    mov cx, ax                       ; 0x0699
    pop ax                           ; 0x069b
    add ax, cx                       ; 0x069c
    mov bx, ax                       ; 0x069e
    mov al, byte [bx + 0x6a1a]       ; 0x06a0
    sub ah, ah                       ; 0x06a4
    mov word [bp - 0x0004], ax       ; 0x06a6
    jmp near @..api_idx_000e.l15     ; 0x06a9
