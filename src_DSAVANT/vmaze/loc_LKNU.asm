; auto-generated
loc_LKNU:
    mov ax, 0                        ; 0xaad3
    call aztec_csav                  ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..loc_LKNU.l1          ; 0xaae6
    ret                              ; 0xaae8
@..loc_LKNU.l1:
    mov al, byte [bx - 0x7b16]       ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..loc_LKNU.l3          ; 0xaaef
loc_RSKH_aaf2:
    push word [bp + 0x4]             ; 0xaaf2
    call api_idx_0004_VRTU           ; 0xaaf5
    pop cx                           ; 0xaaf8
    jmp near @..loc_LKNU.l4          ; 0xaaf9
loc_UKMV:
    mov ax, 5                        ; 0xaafc
    push ax                          ; 0xaaff
    push ax                          ; 0xab00
    push word [bp + 0x4]             ; 0xab01
    call api_idx_0002_OOUO           ; 0xab04
    add sp, byte 6                   ; 0xab07
    jmp near @..loc_LKNU.l4          ; 0xab0a
loc_RSKH_ab0d:
    push word [bp + 0x4]             ; 0xab0d
    call api_idx_0010_TRQK           ; 0xab10
    pop cx                           ; 0xab13
    jmp near @..loc_LKNU.l4          ; 0xab14
loc_OSGM:
    mov ax, 0xffff                   ; 0xab17
    push ax                          ; 0xab1a
    push word [bp + 0x4]             ; 0xab1b
    call api_idx_0002_TLGN           ; 0xab1e
    add sp, byte 4                   ; 0xab21
    jmp short @..loc_LKNU.l4         ; 0xab24
loc_VUMS_ab26:
    push word [bp + 0x4]             ; 0xab26
    call api_idx_0002_KRLI           ; 0xab29
    pop cx                           ; 0xab2c
    jmp short @..loc_LKNU.l4         ; 0xab2d
loc_VUSP:
    mov ax, 0x26                     ; 0xab2f
    imul word [bp + 0x4]             ; 0xab32
    mov bx, ax                       ; 0xab35
    mov al, byte [bx - 0x7b12]       ; 0xab37
    sub ah, ah                       ; 0xab3b
    push ax                          ; 0xab3d
    push word [bp + 0x4]             ; 0xab3e
    call api_idx_0002_TLGN           ; 0xab41
    add sp, byte 4                   ; 0xab44
    jmp short @..loc_LKNU.l4         ; 0xab47
loc_VUMS_ab49:
    push word [bp + 0x4]             ; 0xab49
    call loc_OGGM                    ; 0xab4c
    pop cx                           ; 0xab4f
    jmp short @..loc_LKNU.l4         ; 0xab50
loc_OMLN:
    mov ax, 0xffff                   ; 0xab52
    push ax                          ; 0xab55
    push word [bp + 0x4]             ; 0xab56
    call api_idx_0002_TLGN           ; 0xab59
    add sp, byte 4                   ; 0xab5c
    mov ax, 0x26                     ; 0xab5f
    imul word [bp + 0x4]             ; 0xab62
    mov bx, ax                       ; 0xab65
    cmp byte [bx - 0x7b16], 7        ; 0xab67
    jne short @..loc_LKNU.l2         ; 0xab6c
    mov ax, 0xffff                   ; 0xab6e
    push ax                          ; 0xab71
    push word [bp + 0x4]             ; 0xab72
    call api_idx_0002_TLGN           ; 0xab75
    add sp, byte 4                   ; 0xab78
@..loc_LKNU.l2:
    jmp short @..loc_LKNU.l4         ; 0xab7b
jumptable_ab7d:
    dw loc_RSKH_aaf2 - IMAGE_BASE + __zres_end ; 0xab7d
    dw loc_UKMV - IMAGE_BASE + __zres_end      ; 0xab7f
    dw loc_RSKH_ab0d - IMAGE_BASE + __zres_end ; 0xab81
    dw loc_OSGM - IMAGE_BASE + __zres_end      ; 0xab83
    dw loc_VUMS_ab26 - IMAGE_BASE + __zres_end ; 0xab85
    dw loc_VUSP - IMAGE_BASE + __zres_end      ; 0xab87
    dw loc_VUMS_ab49 - IMAGE_BASE + __zres_end ; 0xab89
    dw loc_OMLN - IMAGE_BASE + __zres_end      ; 0xab8b
@..loc_LKNU.l3:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..loc_LKNU.l4         ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx + jumptable_ab7d - IMAGE_BASE + __zres_end] ; 0xab95
@..loc_LKNU.l4:
    ret                              ; 0xab9a
