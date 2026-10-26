; auto-generated
evaluate_profession_stat_minimums:
    mov ax, 0xfffe                   ; 0x8fb8
    call aztec_csav                  ; 0x8fbb
    mov ax, word [bp + 6]            ; 0x8fbe
    shl ax, 1                        ; 0x8fc1
    mov bx, ax                       ; 0x8fc3
    mov word [bx + profession_eligible], 1 ; 0x8fc5
    mov word [bp - 2], 0             ; 0x8fcb
.back1:
    mov ax, 0x248                    ; 0x8fd0
    imul word [bp + 4]               ; 0x8fd3
    add ax, word [bp - 2]            ; 0x8fd6
    mov bx, ax                       ; 0x8fd9
    mov al, byte [bx + party_records + pc_rec.stat] ; 0x8fdb
    sub ah, ah                       ; 0x8fdf
    push ax                          ; 0x8fe1
    mov bx, word [bp + 8]            ; 0x8fe2
    mov si, word [bp - 2]            ; 0x8fe5
    mov al, byte [bx + si]           ; 0x8fe8
    cbw                              ; 0x8fea
    mov cx, ax                       ; 0x8feb
    add ax, strict word 0xffbf       ; 0x8fed
    mov cx, ax                       ; 0x8ff0
    pop ax                           ; 0x8ff2
    cmp ax, cx                       ; 0x8ff3
    jge short .forward2              ; 0x8ff5
    cmp word [bp + 0xa], byte 0      ; 0x8ff7
    je short .forward1               ; 0x8ffb
    mov al, byte [bx + si]           ; 0x8ffd
    add al, 0xbf                     ; 0x8fff
    push ax                          ; 0x9001
    mov ax, 0x248                    ; 0x9002
    imul word [bp + 4]               ; 0x9005
    mov cx, ax                       ; 0x9008
    add ax, si                       ; 0x900a
    mov bx, ax                       ; 0x900c
    pop ax                           ; 0x900e
    mov byte [bx + party_records + pc_rec.stat], al ; 0x900f
    jmp short .forward2              ; 0x9013
.forward1:
    mov ax, word [bp + 6]            ; 0x9015
    shl ax, 1                        ; 0x9018
    mov bx, ax                       ; 0x901a
    mov word [bx + profession_eligible], 0 ; 0x901c
.forward2:
    inc word [bp - 2]                ; 0x9022
    mov ax, word [bp - 2]            ; 0x9025
    cmp ax, strict word 7            ; 0x9028
    jl short .back1                  ; 0x902b
    ret                              ; 0x902d
