; auto-generated
api_idx_0002_HMIP:
    mov ax, 0xfffe                   ; 0x73b6
    call aztec_csav                  ; 0x73b9
    mov ax, word [bss_8d12]          ; 0x73bc
    shl ax, 1                        ; 0x73bf
    mov si, ax                       ; 0x73c1
    mov bx, word [bss_0e12]          ; 0x73c3
    mov ax, word [bx + si]           ; 0x73c7
    mov word [bp - 0x0002], ax       ; 0x73c9
    jmp short @..api_idx_0002_HMIP.l1 ; 0x73cc
loc_73ce:
    mov ax, 0x11                     ; 0x73ce
    push ax                          ; 0x73d1
    call loc_6ac7                    ; 0x73d2
    pop cx                           ; 0x73d5
loc_73d6:
    push word [bss_8d12]             ; 0x73d6
    call api_idx_0004_TNOT           ; 0x73da
    pop cx                           ; 0x73dd
    jmp short @..api_idx_0002_HMIP.l2 ; 0x73de
loc_73e0:
    mov ax, 0x804                    ; 0x73e0
    push ax                          ; 0x73e3
    call api_idx_0050_RIIV           ; 0x73e4
    pop cx                           ; 0x73e7
    mov ax, 8                        ; 0x73e8
    push ax                          ; 0x73eb
    call ds_app_IPOK                 ; 0x73ec
    pop cx                           ; 0x73ef
    mov ax, 8                        ; 0x73f0
    push ax                          ; 0x73f3
    call api_idx_0006_KLOT           ; 0x73f4
    pop cx                           ; 0x73f7
    mov word [bss_91b2], 1           ; 0x73f8
    push word [bss_8d12]             ; 0x73fe
    call api_idx_0004_TNOT           ; 0x7402
    pop cx                           ; 0x7405
    jmp short @..api_idx_0002_HMIP.l2 ; 0x7406
loc_7408:
    mov ax, 8                        ; 0x7408
    push ax                          ; 0x740b
    call ds_app_IPOK                 ; 0x740c
    pop cx                           ; 0x740f
    push word [bss_8d12]             ; 0x7410
    call api_idx_0004_TNOT           ; 0x7414
    pop cx                           ; 0x7417
    jmp short @..api_idx_0002_HMIP.l2 ; 0x7418
jumptable_741a:
    dw loc_73d6 - IMAGE_BASE + 0x5055          ; 0x741a
    dw loc_73ce - IMAGE_BASE + 0x5055          ; 0x741c
    dw loc_73e0 - IMAGE_BASE + 0x5055          ; 0x741e
    dw jumptable_741a_case_3 - IMAGE_BASE + 0x5055 ; 0x7420
    dw loc_7408 - IMAGE_BASE + 0x5055          ; 0x7422
    dw loc_7408 - IMAGE_BASE + 0x5055          ; 0x7424
    dw loc_7408 - IMAGE_BASE + 0x5055          ; 0x7426
@..api_idx_0002_HMIP.l1:
    cmp ax, strict word 7            ; 0x7428
    jae short @..api_idx_0002_HMIP.l2 ; 0x742b
    xchg bx, ax                      ; 0x742d
    shl bx, 1                        ; 0x742e
    jmp [cs:bx - 0x3b9f]             ; 0x7430
jumptable_741a_case_3:
@..api_idx_0002_HMIP.l2:
    ret                              ; 0x7435
loc_7436:
    mov ax, 0                        ; 0x7436
    call aztec_csav                  ; 0x7439
    mov bx, word [bss_0e12]          ; 0x743c
    mov si, word [bss_8d12]          ; 0x7440
    mov al, byte [bx + si + 0xa50]   ; 0x7444
    sub ah, ah                       ; 0x7448
    mov word [bss_91b0], ax          ; 0x744a
    ret                              ; 0x744d
