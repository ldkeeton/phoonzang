; auto-generated
; asm only
ds_leaf_loc_OIUO:
    push es                          ; 0x30e2
    mov ax, 0                        ; 0x30e3
    mov es, ax                       ; 0x30e6
    mov bx, 0x46c                    ; 0x30e8
    mov ax, word [es:bx]             ; 0x30eb
    pop es                           ; 0x30ee
    add ax, strict word 2            ; 0x30ef
    mov word [cs:cseg_30de - IMAGE_BASE], ax ; 0x30f2
    ret                              ; 0x30f6
