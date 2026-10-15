; auto-generated
; asm only
sprintf:
    push bp                          ; 0x3098
    mov bp, sp                       ; 0x3099
    sub sp, strict word 0x154        ; 0x309b
    push di                          ; 0x309f
    push si                          ; 0x30a0
    cld                              ; 0x30a1
    mov si, word [bp + 0x6]          ; 0x30a2
    mov word [bp - 0x0002], 0        ; 0x30a5
loc_PMHN:
    mov byte [bp - 0x000b], 0        ; 0x30aa
    lodsb                            ; 0x30ae
    cmp al, 0x25                     ; 0x30af
    je short loc_TGUK                ; 0x30b1
