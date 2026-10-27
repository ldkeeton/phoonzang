; auto-generated
store_word_event:
    lodsw                            ; 0x0e15
    mov word [cs:opl_pitch_value - IMAGE_BASE], ax ; 0x0e16
    jmp near loc_MRJU                ; 0x0e1a
