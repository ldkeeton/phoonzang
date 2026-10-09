dos_mem_alloc:
    push bp                          ; 0x4b50
    mov bp, sp                       ; 0x4b51
    push di                          ; 0x4b53
    push si                          ; 0x4b54
    mov ax, word [bp + 0x6]          ; 0x4b55
    and ax, 0xf3                     ; 0x4b58
    mov di, ax                       ; 0x4b5b
    or ax, 0x3d00                    ; 0x4b5d
    mov di, ax                       ; 0x4b60
    test word [bp + 0x6], 0x200      ; 0x4b62
    je short @..dos_mem_alloc.l1     ; 0x4b67
    mov di, 0x3c00                   ; 0x4b69
@..dos_mem_alloc.l1:
    mov ax, 0                        ; 0x4b6c
    push ax                          ; 0x4b6f
    push word [bp + 0x4]             ; 0x4b70
    push di                          ; 0x4b73
    call aztec_sys                   ; 0x4b74
    add sp, byte 6                   ; 0x4b77
    mov si, ax                       ; 0x4b7a
    mov ax, si                       ; 0x4b7c
    cmp ax, strict word 0xffff       ; 0x4b7e
    jne short @..dos_mem_alloc.l3    ; 0x4b81
    test word [bp + 0x6], 0x100      ; 0x4b83
    je short @..dos_mem_alloc.l2     ; 0x4b88
    mov ax, 0                        ; 0x4b8a
    push ax                          ; 0x4b8d
    push word [bp + 0x4]             ; 0x4b8e
    mov ax, 0x3c                     ; 0x4b91
    push ax                          ; 0x4b94
    call aztec_sys                   ; 0x4b95
    add sp, byte 6                   ; 0x4b98
    mov si, ax                       ; 0x4b9b
@..dos_mem_alloc.l2:
    jmp short @..dos_mem_alloc.l5    ; 0x4b9d
@..dos_mem_alloc.l3:
    test word [bp + 0x6], 0x400      ; 0x4b9f
    je short @..dos_mem_alloc.l5     ; 0x4ba4
    push si                          ; 0x4ba6
    call aztec_close                 ; 0x4ba7
    pop cx                           ; 0x4baa
    mov word [data_0c72], 0x13       ; 0x4bab
    mov ax, 0xffff                   ; 0x4bb1
@..dos_mem_alloc.l4:
    pop si                           ; 0x4bb4
    pop di                           ; 0x4bb5
    mov sp, bp                       ; 0x4bb6
    pop bp                           ; 0x4bb8
    ret                              ; 0x4bb9
@..dos_mem_alloc.l5:
    cmp si, byte 0                   ; 0x4bba
    jl short @..dos_mem_alloc.l7     ; 0x4bbd
    test word [bp + 0x6], 0x800      ; 0x4bbf
    je short @..dos_mem_alloc.l6     ; 0x4bc4
    mov ax, data_0002                ; 0x4bc6
    push ax                          ; 0x4bc9
    mov ax, 0                        ; 0x4bca
    mov dx, 0                        ; 0x4bcd
    push dx                          ; 0x4bd0
    push ax                          ; 0x4bd1
    push si                          ; 0x4bd2
    call aztec_lseek                 ; 0x4bd3
    add sp, byte 8                   ; 0x4bd6
@..dos_mem_alloc.l6:
    push si                          ; 0x4bd9
    call aztec_isatty                ; 0x4bda
    pop cx                           ; 0x4bdd
    mov byte [si + 0xcdc], al        ; 0x4bde
@..dos_mem_alloc.l7:
    mov ax, si                       ; 0x4be2
    jmp short @..dos_mem_alloc.l4    ; 0x4be4
