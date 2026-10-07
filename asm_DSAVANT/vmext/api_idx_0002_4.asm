api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x0262
    call ds_dispatch_f40b            ; 0x0265
    mov word [data_9188], 0          ; 0x0268
    mov ax, word [data_830c]         ; 0x026e
    jmp short @..api_idx_0002_4.l1   ; 0x0271
    mov word [bp - 0x0002], 1        ; 0x0273
    jmp short @..api_idx_0002_4.l2   ; 0x0278
    mov word [bp - 0x0002], 2        ; 0x027a
    jmp short @..api_idx_0002_4.l2   ; 0x027f
    mov word [bp - 0x0002], 3        ; 0x0281
    jmp short @..api_idx_0002_4.l2   ; 0x0286
    mov word [data_9188], 1          ; 0x0288
    mov word [bp - 0x0002], 4        ; 0x028e
    jmp short @..api_idx_0002_4.l2   ; 0x0293
    mov word [bp - 0x0002], 5        ; 0x0295
    jmp short @..api_idx_0002_4.l2   ; 0x029a
    mov word [bp - 0x0002], 6        ; 0x029c
    jmp short @..api_idx_0002_4.l2   ; 0x02a1
    rcl word [bp + si - 0x003f], 0x52 ; 0x02a3
    rcl word [bp + si - 0x003f], 0x52 ; 0x02a7
    rcl word [bp + si - 0x003f], 0x52 ; 0x02ab
    rcl word [bp + si - 0x002b], 0x52 ; 0x02af
    jcxz loc_0307                    ; 0x02b3
    jcxz loc_0309                    ; 0x02b5
    jcxz loc_030b                    ; 0x02b7
    jcxz loc_030d                    ; 0x02b9
    jcxz loc_030f                    ; 0x02bb
    rcl word [bp + si - 0x0038], 0x52 ; 0x02bd
    mov dx, 0xc852                   ; 0x02c1
    push dx                          ; 0x02c4
    mov dx, 0xc852                   ; 0x02c5
    push dx                          ; 0x02c8
    enter 0xc852, 0x52               ; 0x02c9
    enter 0xdc52, 0x52               ; 0x02cd
    mov dx, 0xba52                   ; 0x02d1
    push dx                          ; 0x02d4
    db 0xdc, 0x52, 0xba ; fcom [bp + si - 0x0046]
    push dx                          ; 0x02d8
    iret                             ; 0x02d9
