; proto.asm — GDB remote protocol packet send/receive

; ─── GDB packet send ────────────────────────────────
; DS:SI = null-terminated data; retries on NAK
pkt_send:
    push si                               ; preserve caller's packet pointer
    push cx                               ; preserve caller's CX
    push bx                               ; preserve caller's BX
    mov bx, si                            ; BX = packet start for second traversal
    xor cx, cx                            ; CX = zeroed 16-bit packet checksum
.cs:lodsb                                 ; read next NUL-terminated packet character
    cmp al, 0                             ; reached end of packet body?
    je .ce                                ; yes -> send packet framing and checksum
    add cl, al                            ; add byte to low checksum byte
    adc ch, 0                             ; carry into high checksum byte
    jmp .cs                               ; include the next packet byte
.ce:mov al, '$'                           ; RSP packet start marker
    call ser_putc                         ; transmit '$'
    mov si, bx                            ; reset SI to beginning of packet text
.ds:lodsb                                 ; read next packet-body byte
    cmp al, 0                             ; NUL marks the end of the body
    je .de                                ; send checksum delimiter next
    call ser_putc                         ; transmit one body byte
    jmp .ds                               ; send the remainder of the body
.de:mov al, '#'                           ; RSP checksum delimiter
    call ser_putc                         ; transmit '#'
    mov ax, cx                            ; AX = accumulated checksum
    call phex8                            ; send checksum as two ASCII hex digits
    call ser_getc                         ; wait for peer's packet ACK/NAK
    cmp al, '+'                           ; did GDB acknowledge this packet?
    je .ak                                ; yes -> return to caller
    pop bx                                ; restore BX before retrying packet
    pop cx                                ; restore CX before retrying packet
    pop si                                ; restore original packet pointer
    jmp pkt_send                          ; resend if response was not '+'
.ak:pop bx                                ; restore caller's BX
    pop cx                                ; restore caller's CX
    pop si                                ; restore caller's SI
    ret                                   ; packet was acknowledged successfully

pkt_send_trap:
    mov si, s_trap                         ; SI = standard S05 breakpoint/step reply
    jmp pkt_send                          ; transmit stop notification to GDB

; ─── GDB packet read ────────────────────────────────
; Returns CX=length, SI=rbuf.
pkt_read:
    push di                               ; preserve caller's DI
    push ax                               ; preserve caller's AX
    push bx                               ; preserve caller's BX
    mov di, rbuf                          ; DI = destination for incoming packet body
.wd:call ser_getc                         ; read bytes until an RSP packet begins
    cmp al, '$'                           ; packet-start marker received?
    jne .wd                               ; ignore non-packet bytes while waiting
    jmp .go                               ; begin collecting this packet body
.go:xor cx, cx                            ; CX = number of body bytes collected
.rl:call ser_getc                         ; read next incoming packet character
    cmp al, '#'                           ; checksum delimiter ends packet body
    je .gc                                ; parse expected checksum after '#'
    cmp al, '$'                           ; a new '$' restarts a malformed packet
    je .go                                ; discard partial body and restart collection
    cmp cx, BUF_SZ-1                      ; is there room for byte plus NUL terminator?
    jae .rl                               ; if full, discard extra byte and keep framing
    mov [di], al                          ; append body byte to receive buffer
    inc di                                ; advance receive-buffer pointer
    inc cx                                ; count stored body byte
    jmp .rl                               ; read the next body byte
.gc:mov byte [di], 0                      ; NUL-terminate command for handlers
    call ser_getc                         ; AL = high checksum digit after '#'
    push ax                               ; preserve first checksum character
    call ser_getc                         ; AL = low checksum digit
    mov bx, ax                            ; BL = saved low checksum character
    pop ax                                ; AL = high checksum character
    call gnib                             ; convert high checksum character to nibble
    shl al, 1                             ; shift high nibble into bits 4..7
    shl al, 1                             ; continue shifting checksum nibble left
    shl al, 1                             ; move high nibble into bits 4..7
    shl al, 1                             ; AL = decoded high nibble << 4
    mov ah, al                            ; AH = expected checksum high half
    mov al, bl                            ; AL = low checksum character
    call gnib                             ; convert low checksum character to nibble
    or al, ah                             ; AL = expected one-byte checksum
    mov dl, al                            ; preserve expected checksum across summation

    ; compute checksum of received packet data
    xor ax, ax                            ; AX = running checksum sum
    mov si, rbuf                          ; SI = first received body byte
    mov di, cx                            ; DI = number of stored body bytes
.cl:cmp di, 0                             ; have all packet bytes been summed?
    je .cd                                ; yes -> compare checksum
    xor bx, bx                            ; clear upper byte before loading next value
    mov bl, [si]                          ; BX = next unsigned packet byte
    add ax, bx                            ; add byte to running checksum
    inc si                                ; advance to following packet byte
    dec di                                ; one fewer byte remains
    jmp .cl                               ; include all packet-body bytes
.cd:cmp al, dl                            ; compare low checksum byte with expected value
    je .ack                               ; match -> acknowledge packet to GDB
    mov al, '-'                           ; RSP negative acknowledgement requests retry
    call ser_putc                         ; reject corrupt packet without extra stream text
    ; A checksum NAK is the complete RSP response here. Diagnostic bytes on
    ; the serial stream corrupt packet framing for the peer.
    jmp .wd                               ; search for next packet after rejecting this one
.ack:mov al, '+'                          ; RSP positive acknowledgement
    call ser_putc                         ; tell GDB packet checksum was valid
    clc                                   ; report successful packet receive
.px:pop bx                                ; restore caller's BX
    pop ax                                ; restore caller's AX
    pop di                                ; restore caller's DI
    mov si, rbuf                          ; return SI pointing at received command
    ret                                   ; CX still contains received body length

; ─── Binary bytes → hex packet (DS:SI, CX count) ────
bytes_pkt:
    push si                               ; preserve source pointer
    push cx                               ; preserve byte count
    mov di, rbuf                          ; DI = output buffer for hex-encoded bytes
.bp:jcxz .bd                              ; no bytes remain -> terminate response text
    lodsb                                 ; AL = next raw byte from DS:SI
    push cx                               ; preserve remaining byte count during conversion
    mov ah, al                            ; save byte while AL is converted to hex
    shr al, 4                             ; AL = high nibble
    call pnib_buf                         ; append high-nibble ASCII character
    mov al, ah                            ; AL = original byte; low nibble is still present
    call pnib_buf                         ; append low-nibble ASCII character
    pop cx                                ; restore remaining byte count
    dec cx                                ; one raw byte has been encoded
    jmp .bp                               ; convert next byte
.bd:mov byte [di], 0                      ; terminate generated RSP response string
    pop cx                                ; restore caller's CX
    pop si                                ; restore caller's SI
    mov si, rbuf                          ; SI = generated hex string
    jmp pkt_send                          ; send it as an RSP packet

; Write nibble of AL as hex char to [di], increment di
pnib_buf:
    and al, 0x0F                          ; keep only the nibble to convert
    add al, '0'                           ; map values 0..9 to ASCII digits
    cmp al, '9'                           ; does this nibble need A..F encoding?
    jbe .pn                               ; no -> keep decimal digit character
    add al, 7                             ; map ASCII ':'..'?' to uppercase 'A'..'F'
.pn:mov [di], al                          ; append encoded nibble to output
    inc di                                ; advance output pointer
    ret                                   ; return with DI at next free character

; ─── Hex characters → memory (DS:SI, CX count, ES:DI dest) ──
hex_mem:
    push ax                               ; preserve caller's AX
.hm:cmp cx, 0                             ; are all ASCII hex pairs consumed?
    je .hd                                ; yes -> return after restoring AX
    lodsb                                 ; AL = high hex digit of next output byte
    call gnib                             ; AL = decoded high nibble
    mov ah, al                            ; preserve high nibble while reading low one
    lodsb                                 ; AL = low hex digit of next output byte
    call gnib                             ; AL = decoded low nibble
    shl ah, 4                             ; move high nibble to bits 4..7
    or al, ah                             ; combine into complete byte
    stosb                                 ; write byte to ES:DI and advance DI
    sub cx, 2                             ; consumed two source hex characters
    jmp .hm                               ; decode the next byte
.hd:pop ax                                ; restore caller's AX
    ret                                   ; return after writing requested bytes
