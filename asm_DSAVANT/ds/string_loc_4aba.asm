string_loc_4aba:
    mov al, byte [bp - 0x000d]       ; 0x4aba
    test al, al                      ; 0x4abd
    je short loc_4aec                ; 0x4abf
    cmp al, 0x78                     ; 0x4ac1
    jne short @..string_loc_4aba.l1  ; 0x4ac3
    mov al, 0x30                     ; 0x4ac5
    call string_loc_4ad0             ; 0x4ac7
    mov al, 0x78                     ; 0x4aca
@..string_loc_4aba.l1:
    mov byte [bp - 0x000d], 0        ; 0x4acc
