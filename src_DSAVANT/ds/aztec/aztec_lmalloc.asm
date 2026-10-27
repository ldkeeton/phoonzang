; auto-generated
aztec_lmalloc:
    push bp                          ; 0x45d7
    mov bp, sp                       ; 0x45d8
    mov ax, word [bp + 4]            ; 0x45da
    mov dx, word [bp + 6]            ; 0x45dd
    test dx, dx                      ; 0x45e0
    js short .forward1               ; 0x45e2
    add ax, strict word 0xf          ; 0x45e4
    adc dx, byte 0                   ; 0x45e7
    mov cx, 4                        ; 0x45ea
.back1:
    shr dx, 1                        ; 0x45ed
    rcr ax, 1                        ; 0x45ef
    loop .back1                      ; 0x45f1
    test dx, dx                      ; 0x45f3
    jne short .forward1              ; 0x45f5
    mov bx, ax                       ; 0x45f7
    mov ah, 0x48                     ; 0x45f9
    int 0x21 ; DOS allocate memory
    jb short .forward1               ; 0x45fd
    mov dx, ax                       ; 0x45ff
    mov ax, 0                        ; 0x4601
    jmp short .forward2              ; 0x4604
.forward1:
    mov ax, 0                        ; 0x4606
    mov dx, ax                       ; 0x4609
.forward2:
    pop bp                           ; 0x460b
    ret                              ; 0x460c
