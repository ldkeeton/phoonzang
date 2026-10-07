string_loc_4ad0:
    inc word [bp - 0x0002]           ; 0x4ad0
    test byte [bp - 0x000b], 0x20    ; 0x4ad3
    je short @..string_loc_4ad0.l1   ; 0x4ad7
    cmp al, 0x61                     ; 0x4ad9
    jb short @..string_loc_4ad0.l1   ; 0x4adb
    cmp al, 0x7a                     ; 0x4add
    ja short @..string_loc_4ad0.l1   ; 0x4adf
    sub al, 0x20                     ; 0x4ae1
@..string_loc_4ad0.l1:
    push es                          ; 0x4ae3
    sub ah, ah                       ; 0x4ae4
    push ax                          ; 0x4ae6
    call [bp + 0x4]                  ; 0x4ae7
    pop ax                           ; 0x4aea
    pop es                           ; 0x4aeb
loc_4aec:
    ret                              ; 0x4aec
