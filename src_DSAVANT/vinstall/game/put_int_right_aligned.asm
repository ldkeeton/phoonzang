; auto-generated
put_int_right_aligned:
    push bp                          ; 0x0710
    mov bp, sp                       ; 0x0711
    add sp, strict word 0xfefc       ; 0x0713
    lea ax, word [bp - 0xff]         ; 0x0717
    push ax                          ; 0x071b
    push word [bp + 4]               ; 0x071c
    call int_to_str                  ; 0x071f
    add sp, byte 4                   ; 0x0722
    mov byte [bp - 0x101], 0         ; 0x0725
    mov byte [bp - 0x100], 0         ; 0x072a
.back1:
    lea ax, word [bp - 0xff]         ; 0x072f
    push ax                          ; 0x0733
    call strlen                ; 0x0734
    pop cx                           ; 0x0737
    sub ax, word [bp + 6]            ; 0x0738
    jge short .forward1              ; 0x073b
    mov ax, single_space_text        ; 0x073d
    push ax                          ; 0x0740
    call bios_put_text               ; 0x0741
    pop cx                           ; 0x0744
    dec word [bp + 6]                ; 0x0745
    jmp short .back1                 ; 0x0748
.forward1:
    lea ax, word [bp - 0xff]         ; 0x074a
    push ax                          ; 0x074e
    call strlen                ; 0x074f
    pop cx                           ; 0x0752
    sub ax, word [bp + 6]            ; 0x0753
    mov word [bp - 0x103], ax        ; 0x0756
    jmp short .forward2              ; 0x075a
.back2:
    mov bx, word [bp - 0x103]        ; 0x075c
    add bx, bp                       ; 0x0760
    mov al, byte [bx - 0xff]         ; 0x0762
    mov byte [bp - 0x101], al        ; 0x0766
    lea ax, word [bp - 0x101]        ; 0x076a
    push ax                          ; 0x076e
    call bios_put_text               ; 0x076f
    pop cx                           ; 0x0772
    inc word [bp - 0x103]            ; 0x0773
.forward2:
    lea ax, word [bp - 0xff]         ; 0x0777
    push ax                          ; 0x077b
    call strlen                ; 0x077c
    pop cx                           ; 0x077f
    cmp ax, word [bp - 0x103]        ; 0x0780
    jg short .back2                  ; 0x0784
    mov sp, bp                       ; 0x0786
    pop bp                           ; 0x0788
    ret                              ; 0x0789
