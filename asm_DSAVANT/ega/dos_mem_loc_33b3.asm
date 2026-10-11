dos_mem_loc_33b3:
    push bp                          ; 0x33b3
    mov bp, sp                       ; 0x33b4
    sub sp, byte 0x0a                ; 0x33b6
    push ds                          ; 0x33b9
    push es                          ; 0x33ba
    push si                          ; 0x33bb
    push di                          ; 0x33bc
    mov ax, ds                       ; 0x33bd
    mov es, ax                       ; 0x33bf
    cmp word [bp + 0xc], byte 0      ; 0x33c1
    je short @..dos_mem_loc_33b3.l3  ; 0x33c5
    cmp word [bp + 0xc], byte 1      ; 0x33c7
    je short @..dos_mem_loc_33b3.l4  ; 0x33cb
    cmp word [bp + 0xc], byte 3      ; 0x33cd
    je short @..dos_mem_loc_33b3.l1  ; 0x33d1
    mov ax, 0x4180                   ; 0x33d3
    sub ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x33d6
    mov bx, 0x10                     ; 0x33db
    mul bx                           ; 0x33de
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33e0
@..dos_mem_loc_33b3.l1:
    mov ah, 0x36                     ; 0x33e2
    mov dx, word [bp + 0xe]          ; 0x33e4
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff       ; 0x33e9
    jne short @..dos_mem_loc_33b3.l2 ; 0x33ec
    xor ax, ax                       ; 0x33ee
    xor dx, dx                       ; 0x33f0
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33f2
@..dos_mem_loc_33b3.l2:
    mul cx                           ; 0x33f4
    mul bx                           ; 0x33f6
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33f8
@..dos_mem_loc_33b3.l3:
    mov ah, 0x48                     ; 0x33fa
    mov bx, 0xffff                   ; 0x33fc
    int 0x21 ; DOS allocate memory
    mov ax, 0x10                     ; 0x3401
    mul bx                           ; 0x3404
    jmp short @..dos_mem_loc_33b3.l5 ; 0x3406
@..dos_mem_loc_33b3.l4:
    mov ax, word [cs:cseg_01ff - IMAGE_BASE] ; 0x3408
    sub ax, word [cs:cseg_0391 - IMAGE_BASE] ; 0x340c
    mov bx, 0x10                     ; 0x3411
    mul bx                           ; 0x3414
@..dos_mem_loc_33b3.l5:
    pop di                           ; 0x3416
    pop si                           ; 0x3417
    pop es                           ; 0x3418
    pop ds                           ; 0x3419
    mov sp, bp                       ; 0x341a
    pop bp                           ; 0x341c
    ret                              ; 0x341d
