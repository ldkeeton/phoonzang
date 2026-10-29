; auto-generated
api_idx_0008_JSRN:
    mov ax, 0xfff8                   ; 0x151e
    call aztec_csav                  ; 0x1521
    push word [bp + 4]               ; 0x1524
    call api_idx_0004_ONJT           ; 0x1527
    pop cx                           ; 0x152a
    mov word [bp - 2], ax            ; 0x152b
    cmp ax, strict word 0xffff       ; 0x152e
    jne short .forward1              ; 0x1531
    mov ax, 0                        ; 0x1533
    push ax                          ; 0x1536
    call play_sound_effect           ; 0x1537
    pop cx                           ; 0x153a
    ret                              ; 0x153b
.forward1:
    mov ax, word [bp - 2]            ; 0x153c
    mov cx, 0x100                    ; 0x153f
    cwd                              ; 0x1542
    idiv cx                          ; 0x1543
    mov word [bp - 4], ax            ; 0x1545
    mov word [bp - 6], dx            ; 0x1548
    call api_idx_0006_TMNI           ; 0x154b
    mov word [bp - 8], ax            ; 0x154e
    test ax, ax                      ; 0x1551
    je short .forward4               ; 0x1553
    mov bx, ax                       ; 0x1555
    mov al, byte [bx + 1]            ; 0x1557
    sub ah, ah                       ; 0x155a
    test ax, 0x80                    ; 0x155c
    je short .forward2               ; 0x155f
    mov ax, 1                        ; 0x1561
    jmp short .forward3              ; 0x1564
.forward2:
    mov ax, 0                        ; 0x1566
.forward3:
    push ax                          ; 0x1569
    mov al, byte [bx + 6]            ; 0x156a
    sub ah, ah                       ; 0x156d
    push ax                          ; 0x156f
    mov ax, 0x248                    ; 0x1570
    imul word [bp + 4]               ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0x78                     ; 0x1577
    imul word [bp - 4]               ; 0x157a
    mov cx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    add ax, cx                       ; 0x1580
    push ax                          ; 0x1582
    mov ax, 0xc                      ; 0x1583
    imul word [bp - 6]               ; 0x1586
    mov cx, ax                       ; 0x1589
    pop ax                           ; 0x158b
    add ax, cx                       ; 0x158c
    add ax, 0x5c34                   ; 0x158e
    push ax                          ; 0x1591
    push word [bx + 4]               ; 0x1592
    push word [bp + 4]               ; 0x1595
    call api_idx_004c_RQSO           ; 0x1598
    add sp, byte 0xa                 ; 0x159b
    mov bx, word [bp - 8]            ; 0x159e
    mov byte [bx], 0xff              ; 0x15a1
    jmp short .return1               ; 0x15a4
.forward4:
    mov ax, 0                        ; 0x15a6
    push ax                          ; 0x15a9
    call play_sound_effect           ; 0x15aa
    pop cx                           ; 0x15ad
.return1:
    ret                              ; 0x15ae
