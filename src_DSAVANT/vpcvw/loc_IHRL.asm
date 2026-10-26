; auto-generated
loc_IHRL:
    mov ax, 0                        ; 0x474b
    call aztec_csav                  ; 0x474e
    mov ax, 0x248                    ; 0x4751
    imul word [bp + 4]               ; 0x4754
    add ax, word [bp + 6]            ; 0x4757
    mov bx, ax                       ; 0x475a
    mov al, byte [bx + party_records + pc_rec.order] ; 0x475c
    sub ah, ah                       ; 0x4760
    cmp ax, 0xff                     ; 0x4762
    je short .forward1               ; 0x4765
    mov ax, 0x248                    ; 0x4767
    imul word [bp + 4]               ; 0x476a
    push ax                          ; 0x476d
    mov al, byte [bx + party_records + pc_rec.order] ; 0x476e
    sub ah, ah                       ; 0x4772
    mov cx, 0xc                      ; 0x4774
    imul cx                          ; 0x4777
    mov cx, ax                       ; 0x4779
    pop ax                           ; 0x477b
    add ax, cx                       ; 0x477c
    mov bx, ax                       ; 0x477e
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x4780
    sub ah, ah                       ; 0x4784
    test ax, 2                       ; 0x4786
    je short .forward1               ; 0x4789
    mov ax, 1                        ; 0x478b
    ret                              ; 0x478e
.forward1:
    mov ax, 0                        ; 0x478f
    ret                              ; 0x4792
