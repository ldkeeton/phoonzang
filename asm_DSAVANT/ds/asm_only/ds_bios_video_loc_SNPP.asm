; auto-generated
; asm only
ds_bios_video_loc_SNPP:
    push bp                          ; 0x3067
    mov bp, sp                       ; 0x3068
    cld                              ; 0x306a
    sub sp, byte 4                   ; 0x306b
    push ds                          ; 0x306e
    push es                          ; 0x306f
    push si                          ; 0x3070
    push di                          ; 0x3071
    mov ax, ds                       ; 0x3072
    mov es, ax                       ; 0x3074
    call ds_leaf_loc_TTIS            ; 0x3076
    call ds_leaf_loc_LKVP            ; 0x3079
    call bios_get_video_mode         ; 0x307c
    call ds_dos_mem_loc_NKNR         ; 0x307f
    call ds_bios_mouse_loc_PQIP      ; 0x3082
    call ds_dos_intvec_loc_HIPQ      ; 0x3085
    call ds_dos_file_loc_RQIN        ; 0x3088
    call ds_dos_file_loc_OUMU        ; 0x308b
    mov ax, 0                        ; 0x308e
    push ax                          ; 0x3091
    call thunk_5                     ; 0x3092
    add sp, byte 2                   ; 0x3095
    mov ax, word [bp - 0x0002]       ; 0x3098
    pop di                           ; 0x309b
    pop si                           ; 0x309c
    pop es                           ; 0x309d
    pop ds                           ; 0x309e
    mov sp, bp                       ; 0x309f
    pop bp                           ; 0x30a1
    ret                              ; 0x30a2
