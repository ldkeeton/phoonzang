; auto-generated
api_idx_0006_TLLQ:
    mov ax, 0xfffa                   ; 0x84f0
    call aztec_csav                  ; 0x84f3
    mov word [bp - 2], 0             ; 0x84f6
    mov word [bp - 4], 0             ; 0x84fb
    mov word [bp - 6], 0             ; 0x8500
    jmp short @..api_idx_0006_TLLQ.l2 ; 0x8505
@..api_idx_0006_TLLQ.l1:
    mov ax, 0x248                    ; 0x8507
    imul word [bp - 6]               ; 0x850a
    mov bx, ax                       ; 0x850d
    mov ax, word [bx + party_records + pc_rec.f_0014] ; 0x850f
    mov dx, word [bx + party_records + pc_rec.f_0016] ; 0x8513
    add word [bp - 4], ax            ; 0x8517
    adc word [bp - 2], dx            ; 0x851a
    mov word [bx + party_records + pc_rec.f_0016], 0 ; 0x851d
    mov word [bx + party_records + pc_rec.f_0014], 0 ; 0x8523
    inc word [bp - 6]                ; 0x8529
@..api_idx_0006_TLLQ.l2:
    mov ax, word [bp - 6]            ; 0x852c
    cmp ax, word [party_char_count]  ; 0x852f
    jl short @..api_idx_0006_TLLQ.l1 ; 0x8533
    mov ax, word [bp - 4]            ; 0x8535
    mov dx, word [bp - 2]            ; 0x8538
    push ax                          ; 0x853b
    push dx                          ; 0x853c
    mov ax, 0x248                    ; 0x853d
    imul word [bp + 4]               ; 0x8540
    mov bx, ax                       ; 0x8543
    pop dx                           ; 0x8545
    pop ax                           ; 0x8546
    mov word [bx + party_records + pc_rec.f_0016], dx ; 0x8547
    mov word [bx + party_records + pc_rec.f_0014], ax ; 0x854b
    ret                              ; 0x854f
