; auto-generated
music_loop_event:
    lodsw                            ; 0x0cca
    cmp ax, strict word 0            ; 0x0ccb
    jne short @..music_loop_event.l1 ; 0x0cce
    jmp near loc_MRJU                ; 0x0cd0
@..music_loop_event.l1:
    mov word [cs:restart_delay - IMAGE_BASE], ax ; 0x0cd3
    mov word [cs:stream_offset - IMAGE_BASE], si ; 0x0cd7
    jmp near music_stop              ; 0x0cdc
