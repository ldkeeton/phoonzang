math_loc_08f2:
    mov ax, 0                        ; 0x08f2
    push ax                          ; 0x08f5
    call loc_415b                    ; 0x08f6
    pop cx                           ; 0x08f9
    mov ax, 0                        ; 0x08fa
    push ax                          ; 0x08fd
    mov ax, word [bp + 0x4]          ; 0x08fe
    shl ax, 1                        ; 0x0901
    mov bx, ax                       ; 0x0903
    mov cx, word [bx + 0x5524]       ; 0x0905
    mov ax, word [bp + 0x8]          ; 0x0909
    mov bx, cx                       ; 0x090c
    imul bx                          ; 0x090e
    mov cx, word [bp + 0x4]          ; 0x0910
    shl cx, 1                        ; 0x0913
    shl cx, 1                        ; 0x0915
    mov bx, cx                       ; 0x0917
    mov cx, word [bx + 0x521c]       ; 0x0919
    mov bx, word [bx + 0x521e]       ; 0x091d
    add ax, cx                       ; 0x0921
    adc dx, bx                       ; 0x0923
    push dx                          ; 0x0925
    push ax                          ; 0x0926
    push word [data_0e22]            ; 0x0927
    call dos_file_loc_5004           ; 0x092b
    add sp, byte 8                   ; 0x092e
    mov bx, word [bp + 0x4]          ; 0x0931
    cmp byte [bx + 0x556c], 0        ; 0x0934
    jne short @..math_loc_08f2.l3    ; 0x0939
    cmp word [bp + 0xa], byte 0      ; 0x093b
    jne short @..math_loc_08f2.l1    ; 0x093f
    shl bx, 1                        ; 0x0941
    push word [bx + 0x5524]          ; 0x0943
    push word [bp + 0x6]             ; 0x0947
    push word [data_0e22]            ; 0x094a
    call dos_file_loc_4fb6           ; 0x094e
    add sp, byte 6                   ; 0x0951
    jmp short @..math_loc_08f2.l2    ; 0x0954
@..math_loc_08f2.l1:
    cmp word [bp + 0xa], byte 1      ; 0x0956
    jne short @..math_loc_08f2.l2    ; 0x095a
    mov ax, word [bp + 0x4]          ; 0x095c
    shl ax, 1                        ; 0x095f
    mov bx, ax                       ; 0x0961
    push word [bx + 0x5524]          ; 0x0963
    push word [bp + 0x6]             ; 0x0967
    push word [data_0e22]            ; 0x096a
    call dos_file_loc_4fbd           ; 0x096e
    add sp, byte 6                   ; 0x0971
@..math_loc_08f2.l2:
    jmp short @..math_loc_08f2.l4    ; 0x0974
@..math_loc_08f2.l3:
    cmp word [bp + 0xa], byte 0      ; 0x0976
    jne short @..math_loc_08f2.l4    ; 0x097a
    mov ax, word [bp + 0x4]          ; 0x097c
    shl ax, 1                        ; 0x097f
    mov bx, ax                       ; 0x0981
    push word [bx + 0x5524]          ; 0x0983
    lea ax, word [bp - 0x00ff]       ; 0x0987
    push ax                          ; 0x098b
    push word [data_0e22]            ; 0x098c
    call dos_file_loc_4fb6           ; 0x0990
    add sp, byte 6                   ; 0x0993
    push word [bp + 0x6]             ; 0x0996
    lea ax, word [bp - 0x00ff]       ; 0x0999
    push ax                          ; 0x099d
    call string_loc_4002             ; 0x099e
    add sp, byte 4                   ; 0x09a1
@..math_loc_08f2.l4:
    ret                              ; 0x09a4
