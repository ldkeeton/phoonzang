; auto-generated
clamp_device:
    cmp al, 6                        ; 0x02b3
    jb short @..clamp_device.l1      ; 0x02b5
    mov al, 0                        ; 0x02b7
@..clamp_device.l1:
    ret                              ; 0x02b9
