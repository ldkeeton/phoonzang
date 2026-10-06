ser_init:
    push ax                               ; preserve caller's AX
    push dx                               ; preserve caller's DX
    mov dx, [com]                         ; DX = UART base port
    add dx, 3                             ; DX = line-control register (LCR)
    mov al, 0x83                          ; enable divisor latch, 8 data bits, no parity, 1 stop
    out dx, al                            ; open baud-rate divisor registers
    mov dx, [com]                         ; DX = divisor-latch low-byte port
    mov al, BDIV & 0xFF                   ; AL = low byte of baud divisor
    out dx, al                            ; program divisor low byte
    mov dx, [com]                         ; DX = UART base port
    add dx, 1                             ; DX = divisor-latch high-byte port
    mov al, BDIV >> 8                     ; AL = high byte of baud divisor
    out dx, al                            ; program divisor high byte
    mov dx, [com]                         ; DX = UART base port
    add dx, 3                             ; DX = line-control register again
    mov al, 0x03                          ; disable divisor latch; keep 8N1 framing
    out dx, al                            ; enable normal UART data registers
    mov dx, [com]                         ; DX = interrupt-enable register
    inc dx                                ; IER is one port above UART base
    xor al, al                            ; disable UART interrupts during setup
    out dx, al                            ; clear all interrupt-enable bits
    mov dx, [com]                         ; DX = UART base port
    add dx, 4                             ; DX = modem-control register (MCR)
    mov al, 0x0B                          ; assert DTR/RTS and route UART IRQ through OUT2
    out dx, al                            ; enable modem control and IRQ output
    mov dx, [com]                         ; DX = UART base port
    add dx, 2                             ; DX = FIFO control register (FCR)
    mov al, 0x07                          ; enable/reset FIFOs; RX trigger at one byte
    out dx, al                            ; configure UART FIFOs for low-latency receive
    mov dx, [com]                         ; DX = UART base port
    add dx, 5                             ; DX = line-status register (LSR)
.f1:in al, dx                             ; inspect UART receive-data-ready status
    test al, 1                            ; bit 0 is set while stale input is buffered
    jz .f2                                ; FIFO is empty -> initialization is complete
    mov dx, [com]                         ; DX = UART receive-data register
    in al, dx                              ; discard one stale input byte
    mov dx, [com]                         ; DX = UART base port again
    add dx, 5                             ; DX = line-status register for next poll
    jmp .f1                               ; drain the rest of the receive FIFO

.f2:pop dx                                ; restore caller's DX
    pop ax                                 ; restore caller's AX
    ret                                    ; return with UART configured

; Enable receive-data IRQs after the TSR's IRQ4 vector is installed.
ser_irq_enable:
    push ax                               ; preserve caller's AX
    push dx                               ; preserve caller's DX
    mov dx, [com]                         ; DX = UART base port
    inc dx                                ; DX = interrupt-enable register
    mov al, 1                             ; enable received-data-available interrupt
    out dx, al                            ; let incoming bytes enter the IRQ4 handler
    pop dx                                ; restore caller's DX
    pop ax                                ; restore caller's AX
    ret                                   ; return after enabling UART RX interrupts

ser_irq_disable:
    push ax                               ; preserve caller's AX
    push dx                               ; preserve caller's DX
    mov dx, [com]                         ; DX = UART base port
    inc dx                                ; DX = interrupt-enable register
    xor al, al                            ; clear all UART interrupt enables
    out dx, al                            ; prevent serial IRQ re-entry in debugger
    pop dx                                ; restore caller's DX
    pop ax                                ; restore caller's AX
    ret                                   ; return with UART interrupts disabled

ser_putc:
    push dx                               ; preserve caller's DX
    push ax                               ; preserve transmit byte while polling
    mov dx, [com]                         ; DX = UART base port
    add dx, 5                             ; DX = line-status register
.sp1:in al, dx                            ; read UART transmitter status
    test al, 0x20                         ; bit 5 means transmit holding register is empty
    jz .sp1                               ; wait until UART can accept another byte
    mov dx, [com]                         ; DX = UART transmit-data register
    pop ax                                ; restore byte to send in AL
    out dx, al                            ; transmit byte to host debugger
    push es                               ; preserve caller's ES for screen marker
    push ax                               ; preserve transmitted byte
    mov ax, 0xB800                        ; AX = color text-mode video segment
    mov es, ax                            ; ES:158 points at a visible screen cell
    test byte [ind_act], 1                ; has TX marker already saved original screen cell?
    jnz .tx_sh                            ; yes -> do not overwrite saved original
    mov ax, [es:158]                      ; read original character/attribute cell
    mov [ind_tx_orig], ax                 ; save it so the display can be restored
    or byte [ind_act], 1                  ; remember that TX marker is active
.tx_sh:mov byte [es:158], 0x18            ; display an up-arrow glyph for serial TX
    pop ax                                ; restore transmitted byte in AX
    pop es                                ; restore caller's ES
    pop dx                                ; restore caller's DX
    ret                                   ; return after sending one byte

ser_getc:
    push dx                               ; preserve caller's DX
    cmp byte [rx_pending], 0              ; did IRQ4 pre-read the packet's first byte?
    je .poll                              ; no buffered input -> poll UART directly
    mov byte [rx_pending], 0              ; consume buffered-byte indicator
    mov al, [rx_byte]                     ; AL = first byte saved by asynchronous IRQ
    pop dx                                ; restore caller's DX
    clc                                   ; report successful byte receive
    ret                                   ; return buffered byte in AL
.poll:
.g1:mov dx, [com]                        ; DX = UART base port
    add dx, 5                             ; DX = line-status register
    sti                                   ; allow interrupts while waiting for input
    in al, dx                             ; poll UART status
    test al, 1                            ; bit 0 means at least one byte is available
    jz .g1                                ; keep polling until data arrives
    mov dx, [com]                         ; DX = UART receive-data register
    in al, dx                              ; AL = received byte
    push es                               ; preserve caller's ES for screen marker
    push ax                               ; preserve received byte
    mov ax, 0xB800                        ; AX = color text-mode video segment
    mov es, ax                            ; ES:156 points at receive-indicator screen cell
    test byte [ind_act], 2                ; has RX marker already saved original screen cell?
    jnz .rx_sh                            ; yes -> keep saved original contents
    mov ax, [es:156]                      ; read original character/attribute cell
    mov [ind_rx_orig], ax                 ; save it so the display can be restored
    or byte [ind_act], 2                  ; remember that RX marker is active
.rx_sh:mov byte [es:156], 0x19            ; display a down-arrow glyph for serial RX
    pop ax                                ; restore received byte in AL
    pop es                                ; restore caller's ES
    pop dx                                ; restore caller's DX
    clc                                   ; report successful byte receive
    ret                                   ; return input byte in AL

clr_ind:
    push es                               ; preserve caller's ES
    push ax                               ; preserve caller's AX
    mov ax, 0xB800                        ; AX = color text-mode video segment
    mov es, ax                            ; ES addresses visible text screen
    test byte [ind_act], 1                ; was a TX marker displayed?
    jz .tx_s                              ; no -> leave TX screen cell untouched
    mov ax, [ind_tx_orig]                 ; recover original TX cell
    mov [es:158], ax                      ; restore character and attribute
.tx_s:test byte [ind_act], 2              ; was an RX marker displayed?
    jz .rx_s                              ; no -> leave RX screen cell untouched
    mov ax, [ind_rx_orig]                 ; recover original RX cell
    mov [es:156], ax                      ; restore character and attribute
.rx_s:mov byte [ind_act], 0               ; clear both indicator-active flags
    pop ax                                ; restore caller's AX
    pop es                                ; restore caller's ES
    ret                                   ; return after restoring screen cells
