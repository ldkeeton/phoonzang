; auto-generated
unpack_record:
    push bp                          ; 0x4002
    mov bp, sp                       ; 0x4003
    cld                              ; 0x4005
    sub sp, byte 4                   ; 0x4006
    push ds                          ; 0x4009
    push es                          ; 0x400a
    push si                          ; 0x400b
    push di                          ; 0x400c
    mov ax, ds                       ; 0x400d
    mov es, ax                       ; 0x400f
    mov si, word [bp + 4]            ; 0x4011
    mov di, word [bp + 6]            ; 0x4014
    mov ax, word [cs:misc_table_seg - IMAGE_BASE] ; 0x4017
    mov es, ax                       ; 0x401b
    lodsb                            ; 0x401d
    xor ah, ah                       ; 0x401e
    mov word [bp - 4], ax            ; 0x4020
    mov word [bp - 2], 8             ; 0x4023
    lodsb                            ; 0x4028
@..unpack_record.l1:
    cmp word [bp - 4], byte 0        ; 0x4029
    je short @..unpack_record.l2     ; 0x402d
    call ds_string_loc_SSGO          ; 0x402f
    mov byte [di], bl                ; 0x4032
    inc di                           ; 0x4034
    dec word [bp - 4]                ; 0x4035
    jmp short @..unpack_record.l1    ; 0x4038
@..unpack_record.l2:
    mov word [di], 0                 ; 0x403a
    pop di                           ; 0x403e
    pop si                           ; 0x403f
    pop es                           ; 0x4040
    pop ds                           ; 0x4041
    mov sp, bp                       ; 0x4042
    pop bp                           ; 0x4044
    ret                              ; 0x4045
