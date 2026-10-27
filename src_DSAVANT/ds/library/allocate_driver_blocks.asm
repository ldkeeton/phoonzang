; auto-generated
allocate_driver_blocks:
    cmp word [bp - 2], byte 0        ; 0x36f5
    jne short .forward1              ; 0x36f9
    jmp near .return1                ; 0x36fb
.forward1:
    lea si, word [driver_block_table - IMAGE_BASE] ; 0x36fe
.back1:
    mov bx, word [cs:si]             ; 0x3702
    or bx, bx                        ; 0x3705
    je short .return1                ; 0x3707
    mov ah, 0x48                     ; 0x3709
    push si                          ; 0x370b
    int 0x21 ; DOS allocate memory
    pop si                           ; 0x370e
    jb short .forward2               ; 0x370f
    mov word [cs:si + 2], ax         ; 0x3711
    add si, byte 4                   ; 0x3715
    jmp short .back1                 ; 0x3718
.forward2:
    call free_driver_blocks          ; 0x371a
ds_loc_371d:
    mov ax, cs                       ; 0x371d
    mov ds, ax                       ; 0x371f
    mov dx, cseg_372e - IMAGE_BASE   ; 0x3721
    mov ah, 9                        ; 0x3724
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3728
    int 0x21 ; DOS function dispatcher
allocate_driver_blocks.return1:
    ret                              ; 0x372d
cseg_372e:

    db 0x0d, 0x0a, 0x07
    db 'Unable to allocate sufficient memory to run.', 0
    db 0x0a, 0x24

