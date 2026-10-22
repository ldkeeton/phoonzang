; auto-generated
api_idx_0006_SKNL:
    mov ax, 0xfffa                   ; 0x4081
    call aztec_csav                  ; 0x4084
    mov ax, word [bss_9594]          ; 0x4087
    mov word [bp - 0x0006], ax       ; 0x408a
    mov word [bp - 0x0002], 0        ; 0x408d
@..api_idx_0006_SKNL.l1:
    mov ax, 0x248                    ; 0x4092
    imul word [bp + 0x4]             ; 0x4095
    add ax, word [bp - 0x0002]       ; 0x4098
    mov bx, ax                       ; 0x409b
    mov al, byte [bx + 0x5d64]       ; 0x409d
    sub ah, ah                       ; 0x40a1
    mov word [bp - 0x0004], ax       ; 0x40a3
@..api_idx_0006_SKNL.l2:
    mov bx, word [bp + 0x8]          ; 0x40a6
    mov si, word [bp - 0x0002]       ; 0x40a9
    mov al, byte [bx + si]           ; 0x40ac
    cbw                              ; 0x40ae
    add ax, strict word 0xffbf       ; 0x40af
    cmp ax, word [bp - 0x0004]       ; 0x40b2
    jle short @..api_idx_0006_SKNL.l4 ; 0x40b5
    inc word [bp - 0x0004]           ; 0x40b7
    dec word [bp - 0x0006]           ; 0x40ba
    cmp word [bp + 0xa], byte 1      ; 0x40bd
    jne short @..api_idx_0006_SKNL.l3 ; 0x40c1
    mov ax, 0x248                    ; 0x40c3
    imul word [bp + 0x4]             ; 0x40c6
    add ax, si                       ; 0x40c9
    mov bx, ax                       ; 0x40cb
    inc byte [bx + 0x5d64]           ; 0x40cd
    dec word [bss_9594]              ; 0x40d1
    mov ax, 1                        ; 0x40d5
    push ax                          ; 0x40d8
    push word [bp + 0x4]             ; 0x40d9
    call api_idx_0002_SSJN           ; 0x40dc
    add sp, byte 4                   ; 0x40df
@..api_idx_0006_SKNL.l3:
    jmp short @..api_idx_0006_SKNL.l2 ; 0x40e2
@..api_idx_0006_SKNL.l4:
    inc word [bp - 0x0002]           ; 0x40e4
    mov ax, word [bp - 0x0002]       ; 0x40e7
    cmp ax, strict word 8            ; 0x40ea
    jl short @..api_idx_0006_SKNL.l1 ; 0x40ed
    mov ax, 0                        ; 0x40ef
    cmp word [bp - 0x0006], byte 0   ; 0x40f2
    jl short @..api_idx_0006_SKNL.l5 ; 0x40f6
    mov ax, 1                        ; 0x40f8
@..api_idx_0006_SKNL.l5:
    mov cx, word [bp + 0x6]          ; 0x40fb
    shl cx, 1                        ; 0x40fe
    mov bx, cx                       ; 0x4100
    mov word [bx - 0x6892], ax       ; 0x4102
    ret                              ; 0x4106
