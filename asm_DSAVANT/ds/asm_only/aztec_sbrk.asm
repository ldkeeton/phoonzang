; auto-generated
; asm only
aztec_sbrk:
    push bp ; sbrk(size): return address of current top & bump by size bytes ; 0x5188
    mov bp, sp                       ; 0x5189
    push di                          ; 0x518b
    mov ax, word [bp + 0x4]          ; 0x518c
    mov di, word [dseg_0c70]         ; 0x518f
    test ax, ax                      ; 0x5193
    jge short @..aztec_sbrk.addok    ; 0x5195
    sub di, ax                       ; 0x5197
    jb short @..aztec_sbrk.invalid   ; 0x5199
    jmp short @..aztec_sbrk.dobrk    ; 0x519b
@..aztec_sbrk.addok:
    add ax, di                       ; 0x519d
    jb short @..aztec_sbrk.invalid   ; 0x519f
@..aztec_sbrk.dobrk:
    push ax                          ; 0x51a1
    call aztec_brk                   ; 0x51a2
    pop cx                           ; 0x51a5
    test ax, ax                      ; 0x51a6
    jne short @..aztec_sbrk.brk_error ; 0x51a8
    mov ax, di ; return original value of the break ; 0x51aa
@..aztec_sbrk.brk_error:
    pop di                           ; 0x51ac
    test ax, ax ; set flags for C ; 0x51ad
    pop bp                           ; 0x51af
    ret                              ; 0x51b0
@..aztec_sbrk.invalid:
    mov word [dseg_0c72], 0xfff8     ; 0x51b1
    mov ax, 0xffff                   ; 0x51b7
    jmp short @..aztec_sbrk.brk_error ; 0x51ba
