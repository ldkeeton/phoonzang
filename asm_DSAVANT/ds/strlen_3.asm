strlen_3:
    push bp                          ; 0x4867
    mov bp, sp                       ; 0x4868
    sub sp, strict word 0x154        ; 0x486a
    push di                          ; 0x486e
    push si                          ; 0x486f
    cld                              ; 0x4870
    mov si, word [bp + 0x6]          ; 0x4871
    mov word [bp - 0x0002], 0        ; 0x4874
loc_4879:
    mov byte [bp - 0x000b], 0        ; 0x4879
    lodsb                            ; 0x487d
    cmp al, 0x25                     ; 0x487e
    je short loc_4894                ; 0x4880
