; auto-generated
api_idx_0006_KLOT:
    mov ax, 0xfffa                   ; 0x0f8e
    call aztec_csav                  ; 0x0f91
    call bios_kbd_check              ; 0x0f94
    mov ax, word [bp + 0x4]          ; 0x0f97
    cwd                              ; 0x0f9a
    les bx, word [dseg_0002]         ; 0x0f9b
    mov cx, word [es:bx]             ; 0x0f9f
    mov bx, word [es:bx + 0x2]       ; 0x0fa2
    add ax, cx                       ; 0x0fa6
    adc dx, bx                       ; 0x0fa8
    mov word [bp - 0x0002], dx       ; 0x0faa
    mov word [bp - 0x0004], ax       ; 0x0fad
@..api_idx_0006_KLOT.l1:
    les bx, word [dseg_0002]         ; 0x0fb0
    mov ax, word [es:bx]             ; 0x0fb4
    mov dx, word [es:bx + 0x2]       ; 0x0fb7
    cmp dx, word [bp - 0x0002]       ; 0x0fbb
    jg short @..api_idx_0006_KLOT.l2 ; 0x0fbe
    jne short @..api_idx_0006_KLOT.l3 ; 0x0fc0
    cmp ax, word [bp - 0x0004]       ; 0x0fc2
    jb short @..api_idx_0006_KLOT.l3 ; 0x0fc5
@..api_idx_0006_KLOT.l2:
    jmp short @..api_idx_0006_KLOT.l5 ; 0x0fc7
@..api_idx_0006_KLOT.l3:
    call ds_app_NMTN                 ; 0x0fc9
    test ax, ax                      ; 0x0fcc
    je short @..api_idx_0006_KLOT.l4 ; 0x0fce
    ret                              ; 0x0fd0
@..api_idx_0006_KLOT.l4:
    call loc_IPIR                    ; 0x0fd1
    not ax                           ; 0x0fd4
    push ax                          ; 0x0fd6
    call loc_MSIQ                    ; 0x0fd7
    pop cx                           ; 0x0fda
    jmp short @..api_idx_0006_KLOT.l1 ; 0x0fdb
@..api_idx_0006_KLOT.l5:
    ret                              ; 0x0fdd
