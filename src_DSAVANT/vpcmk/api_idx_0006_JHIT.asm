; auto-generated
api_idx_0006_JHIT:
    mov ax, 0xfffa                   ; 0x6887
    call aztec_csav                  ; 0x688a
    mov ax, 0x4a                     ; 0x688d
    push ax                          ; 0x6890
    mov ax, 0x42                     ; 0x6891
    push ax                          ; 0x6894
    mov ax, 0x12                     ; 0x6895
    push ax                          ; 0x6898
    mov ax, 0xe                      ; 0x6899
    push ax                          ; 0x689c
    call gfx_save_area               ; 0x689d
    add sp, byte 8                   ; 0x68a0
    mov word [bp - 4], dx            ; 0x68a3
    mov word [bp - 6], ax            ; 0x68a6
    push word [bp + 4]               ; 0x68a9
    mov ax, 0                        ; 0x68ac
    push ax                          ; 0x68af
    call loc_TUUJ                    ; 0x68b0
    add sp, byte 4                   ; 0x68b3
    mov al, byte [party_records + pc_rec.kind] ; 0x68b6
    sub ah, ah                       ; 0x68b9
    mov word [bp - 2], ax            ; 0x68bb
    push word [bp - 4]               ; 0x68be
    push word [bp - 6]               ; 0x68c1
    mov ax, 0                        ; 0x68c4
    push ax                          ; 0x68c7
    call api_idx_0006_HMNQ           ; 0x68c8
    add sp, byte 6                   ; 0x68cb
    mov ax, 1                        ; 0x68ce
    push ax                          ; 0x68d1
    push word [bp - 4]               ; 0x68d2
    push word [bp - 6]               ; 0x68d5
    call gfx_restore_area            ; 0x68d8
    add sp, byte 6                   ; 0x68db
    mov al, byte [party_records + pc_rec.kind] ; 0x68de
    sub ah, ah                       ; 0x68e1
    cmp ax, word [bp - 2]            ; 0x68e3
    je short @..api_idx_0006_JHIT.l1 ; 0x68e6
    mov ax, 1                        ; 0x68e8
    push ax                          ; 0x68eb
    push word [bp + 4]               ; 0x68ec
    mov ax, party_records            ; 0x68ef
    push ax                          ; 0x68f2
    call transfer_pc_file_record     ; 0x68f3
    add sp, byte 6                   ; 0x68f6
@..api_idx_0006_JHIT.l1:
    ret                              ; 0x68f9
