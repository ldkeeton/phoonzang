; auto-generated
api_idx_0004_NQLR:
    mov ax, 0xfffc                   ; 0x3390
    call aztec_csav                  ; 0x3393
    mov word [bss_84a4], 0           ; 0x3396
    mov word [bss_84a2], 0           ; 0x339c
    cmp word [bss_0e36], strict word 0xe1 ; 0x33a2
    jne short @..api_idx_0004_NQLR.l1 ; 0x33a8
    mov word [bss_845a], 1           ; 0x33aa
@..api_idx_0004_NQLR.l1:
    call loc_UGJT                    ; 0x33b0
    mov ax, 1                        ; 0x33b3
    push ax                          ; 0x33b6
    push word [bss_0e36]             ; 0x33b7
    call api_idx_0008_SJOG           ; 0x33bb
    add sp, byte 4                   ; 0x33be
    mov bx, word [bss_8492]          ; 0x33c1
    mov si, word [bss_8452]          ; 0x33c5
    mov al, byte [bx + si + 0xa8]    ; 0x33c9
    sub ah, ah                       ; 0x33cd
    mov word [bss_84a0], ax          ; 0x33cf
    mov word [bss_849e], 0xffff      ; 0x33d2
    call api_idx_0006_RJKJ           ; 0x33d8
    call api_idx_0004_TJKU           ; 0x33db
    ret                              ; 0x33de
