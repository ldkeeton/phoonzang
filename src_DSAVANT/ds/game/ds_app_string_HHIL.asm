; auto-generated
ds_app_string_HHIL: ; Aztec csav frame=0x0106
    mov ax, 0xfefa                   ; 0x0547
    call aztec_csav                  ; 0x054a
    mov word [bp - 0x0002], 0        ; 0x054d
    mov word [bp - 0x0006], 0        ; 0x0552
@..ds_app_string_HHIL.l1:
    mov bx, word [bp + 0x4]          ; 0x0557
    mov si, word [bp - 0x0002]       ; 0x055a
    cmp byte [bx + si], 0            ; 0x055d
    je short @..ds_app_string_HHIL.l6 ; 0x0560
    mov al, byte [bx + si]           ; 0x0562
    sub ah, ah                       ; 0x0564
    push ax                          ; 0x0566
    mov al, byte [bp + 0x8]          ; 0x0567
    cbw                              ; 0x056a
    mov cx, ax                       ; 0x056b
    pop ax                           ; 0x056d
    cmp ax, cx                       ; 0x056e
    jne short @..ds_app_string_HHIL.l4 ; 0x0570
    mov word [bp - 0x0004], 0        ; 0x0572
@..ds_app_string_HHIL.l2:
    mov bx, word [bp + 0x6]          ; 0x0577
    mov si, word [bp - 0x0004]       ; 0x057a
    cmp byte [bx + si], 0            ; 0x057d
    je short @..ds_app_string_HHIL.l3 ; 0x0580
    mov al, byte [bx + si]           ; 0x0582
    mov bx, word [bp - 0x0006]       ; 0x0584
    add bx, bp                       ; 0x0587
    mov byte [bx - 0x0105], al       ; 0x0589
    inc word [bp - 0x0006]           ; 0x058d
    inc word [bp - 0x0004]           ; 0x0590
    jmp short @..ds_app_string_HHIL.l2 ; 0x0593
@..ds_app_string_HHIL.l3:
    mov byte [bp + 0x8], 0           ; 0x0595
    inc word [bp - 0x0002]           ; 0x0599
    jmp short @..ds_app_string_HHIL.l5 ; 0x059c
@..ds_app_string_HHIL.l4:
    mov bx, word [bp + 0x4]          ; 0x059e
    mov si, word [bp - 0x0002]       ; 0x05a1
    mov al, byte [bx + si]           ; 0x05a4
    mov bx, word [bp - 0x0006]       ; 0x05a6
    add bx, bp                       ; 0x05a9
    mov byte [bx - 0x0105], al       ; 0x05ab
    inc word [bp - 0x0006]           ; 0x05af
    inc word [bp - 0x0002]           ; 0x05b2
@..ds_app_string_HHIL.l5:
    jmp short @..ds_app_string_HHIL.l1 ; 0x05b5
@..ds_app_string_HHIL.l6:
    mov bx, word [bp - 0x0006]       ; 0x05b7
    add bx, bp                       ; 0x05ba
    mov byte [bx - 0x0105], 0        ; 0x05bc
    lea ax, word [bp - 0x0105]       ; 0x05c1
    push ax                          ; 0x05c5
    push word [bp + 0x4]             ; 0x05c6
    call aztec_strcpy                ; 0x05c9
    add sp, byte 4                   ; 0x05cc
    ret                              ; 0x05cf
