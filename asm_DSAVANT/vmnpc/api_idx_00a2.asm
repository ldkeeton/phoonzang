api_idx_00a2:
    mov ax, 0xff5e                   ; 0x9844
    db 0xe8, 0xc1, 0x5b ; call 0xf40b
    cmp word [data_9e46], byte 0xff  ; 0x984a
    jne short @..api_idx_00a2.l1     ; 0x984f
    cmp word [data_9e60], byte 1     ; 0x9851
    jne short @..api_idx_00a2.l1     ; 0x9856
    mov word [data_9e46], 1          ; 0x9858
@..api_idx_00a2.l1:
    cmp word [data_9e7e], byte 0xff  ; 0x985e
    jne short @..api_idx_00a2.l2     ; 0x9863
    jmp near @..api_idx_00a2.l3      ; 0x9865
@..api_idx_00a2.l2:
    lea ax, word [bp - 0x0052]       ; 0x9868
    push ax                          ; 0x986b
    push word [data_9e44]            ; 0x986c
    push word [data_9e42]            ; 0x9870
    call loc_8981                    ; 0x9874
    add sp, byte 6                   ; 0x9877
    lea ax, word [bp - 0x0052]       ; 0x987a
    push ax                          ; 0x987d
    call api_idx_0002_11             ; 0x987e
    pop cx                           ; 0x9881
    lea ax, word [bp - 0x0052]       ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_15             ; 0x9886
    pop cx                           ; 0x9889
    lea ax, word [bp - 0x00a2]       ; 0x988a
    push ax                          ; 0x988e
    mov ax, 0x640                    ; 0x988f
    push ax                          ; 0x9892
    db 0xe8, 0xa5, 0x1c ; call 0xb53b
    add sp, byte 4                   ; 0x9896
    mov ax, 0x5e                     ; 0x9899
    push ax                          ; 0x989c
    lea ax, word [bp - 0x0052]       ; 0x989d
    push ax                          ; 0x98a0
    lea ax, word [bp - 0x00a2]       ; 0x98a1
    push ax                          ; 0x98a5
    db 0xe8, 0x57, 0x1a ; call 0xb300
    add sp, byte 6                   ; 0x98a9
    lea ax, word [bp - 0x00a2]       ; 0x98ac
    push ax                          ; 0x98b0
    call loc_9587                    ; 0x98b1
    pop cx                           ; 0x98b4
    lea ax, word [bp - 0x0052]       ; 0x98b5
    push ax                          ; 0x98b8
    push word [data_9e80]            ; 0x98b9
    push word [data_9e7e]            ; 0x98bd
    call loc_8981                    ; 0x98c1
    add sp, byte 6                   ; 0x98c4
    lea ax, word [bp - 0x0052]       ; 0x98c7
    push ax                          ; 0x98ca
    call api_idx_0002_11             ; 0x98cb
    pop cx                           ; 0x98ce
    lea ax, word [bp - 0x0052]       ; 0x98cf
    push ax                          ; 0x98d2
    call api_idx_0004_15             ; 0x98d3
    pop cx                           ; 0x98d6
    lea ax, word [bp - 0x0052]       ; 0x98d7
    push ax                          ; 0x98da
    mov ax, 0x641                    ; 0x98db
    push ax                          ; 0x98de
    call api_idx_0080                ; 0x98df
    add sp, byte 4                   ; 0x98e2
    mov ax, 0xffff                   ; 0x98e5
    ret                              ; 0x98e8
