; auto-generated
loc_4596:
    push bp                          ; 0x4596
    mov bp, sp                       ; 0x4597
    push ds                          ; 0x4599
    push es                          ; 0x459a
    push si                          ; 0x459b
    push di                          ; 0x459c
    mov ax, ds                       ; 0x459d
    mov es, ax                       ; 0x459f
    push word [bp + 0xc]             ; 0x45a1
    call far [cs:cseg_0222 - IMAGE_BASE] ; 0x45a4
    pop cx                           ; 0x45a9
    pop di                           ; 0x45aa
    pop si                           ; 0x45ab
    pop es                           ; 0x45ac
    pop ds                           ; 0x45ad
    mov sp, bp                       ; 0x45ae
    pop bp                           ; 0x45b0
    ret                              ; 0x45b1
