; auto-generated
io_loc_GHPS:
    mov al, 8                        ; 0x00c4
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x00c6
    je short @..io_loc_GHPS.l1       ; 0x00cc
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x00ce
    je short @..io_loc_GHPS.l1       ; 0x00d4
@..io_loc_GHPS.l1:
    mov byte [cs:cseg_0d3a - IMAGE_BASE], al ; 0x00d6
    call leaf_loc_VQOG               ; 0x00da
    pushf                            ; 0x00dd
    cli                              ; 0x00de
    mov ax, 0x120                    ; 0x00df
    call io_loc_KRUO                 ; 0x00e2
    mov ax, 0xbd00                   ; 0x00e5
    call io_loc_KRUO                 ; 0x00e8
    mov ax, 0x406                    ; 0x00eb
    call io_loc_KRUO                 ; 0x00ee
    popf                             ; 0x00f1
    push dx                          ; 0x00f2
    mov dx, 0x388                    ; 0x00f3
    mov al, 0x40                     ; 0x00f6
    out dx, al                       ; 0x00f8
    pop dx                           ; 0x00f9
    mov ax, 0                        ; 0x00fa
    ret                              ; 0x00fd
