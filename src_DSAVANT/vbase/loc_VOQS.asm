; auto-generated
loc_VOQS:
    cmp word [bp + 0x6], byte 0      ; 0x19ba
    jne short @..loc_19b7.l1         ; 0x19be
    mov ax, 0x19                     ; 0x19c0
@..loc_19b7.l1:
    ret                              ; 0x19c3
jumptable_19de_case_11:
    mov ax, 0x1b                     ; 0x19c4
    cmp word [bp + 0x6], byte 0      ; 0x19c7
    jne short @..loc_19c4.l1         ; 0x19cb
    mov ax, 6                        ; 0x19cd
@..loc_19c4.l1:
    ret                              ; 0x19d0
jumptable_19de_case_12:
    mov ax, 0xf                      ; 0x19d1
    cmp word [bp + 0x6], byte 0      ; 0x19d4
    jne short @..loc_19d1.l1         ; 0x19d8
    mov ax, 0x1e                     ; 0x19da
@..loc_19d1.l1:
    ret                              ; 0x19dd
jumptable_19de:
    dw loc_1a05 - IMAGE_BASE + 0x5055          ; 0x19de
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e0
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19e2
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19e4
    dw jumptable_19de_case_4 - IMAGE_BASE + 0x5055 ; 0x19e6
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e8
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19ea
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19ec
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19ee
    dw jumptable_19de_case_9 - IMAGE_BASE + 0x5055 ; 0x19f0
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19f2
    dw jumptable_19de_case_11 - IMAGE_BASE + 0x5055 ; 0x19f4
    dw jumptable_19de_case_12 - IMAGE_BASE + 0x5055 ; 0x19f6
loc_19f8:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short loc_1a05               ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
loc_1a05:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short loc_1a11               ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
loc_1a11:
    ret                              ; 0x1a11
