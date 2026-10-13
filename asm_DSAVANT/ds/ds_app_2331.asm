; auto-generated
ds_app_2331: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x2331
    call aztec_csav                  ; 0x2334
    mov al, byte [bp + 0x4]          ; 0x2337
    mov byte [bp - 0x0002], al       ; 0x233a
    mov al, byte [bp + 0x6]          ; 0x233d
    mov byte [bp - 0x0001], al       ; 0x2340
    mov ax, word [bp + 0x8]          ; 0x2343
    mov word [bp - 0x0004], ax       ; 0x2346
    mov ax, word [bp - 0x0004]       ; 0x2349
    mov word [bss_0cf6], ax          ; 0x234c
    mov ax, word [bp - 0x0002]       ; 0x234f
    mov word [bss_0cf8], ax          ; 0x2352
    mov ax, 0xcf6                    ; 0x2355
    ret                              ; 0x2358
