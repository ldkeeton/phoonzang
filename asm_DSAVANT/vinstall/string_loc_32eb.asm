string_loc_32eb:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short loc_331d                ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..string_loc_32eb.l1  ; 0x32f4
    mov al, data_0030                ; 0x32f6
    call string_loc_3301             ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..string_loc_32eb.l1:
    mov byte [bp - 0x000d], 0        ; 0x32fd
