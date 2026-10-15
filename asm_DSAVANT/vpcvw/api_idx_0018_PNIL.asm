; auto-generated
api_idx_0018_PNIL:
    mov ax, 0xffe8                   ; 0x9740
    call aztec_csav                  ; 0x9743
@..api_idx_0018_PNIL.l1:
    mov word [bp - 0x0002], 0        ; 0x9746
@..api_idx_0018_PNIL.l2:
    mov ax, word [bp - 0x0002]       ; 0x974b
    shl ax, 1                        ; 0x974e
    mov bx, ax                       ; 0x9750
    add bx, bp                       ; 0x9752
    mov word [bx - 0x0018], 1        ; 0x9754
    inc word [bp - 0x0002]           ; 0x9759
    mov ax, word [bp - 0x0002]       ; 0x975c
    cmp ax, strict word 4            ; 0x975f
    jle short @..api_idx_0018_PNIL.l2 ; 0x9762
    mov word [bp - 0x0012], 0        ; 0x9764
    mov word [bp - 0x000e], 0xffff   ; 0x9769
    lea ax, word [bp - 0x0018]       ; 0x976e
    push ax                          ; 0x9771
    mov ax, 0                        ; 0x9772
    push ax                          ; 0x9775
    mov ax, 0xffff                   ; 0x9776
    push ax                          ; 0x9779
    mov ax, 1                        ; 0x977a
    push ax                          ; 0x977d
    mov ax, 6                        ; 0x977e
    push ax                          ; 0x9781
    mov ax, 1                        ; 0x9782
    push ax                          ; 0x9785
    mov ax, 0xc                      ; 0x9786
    push ax                          ; 0x9789
    mov ax, 0x46                     ; 0x978a
    push ax                          ; 0x978d
    mov ax, 0xb                      ; 0x978e
    push ax                          ; 0x9791
    mov ax, 0xbc                     ; 0x9792
    push ax                          ; 0x9795
    mov ax, 4                        ; 0x9796
    push ax                          ; 0x9799
    mov ax, 0                        ; 0x979a
    push ax                          ; 0x979d
    mov ax, 0x474                    ; 0x979e
    push ax                          ; 0x97a1
    call loc_JUMH                    ; 0x97a2
    add sp, byte 0x1a                ; 0x97a5
    mov word [bp - 0x0004], ax       ; 0x97a8
    jmp short @..api_idx_0018_PNIL.l6 ; 0x97ab
@..api_idx_0018_PNIL.l3:
    push word [bp + 0x4]             ; 0x97ad
    call api_idx_000e_IHKM           ; 0x97b0
    pop cx                           ; 0x97b3
    jmp short @..api_idx_0018_PNIL.l7 ; 0x97b4
@..api_idx_0018_PNIL.l4:
    push word [bp + 0x4]             ; 0x97b6
    call api_idx_0022_HKUV           ; 0x97b9
    pop cx                           ; 0x97bc
    jmp short @..api_idx_0018_PNIL.l7 ; 0x97bd
@..api_idx_0018_PNIL.l5:
    push word [bp + 0x4]             ; 0x97bf
    call api_idx_0030_UJSL           ; 0x97c2
    pop cx                           ; 0x97c5
    jmp short @..api_idx_0018_PNIL.l7 ; 0x97c6
@..api_idx_0018_PNIL.l6:
    cmp ax, strict word 0            ; 0x97c8
    je short @..api_idx_0018_PNIL.l3 ; 0x97cb
    cmp ax, strict word 1            ; 0x97cd
    je short @..api_idx_0018_PNIL.l4 ; 0x97d0
    cmp ax, strict word 2            ; 0x97d2
    je short @..api_idx_0018_PNIL.l5 ; 0x97d5
@..api_idx_0018_PNIL.l7:
    mov ax, 0                        ; 0x97d7
    push ax                          ; 0x97da
    push word [bp + 0x4]             ; 0x97db
    call loc_RPNL                    ; 0x97de
    add sp, byte 4                   ; 0x97e1
    cmp word [bp - 0x0004], byte 4   ; 0x97e4
    je short @..api_idx_0018_PNIL.l8 ; 0x97e8
    jmp near @..api_idx_0018_PNIL.l1 ; 0x97ea
@..api_idx_0018_PNIL.l8:
    ret                              ; 0x97ed
