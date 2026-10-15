; auto-generated
; asm only
loc_5148:
    push bp                          ; 0x5148
    mov bp, sp                       ; 0x5149
    push ds                          ; 0x514b
    push es                          ; 0x514c
    push si                          ; 0x514d
    push di                          ; 0x514e
    mov ax, ds                       ; 0x514f
    mov es, ax                       ; 0x5151
    push word [bp + 0xe]             ; 0x5153
    push word [bp + 0xc]             ; 0x5156
    call far [cs:cseg_0116 - IMAGE_BASE] ; 0x5159
    add sp, byte 4                   ; 0x515e
    pop di                           ; 0x5161
    pop si                           ; 0x5162
    pop es                           ; 0x5163
    pop ds                           ; 0x5164
    mov sp, bp                       ; 0x5165
    pop bp                           ; 0x5167
    ret                              ; 0x5168
    db 0x00
