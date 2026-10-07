api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x539e
    call ds_dispatch_f40b            ; 0x53a1
    mov word [bp - 0x0006], 0xffff   ; 0x53a4
    mov word [bp - 0x0008], 0xffff   ; 0x53a9
    mov ax, word [data_0e0e]         ; 0x53ae
    mov word [bp - 0x0004], ax       ; 0x53b1
    mov word [bp - 0x0002], 0        ; 0x53b4
    jmp short @..api_idx_0008_3.l6   ; 0x53b9
@..api_idx_0008_3.l1:
    mov bx, word [bp - 0x0004]       ; 0x53bb
    mov al, byte [bx]                ; 0x53be
    sub ah, ah                       ; 0x53c0
    cmp ax, 0xff                     ; 0x53c2
    jne short @..api_idx_0008_3.l2   ; 0x53c5
    mov ax, word [bp - 0x0002]       ; 0x53c7
    ret                              ; 0x53ca
