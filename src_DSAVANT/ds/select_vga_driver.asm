; auto-generated
select_vga_driver:
    mov byte [cs:video_is_cga - IMAGE_BASE], 0 ; 0x343e
    mov byte [cs:video_is_herc - IMAGE_BASE], 0 ; 0x3444
    mov byte [cs:video_is_ega - IMAGE_BASE], 0 ; 0x344a
    mov byte [cs:video_is_vga - IMAGE_BASE], 1 ; 0x3450
    push es                          ; 0x3456
    sub ax, ax                       ; 0x3457
    mov es, ax                       ; 0x3459
    mov dl, byte [es:bios_data_0410] ; 0x345b
    mov byte [cs:saved_equip_byte - IMAGE_BASE], dl ; 0x3460
    and dl, 0xcf                     ; 0x3465
    mov byte [es:bios_data_0410], dl ; 0x3468
    pop es                           ; 0x346d
    mov ax, 0x13                     ; 0x346e
    int 0x10 ; BIOS video
    mov ax, cs                       ; 0x3473
    mov es, ax                       ; 0x3475
    mov dx, vga_palette - IMAGE_BASE ; 0x3477
    xor bx, bx                       ; 0x347a
    mov cx, 0x100                    ; 0x347c
    mov ax, 0x1012                   ; 0x347f
    int 0x10 ; BIOS video
    mov word [bp - 0x0002], 1        ; 0x3484
    mov bx, vga_drv_name - IMAGE_BASE ; 0x3489
    mov word [bp - 0x0004], bx       ; 0x348c
    ret                              ; 0x348f
