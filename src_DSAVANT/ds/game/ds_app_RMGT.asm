; auto-generated
ds_app_RMGT: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0ad7
    call aztec_csav                  ; 0x0ada
    mov al, byte [code_characters]   ; 0x0add
    sub ah, ah                       ; 0x0ae0
    cmp ax, word [bss_59f4]          ; 0x0ae2
    jne short @..ds_app_RMGT.l1      ; 0x0ae6
    cmp word [answer_length], byte 0 ; 0x0ae8
    jle short @..ds_app_RMGT.l1      ; 0x0aed
    mov ax, word [bss_0e34]          ; 0x0aef
    mov word [code_check_word], ax   ; 0x0af2
@..ds_app_RMGT.l1:
    ret                              ; 0x0af5
