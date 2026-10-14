; auto-generated
api_idx_0014:
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
    mov ax, 0x47e                    ; 0x668a
    push ax                          ; 0x668d
    call api_idx_0026                ; 0x668e
    add sp, byte 0x0a                ; 0x6691
    cmp ax, strict word 2            ; 0x6694
    jne short @..api_idx_0014.l1     ; 0x6697
    ret                              ; 0x6699
@..api_idx_0014.l1:
    mov word [bss_978a], 0           ; 0x669a
    cmp byte [bp - 0x0014], 0        ; 0x66a0
    je short @..api_idx_0014.l3      ; 0x66a4
    lea ax, word [bp - 0x0014]       ; 0x66a6
    push ax                          ; 0x66a9
    call loc_6626                    ; 0x66aa
    pop cx                           ; 0x66ad
    cmp ax, strict word 0xffff       ; 0x66ae
    jne short @..api_idx_0014.l2     ; 0x66b1
    jmp short @..api_idx_0014.l3     ; 0x66b3
@..api_idx_0014.l2:
    push word [bp + 0x4]             ; 0x66b5
    lea ax, word [bp - 0x0014]       ; 0x66b8
    push ax                          ; 0x66bb
    call loc_62fb                    ; 0x66bc
    add sp, byte 4                   ; 0x66bf
@..api_idx_0014.l3:
    ret                              ; 0x66c2
loc_66c3:
    mov ax, 0                        ; 0x66c3
    call aztec_csav                  ; 0x66c6
    mov ax, 0                        ; 0x66c9
    push ax                          ; 0x66cc
    push word [bp + 0x6]             ; 0x66cd
    mov ax, 0x248                    ; 0x66d0
    imul word [bp + 0x4]             ; 0x66d3
    add ax, 0x5bf4                   ; 0x66d6
    push ax                          ; 0x66d9
    call api_idx_0002_2              ; 0x66da
    add sp, byte 6                   ; 0x66dd
    mov word [bss_9594], 0xffff      ; 0x66e0
    push word [bp + 0x4]             ; 0x66e6
    call api_idx_0054                ; 0x66e9
    pop cx                           ; 0x66ec
    mov ax, 0                        ; 0x66ed
    push ax                          ; 0x66f0
    mov ax, 0x248                    ; 0x66f1
    imul word [bp + 0x4]             ; 0x66f4
    mov bx, ax                       ; 0x66f7
    mov al, byte [bx + 0x5e2a]       ; 0x66f9
    sub ah, ah                       ; 0x66fd
    push ax                          ; 0x66ff
    call api_idx_0016                ; 0x6700
    add sp, byte 4                   ; 0x6703
    mov ax, 0x12                     ; 0x6706
    push ax                          ; 0x6709
    mov ax, 0xe                      ; 0x670a
    push ax                          ; 0x670d
    push word [bp + 0x4]             ; 0x670e
    call api_idx_0010                ; 0x6711
    add sp, byte 6                   ; 0x6714
    mov ax, 0                        ; 0x6717
    push ax                          ; 0x671a
    push word [bp + 0x4]             ; 0x671b
    call api_idx_0002_5              ; 0x671e
    add sp, byte 4                   ; 0x6721
    mov ax, 0xc7                     ; 0x6724
    push ax                          ; 0x6727
    mov ax, 0x13f                    ; 0x6728
    push ax                          ; 0x672b
    mov ax, 0                        ; 0x672c
    push ax                          ; 0x672f
    push ax                          ; 0x6730
    call thunk_4                     ; 0x6731
    add sp, byte 8                   ; 0x6734
    ret                              ; 0x6737
