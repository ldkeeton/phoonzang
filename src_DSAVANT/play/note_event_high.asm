; auto-generated
note_event_high:
    call string_loc_SLGG             ; 0x0e24
    cmp byte [cs:cseg_0d3d - IMAGE_BASE], 0xff ; 0x0e27
    jne short @..note_event_high.l1  ; 0x0e2d
    jmp near loc_MRJU                ; 0x0e2f
@..note_event_high.l1:
    cmp byte [cs:cseg_0d3f - IMAGE_BASE], 0 ; 0x0e32
    jne short @..note_event_high.l2  ; 0x0e38
    jmp near loc_JSJL                ; 0x0e3a
@..note_event_high.l2:
    cmp byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x0e3d
    jne short @..note_event_high.l3  ; 0x0e43
    jmp near loc_LPMH                ; 0x0e45
@..note_event_high.l3:
    cmp byte [cs:music_device - IMAGE_BASE], 1 ; 0x0e48
    jmp near loc_LPMH                ; 0x0e4e
loc_MNKP:
    mov al, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x0e51
    xor ah, ah                       ; 0x0e55
    mov bx, cseg_1a3a - IMAGE_BASE   ; 0x0e57
    mov cl, byte [cs:playback_volume - IMAGE_BASE] ; 0x0e5a
    mul cl                           ; 0x0e5f
    mov al, ah                       ; 0x0e61
    mov cl, 0x3f                     ; 0x0e63
    sub cl, al                       ; 0x0e65
    mov ah, byte [cs:cseg_0d46 - IMAGE_BASE] ; 0x0e67
    mov al, byte [cs:cseg_14e6 - IMAGE_BASE] ; 0x0e6c
    cmp ah, 6                        ; 0x0e70
    je short @..loc_MNKP.l4          ; 0x0e73
    cmp ah, 7                        ; 0x0e75
    je short @..loc_MNKP.l5          ; 0x0e78
    cmp ah, 8                        ; 0x0e7a
    jne short @..loc_MNKP.l1         ; 0x0e7d
    jmp near @..loc_MNKP.l6          ; 0x0e7f
@..loc_MNKP.l1:
    cmp ah, 9                        ; 0x0e82
    jne short @..loc_MNKP.l2         ; 0x0e85
    jmp near @..loc_MNKP.l7          ; 0x0e87
@..loc_MNKP.l2:
    cmp ah, 0xa                      ; 0x0e8a
    je short @..loc_MNKP.l3          ; 0x0e8d
    jmp near loc_LPMH                ; 0x0e8f
@..loc_MNKP.l3:
    mov ah, 0x11                     ; 0x0e92
    call loc_MVUI                    ; 0x0e94
    or al, 1                         ; 0x0e97
    mov ah, 0xbd                     ; 0x0e99
    call opl_write                   ; 0x0e9b
    jmp near loc_MRJU                ; 0x0e9e
@..loc_MNKP.l4:
    mov byte [cs:cseg_1774 - IMAGE_BASE], 0 ; 0x0ea1
    mov byte [cs:cseg_0d3c - IMAGE_BASE], 0x28 ; 0x0ea7
    mov byte [cs:cseg_0d40 - IMAGE_BASE], 5 ; 0x0ead
    mov byte [cs:cseg_1774 - IMAGE_BASE], 0 ; 0x0eb3
    call loc_GOTP_17f0               ; 0x0eb9
    mov ah, 0x10                     ; 0x0ebc
    call loc_MVUI                    ; 0x0ebe
    mov ah, 0x13                     ; 0x0ec1
    call loc_MVUI                    ; 0x0ec3
    or al, 0x10                      ; 0x0ec6
    mov ah, 0xbd                     ; 0x0ec8
    call opl_write                   ; 0x0eca
    jmp near loc_MRJU                ; 0x0ecd
@..loc_MNKP.l5:
    mov ah, 0x14                     ; 0x0ed0
    call loc_MVUI                    ; 0x0ed2
    or al, 8                         ; 0x0ed5
    mov ah, 0xbd                     ; 0x0ed7
    call opl_write                   ; 0x0ed9
    jmp near loc_MRJU                ; 0x0edc
@..loc_MNKP.l6:
    mov ah, 0x12                     ; 0x0edf
    mov byte [cs:cseg_0d3c - IMAGE_BASE], 1 ; 0x0ee1
    mov byte [cs:cseg_1774 - IMAGE_BASE], 0 ; 0x0ee7
    mov byte [cs:cseg_0d40 - IMAGE_BASE], 7 ; 0x0eed
    call loc_GOTP_17f0               ; 0x0ef3
    call loc_MVUI                    ; 0x0ef6
    or al, 4                         ; 0x0ef9
    mov ah, 0xbd                     ; 0x0efb
    call opl_write                   ; 0x0efd
    jmp near loc_MRJU                ; 0x0f00
@..loc_MNKP.l7:
    mov ah, 0x15                     ; 0x0f03
    call loc_MVUI                    ; 0x0f05
    or al, 2                         ; 0x0f08
    mov ah, 0xbd                     ; 0x0f0a
    call opl_write                   ; 0x0f0c
    jmp near loc_MRJU                ; 0x0f0f
loc_MVUI:
    push ax                          ; 0x0f12
    push bx                          ; 0x0f13
    add ah, 0x40                     ; 0x0f14
    mov al, ch                       ; 0x0f17
    mov bx, cseg_1429 - IMAGE_BASE   ; 0x0f19
    cs xlatb                         ; 0x0f1c
    and al, 0xc0                     ; 0x0f1e
    or al, cl                        ; 0x0f20
    call opl_write                   ; 0x0f22
    pop bx                           ; 0x0f25
    pop ax                           ; 0x0f26
    ret                              ; 0x0f27
loc_LPMH:
    push si                          ; 0x0f28
    push dx                          ; 0x0f29
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f2a
loc_MGMT:
    inc word [cs:bx + 0x3]           ; 0x0f2d
    add bx, byte 5                   ; 0x0f31
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f34
    jb short loc_MGMT                ; 0x0f38
    mov cl, byte [cs:cseg_0d48 - IMAGE_BASE] ; 0x0f3a
    xor ch, ch                       ; 0x0f3f
    mov si, cseg_0d49 - IMAGE_BASE   ; 0x0f41
loc_NPTG:
    mov ah, byte [cs:si]             ; 0x0f44
    mov byte [cs:cseg_0d3e - IMAGE_BASE], ah ; 0x0f47
    cmp byte [cs:cseg_0d47 - IMAGE_BASE], 0 ; 0x0f4c
    jmp near loc_GLKJ                ; 0x0f52
