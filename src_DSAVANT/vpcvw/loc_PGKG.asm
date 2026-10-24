; auto-generated
loc_PGKG:
    mov ax, 0                        ; 0x902e
    call aztec_csav                  ; 0x9031
    mov ax, word [bp + 0x6]          ; 0x9034
    jmp near @..loc_PGKG.l3          ; 0x9037
jumptable_9188_case_0:
    push word [bp + 0x8]             ; 0x903a
    mov ax, dseg_92e8                ; 0x903d
    push ax                          ; 0x9040
    push word [bp + 0x6]             ; 0x9041
    push word [bp + 0x4]             ; 0x9044
    call api_idx_0002_LTGI           ; 0x9047
    add sp, byte 8                   ; 0x904a
    jmp near @..loc_PGKG.l4          ; 0x904d
jumptable_9188_case_1:
    push word [bp + 0x8]             ; 0x9050
    mov ax, dseg_92f1                ; 0x9053
    push ax                          ; 0x9056
    push word [bp + 0x6]             ; 0x9057
    push word [bp + 0x4]             ; 0x905a
    call api_idx_0002_LTGI           ; 0x905d
    add sp, byte 8                   ; 0x9060
    jmp near @..loc_PGKG.l4          ; 0x9063
jumptable_9188_case_2:
    push word [bp + 0x8]             ; 0x9066
    mov ax, dseg_92fa                ; 0x9069
    push ax                          ; 0x906c
    push word [bp + 0x6]             ; 0x906d
    push word [bp + 0x4]             ; 0x9070
    call api_idx_0002_LTGI           ; 0x9073
    add sp, byte 8                   ; 0x9076
    jmp near @..loc_PGKG.l4          ; 0x9079
jumptable_9188_case_3:
    push word [bp + 0x8]             ; 0x907c
    mov ax, dseg_9303                ; 0x907f
    push ax                          ; 0x9082
    push word [bp + 0x6]             ; 0x9083
    push word [bp + 0x4]             ; 0x9086
    call api_idx_0002_LTGI           ; 0x9089
    add sp, byte 8                   ; 0x908c
    jmp near @..loc_PGKG.l4          ; 0x908f
jumptable_9188_case_4:
    push word [bp + 0x8]             ; 0x9092
    mov ax, dseg_930c                ; 0x9095
    push ax                          ; 0x9098
    push word [bp + 0x6]             ; 0x9099
    push word [bp + 0x4]             ; 0x909c
    call api_idx_0002_LTGI           ; 0x909f
    add sp, byte 8                   ; 0x90a2
    jmp near @..loc_PGKG.l4          ; 0x90a5
jumptable_9188_case_5:
    push word [bp + 0x8]             ; 0x90a8
    mov ax, dseg_9315                ; 0x90ab
    push ax                          ; 0x90ae
    push word [bp + 0x6]             ; 0x90af
    push word [bp + 0x4]             ; 0x90b2
    call api_idx_0002_LTGI           ; 0x90b5
    add sp, byte 8                   ; 0x90b8
    jmp near @..loc_PGKG.l4          ; 0x90bb
jumptable_9188_case_6:
    push word [bp + 0x8]             ; 0x90be
    mov ax, dseg_931e                ; 0x90c1
    push ax                          ; 0x90c4
    push word [bp + 0x6]             ; 0x90c5
    push word [bp + 0x4]             ; 0x90c8
    call api_idx_0002_LTGI           ; 0x90cb
    add sp, byte 8                   ; 0x90ce
    jmp near @..loc_PGKG.l4          ; 0x90d1
jumptable_9188_case_7:
    push word [bp + 0x8]             ; 0x90d4
    mov ax, dseg_9327                ; 0x90d7
    push ax                          ; 0x90da
    push word [bp + 0x6]             ; 0x90db
    push word [bp + 0x4]             ; 0x90de
    call api_idx_0002_LTGI           ; 0x90e1
    add sp, byte 8                   ; 0x90e4
    jmp near @..loc_PGKG.l4          ; 0x90e7
jumptable_9188_case_8:
    mov ax, 0x248                    ; 0x90ea
    imul word [bp + 0x4]             ; 0x90ed
    mov bx, ax                       ; 0x90f0
    cmp byte [bx + member_state + 0x2], 1 ; 0x90f2
    jne short @..loc_PGKG.l1         ; 0x90f7
    push word [bp + 0x8]             ; 0x90f9
    mov ax, dseg_9330                ; 0x90fc
    push ax                          ; 0x90ff
    push word [bp + 0x6]             ; 0x9100
    push word [bp + 0x4]             ; 0x9103
    call api_idx_0002_LTGI           ; 0x9106
    add sp, byte 8                   ; 0x9109
    jmp short @..loc_PGKG.l2         ; 0x910c
@..loc_PGKG.l1:
    mov ax, word [bp + 0x6]          ; 0x910e
    shl ax, 1                        ; 0x9111
    mov bx, ax                       ; 0x9113
    mov word [bx + bss_967c], 0      ; 0x9115
@..loc_PGKG.l2:
    jmp near @..loc_PGKG.l4          ; 0x911b
jumptable_9188_case_9:
    push word [bp + 0x8]             ; 0x911e
    mov ax, dseg_9339                ; 0x9121
    push ax                          ; 0x9124
    push word [bp + 0x6]             ; 0x9125
    push word [bp + 0x4]             ; 0x9128
    call api_idx_0002_LTGI           ; 0x912b
    add sp, byte 8                   ; 0x912e
    jmp near @..loc_PGKG.l4          ; 0x9131
jumptable_9188_case_10:
    push word [bp + 0x8]             ; 0x9134
    mov ax, dseg_9342                ; 0x9137
    push ax                          ; 0x913a
    push word [bp + 0x6]             ; 0x913b
    push word [bp + 0x4]             ; 0x913e
    call api_idx_0002_LTGI           ; 0x9141
    add sp, byte 8                   ; 0x9144
    jmp short @..loc_PGKG.l4         ; 0x9147
jumptable_9188_case_11:
    push word [bp + 0x8]             ; 0x9149
    mov ax, dseg_934b                ; 0x914c
    push ax                          ; 0x914f
    push word [bp + 0x6]             ; 0x9150
    push word [bp + 0x4]             ; 0x9153
    call api_idx_0002_LTGI           ; 0x9156
    add sp, byte 8                   ; 0x9159
    jmp short @..loc_PGKG.l4         ; 0x915c
jumptable_9188_case_12:
    push word [bp + 0x8]             ; 0x915e
    mov ax, dseg_9354                ; 0x9161
    push ax                          ; 0x9164
    push word [bp + 0x6]             ; 0x9165
    push word [bp + 0x4]             ; 0x9168
    call api_idx_0002_LTGI           ; 0x916b
    add sp, byte 8                   ; 0x916e
    jmp short @..loc_PGKG.l4         ; 0x9171
jumptable_9188_case_13:
    push word [bp + 0x8]             ; 0x9173
    mov ax, dseg_935d                ; 0x9176
    push ax                          ; 0x9179
    push word [bp + 0x6]             ; 0x917a
    push word [bp + 0x4]             ; 0x917d
    call api_idx_0002_LTGI           ; 0x9180
    add sp, byte 8                   ; 0x9183
    jmp short @..loc_PGKG.l4         ; 0x9186
jumptable_9188:
    dw jumptable_9188_case_0 - IMAGE_BASE + __zres_end ; 0x9188
    dw jumptable_9188_case_1 - IMAGE_BASE + __zres_end ; 0x918a
    dw jumptable_9188_case_2 - IMAGE_BASE + __zres_end ; 0x918c
    dw jumptable_9188_case_3 - IMAGE_BASE + __zres_end ; 0x918e
    dw jumptable_9188_case_4 - IMAGE_BASE + __zres_end ; 0x9190
    dw jumptable_9188_case_5 - IMAGE_BASE + __zres_end ; 0x9192
    dw jumptable_9188_case_6 - IMAGE_BASE + __zres_end ; 0x9194
    dw jumptable_9188_case_7 - IMAGE_BASE + __zres_end ; 0x9196
    dw jumptable_9188_case_8 - IMAGE_BASE + __zres_end ; 0x9198
    dw jumptable_9188_case_9 - IMAGE_BASE + __zres_end ; 0x919a
    dw jumptable_9188_case_10 - IMAGE_BASE + __zres_end ; 0x919c
    dw jumptable_9188_case_11 - IMAGE_BASE + __zres_end ; 0x919e
    dw jumptable_9188_case_12 - IMAGE_BASE + __zres_end ; 0x91a0
    dw jumptable_9188_case_13 - IMAGE_BASE + __zres_end ; 0x91a2
@..loc_PGKG.l3:
    cmp ax, strict word 0xe          ; 0x91a4
    jae short @..loc_PGKG.l4         ; 0x91a7
    xchg bx, ax                      ; 0x91a9
    shl bx, 1                        ; 0x91aa
    jmp [cs:bx + jumptable_9188 - IMAGE_BASE + __zres_end] ; 0x91ac
@..loc_PGKG.l4:
    ret                              ; 0x91b1
