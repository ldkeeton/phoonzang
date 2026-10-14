; auto-generated
api_idx_0004_JRRO:
    mov ax, 0xfffc                   ; 0x744e
    call aztec_csav                  ; 0x7451
    mov ax, word [bss_8d12]          ; 0x7454
    shl ax, 1                        ; 0x7457
    mov si, ax                       ; 0x7459
    mov bx, word [bss_0e12]          ; 0x745b
    mov ax, word [bx + si + 0x3c0]   ; 0x745f
    mov word [bp - 0x0002], ax       ; 0x7463
    mov ax, 1                        ; 0x7466
    push ax                          ; 0x7469
    mov ax, 0xe                      ; 0x746a
    push ax                          ; 0x746d
    push word [bp - 0x0002]          ; 0x746e
    call ds_dos_con_loc_RGTO         ; 0x7471
    add sp, byte 6                   ; 0x7474
    cmp ax, strict word 1            ; 0x7477
    jne short @..api_idx_0004_JRRO.l1 ; 0x747a
    mov ax, 2                        ; 0x747c
    push ax                          ; 0x747f
    mov ax, 0xc                      ; 0x7480
    push ax                          ; 0x7483
    push word [bp - 0x0002]          ; 0x7484
    call ds_dos_con_loc_RGTO         ; 0x7487
    add sp, byte 6                   ; 0x748a
    mov word [bss_8f24], ax          ; 0x748d
    cmp ax, word [bss_82ee]          ; 0x7490
    je short @..api_idx_0004_JRRO.l1 ; 0x7494
    ret                              ; 0x7496
@..api_idx_0004_JRRO.l1:
    mov ax, word [bss_8d12]          ; 0x7497
    shl ax, 1                        ; 0x749a
    mov si, ax                       ; 0x749c
    mov bx, word [bss_0e12]          ; 0x749e
    cmp word [bx + si], byte 0       ; 0x74a2
    jle short @..api_idx_0004_JRRO.l2 ; 0x74a5
    mov ax, 0                        ; 0x74a7
    push ax                          ; 0x74aa
    push word [bx + si]              ; 0x74ab
    call loc_6f14                    ; 0x74ad
    add sp, byte 4                   ; 0x74b0
@..api_idx_0004_JRRO.l2:
    mov ax, 1                        ; 0x74b3
    push ax                          ; 0x74b6
    mov ax, 8                        ; 0x74b7
    push ax                          ; 0x74ba
    push word [bp - 0x0002]          ; 0x74bb
    call ds_dos_con_loc_RGTO         ; 0x74be
    add sp, byte 6                   ; 0x74c1
    cmp ax, strict word 1            ; 0x74c4
    jne short @..api_idx_0004_JRRO.l3 ; 0x74c7
    ret                              ; 0x74c9
@..api_idx_0004_JRRO.l3:
    mov bx, word [bss_0e12]          ; 0x74ca
    mov si, word [bss_8d12]          ; 0x74ce
    mov al, byte [bx + si + 0xa50]   ; 0x74d2
    sub ah, ah                       ; 0x74d6
    mov word [bss_84a0], ax          ; 0x74d8
    mov word [bss_830a], 0x15        ; 0x74db
    ret                              ; 0x74e1
