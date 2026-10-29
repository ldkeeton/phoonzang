; auto-generated
api_idx_0002_USIT:
    mov ax, 0xfffe                   ; 0x65fc
    call aztec_csav                  ; 0x65ff
    mov word [bp - 2], 0             ; 0x6602
    jmp short .forward2              ; 0x6607
.back1:
    mov bx, word [bp - 2]            ; 0x6609
    cmp byte [bx + pc_file_record_base_hi + 0x2], 0 ; 0x660c
    jne short .forward1              ; 0x6611
    mov ax, bx                       ; 0x6613
    ret                              ; 0x6615
.forward1:
    inc word [bp - 2]                ; 0x6616
.forward2:
    mov ax, word [bp - 2]            ; 0x6619
    cmp ax, word [bss_9070]          ; 0x661c
    jl short .back1                  ; 0x6620
    mov ax, 0xffff                   ; 0x6622
    ret                              ; 0x6625
