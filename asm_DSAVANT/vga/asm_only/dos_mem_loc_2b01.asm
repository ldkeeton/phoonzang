; auto-generated
; asm only
dos_mem_loc_2b01:
    push bp                          ; 0x2b01
    mov bp, sp                       ; 0x2b02
    sub sp, byte 0x0a                ; 0x2b04
    push ds                          ; 0x2b07
    push es                          ; 0x2b08
    push si                          ; 0x2b09
    push di                          ; 0x2b0a
    mov ax, ds                       ; 0x2b0b
    mov es, ax                       ; 0x2b0d
    cmp word [bp + 0xc], byte 0      ; 0x2b0f
    je short @..dos_mem_loc_2b01.l3  ; 0x2b13
    cmp word [bp + 0xc], byte 1      ; 0x2b15
    je short @..dos_mem_loc_2b01.l4  ; 0x2b19
    cmp word [bp + 0xc], byte 3      ; 0x2b1b
    je short @..dos_mem_loc_2b01.l1  ; 0x2b1f
    mov ax, 0x4180                   ; 0x2b21
    sub ax, word [cs:cseg_0cac - IMAGE_BASE] ; 0x2b24
    mov bx, 0x10                     ; 0x2b29
    mul bx                           ; 0x2b2c
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b2e
@..dos_mem_loc_2b01.l1:
    mov ah, 0x36                     ; 0x2b30
    mov dx, word [bp + 0xe]          ; 0x2b32
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff       ; 0x2b37
    jne short @..dos_mem_loc_2b01.l2 ; 0x2b3a
    xor ax, ax                       ; 0x2b3c
    xor dx, dx                       ; 0x2b3e
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b40
@..dos_mem_loc_2b01.l2:
    mul cx                           ; 0x2b42
    mul bx                           ; 0x2b44
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b46
@..dos_mem_loc_2b01.l3:
    mov ah, 0x48                     ; 0x2b48
    mov bx, 0xffff                   ; 0x2b4a
    int 0x21 ; DOS allocate memory
    mov ax, 0x10                     ; 0x2b4f
    mul bx                           ; 0x2b52
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b54
@..dos_mem_loc_2b01.l4:
    mov ax, word [cs:cseg_01ff - IMAGE_BASE] ; 0x2b56
    sub ax, word [cs:cseg_0391 - IMAGE_BASE] ; 0x2b5a
    mov bx, 0x10                     ; 0x2b5f
    mul bx                           ; 0x2b62
@..dos_mem_loc_2b01.l5:
    pop di                           ; 0x2b64
    pop si                           ; 0x2b65
    pop es                           ; 0x2b66
    pop ds                           ; 0x2b67
    mov sp, bp                       ; 0x2b68
    pop bp                           ; 0x2b6a
    ret                              ; 0x2b6b
