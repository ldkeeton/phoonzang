; auto-generated
api_idx_0008_RQRL:
    mov ax, 0xfff8
    call aztec_csav
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bss_0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0008_RQRL.l6
@..api_idx_0008_RQRL.l1:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short @..api_idx_0008_RQRL.l2
    mov ax, word [bp - 0x0002]
    ret
@..api_idx_0008_RQRL.l2:
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x40
    jne short @..api_idx_0008_RQRL.l5
    cmp word [bp - 0x0006], byte 0xff
    je short @..api_idx_0008_RQRL.l3
    mov ax, 7
    push ax
    call ds_app_PUNN
    pop cx
    test ax, ax
    jne short @..api_idx_0008_RQRL.l5
@..api_idx_0008_RQRL.l3:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bss_830c]
    jne short @..api_idx_0008_RQRL.l4
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0008_RQRL.l5
@..api_idx_0008_RQRL.l4:
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
@..api_idx_0008_RQRL.l5:
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
@..api_idx_0008_RQRL.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bss_5910]
    jl short @..api_idx_0008_RQRL.l1
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0008_RQRL.l8
    cmp word [bp - 0x0006], byte 0xff
    jne short @..api_idx_0008_RQRL.l7
    mov ax, word [bp - 0x0008]
    ret
@..api_idx_0008_RQRL.l7:
    mov ax, word [bp - 0x0006]
    ret
@..api_idx_0008_RQRL.l8:
    mov ax, 0xffff
    ret
