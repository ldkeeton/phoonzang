; auto-generated
ds_loc_IGLJ:
    push bp                          ; 0x30a3
    mov bp, sp                       ; 0x30a4
    cld                              ; 0x30a6
    sub sp, byte 2                   ; 0x30a7
    push ds                          ; 0x30aa
    push es                          ; 0x30ab
    push si                          ; 0x30ac
    push di                          ; 0x30ad
    mov ax, ds                       ; 0x30ae
    mov es, ax                       ; 0x30b0
    call restore_saved_video_state   ; 0x30b2
    call ds_loc_RMTO                 ; 0x30b5
    call release_expanded_memory     ; 0x30b8
    pop di                           ; 0x30bb
    pop si                           ; 0x30bc
    pop es                           ; 0x30bd
    pop ds                           ; 0x30be
    mov sp, bp                       ; 0x30bf
    pop bp                           ; 0x30c1
    ret                              ; 0x30c2
