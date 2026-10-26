; auto-generated
member_is_active: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1ccc
    call aztec_csav                  ; 0x1ccf
    mov ax, 0x248                    ; 0x1cd2
    imul word [bp + 4]               ; 0x1cd5
    mov bx, ax                       ; 0x1cd8
    cmp byte [bx + party_records + pc_rec.state], 0 ; 0x1cda
    jne short @..member_is_active.l1 ; 0x1cdf
    cmp byte [bx + party_records + pc_rec.status + 0x2], 0 ; 0x1ce1
    ja short @..member_is_active.l1  ; 0x1ce6
    cmp byte [bx + party_records + pc_rec.status + 0x3], 0 ; 0x1ce8
    jbe short @..member_is_active.l2 ; 0x1ced
@..member_is_active.l1:
    mov ax, 0                        ; 0x1cef
    jmp short @..member_is_active.l3 ; 0x1cf2
@..member_is_active.l2:
    mov ax, 1                        ; 0x1cf4
@..member_is_active.l3:
    ret                              ; 0x1cf7
