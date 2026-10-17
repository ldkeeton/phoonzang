; auto-generated
api_idx_0002_NIPM:
    mov ax, 0xfffe                   ; 0x73b6
    call aztec_csav                  ; 0x73b9
    mov ax, word [bss_8d12]          ; 0x73bc
    shl ax, 1                        ; 0x73bf
    mov si, ax                       ; 0x73c1
    mov bx, word [bss_0e12]          ; 0x73c3
    mov ax, word [bx + si]           ; 0x73c7
    mov word [bp - 0x0002], ax       ; 0x73c9
    jmp short @..api_idx_0002_NIPM.l1 ; 0x73cc
loc_QRGI:
    mov ax, 0x11                     ; 0x73ce
    push ax                          ; 0x73d1
    call loc_GRON                    ; 0x73d2
    pop cx                           ; 0x73d5
loc_JKUN:
    push word [bss_8d12]             ; 0x73d6
    call api_idx_0004_IPQQ           ; 0x73da
    pop cx                           ; 0x73dd
    jmp short @..api_idx_0002_NIPM.l2 ; 0x73de
loc_ISSU:
    mov ax, 0x804                    ; 0x73e0
    push ax                          ; 0x73e3
    call api_idx_0050_JLOV           ; 0x73e4
    pop cx                           ; 0x73e7
    mov ax, 8                        ; 0x73e8
    push ax                          ; 0x73eb
    call ds_app_HKIJ                 ; 0x73ec
    pop cx                           ; 0x73ef
    mov ax, 8                        ; 0x73f0
    push ax                          ; 0x73f3
    call api_idx_0006_LIGG           ; 0x73f4
    pop cx                           ; 0x73f7
    mov word [bss_91b2], 1           ; 0x73f8
    push word [bss_8d12]             ; 0x73fe
    call api_idx_0004_IPQQ           ; 0x7402
    pop cx                           ; 0x7405
    jmp short @..api_idx_0002_NIPM.l2 ; 0x7406
loc_RVMP:
    mov ax, 8                        ; 0x7408
    push ax                          ; 0x740b
    call ds_app_HKIJ                 ; 0x740c
    pop cx                           ; 0x740f
    push word [bss_8d12]             ; 0x7410
    call api_idx_0004_IPQQ           ; 0x7414
    pop cx                           ; 0x7417
    jmp short @..api_idx_0002_NIPM.l2 ; 0x7418
jumptable_741a:
    dw loc_JKUN - IMAGE_BASE + __zres_end      ; 0x741a
    dw loc_QRGI - IMAGE_BASE + __zres_end      ; 0x741c
    dw loc_ISSU - IMAGE_BASE + __zres_end      ; 0x741e
    dw jumptable_741a_case_3 - IMAGE_BASE + __zres_end ; 0x7420
    dw loc_RVMP - IMAGE_BASE + __zres_end      ; 0x7422
    dw loc_RVMP - IMAGE_BASE + __zres_end      ; 0x7424
    dw loc_RVMP - IMAGE_BASE + __zres_end      ; 0x7426
@..api_idx_0002_NIPM.l1:
    cmp ax, strict word 7            ; 0x7428
    jae short @..api_idx_0002_NIPM.l2 ; 0x742b
    xchg bx, ax                      ; 0x742d
    shl bx, 1                        ; 0x742e
    jmp [cs:bx + jumptable_741a - IMAGE_BASE + __zres_end] ; 0x7430
jumptable_741a_case_3:
@..api_idx_0002_NIPM.l2:
    ret                              ; 0x7435
