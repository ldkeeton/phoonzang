; auto-generated
api_idx_0002_NIPM:
    mov ax, 0xfffe                   ; 0x73b6
    call aztec_csav                  ; 0x73b9
    mov ax, word [party_region]      ; 0x73bc
    shl ax, 1                        ; 0x73bf
    mov si, ax                       ; 0x73c1
    mov bx, word [maze_tables]       ; 0x73c3
    mov ax, word [bx + si]           ; 0x73c7
    mov word [bp - 2], ax            ; 0x73c9
    jmp short @..api_idx_0002_NIPM.l1 ; 0x73cc
jumptable_741a_case_1:
    mov ax, 0x11                     ; 0x73ce
    push ax                          ; 0x73d1
    call loc_GRON                    ; 0x73d2
    pop cx                           ; 0x73d5
jumptable_741a_case_0:
    push word [party_region]         ; 0x73d6
    call move_party_to_dest          ; 0x73da
    pop cx                           ; 0x73dd
    jmp short jumptable_741a_case_3  ; 0x73de
jumptable_741a_case_2:
    mov ax, MSG_A_CHUTE              ; 0x73e0
    push ax                          ; 0x73e3
    call show_message                ; 0x73e4
    pop cx                           ; 0x73e7
    mov ax, 8                        ; 0x73e8
    push ax                          ; 0x73eb
    call play_sound_effect           ; 0x73ec
    pop cx                           ; 0x73ef
    mov ax, 8                        ; 0x73f0
    push ax                          ; 0x73f3
    call wait_ticks_or_key           ; 0x73f4
    pop cx                           ; 0x73f7
    mov word [bss_91b2], 1           ; 0x73f8
    push word [party_region]         ; 0x73fe
    call move_party_to_dest          ; 0x7402
    pop cx                           ; 0x7405
    jmp short jumptable_741a_case_3  ; 0x7406
jumptable_741a_case_4:
    mov ax, 8                        ; 0x7408
    push ax                          ; 0x740b
    call play_sound_effect           ; 0x740c
    pop cx                           ; 0x740f
    push word [party_region]         ; 0x7410
    call move_party_to_dest          ; 0x7414
    pop cx                           ; 0x7417
    jmp short jumptable_741a_case_3  ; 0x7418
jumptable_741a:
    dw jumptable_741a_case_0 - IMAGE_BASE + __zres_end ; 0x741a
    dw jumptable_741a_case_1 - IMAGE_BASE + __zres_end ; 0x741c
    dw jumptable_741a_case_2 - IMAGE_BASE + __zres_end ; 0x741e
    dw jumptable_741a_case_3 - IMAGE_BASE + __zres_end ; 0x7420
    dw jumptable_741a_case_4 - IMAGE_BASE + __zres_end ; 0x7422
    dw jumptable_741a_case_4 - IMAGE_BASE + __zres_end ; 0x7424
    dw jumptable_741a_case_4 - IMAGE_BASE + __zres_end ; 0x7426
@..api_idx_0002_NIPM.l1:
    cmp ax, strict word 7            ; 0x7428
    jae short jumptable_741a_case_3  ; 0x742b
    xchg bx, ax                      ; 0x742d
    shl bx, 1                        ; 0x742e
    jmp [cs:bx + jumptable_741a - IMAGE_BASE + __zres_end] ; 0x7430
jumptable_741a_case_3:
    ret                              ; 0x7435
