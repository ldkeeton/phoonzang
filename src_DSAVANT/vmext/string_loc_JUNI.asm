; auto-generated
string_loc_JUNI:
    mov ax, 0x248                    ; 0x0fb3
    imul word [bp - 0x0006]          ; 0x0fb6
    mov bx, ax                       ; 0x0fb9
    push word [bx + 0x5c12]          ; 0x0fbb
    mov ax, 0                        ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, word [bx + 0x5c10]       ; 0x0fc3
    add ax, word [bp - 0x000e]       ; 0x0fc7
    push ax                          ; 0x0fca
    call clamp                       ; 0x0fcb
    add sp, byte 6                   ; 0x0fce
    push ax                          ; 0x0fd1
    mov ax, 0x248                    ; 0x0fd2
    imul word [bp - 0x0006]          ; 0x0fd5
    mov bx, ax                       ; 0x0fd8
    pop ax                           ; 0x0fda
    mov word [bx + 0x5c10], ax       ; 0x0fdb
    jmp near loc_HPTS                ; 0x0fdf
