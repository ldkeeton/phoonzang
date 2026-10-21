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
    jne short @..play_select_device.l1 ; 0x02a1
    jmp near play_set_device         ; 0x02a3
@..play_select_device.l1:
    mov al, byte [cs:play_device - IMAGE_BASE] ; 0x02a6
    call clamp_device                ; 0x02aa
    mov byte [bp + 0x15], al         ; 0x02ad
    jmp near play_install_handler    ; 0x02b0
