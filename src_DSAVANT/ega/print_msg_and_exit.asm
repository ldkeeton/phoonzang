; auto-generated
print_msg_and_exit:
    mov ah, 9                        ; 0x3a0f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3a13
    int 0x21 ; DOS function dispatcher
msg_frame_too_big:
    or ax, 0x70a                     ; 0x3a18
    inc si                           ; 0x3a1b
    jb short 0x3a7f                  ; 0x3a1c
    insw                             ; 0x3a1e
    db 0x65, 0x20
frame_digit_hi:
    db 0x30
frame_digit_lo:
    xor byte [bx + si], ah           ; 0x3a22
    je short 0x3a95                  ; 0x3a24
    outsw                            ; 0x3a26
    and byte [bp + si + 0x69], ah    ; 0x3a27
    and byte [ecx + 0x6e], ch        ; 0x3a2a
    and byte [bp + di + 0x6c], dh    ; 0x3a2e
    outsw                            ; 0x3a31
    je short 0x3a54                  ; 0x3a32
slot_digit_hi:
    db 0x30
slot_digit_lo:
    xor byte [0x0a00], ch            ; 0x3a35
    and al, 0xb1                     ; 0x3a39
loc_3a3a:
    add dl, dl                       ; 0x3a3b
    loopne 0x39fa                    ; 0x3a3d
    add al, byte [bx + si]           ; 0x3a3f
    add bx, ax                       ; 0x3a41
    mov ax, word [bx]                ; 0x3a43
    mov dx, word [bx + 0x2]          ; 0x3a45
    mov bx, ds                       ; 0x3a48
    add bx, dx                       ; 0x3a4a
    mov ds, bx                       ; 0x3a4c
    mov bx, ax                       ; 0x3a4e
    ret                              ; 0x3a50
