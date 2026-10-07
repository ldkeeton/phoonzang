string_loc_4882:
    test al, al                      ; 0x4882
    je short @..string_loc_4882.l1   ; 0x4884
    call string_loc_4ad0             ; 0x4886
    jmp short loc_4879               ; 0x4889
@..string_loc_4882.l1:
    mov ax, word [bp - 0x0002]       ; 0x488b
    pop si                           ; 0x488e
    pop di                           ; 0x488f
    mov sp, bp                       ; 0x4890
    pop bp                           ; 0x4892
    ret                              ; 0x4893
