; auto-generated
music_start:
    push bp                          ; 0x0023
    mov bp, sp                       ; 0x0024
    push bx                          ; 0x0026
    mov byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x0027
    mov ax, word [bp + 8]            ; 0x002d
    mov word [cs:stream_offset - IMAGE_BASE], ax ; 0x0030
    mov word [cs:stream_start_offset - IMAGE_BASE], ax ; 0x0034
    mov ax, word [bp + 0xa]          ; 0x0038
    mov word [cs:stream_segment - IMAGE_BASE], ax ; 0x003b
    mov word [cs:stream_start_segment - IMAGE_BASE], ax ; 0x003f
    mov ax, word [bp + 0xc]          ; 0x0043
    mov byte [cs:loop_at_end - IMAGE_BASE], al ; 0x0046
    mov word [cs:tick_divider - IMAGE_BASE], 1 ; 0x004a
    mov word [cs:restart_delay - IMAGE_BASE], 1 ; 0x0051
    mov bx, opl_voice_records - IMAGE_BASE ; 0x0058
.back1:
    mov byte [cs:bx], 0              ; 0x005b
    mov byte [cs:bx + 1], 0          ; 0x005f
    mov byte [cs:bx + 2], 0xff       ; 0x0064
    mov word [cs:bx + 3], 0          ; 0x0069
    add bx, byte 5                   ; 0x006f
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0072
    jb short .back1                  ; 0x0076
    mov al, byte [cs:music_device - IMAGE_BASE] ; 0x0078
    mov ax, word [cs:chain_period - IMAGE_BASE] ; 0x007c
    mov word [cs:chain_countdown - IMAGE_BASE], ax ; 0x0080
    call loc_HPIL                    ; 0x0084
    cmp ax, strict word 0            ; 0x0087
    jne short .forward1              ; 0x008a
    call hook_int08_and_configure_pit ; 0x008c
    mov byte [cs:music_enabled - IMAGE_BASE], 1 ; 0x008f
.forward1:
    pop bx                           ; 0x0095
    pop bp                           ; 0x0096
    ret                              ; 0x0097
loc_HPIL:
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x0098
    xor bh, bh                       ; 0x009d
    shl bx, 1                        ; 0x009f
    mov ax, 0                        ; 0x00a1
    call [cs:bx + jumptable_00aa - IMAGE_BASE] ; 0x00a4
    ret                              ; 0x00a9
jumptable_00aa:
    dw device_nop - IMAGE_BASE                 ; 0x00aa
    dw opl_init - IMAGE_BASE                   ; 0x00ac
    dw device_nop - IMAGE_BASE                 ; 0x00ae
    dw device_nop - IMAGE_BASE                 ; 0x00b0
    dw opl_init - IMAGE_BASE                   ; 0x00b2
    dw mpu401_reset_with_retries - IMAGE_BASE  ; 0x00b4
