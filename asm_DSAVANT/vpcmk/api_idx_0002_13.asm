api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x65fc
    call ds_aztec_csav               ; 0x65ff
    mov word [bp - 0x0002], 0        ; 0x6602
    jmp short @..api_idx_0002_13.l3  ; 0x6607
@..api_idx_0002_13.l1:
    mov bx, word [bp - 0x0002]       ; 0x6609
    cmp byte [bx - 0x6f8a], 0        ; 0x660c
    jne short @..api_idx_0002_13.l2  ; 0x6611
    mov ax, bx                       ; 0x6613
    ret                              ; 0x6615
@..api_idx_0002_13.l2:
    inc word [bp - 0x0002]           ; 0x6616
@..api_idx_0002_13.l3:
    mov ax, word [bp - 0x0002]       ; 0x6619
    cmp ax, word [bss_9070]          ; 0x661c
    jl short @..api_idx_0002_13.l1   ; 0x6620
    mov ax, 0xffff                   ; 0x6622
    ret                              ; 0x6625
loc_6626:
    mov ax, 0xfdb6                   ; 0x6626
    call ds_aztec_csav               ; 0x6629
    mov word [bp - 0x0002], 0        ; 0x662c
    jmp short @..local.l74           ; 0x6631
@..local.l72:
    mov bx, word [bp - 0x0002]       ; 0x6633
    cmp byte [bx - 0x6f8a], 0        ; 0x6636
    jbe short @..local.l73           ; 0x663b
    mov ax, 0                        ; 0x663d
    push ax                          ; 0x6640
    push bx                          ; 0x6641
    lea ax, word [bp - 0x024a]       ; 0x6642
    push ax                          ; 0x6646
    call api_idx_0002_2              ; 0x6647
    add sp, byte 6                   ; 0x664a
    lea ax, word [bp - 0x024a]       ; 0x664d
    push ax                          ; 0x6651
    push word [bp + 0x4]             ; 0x6652
    call aztec_strcmp                ; 0x6655
    add sp, byte 4                   ; 0x6658
    test ax, ax                      ; 0x665b
    jne short @..local.l73           ; 0x665d
    mov ax, 0xffff                   ; 0x665f
    ret                              ; 0x6662
@..local.l73:
    inc word [bp - 0x0002]           ; 0x6663
@..local.l74:
    mov ax, word [bp - 0x0002]       ; 0x6666
    cmp ax, word [bss_9070]          ; 0x6669
    jl short @..local.l72            ; 0x666d
    mov ax, 0                        ; 0x666f
    ret                              ; 0x6672
