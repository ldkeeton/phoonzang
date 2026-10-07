dos_mem_loc_4cf4:
    push bp                          ; 0x4cf4
    mov bp, sp                       ; 0x4cf5
    mov ax, word [bp + 0x4]          ; 0x4cf7
    test ah, ah                      ; 0x4cfa
    jne short @..dos_mem_loc_4cf4.l1 ; 0x4cfc
    xchg al, ah                      ; 0x4cfe
@..dos_mem_loc_4cf4.l1:
    cmp ah, 0xa                      ; 0x4d00
    jb short @..dos_mem_loc_4cf4.l5  ; 0x4d03
    push si                          ; 0x4d05
    push es                          ; 0x4d06
    cmp ah, 0x47                     ; 0x4d07
    jne short @..dos_mem_loc_4cf4.l2 ; 0x4d0a
    mov dx, word [bp + 0x8]          ; 0x4d0c
    mov si, word [bp + 0x6]          ; 0x4d0f
    jmp short @..dos_mem_loc_4cf4.l3 ; 0x4d12
@..dos_mem_loc_4cf4.l2:
    mov cx, word [bp + 0x8]          ; 0x4d14
    mov dx, word [bp + 0x6]          ; 0x4d17
@..dos_mem_loc_4cf4.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x4d1c
    pop es                           ; 0x4d1e
    jae short @..dos_mem_loc_4cf4.l4 ; 0x4d1f
    mov word [data_0c72], ax         ; 0x4d21
    mov ax, 0xffff                   ; 0x4d24
    mov dx, ax                       ; 0x4d27
@..dos_mem_loc_4cf4.l4:
    pop si                           ; 0x4d29
    pop bp                           ; 0x4d2a
    ret                              ; 0x4d2b
