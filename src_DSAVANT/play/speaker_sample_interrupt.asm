; auto-generated
speaker_sample_interrupt:
    cli                              ; 0x0a41
    mov al, byte [di]                ; 0x0a42
    cs xlatb                         ; 0x0a44
    mov cl, al                       ; 0x0a46
    mov al, 0xb0                     ; 0x0a48
    out 0x43, al                     ; 0x0a4a
    mov al, cl                       ; 0x0a4c
    out dx, al                       ; 0x0a4e
    xor al, al                       ; 0x0a4f
    out dx, al                       ; 0x0a51
__zinsn_0a52:
    add ah, 0x80                     ; 0x0a52
    adc di, byte 0                   ; 0x0a55
    jb short @..speaker_sample_interrupt.l1 ; 0x0a58
    mov al, 0x20                     ; 0x0a5a
    out 0x20, al                     ; 0x0a5c
    iret                             ; 0x0a5e
@..speaker_sample_interrupt.l1:
    call sound_stop_and_restore_timer ; 0x0a5f
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x0a62
    out 0x21, al                     ; 0x0a66
    mov al, 0x20                     ; 0x0a68
    out 0x20, al                     ; 0x0a6a
    iret                             ; 0x0a6c
