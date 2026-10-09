main:
    mov ax, 0xfffe                   ; 0x2dd5
    call aztec_cret                  ; 0x2dd8
    mov word [data_830a], 0          ; 0x2ddb
@..main.l1:
    mov ax, word [data_830a]         ; 0x2de1
    jmp near @..main.l2              ; 0x2de4
    mov ax, 0                        ; 0x2de7
    push ax                          ; 0x2dea
    mov ax, 3                        ; 0x2deb
    push ax                          ; 0x2dee
    call loc_27e9                    ; 0x2def
    add sp, byte 4                   ; 0x2df2
    mov ax, 0xbfa                    ; 0x2df5
    push ax                          ; 0x2df8
    call loc_4379                    ; 0x2df9
    pop cx                           ; 0x2dfc
    mov word [bp - 0x0002], ax       ; 0x2dfd
    jmp near @..main.l3              ; 0x2e00
    mov ax, 0                        ; 0x2e03
    push ax                          ; 0x2e06
    mov ax, 1                        ; 0x2e07
    push ax                          ; 0x2e0a
    call loc_27e9                    ; 0x2e0b
    add sp, byte 4                   ; 0x2e0e
    mov ax, 0xc00                    ; 0x2e11
    push ax                          ; 0x2e14
    call loc_4379                    ; 0x2e15
    pop cx                           ; 0x2e18
    mov word [bp - 0x0002], ax       ; 0x2e19
    jmp near @..main.l3              ; 0x2e1c
    mov ax, 0xc06                    ; 0x2e1f
    push ax                          ; 0x2e22
    call loc_4379                    ; 0x2e23
    pop cx                           ; 0x2e26
    mov word [bp - 0x0002], ax       ; 0x2e27
    jmp near @..main.l3              ; 0x2e2a
    mov ax, 0xc0c                    ; 0x2e2d
    push ax                          ; 0x2e30
    call loc_4379                    ; 0x2e31
    pop cx                           ; 0x2e34
    mov word [bp - 0x0002], ax       ; 0x2e35
    jmp near @..main.l3              ; 0x2e38
    mov ax, 0xc12                    ; 0x2e3b
    push ax                          ; 0x2e3e
    call loc_4379                    ; 0x2e3f
    pop cx                           ; 0x2e42
    mov word [bp - 0x0002], ax       ; 0x2e43
    jmp near @..main.l3              ; 0x2e46
    push word [data_830c]            ; 0x2e49
    mov ax, data_0002                ; 0x2e4d
    push ax                          ; 0x2e50
    call loc_27e9                    ; 0x2e51
    add sp, byte 4                   ; 0x2e54
    mov word [data_830a], 5          ; 0x2e57
    mov ax, 0xc18                    ; 0x2e5d
    push ax                          ; 0x2e60
    call loc_4379                    ; 0x2e61
    pop cx                           ; 0x2e64
    mov word [bp - 0x0002], ax       ; 0x2e65
    jmp near @..main.l3              ; 0x2e68
    mov ax, 0xc1e                    ; 0x2e6b
    push ax                          ; 0x2e6e
    call loc_4379                    ; 0x2e6f
    pop cx                           ; 0x2e72
    mov word [bp - 0x0002], ax       ; 0x2e73
    jmp near @..main.l3              ; 0x2e76
    mov ax, 0xc24                    ; 0x2e79
    push ax                          ; 0x2e7c
    call loc_4379                    ; 0x2e7d
    pop cx                           ; 0x2e80
    mov word [bp - 0x0002], ax       ; 0x2e81
    jmp near @..main.l3              ; 0x2e84
    mov ax, 0xc2a                    ; 0x2e87
    push ax                          ; 0x2e8a
    call loc_4379                    ; 0x2e8b
    pop cx                           ; 0x2e8e
    mov word [bp - 0x0002], ax       ; 0x2e8f
    jmp near @..main.l3              ; 0x2e92
    mov ax, 0xc30                    ; 0x2e95
    push ax                          ; 0x2e98
    call loc_4379                    ; 0x2e99
    pop cx                           ; 0x2e9c
    mov word [bp - 0x0002], ax       ; 0x2e9d
    jmp near @..main.l3              ; 0x2ea0
    mov ax, 0xc36                    ; 0x2ea3
    push ax                          ; 0x2ea6
    call loc_4379                    ; 0x2ea7
    pop cx                           ; 0x2eaa
    mov word [bp - 0x0002], ax       ; 0x2eab
    jmp short @..main.l3             ; 0x2eae
    mov ax, 0xc3c                    ; 0x2eb0
    push ax                          ; 0x2eb3
    call loc_4379                    ; 0x2eb4
    pop cx                           ; 0x2eb7
    mov word [bp - 0x0002], ax       ; 0x2eb8
    jmp short @..main.l3             ; 0x2ebb
    mov ax, 0xc42                    ; 0x2ebd
    push ax                          ; 0x2ec0
    call loc_4379                    ; 0x2ec1
    pop cx                           ; 0x2ec4
    mov word [bp - 0x0002], ax       ; 0x2ec5
    jmp short @..main.l3             ; 0x2ec8
    mov ax, 0                        ; 0x2eca
    push ax                          ; 0x2ecd
    call loc_0242                    ; 0x2ece
    pop cx                           ; 0x2ed1
    mov ax, 0                        ; 0x2ed2
    push ax                          ; 0x2ed5
    call loc_4f73                    ; 0x2ed6
    pop cx                           ; 0x2ed9
    jmp short @..main.l3             ; 0x2eda

    db 0xf5, 0x2b, 0xf5, 0x2b, 0xf5, 0x2b, 0xca, 0x2c, 0x11
    db ',],],'
    db 0x03, 0x2c, 0xe7
    db '+)-y,y,'
    db 0x87, 0x2c, 0x95, 0x2c, 0x79, 0x2c, 0xb0, 0x2c, 0x3b, 0x2c, 0x1f, 0x2c, 0xbd, 0x2c, 0xa3, 0x2c
    db 0xa3, 0x2c, 0xb0
    db ',-,k,'
    db 0x03, 0x2c, 0x49, 0x2c, 0xb0, 0x2c, 0x6b, 0x2c, 0xb0, 0x2c, 0xb0
    db ',k,k,'

@..main.l2:
    cmp ax, strict word 0x20         ; 0x2f1c
    jae short @..main.l3             ; 0x2f1f
    xchg bx, ax                      ; 0x2f21
    shl bx, 1                        ; 0x2f22
    jmp [cs:bx + 0x2cdc]             ; 0x2f24
@..main.l3:
    mov ax, 0                        ; 0x2f29
    push ax                          ; 0x2f2c
    call loc_415b                    ; 0x2f2d
    pop cx                           ; 0x2f30
    jmp near @..main.l1              ; 0x2f31
    db 0xc3
