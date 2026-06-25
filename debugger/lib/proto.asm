; proto.asm — GDB remote protocol packet send/receive

; ─── GDB packet send ────────────────────────────────
; DS:SI = null-terminated data; retries on NAK
pkt_send:
    push si
    push cx
    push bx
    mov bx, si
    xor cx, cx
.cs:lodsb
    cmp al, 0
    je .ce
    add cl, al
    adc ch, 0
    jmp .cs
.ce:mov al, '$'
    call ser_putc
    mov si, bx
.ds:lodsb
    cmp al, 0
    je .de
    call ser_putc
    jmp .ds
.de:mov al, '#'
    call ser_putc
    mov ax, cx
    call phex8
    call ser_getc
    cmp al, '+'
    je .ak
    pop bx
    pop cx
    pop si
    jmp pkt_send
.ak:pop bx
    pop cx
    pop si
    ret

pkt_send_trap:
    mov si, s_trap
    jmp pkt_send

; ─── GDB packet read ────────────────────────────────
; Returns CX=length, SI=rbuf.
pkt_read:
    push di
    push ax
    push bx
    mov di, rbuf
.wd:call ser_getc
    cmp al, '$'
    jne .wd
    jmp .go
.go:xor cx, cx
.rl:call ser_getc
    cmp al, '#'
    je .gc
    cmp al, '$'
    je .go
    cmp cx, BUF_SZ-1
    jae .rl
    mov [di], al
    inc di
    inc cx
    jmp .rl
.gc:mov byte [di], 0
    call ser_getc        ; al = high hex char (first after '#')
    push ax              ; save high char
    call ser_getc        ; al = low hex char
    mov bx, ax           ; bl = low char
    pop ax               ; al = high char
    call gnib            ; al = high nibble
    shl al, 1
    shl al, 1
    shl al, 1
    shl al, 1            ; al = high nibble << 4
    mov ah, al           ; ah = high nibble << 4
    mov al, bl           ; al = low char
    call gnib            ; al = low nibble
    or al, ah            ; al = expected checksum byte
    mov dl, al           ; dl = expected checksum (safe from loop below)

    ; compute checksum of received packet data
    xor ax, ax
    mov si, rbuf
    mov di, cx
.cl:cmp di, 0
    je .cd
    xor bx, bx
    mov bl, [si]
    add ax, bx
    inc si
    dec di
    jmp .cl
.cd:cmp al, dl           ; compare low byte of sum with expected
    je .ack
    push ax
    push dx
    mov al, '-'
    call ser_putc
    mov al, 'e'
    call ser_putc
    pop dx
    mov al, dl
    call phex8
    mov al, ':'
    call ser_putc
    pop ax
    call phex8
    jmp .wd
.ack:mov al, '+'
    call ser_putc
    clc
.px:pop bx
    pop ax
    pop di
    mov si, rbuf
    ret

; ─── Binary bytes → hex packet (DS:SI, CX count) ────
bytes_pkt:
    push si
    push cx
    mov di, rbuf
.bp:jcxz .bd
    lodsb
    push cx
    mov ah, al
    shr al, 4
    call pnib_buf
    mov al, ah
    call pnib_buf
    pop cx
    dec cx
    jmp .bp
.bd:mov byte [di], 0
    pop cx
    pop si
    mov si, rbuf
    jmp pkt_send

; Write nibble of AL as hex char to [di], increment di
pnib_buf:
    and al, 0x0F
    add al, '0'
    cmp al, '9'
    jbe .pn
    add al, 7
.pn:mov [di], al
    inc di
    ret

; ─── Hex characters → memory (DS:SI, CX count, ES:DI dest) ──
hex_mem:
    push ax
.hm:cmp cx, 0
    je .hd
    lodsb
    call gnib
    mov ah, al
    lodsb
    call gnib
    shl ah, 4
    or al, ah
    stosb
    sub cx, 2
    jmp .hm
.hd:pop ax
    ret
