dos_proc_loc_4e7e:
    pop ax                           ; 0x4e7e
    pop ax                           ; 0x4e7f
loc_4e80:
    mov ah, 0x4c                     ; 0x4e80
    int 0x21 ; DOS exit with return code
    jmp far [cs:data_4b36]           ; 0x4e84
    times 4 db 0
    pop word [cs:data_4c89]          ; 0x4e8d
    pop word [cs:data_4c8b]          ; 0x4e92
    pop ds                           ; 0x4e97
    call loc_4ea0                    ; 0x4e98
    jmp far [cs:data_4c89]           ; 0x4e9b
    push di                          ; 0x4ea0
    push si                          ; 0x4ea1
    retf                             ; 0x4ea2
    mov ax, 0                        ; 0x4ea3
    ret                              ; 0x4ea6
