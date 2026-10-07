dos_mem_loc_358c:
    push bp                          ; 0x358c
    mov bp, sp                       ; 0x358d
    mov ax, word [bp + 0x4]          ; 0x358f
    test ah, ah                      ; 0x3592
    jne short @..dos_mem_loc_358c.l1 ; 0x3594
    xchg al, ah                      ; 0x3596
@..dos_mem_loc_358c.l1:
    cmp ah, 0xa                      ; 0x3598
    jb short @..dos_mem_loc_358c.l5  ; 0x359b
    push si                          ; 0x359d
    push es                          ; 0x359e
    cmp ah, 0x47                     ; 0x359f
    jne short @..dos_mem_loc_358c.l2 ; 0x35a2
    mov dx, word [bp + 0x8]          ; 0x35a4
    mov si, word [bp + 0x6]          ; 0x35a7
    jmp short @..dos_mem_loc_358c.l3 ; 0x35aa
@..dos_mem_loc_358c.l2:
    mov cx, word [bp + 0x8]          ; 0x35ac
    mov dx, word [bp + 0x6]          ; 0x35af
@..dos_mem_loc_358c.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x35b4
    pop es                           ; 0x35b6
    jae short @..dos_mem_loc_358c.l4 ; 0x35b7
    mov word [data_24d6], ax         ; 0x35b9
    mov ax, 0xffff                   ; 0x35bc
    mov dx, ax                       ; 0x35bf
@..dos_mem_loc_358c.l4:
    pop si                           ; 0x35c1
    pop bp                           ; 0x35c2
    ret                              ; 0x35c3
