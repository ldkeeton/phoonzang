ser_init:
    push ax
    push dx
    mov dx, [com]
    add dx, 3
    mov al, 0x83
    out dx, al
    mov dx, [com]
    mov al, BDIV & 0xFF
    out dx, al
    mov dx, [com]
    add dx, 1
    mov al, BDIV >> 8
    out dx, al
    mov dx, [com]
    add dx, 3
    mov al, 0x03
    out dx, al
    mov dx, [com]
    inc dx
    xor al, al
    out dx, al
    mov dx, [com]
    add dx, 4
    mov al, 0x0B                 ; DTR, RTS, and OUT2 (route UART IRQ)
    out dx, al
    mov dx, [com]
    add dx, 2
    mov al, 0x07                 ; enable/reset FIFOs; trigger RX IRQ on 1 byte
    out dx, al
    mov dx, [com]
    add dx, 5
.f1:in al, dx
    test al, 1
    jz .f2
    mov dx, [com]
    in al, dx
    mov dx, [com]
    add dx, 5
    jmp .f1

.f2:pop dx
    pop ax
    ret

; Enable receive-data IRQs after the TSR's IRQ4 vector is installed.
ser_irq_enable:
    push ax
    push dx
    mov dx, [com]
    inc dx
    mov al, 1
    out dx, al
    pop dx
    pop ax
    ret

ser_irq_disable:
    push ax
    push dx
    mov dx, [com]
    inc dx
    xor al, al
    out dx, al
    pop dx
    pop ax
    ret

ser_putc:
    push dx
    push ax
    mov dx, [com]
    add dx, 5
.sp1:in al, dx
    test al, 0x20
    jz .sp1
    mov dx, [com]
    pop ax
    out dx, al
    push es
    push ax
    mov ax, 0xB800
    mov es, ax
    test byte [ind_act], 1
    jnz .tx_sh
    mov ax, [es:158]
    mov [ind_tx_orig], ax
    or byte [ind_act], 1
.tx_sh:mov byte [es:158], 0x18     ; ↑ up arrow = TX
    pop ax
    pop es
    pop dx
    ret

ser_getc:
    push dx
    cmp byte [rx_pending], 0
    je .poll
    mov byte [rx_pending], 0
    mov al, [rx_byte]
    pop dx
    clc
    ret
.poll:
.g1:mov dx, [com]
    add dx, 5
    sti
    in al, dx
    test al, 1
    jz .g1
    mov dx, [com]
    in al, dx
    push es
    push ax
    mov ax, 0xB800
    mov es, ax
    test byte [ind_act], 2
    jnz .rx_sh
    mov ax, [es:156]
    mov [ind_rx_orig], ax
    or byte [ind_act], 2
.rx_sh:mov byte [es:156], 0x19     ; ↓ down arrow = RX
    pop ax
    pop es
    pop dx
    clc
    ret

clr_ind:
    push es
    push ax
    mov ax, 0xB800
    mov es, ax
    test byte [ind_act], 1
    jz .tx_s
    mov ax, [ind_tx_orig]
    mov [es:158], ax
.tx_s:test byte [ind_act], 2
    jz .rx_s
    mov ax, [ind_rx_orig]
    mov [es:156], ax
.rx_s:mov byte [ind_act], 0
    pop ax
    pop es
    ret
