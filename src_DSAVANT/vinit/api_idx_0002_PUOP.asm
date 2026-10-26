; auto-generated
api_idx_0002_PUOP:
    mov ax, 0xfffe                   ; 0x094a
    call aztec_csav                  ; 0x094d
    cmp word [bss_91b8], byte -1     ; 0x0950
    jne short .forward1              ; 0x0955
    mov ax, 0                        ; 0x0957
    ret                              ; 0x095a
.forward1:
    mov ax, 1                        ; 0x095b
    push ax                          ; 0x095e
    call poll_filtered_key           ; 0x095f
    pop cx                           ; 0x0962
    test ax, ax                      ; 0x0963
    je short .forward3               ; 0x0965
    mov ax, 1                        ; 0x0967
    push ax                          ; 0x096a
    call get_filtered_key            ; 0x096b
    pop cx                           ; 0x096e
    sub ah, ah                       ; 0x096f
    mov word [bp - 2], ax            ; 0x0971
    mov ax, 0                        ; 0x0974
    cmp word [bp - 2], byte 0x1b     ; 0x0977
    jne short .forward2              ; 0x097b
    mov ax, 1                        ; 0x097d
.forward2:
    or word [bss_91b8], ax           ; 0x0980
.forward3:
    mov ax, word [bss_91b8]          ; 0x0984
    ret                              ; 0x0987
