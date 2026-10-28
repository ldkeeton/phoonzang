; auto-generated
copy_file_region:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, dx
.back1:
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 2]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    or ax, ax
    je short .forward2
    mov cx, ax
    push ax
    mov bx, word [bp - 4]
    xor dx, dx
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jb short .forward1
    pop cx
    cmp cx, ax
    je short .back1
.forward1:
    mov ax, cs
    mov ds, ax
    mov dx, copy_file_region.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
copy_file_region.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

copy_file_region.forward2:
    pop di
    pop si
    pop es
    pop ds
    ret
