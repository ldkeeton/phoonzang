; auto-generated
ds_app_string_QMQM: ; Aztec csav frame=0x0054
    mov ax, 0xffac                   ; 0x05d0
    call aztec_csav                  ; 0x05d3
    lea ax, word [bp - 0x0054]       ; 0x05d6
    push ax                          ; 0x05d9
    mov al, byte [bss_0fd5]          ; 0x05da
    sub ah, ah                       ; 0x05dd
    add ax, 0x9c4                    ; 0x05df
    push ax                          ; 0x05e2
    call ds_app_mem_VKHV             ; 0x05e3
    add sp, byte 4                   ; 0x05e6
    mov word [bp - 0x0002], 0        ; 0x05e9
    lea ax, word [bp - 0x0054]       ; 0x05ee
    push ax                          ; 0x05f1
    call aztec_strlen                ; 0x05f2
    pop cx                           ; 0x05f5
    add ax, strict word 0xfffc       ; 0x05f6
    mov word [bp - 0x0004], ax       ; 0x05f9
@..ds_app_string_QMQM.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x05fc
    jle short @..ds_app_string_QMQM.l3 ; 0x0600
    dec word [bp - 0x0004]           ; 0x0602
    mov bx, word [bp - 0x0004]       ; 0x0605
    add bx, bp                       ; 0x0608
    mov al, byte [bx - 0x0050]       ; 0x060a
    sub ah, ah                       ; 0x060d
    mov cx, 0x25                     ; 0x060f
    imul cx                          ; 0x0612
    push ax                          ; 0x0614
    mov ax, 0x11                     ; 0x0615
    imul word [bp - 0x0004]          ; 0x0618
    mov cx, ax                       ; 0x061b
    pop ax                           ; 0x061d
    add ax, cx                       ; 0x061e
    mov cx, 0xff                     ; 0x0620
    cwd                              ; 0x0623
    idiv cx                          ; 0x0624
    mov ax, dx                       ; 0x0626
    mov bx, word [bp - 0x0004]       ; 0x0628
    mov cl, byte [bx + 0xff0]        ; 0x062b
    cmp al, cl                       ; 0x062f
    je short @..ds_app_string_QMQM.l2 ; 0x0631
    ret                              ; 0x0633
@..ds_app_string_QMQM.l2:
    add bx, bp                       ; 0x0634
    mov al, byte [bx - 0x0050]       ; 0x0636
    sub ah, ah                       ; 0x0639
    mov bx, word [bp - 0x0004]       ; 0x063b
    imul bx                          ; 0x063e
    add ax, word [bp - 0x0002]       ; 0x0640
    mov cx, 0xff                     ; 0x0643
    cwd                              ; 0x0646
    idiv cx                          ; 0x0647
    mov word [bp - 0x0002], dx       ; 0x0649
    jmp short @..ds_app_string_QMQM.l1 ; 0x064c
@..ds_app_string_QMQM.l3:
    mov al, byte [bss_0fd6]          ; 0x064e
    cmp al, byte [bp - 0x0002]       ; 0x0651
    jne short @..ds_app_string_QMQM.l4 ; 0x0654
    mov ax, word [bss_1008]          ; 0x0656
    mov word [bss_100a], ax          ; 0x0659
@..ds_app_string_QMQM.l4:
    ret                              ; 0x065c
