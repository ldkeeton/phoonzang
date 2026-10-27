; auto-generated
note_event_high:
    call string_loc_SLGG             ; 0x0e24
    cmp byte [cs:cseg_0d3d - IMAGE_BASE], 0xff ; 0x0e27
    jne short .forward1              ; 0x0e2d
    jmp near loc_MRJU                ; 0x0e2f
.forward1:
    cmp byte [cs:cseg_0d3f - IMAGE_BASE], 0 ; 0x0e32
    jne short .forward2              ; 0x0e38
    jmp near loc_JSJL                ; 0x0e3a
.forward2:
    cmp byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x0e3d
    jne short .forward3              ; 0x0e43
    jmp near loc_LPMH                ; 0x0e45
.forward3:
    cmp byte [cs:music_device - IMAGE_BASE], 1 ; 0x0e48
    jmp near loc_LPMH                ; 0x0e4e
