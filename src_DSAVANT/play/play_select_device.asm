; auto-generated
play_select_device:
    push bp                          ; 0x0294
    mov bp, sp                       ; 0x0295
    push di                          ; 0x0297
    push si                          ; 0x0298
    push es                          ; 0x0299
    push ds                          ; 0x029a
    push dx                          ; 0x029b
    push bx                          ; 0x029c
    cmp byte [bp + 0x14], 0xff       ; 0x029d
    jne short .forward1              ; 0x02a1
    jmp near play_set_device         ; 0x02a3
.forward1:
    mov al, byte [cs:play_device - IMAGE_BASE] ; 0x02a6
    call clamp_device                ; 0x02aa
    mov byte [bp + 0x15], al         ; 0x02ad
    jmp near play_configure_timer_handler ; 0x02b0
clamp_device:
    cmp al, 6                        ; 0x02b3
    jb short .return1                ; 0x02b5
    mov al, 0                        ; 0x02b7
.return1:
    ret                              ; 0x02b9
hook_int08_and_configure_pit:
    push di                          ; 0x02ba
    push es                          ; 0x02bb
    cld                              ; 0x02bc
    cmp byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x02bd
    jne short .forward1              ; 0x02c3
    in al, 0x21                      ; 0x02c5
    mov byte [cs:saved_pic_mask - IMAGE_BASE], al ; 0x02c7
    cli                              ; 0x02cb
    xor ax, ax                       ; 0x02cc
    mov es, ax                       ; 0x02ce
    mov di, 0x20                     ; 0x02d0
    mov ax, word [es:di]             ; 0x02d3
    mov word [cs:saved_int08_offset - IMAGE_BASE], ax ; 0x02d6
    mov ax, 0xbb4                    ; 0x02da
    stosw                            ; 0x02dd
    mov ax, word [es:di]             ; 0x02de
    mov word [cs:saved_int08_segment - IMAGE_BASE], ax ; 0x02e1
    mov ax, cs                       ; 0x02e5
    stosw                            ; 0x02e7
    sti                              ; 0x02e8
    mov al, 0x34                     ; 0x02e9
    out 0x43, al                     ; 0x02eb
    call io_delay                    ; 0x02ed
    in al, 0x40                      ; 0x02f0
    mov ah, al                       ; 0x02f2
    call io_delay                    ; 0x02f4
    in al, 0x40                      ; 0x02f7
    xchg al, ah                      ; 0x02f9
    mov word [cs:cseg_0a96 - IMAGE_BASE], ax ; 0x02fb
    mov al, 0x34                     ; 0x02ff
    out 0x43, al                     ; 0x0301
    mov ax, word [cs:music_tempo - IMAGE_BASE] ; 0x0303
    mov bl, 0x48                     ; 0x0307
    mul bl                           ; 0x0309
    mov word [cs:cseg_0a98 - IMAGE_BASE], ax ; 0x030b
    out 0x40, al                     ; 0x030f
    call io_delay                    ; 0x0311
    mov al, ah                       ; 0x0314
    out 0x40, al                     ; 0x0316
.forward1:
    mov byte [cs:int08_hooked - IMAGE_BASE], 0xff ; 0x0318
    pop es                           ; 0x031e
    pop di                           ; 0x031f
    ret                              ; 0x0320
int08_hooked:
    db 0x00
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
    jmp [cs:bx + play_device_setup_dispatch_table - IMAGE_BASE] ; 0x0359
play_device_setup_dispatch_table:
play_device_setup_dispatch_table:
    dw play_set_device_return - IMAGE_BASE     ; 0x035e
    dw play_device_setup_opl_pulse_case - IMAGE_BASE ; 0x0360
    dw play_device_setup_port_case - IMAGE_BASE ; 0x0362
    dw play_device_setup_port_case - IMAGE_BASE ; 0x0364
    dw play_device_setup_noop_case - IMAGE_BASE ; 0x0366
play_device_setup_port_case:
    mov ax, word [bp + 0x10]         ; 0x0368
    mov word [cs:cseg_0a89 - IMAGE_BASE], ax ; 0x036b
    inc ax                           ; 0x036f
    mov word [cs:cseg_0a8b - IMAGE_BASE], ax ; 0x0370
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short .forward1               ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
.forward1:
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
    jmp near play_set_device_return  ; 0x03c7
play_device_setup_noop_case:
    jmp near play_set_device_return  ; 0x03ca
    times 15 db 0
play_device_setup_opl_pulse_case:
    call opl_silent_note_pulse       ; 0x03dc
    jmp near play_set_device_return  ; 0x03df
