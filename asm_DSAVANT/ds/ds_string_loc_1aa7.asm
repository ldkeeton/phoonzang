ds_string_loc_1aa7:
    push word [bp - 0x0002]          ; 0x1aa7
    push word [bp + 0x4]             ; 0x1aaa
    call ds_app_mem_184f             ; 0x1aad
    add sp, byte 4                   ; 0x1ab0
    mov ax, 0x248                    ; 0x1ab3
    imul word [bp + 0x4]             ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0xc                      ; 0x1aba
    imul word [bp + 0x6]             ; 0x1abd
    mov cx, ax                       ; 0x1ac0
    pop ax                           ; 0x1ac2
    add ax, cx                       ; 0x1ac3
    mov bx, ax                       ; 0x1ac5
    mov al, byte [bx + 0x5c3f]       ; 0x1ac7
    push ax                          ; 0x1acb
    mov ax, 0x248                    ; 0x1acc
    imul word [bp + 0x4]             ; 0x1acf
    mov bx, ax                       ; 0x1ad2
    pop ax                           ; 0x1ad4
    add byte [bx + 0x5dab], al       ; 0x1ad5
    jmp short ds_loc_1b1c            ; 0x1ad9
