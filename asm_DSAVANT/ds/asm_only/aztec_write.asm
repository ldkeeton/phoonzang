; auto-generated
; asm only
aztec_write:
    push bp                          ; 0x4fbd
    mov bp, sp                       ; 0x4fbe
    mov ah, 0x40 ; write(fd, buffer, length) / char *buffer; int length; ; 0x4fc0
ds_loc_IRQU:
    mov bx, word [bp + 0x4]          ; 0x4fc2
    cmp byte [bx + 0xcdc], 0         ; 0x4fc5
    je short ds_loc_PGNI             ; 0x4fca
    pop bp                           ; 0x4fcc
    cmp ah, 0x3f                     ; 0x4fcd
    je short ds_loc_GSRN             ; 0x4fd0
    jmp [dseg_0cf2]                  ; 0x4fd2
ds_loc_GSRN:
    jmp [dseg_0cf0]                  ; 0x4fd6
ds_loc_PGNI:
    mov dx, word [bp + 0x6]          ; 0x4fda
    mov cx, word [bp + 0x8]          ; 0x4fdd
    int 0x21 ; DOS function dispatcher
    jae short ds_loc_OQOJ            ; 0x4fe2
    mov word [dseg_0c72], ax         ; 0x4fe4
    mov ax, 0xffff                   ; 0x4fe7
ds_loc_OQOJ:
    pop bp                           ; 0x4fea
    ret                              ; 0x4feb
