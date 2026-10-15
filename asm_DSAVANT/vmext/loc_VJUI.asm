; auto-generated
loc_VJUI:
    mov ax, 0                        ; 0x0860
    call aztec_csav                  ; 0x0863
    mov word [bss_918a], 0           ; 0x0866
    mov ax, word [bss_830c]          ; 0x086c
    cmp ax, word [bss_8f28]          ; 0x086f
    jne short @..loc_VJUI.l1         ; 0x0873
    mov ax, word [bss_8f3e]          ; 0x0875
    cmp ax, word [bss_8f2a]          ; 0x0878
    jne short @..loc_VJUI.l1         ; 0x087c
    mov ax, word [bss_8f42]          ; 0x087e
    cmp ax, word [bss_8f2e]          ; 0x0881
    jne short @..loc_VJUI.l1         ; 0x0885
    mov ax, word [bss_8f40]          ; 0x0887
    cmp ax, word [bss_8f2c]          ; 0x088a
    jne short @..loc_VJUI.l1         ; 0x088e
    mov word [bss_918a], 1           ; 0x0890
@..loc_VJUI.l1:
    ret                              ; 0x0896
