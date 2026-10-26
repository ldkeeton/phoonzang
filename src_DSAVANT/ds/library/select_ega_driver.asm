; auto-generated
select_ega_driver:
    mov ax, 0                        ; 0x3490
    push ds                          ; 0x3493
    mov ds, ax                       ; 0x3494
    mov bx, 0x487                    ; 0x3496
    mov al, byte [bx]                ; 0x3499
    pop ds                           ; 0x349b
    or al, al                        ; 0x349c
    je short .forward1               ; 0x349e
    jmp near .forward2               ; 0x34a0
.forward1:
    mov word [bp - 2], 0             ; 0x34a3
    ret                              ; 0x34a8
.forward2:
    mov byte [cs:video_is_cga - IMAGE_BASE], 0 ; 0x34a9
    mov byte [cs:video_is_herc - IMAGE_BASE], 0 ; 0x34af
    mov byte [cs:video_is_ega - IMAGE_BASE], 1 ; 0x34b5
    mov byte [cs:video_is_vga - IMAGE_BASE], 0 ; 0x34bb
    push es                          ; 0x34c1
    sub ax, ax                       ; 0x34c2
    mov es, ax                       ; 0x34c4
    mov dl, byte [es:bios_data_0410] ; 0x34c6
    mov byte [cs:saved_equip_byte - IMAGE_BASE], dl ; 0x34cb
    and dl, 0xcf                     ; 0x34d0
    mov byte [es:bios_data_0410], dl ; 0x34d3
    pop es                           ; 0x34d8
    mov ax, 0xe                      ; 0x34d9
    int 0x10 ; BIOS video
    mov ax, cs                       ; 0x34de
    mov es, ax                       ; 0x34e0
    mov dx, ega_palette - IMAGE_BASE ; 0x34e2
    mov ax, 0x1002                   ; 0x34e5
    int 0x10 ; BIOS video
    mov word [bp - 2], 2             ; 0x34ea
    mov bx, ega_drv_name - IMAGE_BASE ; 0x34ef
    mov word [bp - 4], bx            ; 0x34f2
    ret                              ; 0x34f5
