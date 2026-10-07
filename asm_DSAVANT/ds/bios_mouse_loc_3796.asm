bios_mouse_loc_3796:
    push es                          ; 0x3796
    push si                          ; 0x3797
    lea si, word [data_2d58]         ; 0x3798
    call bios_mouse_loc_3760         ; 0x379c
    call bios_mouse_loc_377b         ; 0x379f
    pop si                           ; 0x37a2
    pop es                           ; 0x37a3
    ret                              ; 0x37a4
