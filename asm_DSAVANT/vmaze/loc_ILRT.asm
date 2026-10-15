; auto-generated
loc_ILRT:
    push word [bss_8d12]             ; 0x8879
    push word [bss_8f3e]             ; 0x887d
    push word [bss_8f40]             ; 0x8881
    push word [bss_8f42]             ; 0x8885
    call api_idx_0002_IVNS           ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [bss_8d12], ax          ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short loc_ROIQ               ; 0x8895
    jmp near loc_NUGN_89cf           ; 0x8897
loc_ROIQ:
    mov word [bss_9bd0], 1           ; 0x889a
    mov bx, word [bss_0e12]          ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near loc_MILN                ; 0x88ac
