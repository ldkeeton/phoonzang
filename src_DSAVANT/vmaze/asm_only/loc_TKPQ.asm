; auto-generated
; asm only
loc_TKPQ:
    pop word [dseg_9190]             ; 0xac30
    pop cx                           ; 0xac34
    mov word [dseg_918c], sp         ; 0xac35
    mov word [dseg_918e], bp         ; 0xac39
    mov word [dseg_9188], si         ; 0xac3d
    mov word [dseg_918a], di         ; 0xac41
    cld                              ; 0xac45
    mov di, bss_9192                 ; 0xac46
    mov cx, 0x9e26                   ; 0xac49
    sub cx, di                       ; 0xac4c
    shr cx, 1                        ; 0xac4e
    je short @..loc_TKPQ.l1          ; 0xac50
    sub ax, ax                       ; 0xac52
    rep stosw                        ; 0xac54
@..loc_TKPQ.l1:
    call api_idx_0002_RQJQ           ; 0xac56
    mov bp, word [dseg_918e]         ; 0xac59
    mov sp, word [dseg_918c]         ; 0xac5d
    mov si, word [dseg_9188]         ; 0xac61
    mov di, word [dseg_918a]         ; 0xac65
    push cx                          ; 0xac69
    jmp [dseg_9190]                  ; 0xac6a
