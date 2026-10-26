; auto-generated
io_loc_PNPV:
    push ax                          ; 0x099f
    push ds                          ; 0x09a0
    push dx                          ; 0x09a1
    push bx                          ; 0x09a2
__zinsn_09a3:
    mov ax, 0                        ; 0x09a3
    mov ds, ax                       ; 0x09a6
__zinsn_09a8:
    mov al, byte [0]                 ; 0x09a8
    mov dx, word [cs:cseg_0a8d - IMAGE_BASE] ; 0x09ab
    mov bx, sample_count_table - IMAGE_BASE ; 0x09b0
    cs xlatb                         ; 0x09b3
    out dx, al                       ; 0x09b5
__zinsn_09b6:
    add byte [cs:sample_step_fraction - IMAGE_BASE], 0x80 ; 0x09b6
    adc word [cs:cseg_09a9 - IMAGE_BASE], byte 0 ; 0x09bc
    jb short loc_0969                ; 0x09c2
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x09c4
    je short loc_095d                ; 0x09c9
    mov al, 0x20                     ; 0x09cb
    out 0x20, al                     ; 0x09cd
    pop bx                           ; 0x09cf
    pop dx                           ; 0x09d0
    pop ds                           ; 0x09d1
    pop ax                           ; 0x09d2
    iret                             ; 0x09d3
