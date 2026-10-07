io_loc_02ba:
    push di                          ; 0x02ba
    push es                          ; 0x02bb
    cld                              ; 0x02bc
    cmp byte [cs:data_0421], 0       ; 0x02bd
    jne short @..io_loc_02ba.l1      ; 0x02c3
    in al, 0x21                      ; 0x02c5
    mov byte [cs:data_0b8f], al      ; 0x02c7
    cli                              ; 0x02cb
    xor ax, ax                       ; 0x02cc
    mov es, ax                       ; 0x02ce
    mov di, 0x20                     ; 0x02d0
    mov ax, word [es:di]             ; 0x02d3
    mov word [cs:data_0c10], ax      ; 0x02d6
    mov ax, 0xbb4                    ; 0x02da
    stosw                            ; 0x02dd
    mov ax, word [es:di]             ; 0x02de
    mov word [cs:data_0c12], ax      ; 0x02e1
    mov ax, cs                       ; 0x02e5
    stosw                            ; 0x02e7
    sti                              ; 0x02e8
    mov al, 0x34                     ; 0x02e9
    out 0x43, al                     ; 0x02eb
    call io_loc_0610                 ; 0x02ed
    in al, 0x40                      ; 0x02f0
    mov ah, al                       ; 0x02f2
    call io_loc_0610                 ; 0x02f4
    in al, 0x40                      ; 0x02f7
    xchg al, ah                      ; 0x02f9
    mov word [cs:data_0b96], ax      ; 0x02fb
    mov al, 0x34                     ; 0x02ff
    out 0x43, al                     ; 0x0301
    mov ax, word [cs:data_0ba6]      ; 0x0303
    mov bl, 0x48                     ; 0x0307
    mul bl                           ; 0x0309
    mov word [cs:data_0b98], ax      ; 0x030b
    out 0x40, al                     ; 0x030f
    call io_loc_0610                 ; 0x0311
    mov al, ah                       ; 0x0314
    out 0x40, al                     ; 0x0316
@..io_loc_02ba.l1:
    mov byte [cs:data_0421], 0xff    ; 0x0318
    pop es                           ; 0x031e
    pop di                           ; 0x031f
    ret                              ; 0x0320
