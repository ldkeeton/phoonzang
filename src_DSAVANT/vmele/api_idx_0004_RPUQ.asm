; auto-generated
api_idx_0004_RPUQ:
    mov ax, 0xfffc                   ; 0x03b9
    call aztec_csav                  ; 0x03bc
    mov word [bp - 0x0004], 0xffff   ; 0x03bf
    mov word [bp - 0x0002], 0xf      ; 0x03c4
@..api_idx_0004_RPUQ.l1:
    mov bx, word [bp - 0x0002]       ; 0x03c9
    mov al, byte [bx + 0x5b48]       ; 0x03cc
    sub ah, ah                       ; 0x03d0
    cmp ax, word [bp + 0x4]          ; 0x03d2
    jne short @..api_idx_0004_RPUQ.l2 ; 0x03d5
    mov byte [bx + 0x5b5a], 1        ; 0x03d7
    mov ax, bx                       ; 0x03dc
    ret                              ; 0x03de
@..api_idx_0004_RPUQ.l2:
    cmp byte [bx + 0x5b5a], 0        ; 0x03df
    jne short @..api_idx_0004_RPUQ.l3 ; 0x03e4
    mov word [bp - 0x0004], bx       ; 0x03e6
@..api_idx_0004_RPUQ.l3:
    inc word [bp - 0x0002]           ; 0x03e9
    mov ax, word [bp - 0x0002]       ; 0x03ec
    cmp ax, strict word 0x12         ; 0x03ef
    jl short @..api_idx_0004_RPUQ.l1 ; 0x03f2
    cmp word [bp - 0x0004], byte 0xff ; 0x03f4
    je short @..api_idx_0004_RPUQ.l5 ; 0x03f8
    mov bx, word [bp - 0x0004]       ; 0x03fa
    mov al, byte [bx + 0x5b48]       ; 0x03fd
    sub ah, ah                       ; 0x0401
    cmp ax, 0xff                     ; 0x0403
    je short @..api_idx_0004_RPUQ.l4 ; 0x0406
    push bx                          ; 0x0408
    call free_picture_slot           ; 0x0409
    pop cx                           ; 0x040c
@..api_idx_0004_RPUQ.l4:
    push word [bp - 0x0004]          ; 0x040d
    push word [bp + 0x4]             ; 0x0410
    call ds_app_file_TSNH            ; 0x0413
    add sp, byte 4                   ; 0x0416
@..api_idx_0004_RPUQ.l5:
    mov ax, word [bp - 0x0004]       ; 0x0419
    ret                              ; 0x041c
