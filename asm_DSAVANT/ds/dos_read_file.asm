dos_read_file:
    mov ah, 0x3f                     ; 0x3900
    int 0x21 ; DOS read file (handle)
    jb short @..dos_read_file.l2     ; 0x3904
    xor bx, bx                       ; 0x3906
    mov al, byte [bx + 0x6]          ; 0x3908
    and al, 6                        ; 0x390b
    cmp al, data_0002                ; 0x390d
    jne short @..dos_read_file.l1    ; 0x390f
    mov al, byte [bx + 0x2]          ; 0x3911
    or al, al                        ; 0x3914
    jne short @..dos_read_file.l1    ; 0x3916
    mov ax, ds                       ; 0x3918
    mov es, ax                       ; 0x391a
    mov di, word [bx + 0xc]          ; 0x391c
    mov si, 0x110                    ; 0x391f
    mov cx, word [bp - 0x0008]       ; 0x3922
    rep movsb                        ; 0x3925
@..dos_read_file.l1:
    pop es                           ; 0x3927
    pop ds                           ; 0x3928
    pop di                           ; 0x3929
    pop si                           ; 0x392a
    mov sp, bp                       ; 0x392b
    pop bp                           ; 0x392d
    ret                              ; 0x392e
