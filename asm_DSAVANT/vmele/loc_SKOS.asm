; auto-generated
loc_SKOS:
    mov ax, 0                        ; 0x2b19
    call aztec_csav                  ; 0x2b1c
    les bx, word [dseg_0002]         ; 0x2b1f
    mov ax, word [es:bx]             ; 0x2b23
    mov dx, word [es:bx + 0x2]       ; 0x2b26
    mov word [bss_9090], dx          ; 0x2b2a
    mov word [bss_908e], ax          ; 0x2b2e
    mov ax, word [bss_908e]          ; 0x2b31
    mov dx, word [bss_9090]          ; 0x2b34
    sub ax, word [bss_908a]          ; 0x2b38
    sbb dx, word [bss_908c]          ; 0x2b3c
    mov word [bss_9094], dx          ; 0x2b40
    mov word [bss_9092], ax          ; 0x2b44
    mov ax, word [bss_90b6]          ; 0x2b47
    cwd                              ; 0x2b4a
    mov cx, ax                       ; 0x2b4b
    mov bx, dx                       ; 0x2b4d
    mov ax, word [bss_9092]          ; 0x2b4f
    mov dx, word [bss_9094]          ; 0x2b52
    cmp bx, dx                       ; 0x2b56
    jg short @..loc_SKOS.l1          ; 0x2b58
    jne short @..loc_SKOS.l2         ; 0x2b5a
    cmp cx, ax                       ; 0x2b5c
    jbe short @..loc_SKOS.l2         ; 0x2b5e
@..loc_SKOS.l1:
    jmp short @..loc_SKOS.l3         ; 0x2b60
@..loc_SKOS.l2:
    mov ax, word [bss_908e]          ; 0x2b62
    mov dx, word [bss_9090]          ; 0x2b65
    mov word [bss_908c], dx          ; 0x2b69
    mov word [bss_908a], ax          ; 0x2b6d
    mov ax, 1                        ; 0x2b70
    ret                              ; 0x2b73
@..loc_SKOS.l3:
    mov ax, 0                        ; 0x2b74
    ret                              ; 0x2b77
