; auto-generated
api_idx_0014_LVIL:
    mov ax, 0xffec                   ; 0x6673
    call aztec_csav                  ; 0x6676
    mov byte [bp - 0x0014], 0        ; 0x6679
    lea ax, word [bp - 0x0014]       ; 0x667d
    push ax                          ; 0x6680
    mov ax, 1                        ; 0x6681
    push ax                          ; 0x6684
    push ax                          ; 0x6685
    mov ax, 0                        ; 0x6686
    push ax                          ; 0x6689
    mov ax, MSG_CREATE_NEW_CHARACTER ; 0x668a
    push ax                          ; 0x668d
    call api_idx_0026_NRVO           ; 0x668e
    add sp, byte 0x0a                ; 0x6691
    cmp ax, strict word 2            ; 0x6694
    jne short @..api_idx_0014_LVIL.l1 ; 0x6697
    ret                              ; 0x6699
@..api_idx_0014_LVIL.l1:
    mov word [bss_978a], 0           ; 0x669a
    cmp byte [bp - 0x0014], 0        ; 0x66a0
    je short @..api_idx_0014_LVIL.l3 ; 0x66a4
    lea ax, word [bp - 0x0014]       ; 0x66a6
    push ax                          ; 0x66a9
    call loc_TLLM                    ; 0x66aa
    pop cx                           ; 0x66ad
    cmp ax, strict word 0xffff       ; 0x66ae
    jne short @..api_idx_0014_LVIL.l2 ; 0x66b1
    jmp short @..api_idx_0014_LVIL.l3 ; 0x66b3
@..api_idx_0014_LVIL.l2:
    push word [bp + 0x4]             ; 0x66b5
    lea ax, word [bp - 0x0014]       ; 0x66b8
    push ax                          ; 0x66bb
    call loc_MIPR                    ; 0x66bc
    add sp, byte 4                   ; 0x66bf
@..api_idx_0014_LVIL.l3:
    ret                              ; 0x66c2
