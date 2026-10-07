api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x5161
    call ds_dispatch_f40b            ; 0x5164
    mov word [data_905e], 5          ; 0x5167
    mov word [data_830a], 5          ; 0x516d
    mov word [data_9436], 0x14       ; 0x5173
    mov word [data_9438], 0          ; 0x5179
    mov word [data_943a], 0          ; 0x517f
    mov word [data_9704], 0xffff     ; 0x5185
    mov word [bp - 0x0004], 0        ; 0x518b
    mov word [bp - 0x0002], 0        ; 0x5190
    jmp short @..api_idx_000c_3.l2   ; 0x5195
@..api_idx_000c_3.l1:
    mov ax, 0                        ; 0x5197
    push ax                          ; 0x519a
    push word [bp - 0x0002]          ; 0x519b
    call api_idx_0046                ; 0x519e
    add sp, byte 4                   ; 0x51a1
    or word [bp - 0x0004], ax        ; 0x51a4
    inc word [bp - 0x0002]           ; 0x51a7
@..api_idx_000c_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x51aa
    cmp ax, word [data_69c8]         ; 0x51ad
    jl short @..api_idx_000c_3.l1    ; 0x51b1
    cmp word [bp - 0x0004], byte 0   ; 0x51b3
    jne short @..api_idx_000c_3.l3   ; 0x51b7
    ret                              ; 0x51b9
