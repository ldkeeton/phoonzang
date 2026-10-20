; auto-generated
ds_string_loc_QRJV:
    push bp                          ; 0x3a95
    mov bp, sp                       ; 0x3a96
    cld                              ; 0x3a98
    sub sp, byte 4                   ; 0x3a99
    push si                          ; 0x3a9c
    push es                          ; 0x3a9d
    push ds                          ; 0x3a9e
    mov ax, ds                       ; 0x3a9f
    mov es, ax                       ; 0x3aa1
    mov si, word [bp + 0x4]          ; 0x3aa3
    mov word [bp - 0x0002], si       ; 0x3aa6
@..ds_string_loc_QRJV.l1:
    mov si, word [bp - 0x0002]       ; 0x3aa9
    add word [bp - 0x0002], byte 1   ; 0x3aac
    xor ax, ax                       ; 0x3ab0
    lodsb                            ; 0x3ab2
    or al, al                        ; 0x3ab3
    je short @..ds_string_loc_QRJV.l2 ; 0x3ab5
    push word [bp + 0x6]             ; 0x3ab7
    push ax                          ; 0x3aba
    call ds_loc_TJTV                 ; 0x3abb
    add sp, byte 4                   ; 0x3abe
    jmp short @..ds_string_loc_QRJV.l1 ; 0x3ac1
@..ds_string_loc_QRJV.l2:
    pop ds                           ; 0x3ac3
    pop es                           ; 0x3ac4
    pop si                           ; 0x3ac5
    mov sp, bp                       ; 0x3ac6
    pop bp                           ; 0x3ac8
    ret                              ; 0x3ac9
