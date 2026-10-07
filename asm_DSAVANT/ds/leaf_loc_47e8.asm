leaf_loc_47e8:
    push bp                          ; 0x47e8
    mov bp, sp                       ; 0x47e9
    push si                          ; 0x47eb
    mov si, word [bp + 0x4]          ; 0x47ec
    add si, byte 0xfe                ; 0x47ef
    test word [si], 1                ; 0x47f2
    jne short @..leaf_loc_47e8.l2    ; 0x47f6
    mov ax, 0xffff                   ; 0x47f8
@..leaf_loc_47e8.l1:
    pop si                           ; 0x47fb
    mov sp, bp                       ; 0x47fc
    pop bp                           ; 0x47fe
    ret                              ; 0x47ff
