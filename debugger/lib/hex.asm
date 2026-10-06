; hex.asm — hex nibble/byte/address conversion

; Write nibble of AL as hex char via serial
pnib:                                      ; send low nibble of AL as one ASCII hex digit
    and al, 0x0F                          ; discard upper nibble
    add al, '0'                           ; map 0..9 to ASCII digits
    cmp al, '9'                           ; did the nibble map above '9'?
    jbe .pn                               ; digits already have correct ASCII values
    add al, 7                             ; map 10..15 from ':'..'?' to 'A'..'F'
.pn:jmp ser_putc                          ; transmit resulting hex character

; Write byte in AL as two hex chars via serial
phex8:                                    ; send AL as two uppercase hexadecimal digits
    push ax                               ; preserve input and caller's AX
    push cx                               ; preserve caller's CX
    mov cx, ax                            ; CL = original byte for second digit
    shr al, 4                             ; AL = high nibble
    call pnib                             ; send high nibble
    mov al, cl                            ; AL = original byte, low nibble still intact
    call pnib                             ; send low nibble
    pop cx                                ; restore caller's CX
    pop ax                                ; restore caller's AX
    ret                                   ; return after transmitting both digits

; Convert ASCII hex char in AL to nibble
gnib:
    sub al, '0'                           ; tentatively map ASCII '0'..'9' to 0..9
    cmp al, 9                             ; is the character a decimal digit?
    jbe .gn                               ; keep the digit value
    and al, ~0x20                         ; normalize lowercase ASCII to uppercase
    sub al, 7                             ; map 'A'..'F' to nibble values 10..15
.gn:ret                                   ; return parsed nibble in AL

; Parse hex string at DS:SI into DX:AX, advance SI past hex chars
ph32:
    push bx                               ; preserve caller's BX
    push cx                               ; preserve caller's CX
    xor dx, dx                            ; clear upper 16 bits of 32-bit result
    xor cx, cx                            ; clear lower 16 bits of 32-bit result
.ph:lodsb                                 ; read next ASCII character from DS:SI
    cmp al, '0'                           ; below '0' means end of hex digits
    jb .pd                                ; finish parsing before this delimiter
    cmp al, '9'                           ; decimal digit range ends at '9'
    ja .a1                                ; otherwise try an alphabetic hex digit
    sub al, '0'                           ; convert ASCII digit to nibble
    jmp .sv                               ; append nibble to 32-bit result
.a1:and al, ~0x20                         ; accept lowercase by uppercasing ASCII letter
    cmp al, 'A'                           ; reject characters before 'A'
    jb .pd                                ; non-hex delimiter ends the address
    cmp al, 'F'                           ; reject characters after 'F'
    ja .pd                                ; non-hex delimiter ends the address
    sub al, 'A' - 10                      ; convert A..F to nibble 10..15
.sv:mov bl, al                            ; BL = current four-bit digit
    shl cx, 1                             ; shift lower result left, carry into DX
    rcl dx, 1                             ; propagate carry into upper result word
    shl cx, 1                             ; repeat four times to make room for a nibble
    rcl dx, 1                             ; propagate next carry into upper result
    shl cx, 1                             ; shift for the third nibble bit
    rcl dx, 1                             ; propagate third carry into upper result
    shl cx, 1                             ; finish four-bit shift for this digit
    rcl dx, 1                             ; DX:CX now has four empty low bits
    or cl, bl                             ; append nibble to low end of DX:CX
    jmp .ph                               ; parse next character
.pd:dec si                                ; leave SI pointing at delimiter for caller
    mov ax, cx                            ; return lower half in AX, upper half in DX
    pop cx                                ; restore caller's CX
    pop bx                                ; restore caller's BX
    ret                                   ; parsed 32-bit value is DX:AX
