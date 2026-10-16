; auto-generated
; asm only
loc_VHQQ:
    push bp                          ; 0x481f
    mov bp, sp                       ; 0x4820
    sub sp, byte 0x0a                ; 0x4822
    push ds                          ; 0x4825
    push es                          ; 0x4826
    push si                          ; 0x4827
    push di                          ; 0x4828
    mov ax, ds                       ; 0x4829
    mov es, ax                       ; 0x482b
    mov ax, word [bp + 0xc]          ; 0x482d
    cmp ax, strict word 5            ; 0x4830
    jb short @..loc_VHQQ.l1          ; 0x4833
    jmp near @..loc_VHQQ.l3          ; 0x4835
@..loc_VHQQ.l1:
    shl ax, 1                        ; 0x4838
    shl ax, 1                        ; 0x483a
    mov bx, data_46d9                ; 0x483c
    add bx, ax                       ; 0x483f
    mov ax, word [cs:bx]             ; 0x4841
    or ax, ax                        ; 0x4844
    jne short @..loc_VHQQ.l2         ; 0x4846
    jmp near @..loc_VHQQ.l3          ; 0x4848
@..loc_VHQQ.l2:
    mov word [cs:bx], 0              ; 0x484b
    mov cx, word [cs:cseg_0baa - IMAGE_BASE] ; 0x4850
    dec cx                           ; 0x4855
    mov word [cs:cseg_0baa - IMAGE_BASE], cx ; 0x4856
    call loc_PPJL                    ; 0x485b
@..loc_VHQQ.l3:
    pop di                           ; 0x485e
    pop si                           ; 0x485f
    pop es                           ; 0x4860
    pop ds                           ; 0x4861
    mov sp, bp                       ; 0x4862
    pop bp                           ; 0x4864
    ret                              ; 0x4865
