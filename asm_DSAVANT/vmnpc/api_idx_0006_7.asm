api_idx_0006_7:
    mov ax, 0xfffa                   ; 0x84f0
    call ds_dispatch_f40b            ; 0x84f3
    mov word [bp - 0x0002], 0        ; 0x84f6
    mov word [bp - 0x0004], 0        ; 0x84fb
    mov word [bp - 0x0006], 0        ; 0x8500
    jmp short @..api_idx_0006_7.l2   ; 0x8505
@..api_idx_0006_7.l1:
    mov ax, 0x248                    ; 0x8507
    imul word [bp - 0x0006]          ; 0x850a
    mov bx, ax                       ; 0x850d
    mov ax, word [bx + 0x5c08]       ; 0x850f
    mov dx, word [bx + 0x5c0a]       ; 0x8513
    add word [bp - 0x0004], ax       ; 0x8517
    adc word [bp - 0x0002], dx       ; 0x851a
    mov word [bx + 0x5c0a], 0        ; 0x851d
    mov word [bx + 0x5c08], 0        ; 0x8523
    inc word [bp - 0x0006]           ; 0x8529
@..api_idx_0006_7.l2:
    mov ax, word [bp - 0x0006]       ; 0x852c
    cmp ax, word [bss_69c8]          ; 0x852f
    jl short @..api_idx_0006_7.l1    ; 0x8533
    mov ax, word [bp - 0x0004]       ; 0x8535
    mov dx, word [bp - 0x0002]       ; 0x8538
    push ax                          ; 0x853b
    push dx                          ; 0x853c
    mov ax, 0x248                    ; 0x853d
    imul word [bp + 0x4]             ; 0x8540
    mov bx, ax                       ; 0x8543
    pop dx                           ; 0x8545
    pop ax                           ; 0x8546
    mov word [bx + 0x5c0a], dx       ; 0x8547
    mov word [bx + 0x5c08], ax       ; 0x854b
    ret                              ; 0x854f
