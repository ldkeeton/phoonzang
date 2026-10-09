aztec_vfprintf:
    push bp                          ; 0x0944
    mov bp, sp                       ; 0x0945
    push word [bp + 0x8]             ; 0x0947
    push word [bp + 0x6]             ; 0x094a
    push word [bp + 0x4]             ; 0x094d
    call loc_040f                    ; 0x0950
    add sp, byte 6                   ; 0x0953
    mov ax, word [bp + 0xa]          ; 0x0956
    shl ax, 1                        ; 0x0959
    mov bx, ax                       ; 0x095b
    push word [bx + 0x160]           ; 0x095d
    mov ax, 0x16                     ; 0x0961
    push ax                          ; 0x0964
    push word [bp + 0x4]             ; 0x0965
    call loc_040f                    ; 0x0968
    add sp, byte 6                   ; 0x096b
    push word [bp + 0xc]             ; 0x096e
    mov ax, data_002e                ; 0x0971
    push ax                          ; 0x0974
    push word [bp + 0x4]             ; 0x0975
    call loc_040f                    ; 0x0978
    add sp, byte 6                   ; 0x097b
    push word [bp + 0xe]             ; 0x097e
    mov ax, 0x3a                     ; 0x0981
    push ax                          ; 0x0984
    push word [bp + 0x4]             ; 0x0985
    call loc_040f                    ; 0x0988
    add sp, byte 6                   ; 0x098b
    mov sp, bp                       ; 0x098e
    pop bp                           ; 0x0990
    ret                              ; 0x0991
loc_0992:
    push bp                          ; 0x0992
    mov bp, sp                       ; 0x0993
    mov ax, 0x144f                   ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0                        ; 0x0999
    push ax                          ; 0x099c
    mov ax, 0x16                     ; 0x099d
    push ax                          ; 0x09a0
    call loc_040f                    ; 0x09a1
    add sp, byte 6                   ; 0x09a4
    push word [bp + 0x4]             ; 0x09a7
    push word [bp + 0x4]             ; 0x09aa
    call aztec_strlen                ; 0x09ad
    pop cx                           ; 0x09b0
    inc ax                           ; 0x09b1
    mov cx, data_0002                ; 0x09b2
    cwd                              ; 0x09b5
    idiv cx                          ; 0x09b6
    mov cx, ax                       ; 0x09b8
    mov ax, 0x28                     ; 0x09ba
    sub ax, cx                       ; 0x09bd
    push ax                          ; 0x09bf
    mov ax, 0x16                     ; 0x09c0
    push ax                          ; 0x09c3
    call loc_040f                    ; 0x09c4
    add sp, byte 6                   ; 0x09c7
    call loc_0452                    ; 0x09ca
@..local.l22:
    call dos_con_in_noecho           ; 0x09cd
    cmp ax, strict word 0xd          ; 0x09d0
    je short @..local.l23            ; 0x09d3
    jmp short @..local.l22           ; 0x09d5
@..local.l23:
    mov ax, 0x149f                   ; 0x09d7
    push ax                          ; 0x09da
    mov ax, 0                        ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x16                     ; 0x09df
    push ax                          ; 0x09e2
    call loc_040f                    ; 0x09e3
    add sp, byte 6                   ; 0x09e6
    mov ax, 0x2648                   ; 0x09e9
    push ax                          ; 0x09ec
    push ax                          ; 0x09ed
    call aztec_strlen                ; 0x09ee
    pop cx                           ; 0x09f1
    inc ax                           ; 0x09f2
    mov cx, data_0002                ; 0x09f3
    cwd                              ; 0x09f6
    idiv cx                          ; 0x09f7
    mov cx, ax                       ; 0x09f9
    mov ax, 0x28                     ; 0x09fb
    sub ax, cx                       ; 0x09fe
    push ax                          ; 0x0a00
    mov ax, 0x16                     ; 0x0a01
    push ax                          ; 0x0a04
    call loc_040f                    ; 0x0a05
    add sp, byte 6                   ; 0x0a08
    mov sp, bp                       ; 0x0a0b
    pop bp                           ; 0x0a0d
    ret                              ; 0x0a0e
