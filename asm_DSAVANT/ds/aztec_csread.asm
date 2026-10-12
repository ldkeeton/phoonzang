aztec_csread:
    push bp                          ; 0x44b4
    mov bp, sp                       ; 0x44b5
    mov bx, word [bp + 0x4] ; _csread(fd, char *addr, len) / read data into code segment ; 0x44b7
    push ds                          ; 0x44ba
    mov dx, word [bp + 0x6]          ; 0x44bb
    mov cx, word [bp + 0x8]          ; 0x44be
    mov ax, cs                       ; 0x44c1
    mov ds, ax                       ; 0x44c3
    mov ah, 0x3f                     ; 0x44c5
    int 0x21 ; DOS read file (handle)
    pop ds                           ; 0x44c9
    jae short @..aztec_csread.ret_ok ; 0x44ca
    mov word [dseg_0c72], ax         ; 0x44cc
    mov ax, 0xffff                   ; 0x44cf
@..aztec_csread.ret_ok:
    pop bp                           ; 0x44d2
    ret                              ; 0x44d3
loc_44d4:
    push bp                          ; 0x44d4
    mov bp, sp                       ; 0x44d5
    push si                          ; 0x44d7
    mov ax, word [bp + 0x4]          ; 0x44d8
    mov word [bss_0cfc], ax          ; 0x44db
    lea ax, word [bp + 0x8]          ; 0x44de
    push ax                          ; 0x44e1
    push word [bp + 0x6]             ; 0x44e2
    mov ax, 0x42ff                   ; 0x44e5
    push ax                          ; 0x44e8
    call string_loc_4867             ; 0x44e9
    add sp, byte 6                   ; 0x44ec
    mov si, ax                       ; 0x44ef
    mov bx, word [bss_0cfc]          ; 0x44f1
    mov byte [bx], 0                 ; 0x44f5
    mov ax, si                       ; 0x44f8
    pop si                           ; 0x44fa
    mov sp, bp                       ; 0x44fb
    pop bp                           ; 0x44fd
    ret                              ; 0x44fe
