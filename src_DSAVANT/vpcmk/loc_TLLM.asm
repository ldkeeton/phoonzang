; auto-generated
loc_TLLM:
    mov ax, 0xfdb6                   ; 0x6626
    call aztec_csav                  ; 0x6629
    mov word [bp - 2], 0             ; 0x662c
    jmp short .forward2              ; 0x6631
.back1:
    mov bx, word [bp - 2]            ; 0x6633
    cmp byte [bx + pc_file_record_base_hi + 0x2], 0 ; 0x6636
    jbe short .forward1              ; 0x663b
    mov ax, 0                        ; 0x663d
    push ax                          ; 0x6640
    push bx                          ; 0x6641
    lea ax, word [bp - 0x24a]        ; 0x6642
    push ax                          ; 0x6646
    call transfer_pc_file_record     ; 0x6647
    add sp, byte 6                   ; 0x664a
    lea ax, word [bp - 0x24a]        ; 0x664d
    push ax                          ; 0x6651
    push word [bp + 4]               ; 0x6652
    call aztec_strcmp                ; 0x6655
    add sp, byte 4                   ; 0x6658
    test ax, ax                      ; 0x665b
    jne short .forward1              ; 0x665d
    mov ax, 0xffff                   ; 0x665f
    ret                              ; 0x6662
.forward1:
    inc word [bp - 2]                ; 0x6663
.forward2:
    mov ax, word [bp - 2]            ; 0x6666
    cmp ax, word [pc_file_record_count] ; 0x6669
    jl short .back1                  ; 0x666d
    mov ax, 0                        ; 0x666f
    ret                              ; 0x6672
