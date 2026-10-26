; auto-generated
clamp_device:
    cmp al, 6                        ; 0x02b3
    jb short .return1                ; 0x02b5
    mov al, 0                        ; 0x02b7
.return1:
    ret                              ; 0x02b9
