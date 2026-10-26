; auto-generated
loc_SNPU:
    mov ax, 0                        ; 0xaad3
    call aztec_csav                  ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 4]               ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xaae1
    jg short @..loc_SNPU.l1          ; 0xaae6
    ret                              ; 0xaae8
@..loc_SNPU.l1:
    mov al, byte [bx + slot_records + slot_record.f_0002] ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..loc_SNPU.l3          ; 0xaaef
jumptable_ab7d_case_0:
    push word [bp + 4]               ; 0xaaf2
    call api_idx_0004_VRTU           ; 0xaaf5
    pop cx                           ; 0xaaf8
    jmp near @..loc_SNPU.l4          ; 0xaaf9
jumptable_ab7d_case_1:
    mov ax, 5                        ; 0xaafc
    push ax                          ; 0xaaff
    push ax                          ; 0xab00
    push word [bp + 4]               ; 0xab01
    call api_idx_0002_OOUO           ; 0xab04
    add sp, byte 6                   ; 0xab07
    jmp near @..loc_SNPU.l4          ; 0xab0a
jumptable_ab7d_case_2:
    push word [bp + 4]               ; 0xab0d
    call api_idx_0010_TRQK           ; 0xab10
    pop cx                           ; 0xab13
    jmp near @..loc_SNPU.l4          ; 0xab14
jumptable_ab7d_case_3:
    mov ax, 0xffff                   ; 0xab17
    push ax                          ; 0xab1a
    push word [bp + 4]               ; 0xab1b
    call api_idx_0002_TLGN           ; 0xab1e
    add sp, byte 4                   ; 0xab21
    jmp short @..loc_SNPU.l4         ; 0xab24
jumptable_ab7d_case_4:
    push word [bp + 4]               ; 0xab26
    call api_idx_0002_KRLI           ; 0xab29
    pop cx                           ; 0xab2c
    jmp short @..loc_SNPU.l4         ; 0xab2d
jumptable_ab7d_case_5:
    mov ax, 0x26                     ; 0xab2f
    imul word [bp + 4]               ; 0xab32
    mov bx, ax                       ; 0xab35
    mov al, byte [bx + slot_records + slot_record.f_0006] ; 0xab37
    sub ah, ah                       ; 0xab3b
    push ax                          ; 0xab3d
    push word [bp + 4]               ; 0xab3e
    call api_idx_0002_TLGN           ; 0xab41
    add sp, byte 4                   ; 0xab44
    jmp short @..loc_SNPU.l4         ; 0xab47
jumptable_ab7d_case_6:
    push word [bp + 4]               ; 0xab49
    call loc_OGGM                    ; 0xab4c
    pop cx                           ; 0xab4f
    jmp short @..loc_SNPU.l4         ; 0xab50
jumptable_ab7d_case_7:
    mov ax, 0xffff                   ; 0xab52
    push ax                          ; 0xab55
    push word [bp + 4]               ; 0xab56
    call api_idx_0002_TLGN           ; 0xab59
    add sp, byte 4                   ; 0xab5c
    mov ax, 0x26                     ; 0xab5f
    imul word [bp + 4]               ; 0xab62
    mov bx, ax                       ; 0xab65
    cmp byte [bx + slot_records + slot_record.f_0002], 7 ; 0xab67
    jne short @..loc_SNPU.l2         ; 0xab6c
    mov ax, 0xffff                   ; 0xab6e
    push ax                          ; 0xab71
    push word [bp + 4]               ; 0xab72
    call api_idx_0002_TLGN           ; 0xab75
    add sp, byte 4                   ; 0xab78
@..loc_SNPU.l2:
    jmp short @..loc_SNPU.l4         ; 0xab7b
jumptable_ab7d:
    dw jumptable_ab7d_case_0 - IMAGE_BASE + __zres_end ; 0xab7d
    dw jumptable_ab7d_case_1 - IMAGE_BASE + __zres_end ; 0xab7f
    dw jumptable_ab7d_case_2 - IMAGE_BASE + __zres_end ; 0xab81
    dw jumptable_ab7d_case_3 - IMAGE_BASE + __zres_end ; 0xab83
    dw jumptable_ab7d_case_4 - IMAGE_BASE + __zres_end ; 0xab85
    dw jumptable_ab7d_case_5 - IMAGE_BASE + __zres_end ; 0xab87
    dw jumptable_ab7d_case_6 - IMAGE_BASE + __zres_end ; 0xab89
    dw jumptable_ab7d_case_7 - IMAGE_BASE + __zres_end ; 0xab8b
@..loc_SNPU.l3:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..loc_SNPU.l4         ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx + jumptable_ab7d - IMAGE_BASE + __zres_end] ; 0xab95
@..loc_SNPU.l4:
    ret                              ; 0xab9a
