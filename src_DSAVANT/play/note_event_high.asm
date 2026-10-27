; auto-generated
note_event_high:
    call string_loc_SLGG             ; 0x0e24
    cmp byte [cs:cseg_0d3d - IMAGE_BASE], 0xff ; 0x0e27
    jne short .forward1              ; 0x0e2d
    jmp near loc_MRJU                ; 0x0e2f
.forward1:
    cmp byte [cs:cseg_0d3f - IMAGE_BASE], 0 ; 0x0e32
    jne short .forward2              ; 0x0e38
    jmp near loc_JSJL                ; 0x0e3a
.forward2:
    cmp byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x0e3d
    jne short .forward3              ; 0x0e43
    jmp near loc_LPMH                ; 0x0e45
.forward3:
    cmp byte [cs:music_device - IMAGE_BASE], 1 ; 0x0e48
    jmp near loc_LPMH                ; 0x0e4e
string_loc_JSPK:
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
    je short .forward4               ; 0x0e73
    cmp ah, 7                        ; 0x0e75
    je short .forward5               ; 0x0e78
    cmp ah, 8                        ; 0x0e7a
    jne short .forward1              ; 0x0e7d
    jmp near .forward6               ; 0x0e7f
.forward1:
    cmp ah, 9                        ; 0x0e82
    jne short .forward2              ; 0x0e85
    jmp near .forward7               ; 0x0e87
.forward2:
    cmp ah, 0xa                      ; 0x0e8a
    je short .forward3               ; 0x0e8d
    jmp near loc_LPMH                ; 0x0e8f
.forward3:
    mov ah, 0x11                     ; 0x0e92
    call loc_MVUI                    ; 0x0e94
    or al, 1                         ; 0x0e97
    mov ah, 0xbd                     ; 0x0e99
    call opl_write                   ; 0x0e9b
    jmp near loc_MRJU                ; 0x0e9e
.forward4:
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0ea1
    mov byte [cs:opl_note_semitone - IMAGE_BASE], 0x28 ; 0x0ea7
    mov byte [cs:opl_channel_index - IMAGE_BASE], 5 ; 0x0ead
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0eb3
    call opl_pitch_update            ; 0x0eb9
    mov ah, 0x10                     ; 0x0ebc
    call loc_MVUI                    ; 0x0ebe
    mov ah, 0x13                     ; 0x0ec1
    call loc_MVUI                    ; 0x0ec3
    or al, 0x10                      ; 0x0ec6
    mov ah, 0xbd                     ; 0x0ec8
    call opl_write                   ; 0x0eca
    jmp near loc_MRJU                ; 0x0ecd
.forward5:
    mov ah, 0x14                     ; 0x0ed0
    call loc_MVUI                    ; 0x0ed2
    or al, 8                         ; 0x0ed5
    mov ah, 0xbd                     ; 0x0ed7
    call opl_write                   ; 0x0ed9
    jmp near loc_MRJU                ; 0x0edc
.forward6:
    mov ah, 0x12                     ; 0x0edf
    mov byte [cs:opl_note_semitone - IMAGE_BASE], 1 ; 0x0ee1
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0ee7
    mov byte [cs:opl_channel_index - IMAGE_BASE], 7 ; 0x0eed
    call opl_pitch_update            ; 0x0ef3
    call loc_MVUI                    ; 0x0ef6
    or al, 4                         ; 0x0ef9
    mov ah, 0xbd                     ; 0x0efb
    call opl_write                   ; 0x0efd
    jmp near loc_MRJU                ; 0x0f00
.forward7:
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
    inc word [cs:bx + 3]             ; 0x0f2d
    add bx, byte 5                   ; 0x0f31
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f34
    jb short loc_MGMT                ; 0x0f38
    mov cl, byte [cs:cseg_0d48 - IMAGE_BASE] ; 0x0f3a
    xor ch, ch                       ; 0x0f3f
    mov si, cseg_0d49 - IMAGE_BASE   ; 0x0f41
loc_NPTG:
    mov ah, byte [cs:si]             ; 0x0f44
    mov byte [cs:opl_note_index - IMAGE_BASE], ah ; 0x0f47
    cmp byte [cs:cseg_0d47 - IMAGE_BASE], 0 ; 0x0f4c
    jmp near loc_GLKJ                ; 0x0f52
loc_VKUV:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f55
    mov al, byte [cs:opl_note_index - IMAGE_BASE] ; 0x0f58
.back1:
    cmp al, byte [cs:bx + 2]         ; 0x0f5c
    jne short .forward1              ; 0x0f60
    jmp near loc_RUNQ                ; 0x0f62
.forward1:
    inc al                           ; 0x0f65
    add bx, byte 5                   ; 0x0f67
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f6a
    jb short .back1                  ; 0x0f6e
    jmp near loc_NGKV                ; 0x0f70
loc_GLKJ:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f73
    mov dx, 0                        ; 0x0f76
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0f79
    xor al, al                       ; 0x0f7f
loc_OIUN:
    cmp byte [cs:bx], 0              ; 0x0f81
    jne short loc_KRQV               ; 0x0f85
    cmp dx, word [cs:bx + 3]         ; 0x0f87
    ja short loc_KRQV                ; 0x0f8b
    mov dx, word [cs:bx + 3]         ; 0x0f8d
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0f91
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0f95
loc_KRQV:
    add bx, byte 5                   ; 0x0f9a
    inc al                           ; 0x0f9d
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0f9f
    jb short loc_OIUN                ; 0x0fa4
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0fa6
    cmp al, 0xff                     ; 0x0faa
    je short loc_VJMI                ; 0x0fac
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0fae
    jmp near loc_VQRR                ; 0x0fb3
loc_VJMI:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0fb6
    xor al, al                       ; 0x0fb9
    mov dx, 0                        ; 0x0fbb
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fbe
    mov ah, byte [cs:opl_note_index - IMAGE_BASE] ; 0x0fc3
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0fc8
loc_KQGN:
    cmp ah, byte [cs:bx + 2]         ; 0x0fce
    jne short loc_LGMV               ; 0x0fd2
    cmp dx, word [cs:bx + 3]         ; 0x0fd4
    ja short loc_LGMV                ; 0x0fd8
    mov dx, word [cs:bx + 3]         ; 0x0fda
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0fde
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fe2
loc_LGMV:
    add bx, byte 5                   ; 0x0fe7
    inc al                           ; 0x0fea
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0fec
    jb short loc_KQGN                ; 0x0ff1
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0ff3
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0ff8
    cmp al, 0xff                     ; 0x0ffc
    jne short loc_RUNQ               ; 0x0ffe
loc_NGKV:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x1000
    xor al, al                       ; 0x1003
    mov dx, 0                        ; 0x1005
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1008
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x100c
    mov ah, byte [cs:opl_note_index - IMAGE_BASE] ; 0x1011
loc_ILTG:
    cmp dx, word [cs:bx + 3]         ; 0x1016
    ja short loc_JHLQ                ; 0x101a
    mov dx, word [cs:bx + 3]         ; 0x101c
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1020
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x1024
loc_JHLQ:
    add bx, byte 5                   ; 0x1029
    inc al                           ; 0x102c
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x102e
    jb short loc_ILTG                ; 0x1033
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x1035
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x103a
loc_VQRR:
    mov byte [cs:opl_channel_index - IMAGE_BASE], al ; 0x103e
    mov al, byte [cs:bx + 2]         ; 0x1042
    cmp al, byte [cs:opl_note_index - IMAGE_BASE] ; 0x1046
    je short loc_RUNQ                ; 0x104b
    call loc_IMHI                    ; 0x104d
loc_RUNQ:
    mov al, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x1050
    mov byte [cs:bx], al             ; 0x1054
    mov word [cs:bx + 3], 0          ; 0x1057
    mov al, byte [cs:opl_note_semitone - IMAGE_BASE] ; 0x105d
    mov byte [cs:bx + 1], al         ; 0x1061
    mov al, byte [cs:si]             ; 0x1065
    mov byte [cs:bx + 2], al         ; 0x1068
    call loc_ONLU                    ; 0x106c
    mov byte [cs:note_started - IMAGE_BASE], 1 ; 0x106f
    inc si                           ; 0x1075
    dec cx                           ; 0x1076
    je short loc_RUON                ; 0x1077
    jmp near loc_NPTG                ; 0x1079
loc_RUON:
    pop dx                           ; 0x107c
    pop si                           ; 0x107d
    jmp near loc_MRJU                ; 0x107e
