; auto-generated
play_set_device:
    mov ah, 0                        ; 0x0322
    int 0x13 ; BIOS disk: reset disk system
    cmp byte [bp + 0x15], 4          ; 0x0326
    jne short .forward1              ; 0x032a
    mov byte [bp + 0x15], 1          ; 0x032c
.forward1:
    mov ax, 0x64                     ; 0x0330
    mov word [cs:tick_divider - IMAGE_BASE], ax ; 0x0333
    mov al, byte [bp + 0x15]         ; 0x0337
    mov byte [cs:play_device - IMAGE_BASE], al ; 0x033a
    mov byte [cs:play_sample_mode_flag - IMAGE_BASE], 0 ; 0x033e
    pushf                            ; 0x0344
    pop ax                           ; 0x0345
    test ah, 0x80                    ; 0x0346
    je short .forward2               ; 0x0349
    inc byte [cs:play_sample_mode_flag - IMAGE_BASE] ; 0x034b
.forward2:
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x0350
    shl bl, 1                        ; 0x0355
    xor bh, bh                       ; 0x0357
    jmp [cs:bx + jumptable_035e - IMAGE_BASE] ; 0x0359
jumptable_035e:
    dw jumptable_035e_case_0 - IMAGE_BASE      ; 0x035e
    dw jumptable_035e_case_1 - IMAGE_BASE      ; 0x0360
    dw jumptable_035e_case_2 - IMAGE_BASE      ; 0x0362
    dw jumptable_035e_case_2 - IMAGE_BASE      ; 0x0364
    dw jumptable_035e_case_4 - IMAGE_BASE      ; 0x0366
jumptable_035e_case_2:
    mov ax, word [bp + 0x10]         ; 0x0368
    mov word [cs:cseg_0a89 - IMAGE_BASE], ax ; 0x036b
    inc ax                           ; 0x036f
    mov word [cs:cseg_0a8b - IMAGE_BASE], ax ; 0x0370
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short play_set_device.forward3 ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
play_set_device.forward3:
    mov word [cs:sample_output_port - IMAGE_BASE], ax ; 0x0381
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0385
    mov al, 7                        ; 0x038a
    out dx, al                       ; 0x038c
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x038d
    in al, dx                        ; 0x0392
    or al, 0xc0                      ; 0x0393
    out dx, al                       ; 0x0395
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0396
    mov al, 0xa                      ; 0x039b
    out dx, al                       ; 0x039d
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x039e
    in al, dx                        ; 0x03a3
    or al, 0x10                      ; 0x03a4
    out dx, al                       ; 0x03a6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03a7
    mov al, 0xf                      ; 0x03ac
    out dx, al                       ; 0x03ae
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03af
    mov al, 0x70                     ; 0x03b4
    out dx, al                       ; 0x03b6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03b7
    mov al, 0xe                      ; 0x03bc
    out dx, al                       ; 0x03be
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03bf
    mov al, 0x80                     ; 0x03c4
    out dx, al                       ; 0x03c6
    jmp near jumptable_035e_case_0   ; 0x03c7
jumptable_035e_case_4:
    jmp near jumptable_035e_case_0   ; 0x03ca
    times 15 db 0
jumptable_035e_case_1:
    call opl_silent_note_pulse       ; 0x03dc
    jmp near jumptable_035e_case_0   ; 0x03df
