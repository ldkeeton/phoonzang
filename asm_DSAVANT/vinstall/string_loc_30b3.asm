string_loc_30b3:
    test al, al                      ; 0x30b3
    je short @..string_loc_30b3.l1   ; 0x30b5
    call loc_3301                    ; 0x30b7
    jmp short loc_30aa               ; 0x30ba
@..string_loc_30b3.l1:
    mov ax, word [bp - 0x0002]       ; 0x30bc
    pop si                           ; 0x30bf
    pop di                           ; 0x30c0
    mov sp, bp                       ; 0x30c1
    pop bp                           ; 0x30c3
    ret                              ; 0x30c4
