; auto-generated
ds_app_file_0883: ; Aztec csav frame=0x0100
    mov ax, 0xff00                   ; 0x0883
    call aztec_csav                  ; 0x0886
    mov ax, word [bp + 0x4]          ; 0x0889
    jmp short @..ds_app_file_0883.l1 ; 0x088c
