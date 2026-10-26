; auto-generated
loc_VJNU:
    mov ax, 0                        ; 0x0636
    call aztec_csav                  ; 0x0639
    mov ax, 0                        ; 0x063c
    push ax                          ; 0x063f
    mov ax, 8                        ; 0x0640
    push ax                          ; 0x0643
    mov ax, adjacent_object_type     ; 0x0644
    push ax                          ; 0x0647
    call aztec_setmem                ; 0x0648
    add sp, byte 6                   ; 0x064b
    mov word [party_status_frame_step], 0 ; 0x064e
    mov ax, word [bp + 4]            ; 0x0654
    jmp short .forward1              ; 0x0657
.back1:
    mov ax, word [bp + 6]            ; 0x0659
    add word [party_world_y], ax     ; 0x065c
    jmp short .return1               ; 0x0660
.back2:
    mov ax, word [bp + 6]            ; 0x0662
    add word [party_world_x], ax     ; 0x0665
    jmp short .return1               ; 0x0669
.back3:
    mov ax, word [bp + 6]            ; 0x066b
    sub word [party_world_y], ax     ; 0x066e
    jmp short .return1               ; 0x0672
.back4:
    mov ax, word [bp + 6]            ; 0x0674
    sub word [party_world_x], ax     ; 0x0677
    jmp short .return1               ; 0x067b
.forward1:
    cmp ax, strict word 0            ; 0x067d
    je short .back1                  ; 0x0680
    cmp ax, strict word 1            ; 0x0682
    je short .back2                  ; 0x0685
    cmp ax, strict word 2            ; 0x0687
    je short .back3                  ; 0x068a
    cmp ax, strict word 3            ; 0x068c
    je short .back4                  ; 0x068f
.return1:
    ret                              ; 0x0691
