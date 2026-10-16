; auto-generated
loc_HOSN:
    mov ax, 0                        ; 0x85f9
    call aztec_csav                  ; 0x85fc
    mov ax, 0x64                     ; 0x85ff
    push ax                          ; 0x8602
    mov ax, 0xff9c                   ; 0x8603
    push ax                          ; 0x8606
    mov ax, 0x248                    ; 0x8607
    imul word [bp + 0x4]             ; 0x860a
    add ax, word [bss_9136]          ; 0x860d
    mov bx, ax                       ; 0x8611
    mov al, byte [bx + 0x5db2]       ; 0x8613
    cbw                              ; 0x8617
    add ax, word [bp + 0x6]          ; 0x8618
    push ax                          ; 0x861b
    call clamp                       ; 0x861c
    add sp, byte 6                   ; 0x861f
    push ax                          ; 0x8622
    mov ax, 0x248                    ; 0x8623
    imul word [bp + 0x4]             ; 0x8626
    mov cx, ax                       ; 0x8629
    add ax, word [bss_9136]          ; 0x862b
    mov bx, ax                       ; 0x862f
    pop ax                           ; 0x8631
    mov byte [bx + 0x5db2], al       ; 0x8632
    mov ax, 0x64                     ; 0x8636
    push ax                          ; 0x8639
    mov ax, 0xff9c                   ; 0x863a
    push ax                          ; 0x863d
    mov al, byte [bss_91c7]          ; 0x863e
    sub ah, ah                       ; 0x8641
    mov bx, ax                       ; 0x8643
    mov al, byte [bx - 0x7622]       ; 0x8645
    cbw                              ; 0x8649
    add ax, word [bp + 0x8]          ; 0x864a
    push ax                          ; 0x864d
    call clamp                       ; 0x864e
    add sp, byte 6                   ; 0x8651
    push ax                          ; 0x8654
    mov al, byte [bss_91c7]          ; 0x8655
    sub ah, ah                       ; 0x8658
    mov bx, ax                       ; 0x865a
    pop ax                           ; 0x865c
    mov byte [bx - 0x7622], al       ; 0x865d
    ret                              ; 0x8661
