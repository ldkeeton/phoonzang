; auto-generated
loc_GTJK:
    mov ax, 0                        ; 0x0ede
    call aztec_csav                  ; 0x0ee1
    mov ax, 0x24                     ; 0x0ee4
    imul word [bp + 4]               ; 0x0ee7
    mov cx, word [bp + 6]            ; 0x0eea
    shl cx, 1                        ; 0x0eed
    add ax, cx                       ; 0x0eef
    mov bx, ax                       ; 0x0ef1
    mov ax, word [bx + bss_9346]     ; 0x0ef3
    cmp ax, word [bss_9af8]          ; 0x0ef7
    jne short @..loc_GTJK.l1         ; 0x0efb
    mov ax, word [bx + bss_95d0]     ; 0x0efd
    cmp ax, word [bss_9b00]          ; 0x0f01
    jne short @..loc_GTJK.l1         ; 0x0f05
    mov ax, word [bx + bss_9348]     ; 0x0f07
    cmp ax, word [bss_9af8]          ; 0x0f0b
    jne short @..loc_GTJK.l1         ; 0x0f0f
    mov ax, word [bx + bss_95ac]     ; 0x0f11
    cmp ax, word [bss_9b00]          ; 0x0f15
    jne short @..loc_GTJK.l1         ; 0x0f19
    mov ax, word [bss_9b06]          ; 0x0f1b
    mov word [bx + bss_90ba], ax     ; 0x0f1e
@..loc_GTJK.l1:
    mov ax, word [bx + bss_9346]     ; 0x0f22
    cmp ax, word [bss_9afc]          ; 0x0f26
    jne short @..loc_GTJK.l2         ; 0x0f2a
    mov ax, word [bx + bss_95d0]     ; 0x0f2c
    cmp ax, word [bss_9b04]          ; 0x0f30
    jne short @..loc_GTJK.l2         ; 0x0f34
    mov ax, word [bx + bss_9348]     ; 0x0f36
    cmp ax, word [bss_9afc]          ; 0x0f3a
    jne short @..loc_GTJK.l2         ; 0x0f3e
    mov ax, word [bx + bss_95ac]     ; 0x0f40
    cmp ax, word [bss_9b04]          ; 0x0f44
    jne short @..loc_GTJK.l2         ; 0x0f48
    mov ax, word [bss_9b08]          ; 0x0f4a
    mov word [bx + bss_90ba], ax     ; 0x0f4d
@..loc_GTJK.l2:
    ret                              ; 0x0f51
