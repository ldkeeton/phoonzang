; auto-generated
; asm only
ds_loc_RMTO:
    push es                          ; 0x3796
    push si                          ; 0x3797
    lea si, word [cseg_2f58 - IMAGE_BASE] ; 0x3798
    call ds_dos_mem_loc_GSMJ         ; 0x379c
    call ds_dos_mem_loc_GMLT         ; 0x379f
    pop si                           ; 0x37a2
    pop es                           ; 0x37a3
    ret                              ; 0x37a4
