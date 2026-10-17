; auto-generated
; asm only
loc_0875:
    mov al, byte [cs:cseg_086e - IMAGE_BASE] ; 0x0875
    cmp al, byte [cs:cseg_086f - IMAGE_BASE] ; 0x0879
    je short loc_089e                ; 0x087e
    inc byte [cs:cseg_086e - IMAGE_BASE] ; 0x0880
    mov dx, 0x389                    ; 0x0885
    mov bx, 0x1a3a                   ; 0x0888
    cs xlatb                         ; 0x088b
    out dx, al                       ; 0x088d
    dec word [cs:cseg_0a81 - IMAGE_BASE] ; 0x088e
    je short @..io_loc_TGPU.l1       ; 0x0893
    mov al, 0x20                     ; 0x0895
    out 0x20, al                     ; 0x0897
    pop bx                           ; 0x0899
    pop dx                           ; 0x089a
    pop ds                           ; 0x089b
    pop ax                           ; 0x089c
    iret                             ; 0x089d
loc_089e:
    mov byte [cs:cseg_08ae - IMAGE_BASE], 0 ; 0x089e
    mov al, 0x20                     ; 0x08a4
    out 0x20, al                     ; 0x08a6
    pop bx                           ; 0x08a8
    pop dx                           ; 0x08a9
    pop ds                           ; 0x08aa
    pop ax                           ; 0x08ab
    iret                             ; 0x08ac
    db 0xb0
cseg_08ae:
    db 0x00
