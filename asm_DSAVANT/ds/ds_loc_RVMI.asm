; auto-generated
ds_loc_RVMI:
    push es                          ; 0x3796
    push si                          ; 0x3797
    lea si, word [bss_2d58]          ; 0x3798
    call ds_dos_mem_loc_RMSS         ; 0x379c
    call ds_dos_mem_loc_VSVV         ; 0x379f
    pop si                           ; 0x37a2
    pop es                           ; 0x37a3
    ret                              ; 0x37a4
