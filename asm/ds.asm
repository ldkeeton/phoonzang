%include "structs/structs.inc"
%include "structs/ds.inc"
org 0
bits 16

    ; DOS MZ executable header
    db "MZ"         ; e_magic
    dw 0x0056  ; e_cblp  — bytes on last page
    dw 0x0088    ; e_cp    — pages in file
    dw 0x0001  ; e_crlc  — relocation count
    dw 0x0020 ; e_cparhdr — header paragraphs
    dw 0x0e4b ; e_minalloc
    dw 0xffff ; e_maxalloc
    dw 0x0ff6   ; e_ss
    dw 0xf198   ; e_sp
    dw 0x0000 ; e_csum
    dw 0x4b3a   ; e_ip
    dw 0x0000   ; e_cs
    dw 0x0020 ; e_lfarlc — reloc table offset
    dw 0x0000 ; e_ovno

    times 4 db 0
    db 0x3b, 0x4b
    times 478 db 0

loc_0200:
    mov ax, 0
loc_0203:
    call loc_4652
    push word [bp + 0x6]
    push word [bp + 0x4]
    call dos_alloc_mem
    add sp, byte 4
    ret
    db 0xb8
loc_0214:
    add byte [bx + si], al
    call loc_4652
    push word [bp + 0xc]
loc_021c:
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call string_loc_4517
loc_022b:
    add sp, byte 0x0a
loc_022e:
    ret
loc_022f:
    mov ax, 0
    call loc_4652
    push word [bp + 0x6]
loc_0238:
    push word [bp + 0x4]
    call dos_free_mem
    add sp, byte 4
    ret
loc_0242:
    mov ax, 0xfffe
    call loc_4652
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x4]
    jmp near 0x3a1
    cmp word [0x0e0e], byte 0
    je short 0x262
    push word [0x0e0e]
    call math_loc_47e8
    pop cx
    cmp word [0x0e10], byte 0
    je short 0x271
    push word [0x0e10]
    call math_loc_47e8
    pop cx
    db 0x83, 0x3e, 0x12
loc_0274:
    push cs
loc_0275:
    add byte [si + 0x8], dh
    push word [0x0e12]
    call math_loc_47e8
    pop cx
    cmp word [0x0e14], byte 0
    je short 0x28f
    push word [0x0e14]
    call math_loc_47e8
    pop cx
    cmp word [0x0e18], byte 0
    jne short 0x29b
    cmp word [0x0e16], byte 0
    je short 0x2ab
    push word [0x0e18]
    push word [0x0e16]
    call loc_022f
    add sp, byte 4
    cmp word [0x0e1c], byte 0
    jne short 0x2b7
    cmp word [0x0e1a], byte 0
    je short 0x2c7
    push word [0x0e1c]
    push word [0x0e1a]
    call loc_022f
    add sp, byte 4
    cmp word [0x0e20], byte 0
    jne short 0x2d3
    cmp word [0x0e1e], byte 0
    je short 0x2e3
    push word [0x0e20]
    push word [0x0e1e]
    call loc_022f
    add sp, byte 4
    push word [0x0e22]
    call 0x4fec
    pop cx
    push word [0x0e24]
    call 0x4fec
    pop cx
    cmp word [0x0e28], byte 0
    jne short 0x2ff
    cmp word [0x0e26], byte 0
    je short 0x30f
loc_0301:
    push word [0x0e28]
loc_0305:
    push word [0x0e26]
loc_0309:
    call loc_022f
loc_030c:
    add sp, byte 4
    cmp word [0x0e2c], byte 0
loc_0314:
    jne short 0x31b
    cmp word [0x0e2a], byte 0
    je short 0x32b
    push word [0x0e2c]
    push word [0x0e2a]
    call loc_022f
    add sp, byte 4
    cmp word [0x0e30], byte 0
    jne short 0x337
    cmp word [0x0e2e], byte 0
    je short 0x347
    push word [0x0e30]
    push word [0x0e2e]
    call loc_022f
    add sp, byte 4
    mov word [bp - 0x0002], 1
    mov ax, 1
    push ax
    call loc_415b
    pop cx
    call loc_4168
    cmp word [0x0e32], byte 0
    je short 0x361
    call bios_mouse_loc_4280
    jmp short 0x3ae

; ==========================================
; Jump table: 18 entries (offsets 0x0363 - 0x03a0)
; ==========================================
    db 0x53, 0x00, 0x61, 0x01, 0x61, 0x01, 0x61, 0x01, 0x47, 0x01, 0x47, 0x01, 0x47, 0x01, 0xf3, 0x00
    db 0xf3, 0x00, 0xf3, 0x00, 0xeb, 0x00, 0xe3, 0x00, 0xe3, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00
    db 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00
    db 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00

    cmp ax, strict word 0x1f
    jae short 0x3ae
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x163]
    cmp word [bp - 0x0002], byte 1
    jne short 0x3b7
    call bios_video_loc_30a3
    ret
loc_03b8:
    mov ax, 0
    call loc_4652
    push word [bp + 0x4]
    call loc_0242
    pop cx
    push word [bp + 0x4]
    call loc_4f73
    pop cx
    ret
    mov ax, 0
    call loc_4652
    mov word [0x0e34], 0xe36
    ret
loc_03da:
    mov ax, 0xfffa
    call loc_4652
    mov word [bp - 0x0004], 0
    push word [bp + 0x4]
    call strlen_3
    pop cx
    dec ax
    mov word [bp - 0x0006], ax
    jmp short 0x419
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si]
    cbw
    mov word [bp - 0x0002], ax
    mov si, word [bp - 0x0006]
loc_0401:
    mov al, byte [bx + si]
loc_0403:
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], al
    dec word [bp - 0x0006]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jl short 0x3f2
    ret
    mov ax, 0xfffa
    call loc_4652
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    cmp dx, byte 0
    jg short 0x440
    jne short 0x442
    cmp ax, strict word 0
    jb short 0x442
    jmp short 0x44f
    neg dx
    neg ax
loc_0446:
    sbb dx, byte 0
    mov word [bp + 0x6], dx
    mov word [bp + 0x4], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov cx, 0xa
    mov bx, 0
    call math_loc_4c14
    add ax, strict word 0x30
    adc dx, byte 0
    mov si, word [bp - 0x0002]
loc_046c:
    inc word [bp - 0x0002]
    mov bx, word [bp + 0x8]
    mov byte [bx + si], al
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov cx, 0xa
    mov bx, 0
    call math_loc_4be6
    mov word [bp + 0x6], dx
    mov word [bp + 0x4], ax
    cmp dx, byte 0
    jg short 0x495
    jne short 0x497
    cmp ax, strict word 0
    jbe short 0x497
    jmp short 0x454
    cmp word [bp - 0x0004], byte 0
    jg short 0x4a5
    jne short 0x4a7
    cmp word [bp - 0x0006], byte 0
    jb short 0x4a7
    jmp short 0x4b3
    mov si, word [bp - 0x0002]
    inc word [bp - 0x0002]
    mov bx, word [bp + 0x8]
    mov byte [bx + si], 0x2d
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
loc_04b9:
    mov byte [bx + si], 0
    push word [bp + 0x8]
    call loc_03da
    pop cx
    ret
    mov ax, 0
    call loc_4652
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    cwd
    push dx
    push ax
    call 0x422
    add sp, byte 6
    ret
    mov ax, 0xff00
    call loc_4652
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x422
    add sp, byte 6
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x8]
    jge short 0x511
    push word [bp + 0xa]
loc_0502:
    mov ax, 0x20
loc_0505:
    push ax
    call string_loc_3a77
    add sp, byte 4
    dec word [bp + 0x8]
    jmp short 0x4f1
    push word [bp + 0xa]
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x8]
    lea cx, word [bp - 0x00ff]
    add ax, cx
    push ax
    call string_loc_3a95
    add sp, byte 4
    ret
    mov ax, 0
    call loc_4652
    push word [bp + 0x8]
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    cwd
    push dx
    push ax
    call 0x4da
    add sp, byte 8
    ret
loc_0547:
    mov ax, 0xfefa
    call loc_4652
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0006], 0
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0
    je short 0x5b7
    mov al, byte [bx + si]
    sub ah, ah
    push ax
    mov al, byte [bp + 0x8]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jne short 0x59e
loc_0572:
    mov word [bp - 0x0004], 0
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si], 0
    je short 0x595
    mov al, byte [bx + si]
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0105], al
    inc word [bp - 0x0006]
    inc word [bp - 0x0004]
    jmp short 0x577
    mov byte [bp + 0x8], 0
    inc word [bp - 0x0002]
    jmp short 0x5b5
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0105], al
    inc word [bp - 0x0006]
    inc word [bp - 0x0002]
    jmp short 0x557
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0105], 0
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call strlen_2
    add sp, byte 4
    ret
    mov ax, 0xffac
    call loc_4652
    lea ax, word [bp - 0x0054]
    push ax
    mov al, byte [0x0fd5]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x9c4
    push ax
    call loc_0782
    add sp, byte 4
    mov word [bp - 0x0002], 0
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    add ax, strict word 0xfffc
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0
math_loc_0600:
    jle short 0x64e
math_loc_0602:
    dec word [bp - 0x0004]
math_loc_0605:
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0050]
    sub ah, ah
    mov cx, 0x25
    imul cx
    push ax
    mov ax, 0x11
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 0xff
    cwd
    idiv cx
    mov ax, dx
    mov bx, word [bp - 0x0004]
    mov cl, byte [bx + 0xff0]
    cmp al, cl
    je short 0x634
    ret
    add bx, bp
    mov al, byte [bx - 0x0050]
    sub ah, ah
math_loc_063b:
    mov bx, word [bp - 0x0004]
    imul bx
    add ax, word [bp - 0x0002]
    mov cx, 0xff
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short 0x5fc
    mov al, byte [0x0fd6]
    cmp al, byte [bp - 0x0002]
    jne short 0x65c
    mov ax, word [0x1008]
    mov word [0x100a], ax
    ret
math_loc_065d:
    mov ax, 0xfff8
    call loc_4652
    mov ax, word [0x100c]
    dec ax
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0004]
    jg short 0x6c2
    mov cx, word [bp - 0x0004]
    sub cx, ax
    mov ax, cx
math_loc_067e:
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov word [bp - 0x0002], cx
math_loc_068e:
    mov ax, 6
    imul cx
    add ax, 0x100e
    mov word [bp - 0x0008], ax
    mov bx, ax
    mov ax, word [bx]
    cmp ax, word [bp + 0x4]
    jle short 0x6a8
    dec cx
    mov word [bp - 0x0004], cx
    jmp short 0x6c0
    mov al, byte [bx + 0x4]
    sub ah, ah
    add ax, word [bx]
    cmp ax, word [bp + 0x4]
    jge short 0x6bd
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0006], ax
    jmp short 0x6c0
    mov ax, bx
    ret
    jmp short 0x66f
    mov ax, 0
    ret
loc_06c6:
    mov ax, 0xfffe
    call loc_4652
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x3e0a]
    cmp ax, word [bp + 0x4]
    jne short 0x702
    mov ax, 0x400
    push ax
    mov ax, 0x3e12
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 0xa
    shl ax, cl
    add ax, 0x4212
    push ax
    call 0x5123
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov word [0x5212], ax
math_loc_0701:
    ret
math_loc_0702:
    inc word [bp - 0x0002]
math_loc_0705:
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x6d1
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    cwd
    mov cx, 0xa
    shl ax, 1
    rcl dx, 1
    loop 0x720
    push dx
    push ax
    push word [0x0e24]
    call 0x5004
    add sp, byte 8
    mov ax, 0x400
    push ax
    mov ax, 0x3e12
    push ax
    push word [0x0e24]
    call dos_file_loc_4fb6
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov word [0x5212], ax
    mov ax, 0x400
    push ax
    mov ax, word [0x5214]
    mov cx, 0xa
    shl ax, cl
    add ax, 0x4212
    push ax
    mov ax, 0x3e12
    push ax
    call 0x5123
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov cx, word [0x5214]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x3e0a], ax
    mov ax, word [0x5214]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [0x5214], dx
    ret
loc_0782:
    mov ax, 0xfef6
    call loc_4652
    push word [bp + 0x4]
    call math_loc_065d
    pop cx
    mov word [bp - 0x0008], ax
    test ax, ax
    jne short 0x79d
    mov word [0x5216], 1
    ret
    mov bx, ax
    mov al, byte [bx + 0x5]
    sub ah, ah
    cmp ax, word [0x5212]
    je short 0x7af
    push ax
    call loc_06c6
    pop cx
    mov bx, word [bp - 0x0008]
    mov ax, word [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [bx]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp ax, word [bp - 0x0004]
    je short 0x7d9
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x3e12]
    sub ah, ah
    add ax, bx
    inc ax
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    jmp short 0x7bd
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x3e12]
    sub ah, ah
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0002]
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x0109]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    cmp ax, 0x400
    jle short 0x82e
    mov ax, 0x400
loc_0800:
    sub ax, word [bp - 0x0002]
    push ax
    push word [bp - 0x000a]
    mov ax, word [bp - 0x0002]
    add ax, 0x3e12
    push ax
    call 0x5123
    add sp, byte 6
    mov ax, 0x400
    sub ax, word [bp - 0x0002]
    sub word [bp - 0x0004], ax
    add word [bp - 0x000a], ax
    mov ax, word [0x5212]
    inc ax
    push ax
    call loc_06c6
    pop cx
    mov word [bp - 0x0002], 0
    push word [bp - 0x0004]
    push word [bp - 0x000a]
    mov ax, word [bp - 0x0002]
    add ax, 0x3e12
    push ax
    call 0x5123
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0109], 0
    push word [bp + 0x6]
loc_084e:
    lea ax, word [bp - 0x0109]
    push ax
    call string_loc_4002
    add sp, byte 4
    mov word [0x5216], 0
    ret
    mov ax, 0xff00
    call loc_4652
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x4]
    call loc_0782
    db 0x83, 0xc4
string_loc_0873:
    add al, 0xff
string_loc_0875:
    jbe short 0x87d
    lea ax, word [bp - 0x00ff]
    push ax
    call string_loc_3a95
    add sp, byte 4
    ret
    mov ax, 0xff00
    call loc_4652
    mov ax, word [bp + 0x4]
    jmp short 0x8e2
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5244]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp + 0x8], ax
    jmp short 0x8f2
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5264]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp + 0x8], ax
    jmp short 0x8f2
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x52c4]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp + 0x8], ax
    jmp short 0x8f2
string_loc_08b8:
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x53c4]
    sub ah, ah
    mov word [bp + 0x8], ax
    jmp short 0x8f2
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x54c4]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp + 0x8], ax
    jmp short 0x8f2
    mov es, word [0x068e]
    mov ax, 0x9c06
    push es
    db 0xf2, 0x06 ; push es
    stosb
    push es
    mov byte [0x022d], 0
    cmp ax, strict word 7
    jae short 0x8f2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6d4]
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
math_loc_0903:
    mov bx, ax
    mov cx, word [bx + 0x5524]
    mov ax, word [bp + 0x8]
    mov bx, cx
    imul bx
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + 0x521c]
    mov bx, word [bx + 0x521e]
    add ax, cx
    adc dx, bx
    push dx
    push ax
    push word [0x0e22]
    call 0x5004
    add sp, byte 8
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x556c], 0
    jne short 0x976
    cmp word [bp + 0xa], byte 0
    jne short 0x956
    shl bx, 1
    push word [bx + 0x5524]
    push word [bp + 0x6]
    push word [0x0e22]
    call dos_file_loc_4fb6
    add sp, byte 6
    jmp short 0x974
    cmp word [bp + 0xa], byte 1
    jne short 0x974
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x5524]
    push word [bp + 0x6]
    push word [0x0e22]
    call dos_file_loc_4fbd
    add sp, byte 6
    jmp short 0x9a4
    cmp word [bp + 0xa], byte 0
    jne short 0x9a4
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x5524]
    lea ax, word [bp - 0x00ff]
    push ax
    push word [0x0e22]
    call dos_file_loc_4fb6
    add sp, byte 6
    push word [bp + 0x6]
    lea ax, word [bp - 0x00ff]
    push ax
    call string_loc_4002
    add sp, byte 4
    ret
    mov ax, 0xfffc
    call loc_4652
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    db 0x03, 0xc1 ; add ax, cx
    db 0x13, 0xd3 ; adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short 0x9db
    jne short 0x9dd
    cmp ax, word [bp - 0x0004]
    jb short 0x9dd
    jmp short 0x9ef
    call 0xd36
    test ax, ax
    je short 0x9e5
    ret
    mov ax, 0xa
    push ax
    call dos_mem_loc_36d0
    pop cx
    jmp short 0x9c4
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0
    cmp word [bp + 0x4], byte 0
    jle short 0xa08
    db 0xe8
math_loc_0a00:
    mov ax, word [0x9931]
    idiv word [bp + 0x4]
    mov ax, dx
math_loc_0a08:
    ret
math_loc_0a09:
    mov ax, 0
    call loc_4652
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, word [bp + 0x4]
    pop ax
    jg short 0xa26
    mov ax, word [bp + 0x4]
    push ax
    cmp ax, word [bp + 0x8]
    pop ax
    jle short 0xa26
    mov ax, word [bp + 0x8]
    ret
    mov ax, 0xfffa
    call loc_4652
    mov ax, 0xc
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5580]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0004], ax
    db 0x8b
math_loc_0a3f:
    inc si
    add al, 0x89
    inc si
    inc byte [bp + di + 0x7cbf]
    push bp
    add byte [di + 0x5], dh
    cmp word [bx + 0x557a], byte 0
    jne short 0xa59
    mov ax, word [bx + 0x5576]
    mov word [bp - 0x0002], ax
    cmp byte [0x5984], 0
    jbe short 0xa72
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov word [bp - 0x0004], ax
    cmp ax, 0xff
    jle short 0xa72
    mov word [bp - 0x0004], 0xff
    mov word [bp - 0x0006], 0
    cmp word [bp + 0x4], byte 0x10
    jne short 0xa8b
    cmp word [0x598e], byte 0x1e
    jl short 0xa8b
    mov word [bp - 0x0006], 1
    jmp short 0xa9d
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0xe
    je short 0xa98
    cmp ax, strict word 0xf
    jne short 0xa9d
    mov word [bp - 0x0006], 2
    mov bx, word [bp - 0x0006]
    mov al, byte [bx + 0x597c]
    sub ah, ah
    imul word [bp - 0x0004]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jle short 0xad6
    mov ax, 0xc
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5581]
    sub ah, ah
    push ax
    push word [bp - 0x0004]
    push word [bx + 0x557e]
    push word [bp - 0x0002]
    call loc_414e
    add sp, byte 8
    ret
    mov ax, 0
    call loc_4652
    mov al, byte [0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [0x59f4]
    jne short 0xaf5
    cmp word [0x59f6], byte 0
    jle short 0xaf5
    mov ax, word [0x0e34]
    mov word [0x59f8], ax
    ret
loc_0af6:
    mov ax, 0xfffc
    call loc_4652
    cmp word [bp + 0x6], byte 0
    jne short 0xb06
loc_0b02:
    cmp word [bp + 0x4], byte 0
    je short 0xb38
    les bx, word [bp + 0x4]
    mov al, byte [es:bx]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov al, byte [es:bx + 0x1]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov ax, 0xffff
    push ax
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, bx
    mov dx, es
    add ax, strict word 2
loc_0b2e:
    push dx
    push ax
    call bios_mouse_loc_42a7
    add sp, byte 0x0c
    jmp short 0xb50
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call bios_mouse_loc_42a7
    add sp, byte 0x0c
    call bios_kbd_loc_3e5e
    ret
loc_0b54:
    mov ax, 0xfffc
    call loc_4652
    mov word [0x59fa], 0
    mov word [0x59fc], 0
    mov ax, 1
    push ax
    call loc_3c97
    pop cx
    test ax, ax
    je short 0xbd9
    mov ax, 1
    push ax
    call leaf_loc_3d79
    pop cx
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0x1b
    jne short 0xb8a
    mov word [0x59fa], 1
    cmp ax, strict word 0x20
    jne short 0xb95
    mov word [0x59fc], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov bx, ax
    cmp word [bx + 0x59fe], byte 0xff
    je short 0xbd9
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x5afe]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    je short 0xbc9
    mov al, byte [bx + 0x5aff]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jne short 0xbd4
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0002]
    inc ax
    ret
    inc word [bp - 0x0002]
    jmp short 0xb9a
    mov word [bp - 0x0002], 0
    cmp word [0x0e32], byte 0
    je short 0xbef
    push word [bp + 0x4]
    call bios_mouse_loc_428d
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 0
    jge short 0xbfb
    mov ax, 1
    mov word [0x5b3e], ax
    mov ax, word [bp - 0x0002]
    push ax
loc_0c02:
    cmp ax, strict word 0
    pop ax
    jge short 0xc0a
    neg ax
    ret
    mov ax, 0xffac
    call loc_4652
    mov ax, 0x18
    push ax
    call 0x9f0
    pop cx
    inc ax
    mov word [0x5b40], ax
    mov ax, 0x19
    push ax
    call 0x9f0
    pop cx
    add ax, strict word 0x19
    mov word [0x5b42], ax
    mov ax, 0x19
    push ax
    call 0x9f0
    pop cx
    add ax, strict word 0x32
    mov word [0x5b44], ax
    mov ax, 0x19
    push ax
    call 0x9f0
    pop cx
    add ax, strict word 0x4b
    mov word [0x5b46], ax
    lea ax, word [bp - 0x0054]
    push ax
    mov al, byte [0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x9c4
    push ax
    call loc_0782
    add sp, byte 4
    mov al, byte [bp - 0x0054]
    mov bx, word [0x5b40]
    mov byte [bx + 0x5990], al
    mov al, byte [bp - 0x0053]
    mov bx, word [0x5b42]
    mov byte [bx + 0x5990], al
math_loc_0c70:
    mov al, byte [bp - 0x0052]
    mov bx, word [0x5b44]
    mov byte [bx + 0x5990], al
    mov al, byte [bp - 0x0051]
    mov bx, word [0x5b46]
    mov byte [bx + 0x5990], al
    mov word [bp - 0x0002], 0
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    add ax, strict word 0xfffc
    mov word [bp - 0x0004], ax
    mov word [0x59f6], ax
    cmp word [bp - 0x0004], byte 0
    jle short 0xce6
    dec word [bp - 0x0004]
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0050]
    sub ah, ah
    mov cx, 0x25
    imul cx
    push ax
    mov ax, 0x11
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 0xff
    cwd
    idiv cx
    mov ax, dx
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0xff0], al
    add bx, bp
    mov al, byte [bx - 0x0050]
    sub ah, ah
math_loc_0cd6:
    mov bx, word [bp - 0x0004]
    imul bx
    add ax, word [bp - 0x0002]
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short 0xc9c
    mov al, byte [bp - 0x0002]
    mov byte [0x0fd6], al
    ret
loc_0ced:
    mov ax, 0
loc_0cf0:
    call loc_4652
    mov al, byte [bp + 0xe]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov byte [bx + 0x5afe], al
    mov al, byte [bp + 0x10]
    mov byte [bx + 0x5aff], al
loc_0d08:
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    mov word [bp + 0x4], ax
    mov ax, word [bp + 0x6]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x59fe], ax
    mov ax, word [bp + 0x8]
    mov word [bx + 0x5a00], ax
    mov ax, word [bp + 0xa]
    mov word [bx + 0x5a02], ax
    mov ax, word [bp + 0xc]
    mov word [bx + 0x5a04], ax
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0x1b
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    call loc_0ced
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    call loc_0ced
    add sp, byte 0x0e
    mov ax, 0x59fe
    push ax
    call loc_0b54
loc_0d75:
    pop cx
    mov ax, word [0x5b3e]
    ret
    mov ax, 0
    call loc_4652
    cmp byte [0x598c], 0
    jne short 0xded
    cmp word [0x0e32], byte 0
    je short 0xdae
    push word [0x0e2c]
    push word [0x0e2a]
    call loc_0af6
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0x432b
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x424c
    add sp, byte 0x0a
    cmp word [0x0e32], byte 0
    je short 0xdeb
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0x4338
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call loc_0af6
    add sp, byte 4
    jmp short 0xdff
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_3b21
    add sp, byte 8
    db 0xe8, 0x5c
loc_0e01:
    xor bl, al
loc_0e03:
    mov ax, 0
    call loc_4652
    mov ax, 0
loc_0e0c:
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call math_loc_3b48
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    call math_loc_3b48
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call math_loc_3b48
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
loc_0e74:
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call math_loc_3b48
    add sp, byte 0x0a
    ret
loc_0e82:
    mov ax, 0
    call loc_4652
    push word [bp + 0xc]
    push word [bp + 0x6]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xe]
    push word [bp + 0xa]
    push word [bp + 0x8]
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    push word [bp + 0x8]
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xe]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xa]
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    ret
loc_0ee1:
    mov ax, 0
    call loc_4652
    mov ax, 0xc2
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0e03
    add sp, byte 8
    mov ax, 0xc5
    push ax
    mov ax, 0xb4
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0e82
    add sp, byte 0x0c
    ret
loc_0f2a:
    mov ax, 0
    call loc_4652
    mov ax, 0xc0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0e03
    add sp, byte 8
    mov ax, 0xc5
    push ax
    mov ax, 0xb0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0e82
    add sp, byte 0x0c
    cmp word [bp + 0xc], byte 0
    je short 0xf9e
    mov ax, 0xb4
    push ax
    mov ax, 0xc5
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    dec ax
    push ax
    call loc_0e82
    add sp, byte 0x0c
    mov ax, 0x51
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_3b3b
    add sp, byte 6
    mov ax, 0xb6
    push ax
    push word [bp + 0x6]
    push word [bp + 0x8]
    call loc_3b3b
    add sp, byte 6
    mov ax, 0xb6
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    call loc_3b3b
    add sp, byte 6
    mov ax, 0xc6
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    call loc_3b3b
    add sp, byte 6
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0xc3
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0e03
    add sp, byte 8
math_loc_100d:
    mov ax, 0xb4
    push ax
    mov ax, 0xc5
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    dec ax
    push ax
    call loc_0e82
    add sp, byte 0x0c
    ret
    mov ax, 0
    call loc_4652
    mov ax, 1
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0f2a
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x55
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0xc]
    call strlen_3
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp + 0x8]
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x4]
    inc ax
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0xc]
    call string_loc_3a95
    add sp, byte 4
    ret
math_loc_10a6:
    mov ax, 0
    call loc_4652
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b55
    add sp, byte 8
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_3b21
    add sp, byte 8
    cmp word [bp + 0xc], byte 0
    je short 0x10fe
    mov ax, 0x23
    push ax
    call dos_mem_loc_36d0
    pop cx
    ret
    mov ax, 0
    call loc_4652
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b55
    add sp, byte 8
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_3b21
    add sp, byte 8
    cmp word [bp + 0xc], byte 0
    je short 0x1137
    mov ax, 0x23
    push ax
    call dos_mem_loc_36d0
    pop cx
    ret
    mov ax, 0xfffe
    call loc_4652
    mov word [bp - 0x0002], 0
    jmp near 0x11d2
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x1191
    mov ax, 1
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call string_loc_3a6a
    add sp, byte 4
    jmp short 0x119f
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    mov cx, 0x14
    imul cx
    add ax, 0xe38
    push ax
    call string_loc_3a95
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short 0x11dd
    jmp near 0x1146
    ret
    mov ax, 0
    call loc_4652
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xfdf
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x1138
    add sp, byte 0x0c
    ret
    mov ax, 0
    call loc_4652
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x8]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xfdf
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 8
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0f2a
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 8
math_loc_1274:
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 0xfffa
    push ax
    push word [bp + 0x4]
    call loc_0f2a
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 0xfffb
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0xc]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0xc]
    add ax, strict word 8
    push ax
    push word [bp + 0x4]
    call loc_0f2a
    add sp, byte 0x0a
    ret
math_loc_1308:
    mov ax, 0
    call loc_4652
    cmp word [bp + 0xc], byte 0
    je short 0x132b
    push word [bp + 0xe]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x1034
    add sp, byte 0x0a
    jmp short 0x1370
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0xe]
    call strlen_3
    pop cx
    mov cx, ax
    mov ax, word [bp + 0x8]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x4]
    inc ax
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0xe]
    call string_loc_3a95
    add sp, byte 4
    ret
    mov ax, 0
    call loc_4652
    push word [bp + 0x4]
    call 0x41fe
    pop cx
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    ret
    mov ax, 0
    call loc_4652
    cmp word [0x5b6c], byte 0
    jge short 0x139c
    jmp near 0x14bd
    push word [0x5b6c]
    call 0x420b
    pop cx
    mov ax, word [0x5b6e]
    jmp near 0x14b0
    mov ax, 5
    push ax
    call 0x420b
    pop cx
    mov ax, 5
    push ax
    call 0x1371
    pop cx
    mov ax, 9
    push ax
    call 0x1371
    pop cx
    mov ax, 0xa
    push ax
    call 0x1371
    pop cx
    mov ax, 0xd
    push ax
    call 0x1371
    pop cx
    jmp near 0x14bd
    mov ax, 4
    push ax
    call 0x420b
    pop cx
    mov ax, 6
    push ax
    call 0x420b
    pop cx
    mov ax, 0xd
    push ax
    call 0x1371
    pop cx
    jmp near 0x14bd
    mov ax, 4
    push ax
    call 0x420b
    pop cx
    mov ax, 5
    push ax
    call 0x420b
    pop cx
    mov ax, 6
    push ax
    call 0x420b
    pop cx
    mov ax, 5
    push ax
    call 0x1371
    pop cx
    mov ax, 0xa
    push ax
    call 0x1371
    pop cx
    mov ax, 0xb
    push ax
    call 0x1371
    pop cx
    mov ax, 0xc
    push ax
    call 0x1371
    pop cx
    jmp near 0x14bd
    mov ax, 4
    push ax
    call 0x420b
    pop cx
    mov ax, 0xd
    push ax
    call 0x1371
    pop cx
    jmp near 0x14bd
    mov ax, 4
    push ax
    call 0x420b
    pop cx
    mov ax, 5
    push ax
    call 0x420b
    pop cx
    mov ax, 0xa
    push ax
    call 0x1371
    pop cx
    mov ax, 0xb
    push ax
    call 0x1371
    pop cx
    mov ax, 0xc
    push ax
    call 0x1371
    pop cx
    mov ax, 9
    push ax
    call 0x1371
    pop cx
    mov ax, 0xd
    push ax
    call 0x1371
    pop cx
    jmp short 0x14bd
    mov ax, 4
    push ax
    call 0x420b
    pop cx
    mov ax, 5
    push ax
    call 0x420b
    pop cx
    mov ax, 0xc
    push ax
    call 0x1371
    pop cx
    mov ax, 9
    push ax
    call 0x1371
    pop cx
    mov ax, 0xd
    push ax
    call 0x1371
    pop cx
    jmp short 0x14bd
    mov bp, 0xaa12
    adc bp, dx
    adc ax, si
    adc word [bp + di], bp
    adc bh, byte [0x7812]
    adc bh, byte [di]
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x12a2]
    mov word [0x5b70], 0
    mov word [0x5b6c], 0xffff
    ret
    mov ax, 0xfff4
    call loc_4652
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5b72], byte 0xff
    jne short 0x14ee
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x14da
    cmp word [bp - 0x0004], byte 0xff
    jne short 0x1507
    mov ax, 0x16
    push ax
    call loc_03b8
    pop cx
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0xc7, 0x87, 0x72
math_loc_1511:
    pop bx
    add ax, word [bx + si]
    mov ax, 0x14
    imul word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0x5b7c], 0
    mov ax, word [bp + 0x8]
    sub ax, word [bp + 0x4]
    inc ax
    mov cx, word [bp + 0xa]
    sub cx, word [bp + 0x6]
    inc cx
    mov bx, cx
    imul bx
    add ax, 0x80
    adc dx, byte 0
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], ax
    cmp byte [0x5962], 1
    jne short 0x157a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call math_loc_3b62
    add sp, byte 4
    mov cx, ax
    mov bx, dx
    mov ax, word [bp - 0x000a]
    mov dx, word [bp - 0x0008]
    cmp bx, dx
    jl short 0x1568
    jne short 0x156a
    cmp cx, ax
    ja short 0x156a
    jmp short 0x157a
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5b72], 1
    jmp near 0x160a
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call math_loc_3b62
    add sp, byte 4
    cmp dx, word [bp - 0x0008]
    jl short 0x1594
    jne short 0x1596
    cmp ax, word [bp - 0x000a]
    ja short 0x1596
    jmp short 0x15a5
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5b72], 2
    jmp short 0x160a
    cmp byte [0x5963], 1
    jne short 0x160a
    mov al, byte [0x5964]
    sub ah, ah
    add ax, strict word 0xffc0
    mov word [bp - 0x0006], ax
    cmp ax, strict word 1
    jl short 0x160a
    cmp ax, strict word 0x1a
    jg short 0x160a
    push ax
    mov ax, 3
    push ax
    call math_loc_3b62
    add sp, byte 4
    cmp dx, word [bp - 0x0008]
    jl short 0x15d8
    jne short 0x15da
    cmp ax, word [bp - 0x000a]
    ja short 0x15da
    jmp short 0x160a
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5b72], 3
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x40
    push ax
    mov ax, 0x14
    imul word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5b7c], al
    mov byte [bx + 0x5b7d], 0x3a
    mov byte [bx + 0x5b7e], 0x5c
    mov byte [bx + 0x5b7f], 0
    push word [bp + 0xc]
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0x5b7c
    push ax
    call strlen
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx + 0x5b72], byte 3
    jne short 0x1651
    mov ax, 0x301
    push ax
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0x5b7c
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0xffff
    jne short 0x164f
    mov ax, 0x17
    push ax
    call loc_03b8
    pop cx
    jmp short 0x1656
    mov word [bp - 0x000c], 0
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x5b72]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_3b7c
    add sp, byte 0x0c
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x5be2], dx
    mov word [bx + 0x5be0], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx + 0x5b72], byte 3
    jne short 0x169c
    push word [bp - 0x000c]
    call 0x4fec
    pop cx
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0xfffe
    call loc_4652
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5b72], byte 3
    jne short 0x16da
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x5b7c
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x16d8
    mov ax, 0x18
    push ax
    call loc_03b8
    pop cx
    jmp short 0x16df
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5be2]
    push word [bx + 0x5be0]
    call 0x3b89
    add sp, byte 8
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5b72], byte 3
    jne short 0x1711
    push word [bp - 0x0002]
    call 0x4fec
    pop cx
    cmp word [bp + 0x6], byte 0
    je short 0x1740
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5b72], byte 3
    jne short 0x1733
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x5b7c
    push ax
    call 0x5023
    pop cx
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx + 0x5b72], 0xffff
    ret
math_loc_1741:
    mov ax, 0xfffe
    call loc_4652
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c38]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x179e
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    jmp short 0x17a1
    mov ax, 1
    mov word [bp - 0x0002], ax
    cmp ax, strict word 1
    jge short 0x17ae
    mov word [bp - 0x0002], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c36]
    imul word [bp - 0x0002]
    ret

    db 0xb8, 0xfc, 0xff, 0xe8, 0x76, 0x2e, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0xc7, 0x87
    db 0x14, 0x5c

math_loc_17e8:
    add byte [bx + si], al
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x1838
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call math_loc_1741
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    add word [bx + 0x5c14], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x17f4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x17ef
    ret
    mov ax, 0xffea
    call loc_4652
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, 0x5d24
    push ax
    db 0xe8, 0xd7
math_loc_1875:
    sub al, 0x83
    les ax, word [0x48b8]
    add dh, bh
    outsb
    add al, 0x50
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx + 0x5d26], 2
    mov byte [bx + 0x5d27], 2
    mov byte [bx + 0x5d33], 0x20
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d75]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x5d8d]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp byte [bx + 0x5e2d], 0xd
    je short 0x18cd
    cmp byte [bx + 0x5e2d], 0xc
    jne short 0x18f9
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    inc ax
    inc ax
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    add bx, ax
    pop ax
    mov byte [bx + 0x5d27], al
    or byte [bx + 0x5d33], 0x40
    mov ax, word [bp - 0x0004]
    add ax, strict word 5
    mov byte [bx + 0x5d2e], al
    jmp short 0x194b
    cmp word [bp - 0x0002], byte 0
    jle short 0x1928
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d27], al
    or byte [bx + 0x5d33], 0x40
math_loc_1928:
    cmp word [bp - 0x0004], byte 0
    jle short 0x194b
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d2e], al
    mov ax, word [bp + 0x6]
    jmp near 0x1a15
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0xf
    jbe short 0x1965
    mov ax, 1
    jmp short 0x1968
    mov ax, 0
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    add bx, ax
    pop ax
    add word [bx + 0x5d24], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x11
    jbe short 0x198c
    mov ax, 1
    jmp short 0x198f
    mov ax, 0
    add bx, cx
    add word [bx + 0x5d24], ax
    mov al, byte [bx + 0x5d32]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d68], 0xf
    pop ax
    jbe short 0x19b0
    mov cx, 5
    jmp short 0x19b3
    mov cx, 0
    sub ax, cx
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    add bx, ax
    pop ax
    mov byte [bx + 0x5d32], al
    cbw
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d68], 0x11
    pop ax
    jbe short 0x19dc
    mov cx, 5
    jmp short 0x19df
    mov cx, 0
    sub ax, cx
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    add bx, ax
    pop ax
    mov byte [bx + 0x5d32], al
    jmp short 0x1a22
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d44]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short 0x1a0d
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d44], al
    jmp short 0x1a22
    cmp ax, strict word 0
    jne short 0x1a1d
    jmp near 0x1951
    cmp ax, strict word 1
    je short 0x19f3
    ret
    db 0xb8, 0xf8, 0xff
math_loc_1a26:
    call loc_4652
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    and ax, strict word 0xfffe
    mov byte [bx + 0x5c3b], al
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e30], 0
    mov byte [bx + 0x5e31], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short 0x1a61
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    je short 0x1a9d
    jmp near 0x1b1c
    mov byte [bx + 0x5d48], 0xff
    mov ax, word [bp - 0x0002]
    jmp short 0x1b0f
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0x184f
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5c3f]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    add byte [bx + 0x5dab], al
    jmp short 0x1b1c
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5dac], 0
    jmp short 0x1b1c
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5daa]
    add bx, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    jmp short 0x1b1c
    cmpsw
    sbb byte [bx - 0x24e8], ah
    sbb dl, ch
    sbb dl, ch
    sbb dl, ch
    sbb dl, ch
    sbb dl, ch
    db 0x18
    cmp ax, strict word 8
    jae short 0x1b1c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x18ff]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x1b35
    jmp near 0x1c20
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5c3c]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    imul dx
    mov word [bp - 0x0008], ax
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    add ax, word [bp - 0x0008]
    push ax
    call math_loc_0a09
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x1b3a
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3e]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    mov dx, word [bp - 0x0008]
    cmp ax, dx
    jge short 0x1bfc
    mov ax, dx
    jmp short 0x1c02
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    mov byte [bx + 0x5e30], al
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jge short 0x1c16
    mov ax, word [bp - 0x0006]
    jmp short 0x1c1c
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    mov byte [bx + 0x5e31], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x1c2e
math_loc_1c2b:
    jmp near 0x1a84
    ret
    mov ax, 0
    call loc_4652
    cmp word [bp + 0x6], byte 0
    jne short 0x1c47
    push word [bp + 0x8]
    push word [bp + 0x4]
    call 0x1a23
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx + 0x5c34], 0
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5c3a], 0
    jbe short 0x1cb0
    dec byte [bx + 0x5c3a]
    jne short 0x1cb0
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x1c2f
    add sp, byte 6
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0x4b
    push ax
    call 0x9f0
    pop cx
    mov word [0x59f4], ax
    mov al, byte [0x59f4]
    mov byte [0x5990], al
    mov byte [0x0fd5], al
    ret
    mov ax, 0
    call loc_4652
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short 0x1cef
    cmp byte [bx + 0x5d5c], 0
    ja short 0x1cef
    cmp byte [bx + 0x5d5d], 0
    jbe short 0x1cf4
    mov ax, 0
    jmp short 0x1cf7
    mov ax, 1
    ret
math_loc_1cf8:
    mov ax, 0xfffe
    call loc_4652
    mov word [bp - 0x0002], 0
    cmp word [bp + 0xe], byte 0
    jle short 0x1d3c
    mov ax, word [bp + 0xc]
    mov bx, 0x64
    imul bx
    push dx
    push ax
    mov ax, word [bp + 0xe]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, word [bp + 0xa]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call math_loc_4be6
    mov cx, ax
    mov bx, dx
    pop ax
    pop dx
    call math_loc_4be6
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp + 0xc]
    cmp cx, word [bp + 0xe]
    je short 0x1d52
    mov ax, 0
    cmp cx, byte 0
    jle short 0x1d52
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jle short 0x1d80
    push word [bp + 0x10]
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0xa]
    sub ax, word [bp - 0x0002]
    push ax
    push word [bp + 0x4]
    call math_loc_3b48
    add sp, byte 0x0a
    ret
    mov ax, 0xffc6
    call loc_4652
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call math_loc_3b96
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x000a], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x000c], ax
    push ax
    push word [bp - 0x000a]
    call string_loc_3a50
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x69bc]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 4
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    db 0xf7, 0x6e
math_loc_1e19:
    add al, 5
    hlt
    pop bx
    push ax
    call string_loc_3a95
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
math_loc_1e2b:
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 4
    push ax
    call string_loc_3a50
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call loc_0782
    add sp, byte 4
    mov byte [bp - 0x0031], 0
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    call string_loc_3a95
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x920]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x1ea6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short 0x1ea6
    mov ax, 0
    jmp short 0x1ea9
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short 0x1ec5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short 0x1ec5
    mov ax, 1
    jmp short 0x1ec8
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x1ef4
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x1c
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short 0x1f33
    mov ax, word [bp - 0x0002]
math_loc_1f18:
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x940]
    cmp ax, word [bp - 0x0008]
    jle short 0x1f33
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x940]
    mov word [bp - 0x0008], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x1f03
    cmp word [bp - 0x0006], byte 0xff
    je short 0x1f68
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x26
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2a], 0x13
    je short 0x1f7e
    cmp byte [bx + 0x5e2a], 0x19
    jne short 0x1f83
    mov ax, 0xa
    jmp short 0x1f91
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x954]
    mov word [bp - 0x003a], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x000c]
    add ax, strict word 7
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000a]
    add ax, strict word 0x1e
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp ax, 0xff
    je short 0x1ffa
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x1ffa
    mov ax, 4
    push ax
    mov al, byte [bx + 0x5c39]
    sub ah, ah
    push ax
    call string_loc_3a77
    add sp, byte 4
    jmp short 0x200d
    mov ax, 7
    push ax
    mov ax, word [bp - 0x003a]
    add ax, word [bp - 0x0002]
    sub ah, ah
    push ax
    call string_loc_3a77
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x1f99
    mov ax, 0x1b
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    push word [bx + 0x5c0c]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x30
    push ax
    call math_loc_1cf8
math_loc_2045:
    add sp, byte 0x0e
    mov ax, 0x56
    push ax
    mov ax, 0x248
math_loc_204f:
    imul word [bp + 0x4]
    mov bx, ax
math_loc_2054:
    push word [bx + 0x5c12]
    push word [bx + 0x5c10]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
math_loc_2064:
    mov ax, word [bp - 0x000c]
math_loc_2067:
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x34
    push ax
    call math_loc_1cf8
    add sp, byte 0x0e
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    add word [bp - 0x000e], ax
    mov ax, word [bx + 0x5c1e]
    add word [bp - 0x0010], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x2087
    mov ax, 0x98
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x38
    push ax
    call math_loc_1cf8
    add sp, byte 0x0e
    cmp word [bp + 0x6], byte 0
    je short 0x20f7
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_3b21
    add sp, byte 8
    ret
    mov ax, 0xffee
    call loc_4652
    cmp word [0x0e32], byte 0
    je short 0x2108
    jmp near 0x21f2
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call math_loc_3b6f
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x12
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0x9a
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x13
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0xa6
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x14
    push ax
    call string_loc_3a77
    add sp, byte 4
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call loc_3b21
    add sp, byte 8
    mov word [bp - 0x0004], 0xfffe
    cmp word [bp - 0x0004], byte 0xfe
    jne short 0x21c8
    mov ax, 1
    push ax
    call leaf_loc_3d79
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0x1b
    jne short 0x21b0
    mov word [bp - 0x0004], 0xffff
    cmp ax, strict word 0x31
    jl short 0x21c6
    mov cx, word [0x69c8]
    add cx, byte 0x31
    cmp cx, ax
    jle short 0x21c6
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    jmp short 0x2193
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call math_loc_3b96
    add sp, byte 6
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call loc_3b21
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
    push word [0x0e30]
    push word [0x0e2e]
    call loc_0af6
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp short 0x225d
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0002]
    call loc_0ced
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x2207
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [0x69c8]
    call loc_0ced
    add sp, byte 0x0e
    mov word [bp - 0x0008], 0
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call bios_mouse_loc_429a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jne short 0x229e
    mov ax, 1
    or word [bp - 0x0008], ax
    mov ax, 0x14
    push ax
    call dos_mem_loc_36d0
    pop cx
    mov ax, 0x59fe
    push ax
    call loc_0b54
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x59fa], byte 0
    je short 0x22ce
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call loc_0af6
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x5b3e], byte 1
    jne short 0x22e7
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call loc_0af6
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
    cmp word [bp - 0x0006], byte 0
    je short 0x2281
    cmp word [bp - 0x0008], byte 0
    je short 0x2281
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call loc_0af6
    add sp, byte 4
    mov ax, 0xffff
    ret
    mov ax, 0xfffe
    call loc_4652
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    cmp byte [bp + 0x6], 0
    jbe short 0x232d
    mov al, byte [bp + 0x7]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x9f0
    pop cx
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0002], ax
    dec byte [bp + 0x6]
    jmp short 0x2311
    mov ax, word [bp - 0x0002]
    ret
    mov ax, 0xfffc
    call loc_4652
    mov al, byte [bp + 0x4]
    mov byte [bp - 0x0002], al
    mov al, byte [bp + 0x6]
    mov byte [bp - 0x0001], al
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    mov word [0x0cf6], ax
    mov ax, word [bp - 0x0002]
    mov word [0x0cf8], ax
    mov ax, 0xcf6
    ret
math_loc_2359:
    mov ax, 0xfffc
    call loc_4652
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0
    je short 0x239e
    cmp word [bp - 0x0004], byte 0
    jne short 0x239e
    mov al, byte [bx + si]
    mov bx, word [bp + 0x4]
    mov byte [bx + si], al
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cmp al, byte [bp + 0x8]
    jne short 0x2393
    mov ax, 1
    jmp short 0x2396
    mov ax, 0
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    jmp short 0x2369
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    ret
math_loc_23a8:
    mov ax, 0
    call loc_4652
    cmp byte [0x5987], 5
    jne short 0x23c0
    cmp word [bp + 0x6], byte 1
    jne short 0x23c0
    mov ax, 1
    jmp short 0x23c3
    mov ax, 0
    mov word [bp + 0x6], ax
    mov ax, 0x3a
    push ax
    mov ax, 0x14
    imul word [bp + 0x6]
    add ax, 0x5912
    push ax
    mov ax, 0x69ca
    push ax
    call math_loc_2359
    add sp, byte 6
    push word [bp + 0x4]
    mov ax, 0x69ca
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x69ca
    ret
    mov ax, 0xff46
    call loc_4652
    mov word [bp - 0x00b0], 0x37
    mov word [bp - 0x00b2], 0x8f
    mov word [bp - 0x00b4], 0x108
    mov word [bp - 0x00b6], 0xc5
    mov ax, word [bp - 0x00b6]
    inc ax
    push ax
    mov ax, word [bp - 0x00b4]
    inc ax
    push ax
    mov ax, word [bp - 0x00b2]
    dec ax
    push ax
    mov ax, word [bp - 0x00b0]
loc_2423:
    dec ax
    push ax
    call math_loc_3b6f
    add sp, byte 8
    mov word [bp - 0x00b8], dx
    mov word [bp - 0x00ba], ax
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    mov ax, word [bp + 0x6]
    mov word [bp - 0x00ae], ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0078]
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    je short 0x2465
    push word [0x0e24]
    call 0x4fec
    pop cx
    push word [0x0e22]
    call 0x4fec
    pop cx
    mov word [bp - 0x00aa], 0xfffe
    mov word [bp - 0x00a8], 0
    cmp word [bp + 0x6], byte 0
    jge short 0x2487
    mov ax, 0xb74
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x24b7
    mov ax, word [bp + 0x6]
    add ax, strict word 0x41
    mov byte [bp - 0x00a0], al
    mov byte [bp - 0x009f], 0
    mov ax, 0xb89
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call loc_0547
    add sp, byte 6
    push word [bp - 0x00b6]
    push word [bp - 0x00b4]
    push word [bp - 0x00b2]
    push word [bp - 0x00b0]
    call loc_0ee1
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call string_loc_3a6a
    add sp, byte 4
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0xc
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_3
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x00b4]
    sub ax, word [bp - 0x00b0]
    inc ax
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x00b0]
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call string_loc_3a95
    add sp, byte 4
    mov ax, 0xb99
    push ax
math_loc_2520:
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x0078]
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call loc_0547
    add sp, byte 6
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x12
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_3
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x00b4]
    sub ax, word [bp - 0x00b0]
    inc ax
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x00b0]
    push ax
    call string_loc_3a50
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call string_loc_3a95
    add sp, byte 4
    mov ax, 0xba6
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x00b0]
    add ax, strict word 0x44
    push ax
    call math_loc_1308
    add sp, byte 0x0c
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x00b0]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x00b0]
    add ax, strict word 0x44
    push ax
    mov ax, 0
    push ax
    call loc_0ced
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    call loc_0ced
    add sp, byte 0x0e
    mov ax, word [bp - 0x00b6]
    inc ax
    push ax
    mov ax, word [bp - 0x00b4]
    inc ax
    push ax
    mov ax, word [bp - 0x00b2]
    dec ax
    push ax
    mov ax, word [bp - 0x00b0]
    dec ax
    push ax
    call loc_3b21
    add sp, byte 8
    mov word [bp - 0x00a4], 1
    mov ax, 0x59fe
    push ax
    call loc_0b54
    pop cx
    cmp word [0x5b3e], byte 1
    jne short 0x2662
    mov ax, 1
loc_261e:
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x00b0]
    add ax, strict word 0x44
    push ax
    call math_loc_10a6
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x00b2]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x00b0]
    add ax, strict word 0x44
    push ax
    call math_loc_10a6
    add sp, byte 0x0a
    mov word [bp - 0x00a4], 0
    cmp word [bp - 0x00a4], byte 0
    jne short 0x260c
    call bios_kbd_loc_3e5e
    mov ax, 0
    push ax
    push word [bp - 0x00b8]
    push word [bp - 0x00ba]
    call math_loc_3b96
    add sp, byte 6
    mov ax, word [bp - 0x00b6]
    inc ax
    push ax
    mov ax, word [bp - 0x00b4]
    inc ax
    push ax
    mov ax, word [bp - 0x00b2]
    dec ax
    push ax
    mov ax, word [bp - 0x00b0]
    dec ax
    push ax
    call loc_3b21
    add sp, byte 8
    lea ax, word [bp - 0x0078]
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0xbaf
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x00a2], ax
    cmp word [bp + 0x6], byte 0
    jge short 0x26f4
    cmp ax, strict word 0xffff
    jne short 0x26e0
    mov word [bp - 0x00a8], 1
    jmp short 0x26f2
    push ax
    call 0x4fec
    pop cx
    cmp byte [0x5987], 1
    jne short 0x26f2
    mov word [bp - 0x00a8], 1
    jmp short 0x2746
    cmp word [bp - 0x00a2], byte 0xff
    je short 0x2746
    mov ax, 0x30c
    push ax
loc_26ff:
    mov ax, 0x5218
    push ax
    push word [bp - 0x00a2]
    call dos_file_loc_4fb6
    add sp, byte 6
    mov word [bp - 0x00a6], ax
    cmp byte [0x5987], 5
    jne short 0x2724
    mov ax, word [bp + 0x6]
    cmp ax, strict word 0
    jle short 0x2724
    dec ax
    dec ax
    jmp short 0x2727
    mov ax, word [bp + 0x6]
    mov word [bp - 0x00ac], ax
    cmp word [bp - 0x00a6], byte 0
    jle short 0x273e
    cmp ax, word [0x5218]
    jne short 0x273e
    mov word [bp - 0x00a8], 1
    push word [bp - 0x00a2]
    call 0x4fec
    pop cx
    cmp word [bp - 0x00a8], byte 0
    jne short 0x2750
    jmp near 0x2471
    mov ax, word [bp - 0x00aa]
    mov word [bp + 0x6], ax
    mov word [bp - 0x00aa], 0xfffe
    mov ax, 0x5926
    push ax
    lea ax, word [bp - 0x0078]
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp + 0x6], byte 0xfe
    je short 0x2774
    jmp near 0x246b
    mov ax, 1
    push ax
    push word [bp - 0x00b8]
    push word [bp - 0x00ba]
    call math_loc_3b96
    add sp, byte 6
    call bios_kbd_loc_3e5e
    cmp word [bp + 0xa], byte 0
    je short 0x27e8
    mov ax, 0
    push ax
    push ax
    mov ax, 0xbb8
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [0x0e24], ax
    cmp ax, strict word 0xffff
    jne short 0x27b5
    mov ax, 0x19
    push ax
    call loc_03b8
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    cmp word [bp - 0x00ae], byte 0
    jne short 0x27c6
    mov ax, 0
    push ax
    mov ax, 0xbc0
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [0x0e22], ax
    cmp ax, strict word 0xffff
    jne short 0x27e8
    mov ax, 0x1a
    push ax
    call loc_03b8
    pop cx
    ret
loc_27e9:
    mov ax, 0xffe8
    call loc_4652
    mov word [bp - 0x0016], 0
    mov al, byte [0x5987]
    sub ah, ah
    jmp short 0x2802
    mov word [bp - 0x0016], 0
    jmp short 0x280c
    cmp ax, strict word 0
    je short 0x27fb
    cmp ax, strict word 1
    je short 0x27fb
    cmp byte [0x5987], 5
    jne short 0x281f
    mov ax, word [bp - 0x0016]
    cmp ax, strict word 0
    jle short 0x281f
    dec ax
    dec ax
    jmp short 0x2822
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0018], ax
    cmp ax, word [0x5218]
    je short 0x2862
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call math_loc_2359
    add sp, byte 6
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x0016]
    lea ax, word [bp - 0x0014]
    push ax
    call 0x23ef
    add sp, byte 8
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call loc_3b21
    add sp, byte 8
    ret
    mov ax, 0xffe8
    call loc_4652
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x5b48]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x2882
    jmp near 0x290c
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0x15e
    imul bx
    add ax, 0x6a1a
    push ax
    mov ax, 8
    push ax
    call 0x883
    add sp, byte 8
    mov ax, 0xbcd
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x0015], al
    add dx, byte 0x30
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [bp - 0x0014], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x28ea
    mov ax, 0x12
    push ax
    call loc_03b8
    pop cx
    push word [bp + 0x6]
    push word [bp - 0x0004]
    call 0x41f1
    add sp, byte 4
    push word [bp - 0x0004]
    call 0x4fec
    pop cx
    mov al, byte [bp + 0x4]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x5b48], al
    mov byte [bx + 0x5b5a], 1
    ret
    mov ax, 0
    call loc_4652
    mov ax, 1
    push ax
    call loc_415b
    pop cx
    push word [bp + 0x4]
    call 0x4134
    pop cx
    ret
    mov ax, 0xffe8
    call loc_4652
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0xc
    imul word [bp + 0x6]
    add ax, 0x5576
    push ax
    mov ax, 9
    push ax
    call 0x883
    add sp, byte 8
    mov word [bp - 0x0002], 1
    mov ax, 0xc
    imul word [bp + 0x6]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x557c], byte 0
math_loc_295e:
    jne short 0x2965
    cmp word [bx + 0x557a], byte 0
    jne short 0x297d
    mov ax, word [bx + 0x5576]
    mov word [bp + 0x4], ax
    mov ax, 1
    cmp word [bp + 0x8], byte 0
    je short 0x297a
    mov ax, 0
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    je short 0x29f0
    mov ax, 0xbd7
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x0013], al
    add dx, byte 0x30
    mov ax, dx
    mov byte [bp - 0x0012], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x29d1
    mov ax, 0xb
    push ax
    call loc_03b8
    pop cx
    push word [bp + 0x6]
    push word [bp - 0x0004]
    call loc_4141
    add sp, byte 4
    test ax, ax
    je short 0x29e9
    mov ax, 0xc
    push ax
    call loc_03b8
    pop cx
    push word [bp - 0x0004]
    call 0x4fec
    pop cx
    ret
    mov ax, 0
    call loc_4652
    mov ax, word [0x598e]
    cmp ax, word [bp + 0x4]
    je short 0x2a2d
    mov ax, 1
    push ax
    call loc_415b
    pop cx
    cmp word [0x598e], byte 0xff
    je short 0x2a16
    mov ax, 0x10
    push ax
    call 0x290d
    pop cx
    mov ax, word [bp + 0x4]
    mov word [0x598e], ax
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    push word [bp + 0x4]
    call 0x2923
    add sp, byte 6
    ret
    mov ax, 0xff58
    call loc_4652
    mov al, byte [0x5985]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x00a8], ax
    cmp ax, strict word 6
    jne short 0x2a48
    mov word [bp - 0x00a8], 4
    mov ax, 0xbe3
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x009f], al
    add dx, byte 0x30
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [bp - 0x009e], al
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0xbeb
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x2ab6
    mov ax, 0xf
    push ax
    call loc_03b8
    pop cx
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp - 0x00a8], byte 5
    jne short 0x2adc
    mov ax, 0xbf0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call strlen
    add sp, byte 4
    jmp short 0x2aea
    mov ax, 0xbf5
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_23a8
    add sp, byte 4
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0004], ax
loc_2b06:
    cmp ax, strict word 0xffff
    jne short 0x2b13
    mov ax, 0x10
    push ax
    call loc_03b8
    pop cx
    push word [bp + 0x6]
    push word [bp - 0x00a8]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call loc_41a3
    add sp, byte 8
    mov word [bp - 0x00a6], ax
    cmp word [bp - 0x00a6], byte 0
    je short 0x2b39
    mov ax, 0x11
    push ax
    call loc_03b8
    pop cx
    push word [bp - 0x0002]
    call 0x4fec
    pop cx
    push word [bp - 0x0004]
    call 0x4fec
    pop cx
    mov ax, word [bp + 0x4]
    mov word [0x82b6], ax
    ret
    mov ax, 0
    call loc_4652
    push word [bp + 0x4]
    call 0x41bd
    pop cx
    mov word [0x82b6], 0xffff
    ret
    mov ax, 0
    call loc_4652
    call loc_41ca
    test ax, ax
    je short 0x2baa
    cmp word [bp + 0x6], byte 0
    jle short 0x2ba7
    call loc_41ca
    test ax, ax
    je short 0x2ba7
    push word [bp + 0x6]
math_loc_2b7f:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xfff6
    push ax
    call math_loc_0a09
    add sp, byte 6
    mov word [bp + 0x6], ax
    push ax
    push word [bp + 0x4]
    call loc_41e4
    add sp, byte 4
    mov ax, 0x19
    push ax
    call dos_mem_loc_36d0
    pop cx
    jmp short 0x2b6f
    call loc_41d7
    ret
    mov ax, 0xfffc
    call loc_4652
    mov ax, 0xa
    push ax
    mov al, byte [0x597f]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax
    db 0xf7
math_loc_2bc3:
    call math_loc_2b7f
    add bh, dh
    jmp near 0xf456
    mov ax, 0x639c
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    push word [bp + 0x8]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x41b0
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0
    call loc_4652
    cmp byte [0x5985], 1
    je short 0x2c01
    cmp byte [0x5985], 3
    jbe short 0x2c0d
    cmp byte [0x597f], 0
    jbe short 0x2c0d
    db 0xb8, 0x01
math_loc_2c0a:
    add bl, ch
    db 0x03, 0xb8, 0x00, 0x00 ; add di, word ptr [bx + si]
    ret
    mov ax, 0xfffe
    call loc_4652
    mov word [bp - 0x0002], 0
    jmp short 0x2c5c
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x7d48]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0x25
    imul cx
    push ax
    mov ax, 0x11
    imul bx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov cx, 0xff
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov cl, byte [bx + 0xff0]
    db 0x3a, 0xc1 ; cmp al, cl
    jmp short 0x2c4b
    mov ax, 0
    ret
    mov ax, word [0x59f6]
    dec ax
    db 0x3b, 0xc3 ; cmp ax, bx
    jne short 0x2c59
    mov ax, word [0x59f8]
    mov word [0x1008], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x59f6]
    jl short 0x2c1e
    mov ax, 1
    ret
    mov ax, 0xffec
    call loc_4652
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx - 0x7d2e]
    push word [bx - 0x7d30]
    call math_loc_3b96
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x28
    imul cx
    push ax
    mov ax, 0x19
    imul word [bp - 0x0002]
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x45
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 7
    mov ax, word [bp - 0x0002]
    jmp near 0x2d5c
    mov ax, word [0x82e8]
    inc ax
    mov word [bp - 0x0004], ax
    jmp near 0x2d69
    mov ax, word [0x82e8]
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    jmp near 0x2d69
    mov ax, word [0x82e8]
    add ax, strict word 5
    mov word [bp - 0x0004], ax
    jmp near 0x2d69
    mov ax, word [0x82e8]
    imul word [0x82ea]
    add ax, strict word 7
    mov word [bp - 0x0004], ax
    jmp near 0x2d69
    mov ax, word [0x82e8]
    add ax, strict word 9
    mov word [bp - 0x0004], ax
    jmp near 0x2d69
    mov ax, word [0x82e8]
    cmp ax, word [0x82ec]
    je short 0x2d45
    mov word [0x82ec], ax
    mov ax, word [0x82ee]
    shl ax, 1
    sub ax, word [0x82f0]
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    je short 0x2d45
    cmp ax, strict word 0xfffc
    jl short 0x2d25
    cmp ax, strict word 0
    jle short 0x2d35
    cmp ax, strict word 5
    jge short 0x2d35
    mov ax, word [0x82f0]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov word [0x82f0], dx
    jmp short 0x2d45
    mov ax, word [0x82f0]
    add ax, strict word 7
    mov cx, 8
    cwd
    idiv cx
    mov word [0x82f0], dx
    mov ax, word [0x82f0]
    add ax, strict word 0xb
    mov word [bp - 0x0004], ax
    jmp short 0x2d69
    mov dx, 0xc42a
    db 0x2a, 0xd0 ; sub dl, al
    db 0x2a, 0xdc ; sub bl, ah
    db 0x2a, 0xf8 ; sub bh, al
    db 0x2a, 0xec ; sub ch, ah
    sub bh, byte [di]
    push es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x2b50]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x7d0e], byte 0
    jle short 0x2db0
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0014], al
    mov byte [bp - 0x0013], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 8
    push ax
    call 0x4218
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x2dbe
    jmp near 0x2c74
    mov ax, 0x16
    push ax
    mov ax, 0xfc
    push ax
    mov ax, 6
    push ax
    mov ax, 0x44
    push ax
    call loc_3b21
    add sp, byte 8
    ret
loc_2dd5:
    mov ax, 0xfffe
    call loc_4652
    mov word [0x830a], 0
    mov ax, word [0x830a]
    jmp near 0x2f1c
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call loc_27e9
    add sp, byte 4
    mov ax, 0xbfa
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
loc_2e00:
    jmp near 0x2f29
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call loc_27e9
    add sp, byte 4
    mov ax, 0xc00
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc06
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc0c
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc12
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    db 0xe9
loc_2e47:
    loopne 0x2e49
    push word [0x830c]
    mov ax, 2
    push ax
    call loc_27e9
    add sp, byte 4
    mov word [0x830a], 5
    mov ax, 0xc18
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc1e
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc24
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc2a
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc30
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp near 0x2f29
    mov ax, 0xc36
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp short 0x2f29
    mov ax, 0xc3c
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp short 0x2f29
    mov ax, 0xc42
    push ax
    call loc_4379
    pop cx
    mov word [bp - 0x0002], ax
    jmp short 0x2f29
    mov ax, 0
    push ax
    call loc_0242
    pop cx
    mov ax, 0
    push ax
    call loc_4f73
    pop cx
    jmp short 0x2f29
    cmc
    db 0x2b, 0xf5 ; sub si, bp
    db 0x2b, 0xf5 ; sub si, bp
    db 0x2b, 0xca ; sub cx, dx
    sub al, 0x11
    sub al, 0x5d
    sub al, 0x5d
    sub al, 3
loc_2eeb:
    sub al, 0xe7
    sub bp, word [bx + di]
    sub ax, 0x2c79
    jns short 0x2f20

    db 0x87, 0x2c, 0x95, 0x2c, 0x79, 0x2c, 0xb0, 0x2c, 0x3b, 0x2c, 0x1f, 0x2c, 0xbd, 0x2c, 0xa3, 0x2c
    db 0xa3, 0x2c, 0xb0
    db ',-,k,'
    db 0x03, 0x2c, 0x49, 0x2c, 0xb0, 0x2c, 0x6b, 0x2c, 0xb0, 0x2c, 0xb0
    db ',k,k,= ', 0
    db 0x73

    or byte [bp + di - 0x1c2f], dl
    jmp [cs:bx + 0x2cdc]
    mov ax, 0
    push ax
    call loc_415b
    pop cx
    jmp near 0x2de1
    ret
    times 10 db 0
    db 0x00, 0x80, 0x41, 0x00 ; add byte ptr [bx + si + 0x41], al
    db 0x00, 0x00
    adc byte [bx + si], al
    add byte [bx + si + 0x1], al
    db 0x00, 0x00
    inc ax
    db 0x00, 0x00
    add byte [bx + si], dh
    add ax, strict word 0
    rol byte [bx + di], 1
    times 6 db 0
    ds das
    mov sp, 0x34
    times 6 db 0
    add ax, word [bx + di]
    db 0x00, 0x00
    pop es
    add word [bx + si], ax
    add byte [bp + di], cl
    add word [bx + si], ax
    add byte [bx], cl
    add word [bx + si], ax
    add byte [bp + di], dl
    add word [bx + si], ax
    add byte [bx], dl
    add word [bx + si], ax
    add byte [bp + di], bl
    add word [bx + si], ax
    add byte [bx], bl
    add word [bx + si], ax
    add byte [bp + di], al
    add word [bx + si], ax
    add byte [bx], al
    add word [bx + si], ax
    add byte [bp + di], cl
    add word [bx + si], ax
    add byte [bx], cl
    add word [bx + si], ax
    add byte [bp + di], dl
    add word [bx + si], ax
    add byte [bx], dl
    add word [bx + si], ax
    add byte [bp + di], bl
    add word [bx + si], ax
    add byte [bx], bl
    add word [bx + si], ax
    add byte [bp + di], ah
    add word [bx + si], ax
    add byte [bx], ah
    add word [bx + si], ax
    add byte [bp + di], ch
    add word [bx + si], ax
    add byte [bx], ch
    add word [bx + si], ax
    add byte [bp + di], dh
    add word [bx + si], ax
    add byte [bx], dh
    add word [bx + si], ax
    add byte [bp + di], bh
    add word [bx + si], ax
    add byte [bx], bh
    add word [bx + si], ax
    add byte [bp + di + 0x1], al
    db 0x00, 0x00
    inc di
    add word [bx + si], ax
    add byte [bp + di + 0x1], cl
    db 0x00, 0x00
    dec di
    add word [bx + si], ax
    add byte [bp + di + 0x1], dl
    db 0x00, 0x00
    push di
    add word [bx + si], ax
    add byte [bp + di + 0x1], bl
    db 0x00, 0x00
    pop di
    add word [bx + si], ax
    add byte [bp + di + 0x1], ah
    db 0x00, 0x00
    add word [eax], ax
    add byte [bp + di + 0x1], ch
    db 0x00, 0x00
    outsw
    add word [bx + si], ax
    add byte [bp + di + 0x1], dh
    db 0x00, 0x00
    ja short 0x2ffe
    db 0x00, 0x00
    jnp short 0x3002
    db 0x00, 0x00
    jg short 0x3006
    db 0x00, 0x00
    add word [bx + di], byte 0
    db 0x00, 0x87, 0x01, 0x00 ; add byte ptr [bx + 1], al
    db 0x00, 0x8b, 0x01, 0x00 ; add byte ptr [bp + di + 1], cl
    db 0x00, 0x8f, 0x01, 0x00 ; add byte ptr [bx + 1], cl
    db 0x00, 0x93, 0x01, 0x00 ; add byte ptr [bp + di + 1], dl
    db 0x00, 0x97, 0x01, 0x00 ; add byte ptr [bx + 1], dl
    db 0x00, 0x9b, 0x01, 0x00 ; add byte ptr [bp + di + 1], bl
    db 0x00, 0x9f, 0x01, 0x00 ; add byte ptr [bx + 1], bl
    db 0x00, 0xa3, 0x01, 0x00 ; add byte ptr [bp + di + 1], ah
    db 0x00, 0xa7, 0x01, 0x00 ; add byte ptr [bx + 1], ah
    db 0x00, 0xab
io_loc_3030:
    add word [bx + si], ax
    db 0x00, 0xaf, 0x01, 0x00 ; add byte ptr [bx + 1], ch
    db 0x00, 0xb3, 0x01, 0x00 ; add byte ptr [bp + di + 1], dh
    db 0x00, 0xb7, 0x01, 0x00 ; add byte ptr [bx + 1], dh
    db 0x00, 0xbb, 0x01, 0x00 ; add byte ptr [bp + di + 1], bh
    db 0x00, 0xbf, 0x01, 0x00 ; add byte ptr [bx + 1], bh
    add bl, al
    add word [bx + si], ax
    add bh, al
    add word [bx + si], ax
    add bl, cl
    add word [bx + si], ax
    add bh, cl
    add word [bx + si], ax
    add bl, dl
    add word [bx + si], ax
    add bh, dl
    add word [bx + si], ax
    add bl, bl
    add word [bx + si], ax
    add bh, bl
    add word [bx + si], ax
    add byte [di - 0x0075], dl
    in al, dx
    cld
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call 0x30e2
    call 0x3674
    call 0x30f7
    call 0x36f5
    call bios_mouse_loc_37a5
    call dos_intvec_loc_37d9
    call dos_con_loc_35f5
    call dos_file_loc_3534
    mov ax, 0
    push ax
    call loc_3b2e
    add sp, byte 2
    mov ax, word [bp - 0x0002]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
bios_video_loc_30a3:
    push bp
    mov bp, sp
    cld
    sub sp, byte 2
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call bios_video_loc_30c3
    call bios_mouse_loc_3796
    call leaf_loc_382c
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
bios_video_loc_30c3:
    push es
    sub ax, ax
    mov es, ax
    mov dl, byte [cs:0x2d37]
    mov byte [es:0x0410], dl
    pop es
    mov al, byte [cs:0x2d36]
    xor ah, ah
    int 0x10
    ret
    mov ax, 0x10b
    add byte [bx], ch
    jne short 0x30e9
    mov ax, 0
    mov es, ax
    mov bx, 0x46c
    mov ax, word [es:bx]
    pop es
    add ax, strict word 2
    mov word [cs:0x2ede], ax
    ret
    mov ah, 0xf
    int 0x10
    mov byte [cs:0x2d36], al
    mov ax, word [bp + 0x4]
    and ax, strict word 1
    jne short 0x310a
    jmp near 0x3490
    mov ax, 0
    push ds
    mov ds, ax
    mov bx, 0x487
    mov al, byte [bx]
    pop ds
    db 0x0a, 0xc0 ; or al, al
    je short 0x3138
    db 0x33, 0xdb ; xor bx, bx
    mov ax, 0x1a00
    int 0x10
    cmp bl, 7
    je short 0x3135
    cmp bh, 7
    je short 0x3135
    cmp bl, 8
    je short 0x3135
    cmp bh, 8
    jne short 0x3138
    jmp near 0x343e
    mov word [bp - 0x0002], 0
    ret
    db 0x00, 0x00
    add byte [bx], bh
    aas
    aas
    cmp byte [bx + si], bh
    cmp byte [bp + di], dh
    xor si, word [bp + di]
    db 0x2e, 0x2e, 0x2e, 0x29, 0x29 ; sub word ptr cs:[bx + di], bp
    sub word [si], sp
    and al, 0x24
    and byte [bx + si], ah
    and byte [si], bl
    sbb al, 0x1c
    sbb byte [bx + si], bl
    sbb byte [si], dl
    adc al, 0x14
    adc byte [bx + si], dl
    adc byte [di], cl
    or ax, 0xa0d
    or cl, byte [bp + si]
    pop es
    pop es
    pop es
    add al, 4
    add al, 0x3f
    cmp bh, byte [bp + si]
    cmp ax, 0x3434
    aas
    db 0x2e, 0x2e, 0x3f ; aas 
    and ah, byte [bp + si]
    aas
    push ss
    push ss
    aas
    adc byte [bx + si], dl
    aas
    db 0x00, 0x00
    cmp al, byte [bx + si]
    add byte [di], dh
    db 0x00, 0x00
    xor byte [bx + si], al
    add byte [bp + di], ch
    db 0x00, 0x00
    add byte [es:bx + si], al
    and word [bx + si], ax
    add byte [si], bl
    db 0x00, 0x00
    pop ss
    db 0x00, 0x00
    adc al, byte [bx + si]
    add byte [0x0000], cl
    or al, byte [bx + si]
    add byte [0x0000], al
    add al, byte [bx + si]
    add byte [bx], bh
    xor byte [bp + si], ah
    aas
    sub dl, byte [bx]
    aas
    and ax, 0x3f0c
    push ds
    add byte [0x0019], dh
    cs adc ax, 0x2500
    adc word [bx + si], ax
    sbb ax, strict word 0xe
    aas
    sub ax, 0x3b0b
    sub word [bx + di], cx
    aaa
    and ax, 0x3307
    and al, byte [0x3f28]
    sub byte [si], bl
    aas
    sbb al, 0
    aas
    db 0x00, 0x00
    cmp byte [bx + si], al
    add byte [bx + si], dh
    db 0x00, 0x00
    sub byte [bx + si], al
    add byte [bx + si], ah
    db 0x00, 0x00
    sbb byte [bx + si], al
    add byte [bp + si], dl
    db 0x00, 0x00
    or al, 0
    add byte [bx + si], cl
    add byte [bx], ch
    pop ds
    add ax, 0x1b29
    pop es
    and bx, word [bx + si]
    or word [0x0915], bx
    sbb byte [bx + di], dl
    or word [di], si
    cmp bx, word [bx + si]
    sub bh, byte [bx + si]
    add byte [si], ah
    xor byte [bx + si], al
    push ds
    sub byte [bx + si], al
    sbb byte [bx + si], ah
    add byte [bp + si], dl
    sbb byte [bx + si], al
    or ax, strict word 0x12
    or word [si], cx
    add byte [0x0008], al
    add al, 5
    add byte [bp + si], al
    add al, byte [bx + si]
    or al, 0x34
    xor al, byte [di]
    sub ah, byte [bx]
    add byte [bx + si], ah
    push ds
    add byte [bx + di], bl
    sbb byte [bx + si], al
    adc dl, byte [bp + si]
    aas
    cmp ax, 0x3f34
    cmp ax, 0x3f2e
    cmp ax, 0x3f28
    cmp ax, 0x3f1c
    cmp ax, 0x3f15
    cmp ax, 0x3800
    add byte [ss:bx + si], dh
    add byte [cs:bx + si], ch
    add byte [es:bx + si], ah
    push ds
    add byte [bx + si], bl
    push ss
    add byte [bp + si], dl
    adc byte [bx + si], al
    or al, 0xa
    add byte [bx + si], cl
    push es
    db 0x00, 0x00
    and byte [bx], bh
    add byte [bx + si], bl
    xor byte [0x3a36], dh
    xor al, 0x34
    aaa
    xor word [bx + di], si
    xor ax, 0x2f2f
    xor ch, byte [di]
    sub ax, 0x2b30
    sub bp, word [di]
    sub word [bx + di], bp
    sub sp, word [0x2826]
    and al, 0x24
    and ah, byte [es:bp + si]
    and sp, word [bx + si]
    and byte [bx + di], ah
    sbb ax, 0x1f1e
    sbb bx, word [bp + di]
    sbb al, 0x19
    sbb word [bp + si], bx
    push ss
    push ss
    pop ss
    adc al, 0x14
    adc ax, 0x1111
    adc cl, byte [0x100e]
    or cx, word [bp + di]
    push cs
    or byte [bx + si], cl
    or al, byte [di]
    push es
    or byte [si], al
    add al, 6
    add al, byte [bp + si]
    add al, 1
    add word [bp + si], ax
    pop ss
    sbb bl, byte [0x1614]
    sbb dx, word [bx + di]
    adc bx, word [bx + si]
    movups xmm2, [di]
    or al, 0xe
    adc cl, byte [bp + si]
    or dx, word [bx + si]
    or byte [bx + si], cl
    or ax, 0x606
    or ch, byte [0x3f3a]
    sub byte [bx], dh
    aas
    and dh, byte [si]
    aas
    sbb al, 0x31
    aas
    adc ax, 0x3f2e
    movntps [bx], xmm7
    add byte [bx + si], ch
    aas
    add byte [bp + di], ah
    cmp byte [bx + si], al
    push ds
    xor byte [bx + si], al
    sbb word [bx + si], bp
    add byte [si], dl
    and byte [bx + si], al
    adc byte [bx + si], ah
    add byte [bx], cl
    sbb byte [bx + si], al
    or dx, word [bp + si]
    add byte [bx + si], cl
    or al, 0
    add ax, 0x3a08
    and al, 0x1c
    xor al, 0x1e
    sbb ch, byte [0x1418]
    sub byte [si], dl
    adc byte [bx], bh
    sub byte [si], dh
    aas
    and dh, byte [bx + si]
    aas
    adc ax, 0x1c28
    sbb al, 0x3f
    adc dl, byte [bp + si]
    aas
    db 0x00, 0x00
    aas
    db 0x00, 0x00
    xor byte [bx + si], al
    add byte [bx + si], ah
    db 0x00, 0x00
    sbb byte [bx + si], al
    add byte [bp + si], dl
    db 0x00, 0x00
    or al, 0
    add byte [bx + si], cl
    and dl, byte [bx + si]
    push cs
    push ds
    push cs
    or ax, 0xa18
    or dl, byte [si]
    or byte [bx + si], cl
    aas
    add byte [bx + si], ah
    xor al, byte [bx + si]
    sbb word [0x1300], sp
    aas
    sub byte [bx], bh
    aas
    sbb word [bx], di
    aas
    add byte [bx], bh
    add byte [ss:bx], dh
    sub ax, 0x2e00
    and al, 0
    and ax, strict word 0x1b
    sbb al, 0x12
    add byte [bp + di], dl
    or al, byte [bx + si]
    or di, word [bx]
    cmp al, 0x18
    cmp word [ds:si], dx
    cmp ax, 0x1137
    cmp al, 0x35
    push cs
    cmp si, word [bp + di]
    or di, word [bp + si]
    xor word [bx + si], cx
    cmp byte [bx], ch
    pop es
    xor ax, 0x62c
    sub bp, word [di]
    cmp byte [bx], ah
    sub byte [di], dh
    and ah, byte [si]
    xor bx, word [bx]
    and byte [bx + di], dh
    sbb word [bp + si], bx
    sub ax, 0x1514
    sub word [bx], cx
    adc byte [di], ah
    or cx, word [si]
    and dh, byte [bp + si]
    sub word [di], ax
    das
    es add al, 0x2c
    and ax, word [bp + di]
    sub word [bx + si], sp
    add ah, byte [0x021d]
    and bx, word [bx + di]
    add word [bx + si], sp
    adc al, 0
    sbb ax, strict word 0x10
    sbb cl, byte [si]
    add byte [0x0009], dl
    adc cx, word [bx + si]
    add byte [bx + si], dl
    push es
    add byte [di], cl
    add al, 0
    or al, byte [bp + si]
    add byte [bx], al
    add al, byte [bx + si]
    push es
    add word [bx + si], ax
    xor al, 0x2d
    sbb byte [si], dh
    sub dl, byte [si]
    xor byte [0x2c12], ah
    and dl, byte [bx + di]
    sub byte [0x220e], bl
    sbb cl, byte [0x161c]
    or ax, 0x363f
    sub word [0x2633], di
    cmp ax, 0x2330
    cmp al, 0x2e
    and word [bp + di], di
    sub al, 0x1f
    cmp ch, byte [bp + si]
    sbb ax, 0x2739
    sbb bh, byte [bx + si]
    and al, 0x18
    xor sp, word [bx + si]
    push ss
    sbb byte [bp + di], dl
    push cs
    adc al, 0x10
    or dx, word [bx + si]
    or al, 9
    cmp dh, byte [bx + di]
    xor ch, byte [es:bx + di]
    push ds
    sub ah, byte [bx + di]
    pop ss
    and bx, word [bx + di]
    adc word [0x131e], bp
    sub word [bp + si], bx
    adc word [si], sp
    pop ss
    db 0x0f, 0x20, 0x14 ; mov esp, cr2
    or ax, 0x111b
    or dx, word [0x090e]
    adc byte [bp + si], cl
    push es
    or al, byte [0x0403]
    add al, byte [bx + di]
    ss sbb al, 0x1c
    xor byte [di], dl
    adc ax, 0x102a
    adc byte [si], ah
    or cx, word [bp + di]
    push ds
    pop es
    pop es
    sbb byte [si], al
    add al, 0x30
    sub word [bx], di
    sub word [bx + di], bx
    aas
    and byte [bx + si], al
    aas
    sbb al, 0
    cmp byte [bx + si], bl
    add byte [bx + si], dh
    adc al, 0
    sub byte [bx + si], dl
    add byte [bx + si], ah
    or al, 0
    sbb byte [bx + si], cl
    add byte [bx + si], dl
    sbb byte [bx + si], bl
    and byte [0x06c6], ch
    cmp ch, byte [di]
    add byte [0x06c6], ch
    cmp bp, word [di]
    add byte [0x06c6], ch
    cmp byte [di], ch
    add byte [0x06c6], ch
    cmp word [di], bp
    add word [0xc02b], ax
    mov es, ax
    mov dl, byte [es:0x0410]
    mov byte [cs:0x2d37], dl
    and dl, 0xcf
    mov byte [es:0x0410], dl
    pop es
    mov ax, 0x13
    int 0x10
    mov ax, cs
    mov es, ax
    mov dx, 0x2f3e
    db 0x33, 0xdb ; xor bx, bx
    mov cx, 0x100
    mov ax, 0x1012
    int 0x10
    mov word [bp - 0x0002], 1
    mov bx, 0x3307
    mov word [bp - 0x0004], bx
    ret
    mov ax, 0
    push ds
    mov ds, ax
    mov bx, 0x487
    mov al, byte [bx]
    pop ds
    db 0x0a, 0xc0 ; or al, al
    je short 0x34a3
    jmp near 0x34a9
    mov word [bp - 0x0002], 0
    ret
    mov byte [cs:0x2d3a], 0
    mov byte [cs:0x2d3b], 0
    mov byte [cs:0x2d38], 1
    mov byte [cs:0x2d39], 0
    push es
    db 0x2b, 0xc0 ; sub ax, ax
    mov es, ax
    mov dl, byte [es:0x0410]
    mov byte [cs:0x2d37], dl
    and dl, 0xcf
    mov byte [es:0x0410], dl
    pop es
    mov ax, 0xe
    int 0x10
    mov ax, cs
    mov es, ax
    mov dx, 0x32f6
    mov ax, 0x1002
    int 0x10
    mov word [bp - 0x0002], 2
    mov bx, 0x330f
    mov word [bp - 0x0004], bx
    ret
    add byte [bx], dl
    adc word [di], dx
    adc al, 0x16
    adc dl, byte [bp + di]
    adc byte [bx], al
    add word [di], ax
    add al, 6
    add al, byte [bp + di]
    add byte [bp + 0x67], dh
    popaw
    db 0x2e, 0x64, 0x72, 0x76 ; jb 0x3584
    add byte [di + 0x67], ah
    popaw
    db 0x2e, 0x64, 0x72, 0x76 ; jb 0x358c
    add byte [bp + di + 0x67], ah
    popaw
    db 0x2e, 0x64, 0x72, 0x76 ; jb 0x3594
    add byte [bx + si + 0x65], ch
    jb short 0x3586
    db 0x2e, 0x64, 0x72, 0x76 ; jb 0x359d
    add byte [si + 0x61], dh
    outsb
    db 0x64, 0x79, 0x2e ; jns 0x355c
    db 0x64, 0x72, 0x76 ; jb 0x35a7
    db 0x00, 0x00, 0x00
dos_file_loc_3534:
    push ds
    push es
    mov ah, 0x3d
    mov al, 0
    mov bx, cs
    mov ds, bx
    mov dx, word [bp - 0x0004]
    int 0x21
    jb short 0x35b5
    mov word [cs:0x3332], ax
    mov bx, ax
    mov ah, 0x3f
    mov cx, 0x5300
    mov dx, word [cs:0x2d52]
    mov ds, dx
    mov dx, 0x100
    int 0x21
    mov ah, 0x3e
    mov bx, word [cs:0x3332]
    int 0x21
    mov ax, cs
    mov es, ax
    mov di, 0x2d87
    mov ax, word [cs:0x2d52]
    mov cx, 0x37
    add di, byte 2
    stosw
    loop 0x3573
    mov ax, word [cs:0x2d52]
    mov es, ax
    mov di, word [cs:0x2e63]
    mov ax, cs
    mov ds, ax
    mov si, 0x2d40
    mov cx, 0x2d58
    sub cx, si
    rep movsb
    add si, byte 4
    mov cx, 2
    push cx
    mov cx, 2
    rep movsb
    mov ax, cs
    stosw
    pop cx
    loop 0x3598
    mov cx, 7
    rep movsb
    mov cx, 8
    shl cx, 1
    shl cx, 1
    rep movsb
    pop es
    pop ds
    ret
    call bios_video_loc_30a3
    mov ax, cs
    mov ds, ax
    mov dx, 0x33c9
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    ret
    or ax, 0x70a
    push bp
    outsb
    popaw
    bound bp, dword [si + 0x65]
    and byte [si + 0x6f], dh
    and byte [si + 0x6f], ch
    popaw
    and byte [fs:si + 0x69], ah
    jae short 0x364f
    insb
    popaw
    jns short 0x3603
    db 0x64, 0x72, 0x69 ; jb 0x364f
    jbe short 0x364d
    jb short 0x35ea
    or ah, byte [si]
    jo short 0x365a
    popaw
    jns short 0x361f
    db 0x64, 0x72, 0x76 ; jb 0x366a
    db 0x00
dos_con_loc_35f5:
    push ds
    push es
    mov ah, 0x3d
    mov al, 0
    mov bx, cs
    mov ds, bx
    mov dx, 0x33ec
    int 0x21
    jb short 0x363d
    mov word [cs:0x3332], ax
    mov bx, ax
    mov ah, 0x3f
    mov cx, 0x1d00
    mov dx, word [cs:0x2d56]
    mov ds, dx
    mov dx, 0x100
    int 0x21
    mov ah, 0x3e
    mov bx, word [cs:0x3332]
    int 0x21
    mov ax, cs
    mov es, ax
    mov di, 0x2d67
    mov ax, word [cs:0x2d56]
    mov cx, 8
    add di, byte 2
    stosw
    loop 0x3634
    pop es
    pop ds
    ret
    call bios_video_loc_30a3
    mov ax, cs
    mov ds, ax
    mov dx, 0x3451
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    ret
    or ax, 0x70a
    push bp
    outsb
    popaw
    bound bp, dword [si + 0x65]
    and byte [si + 0x6f], dh
    and byte [si + 0x6f], ch
    popaw
    and byte [fs:bp + di + 0x6f], dh
    jne short 0x36d5
    and byte [fs:si + 0x72], ah
    imul si, word [bp + 0x65], 0x72
    or ah, byte [si]
    nop
    add word [0x5056], bx
    push bx
    push cx
    push dx
    mov cx, 0
    mov ds, cx
    mov bx, 0x46c
    db 0x8b, 0xf1 ; mov si, cx
    mov dx, word [bx]
    cmp dx, word [bx]
    db 0x74
math_loc_3689:
    cld
    mov dx, word [bx]
    add cx, byte 1
    jae short 0x3692
    inc si
    cmp dx, word [bx]
    je short 0x368c
    mov dx, si
    mov ax, cx
    mov cx, 0x37
    div cx
    cmp dx, byte 0x1b
    jl short 0x36a5
    inc ax
    mov dx, ax
    mov cl, 3
    shr dx, cl
    sub ax, dx
    shr dx, 1
    add ax, dx
    mov word [cs:0x3472], ax
    pop dx
    pop cx
    pop bx
    pop ax
    pop si
    pop ds
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push word [bp + 0x6]
    call dos_mem_loc_36d0
    add sp, byte 2
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    retf
    ret
    db 0x00, 0x00
dos_mem_loc_36d0:
    push bp
    mov bp, sp
    cld
    push ds
    push si
    push cs
    pop ds
    mov bx, 0x34ce
    mov cx, word [cs:0x3472]
    sub cx, byte 1
    jne short 0x36e6
    nop
    cmp cx, word [bx]
    jne short 0x36e0
    dec word [bp + 0x4]
    jne short 0x36db
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
    cmp word [bp - 0x0002], byte 0
    jne short 0x36fe
    jmp near 0x372d
    db 0x8d
leaf_loc_36ff:

    db 0x36, 0x40, 0x2d, 0x2e, 0x8b, 0x1c, 0x0b, 0xdb, 0x74, 0x24, 0xb4, 0x48, 0x56, 0xcd, 0x21, 0x5e
    db 0x72, 0x09, 0x2e, 0x89, 0x44, 0x02, 0x83, 0xc6, 0x04, 0xeb, 0xe8, 0xe8, 0x43, 0x00

    mov ax, cs
    mov ds, ax
    mov dx, 0x352e
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    ret
    or ax, 0x70a
    push bp
    outsb
    popaw
    bound bp, dword [si + 0x65]
    and byte [si + 0x6f], dh
    and byte [bx + di + 0x6c], ah
    insb
    outsw
    arpl word [bx + di + 0x74], sp
    and byte [gs:bp + di + 0x75], dh
    db 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20 ; imul esp, dword ptr [bp + di + 0x69], 0x20746e65
    insw
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x37ce
    and byte [si + 0x6f], dh
    and byte [bp + si + 0x75], dh
    outsb
    add byte [cs:bp + si], cl
    db 0x24
bios_mouse_loc_3760:
    push es
    sub si, byte 4
    mov bx, word [cs:si]
    or bx, bx
    je short 0x3779
    mov bx, word [cs:si + 0x2]
    mov es, bx
    mov ah, 0x49
    push si
    int 0x21
    pop si
    jmp short 0x3761
    pop es
    ret
bios_mouse_loc_377b:
    push es
    mov si, 0x364a
    mov bx, word [cs:si]
    cmp bx, byte 0xff
    je short 0x3794
    mov es, bx
    mov ah, 0x49
    push si
    int 0x21
    pop si
    add si, byte 2
    jmp short 0x377f
    pop es
    ret
bios_mouse_loc_3796:
    push es
    push si
    lea si, word [0x2d58]
    call bios_mouse_loc_3760
    call bios_mouse_loc_377b
    pop si
    pop es
    ret
bios_mouse_loc_37a5:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short 0x37d0
    mov ax, 0x3533
    int 0x21
    mov ax, es
    or ax, bx
    je short 0x37d0
    cmp byte [es:bx], 0xcf
    je short 0x37d0
    mov ax, 0
    int 0x33
    mov byte [cs:0x2d66], al
    or al, al
    je short 0x37d0
    or word [bp - 0x0002], strict word 0x1000
    ret
    db 'EMMXXXX0'
dos_intvec_loc_37d9:
    push ds
    push es
    mov ah, 0x35
    mov al, 0x67
    int 0x21
    mov di, 0xa
    mov ax, cs
    mov ds, ax
    mov si, 0x35d1
    mov cx, 8
    repe cmpsb
    or cx, cx
    jne short 0x3829
    mov ah, 0x42
    int 0x67
    cmp bx, byte 0x18
    jb short 0x3800
    mov bx, 0x18
    mov word [cs:0x2d60], bx
    mov ah, 0x43
    int 0x67
    or ah, ah
    jne short 0x3829
    mov word [cs:0x2d62], dx
    mov bx, word [cs:0x2d60]
    mov cl, 0xa
    shl bx, cl
    mov word [cs:0x2d60], bx
    mov ah, 0x41
    int 0x67
    mov word [cs:0x2d64], bx
    pop es
    pop ds
    ret
leaf_loc_382c:
    push ds
    push es
    mov dx, word [cs:0x2d62]
    or dx, dx
    je short 0x383b
    mov ah, 0x45
    int 0x67
    pop es
    pop ds
    ret

; ==========================================
; Jump table: 3 entries (offsets 0x383e - 0x392e)
; ==========================================
    db 0x55, 0x8b, 0xec, 0xfc, 0x2e, 0xa1, 0x72, 0x34, 0x8b, 0xe5, 0x5d, 0xc3
    times 20 db 0
    db 0xff, 0xff, 0x55, 0x8b, 0xec, 0xfc, 0x83, 0xec, 0x08, 0x56, 0x57, 0x1e, 0x06, 0x8c, 0xd8, 0x8e
    db 0xc0, 0x2e, 0x8b, 0x1e, 0x4a, 0x2d, 0x8e, 0xdb, 0x33, 0xd2, 0x8b, 0x5e, 0x04, 0xb9, 0x10, 0x00
    db 0xb4, 0x3f, 0xcd, 0x21, 0x73, 0x03, 0xe9, 0xa8, 0x00, 0x33, 0xdb, 0x8b, 0x47, 0x0a, 0x33, 0xc9
    db 0x8a, 0x4f, 0x05, 0xf7, 0xe1, 0x89, 0x46, 0xf8, 0x05, 0x10, 0x01, 0x89, 0x46, 0xfe, 0x89, 0x46
    db 0xfc, 0x8a, 0x47, 0x02, 0x0a, 0xc0, 0x75, 0x20, 0x8a, 0x57, 0x06, 0xf6, 0xc2, 0x02, 0x74, 0x18
    db 0x8b, 0x47, 0x0e, 0x32, 0xed, 0x8a, 0x4f, 0x05, 0xf7, 0xe1, 0x01, 0x46, 0xfc, 0x8a, 0x57, 0x06
    db 0xf6, 0xc2, 0x04, 0x74, 0x03, 0x01, 0x46, 0xfe, 0x8b, 0x56, 0xfc, 0x83, 0xc2, 0x0f, 0xb1, 0x04
    db 0xd3, 0xea, 0x8b, 0xda, 0xb4, 0x48, 0xcd, 0x21, 0x73, 0x03, 0xe9, 0x80, 0x00, 0xbb, 0x4a, 0x36
    db 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xd9, 0x2e, 0x89, 0x07, 0x8e, 0xc0, 0x33, 0xff, 0x33, 0xf6
    db 0xb9, 0x10, 0x00, 0xf3, 0xa4, 0x8e, 0xd8, 0xba, 0x10, 0x00, 0x8b, 0x5e, 0x04, 0x8b, 0x4e, 0xfe
    db 0x2b, 0xca, 0xb4, 0x3f, 0xcd, 0x21, 0x72, 0x29, 0x33, 0xdb, 0x8a, 0x47, 0x06, 0x24, 0x06, 0x3c
    db 0x02, 0x75, 0x16, 0x8a, 0x47, 0x02, 0x0a, 0xc0, 0x75, 0x0f, 0x8c, 0xd8, 0x8e, 0xc0, 0x8b, 0x7f
    db 0x0c, 0xbe, 0x10, 0x01, 0x8b, 0x4e, 0xf8, 0xf3, 0xa4, 0x07, 0x1f, 0x5f, 0x5e, 0x8b, 0xe5, 0x5d
    db 0xc3

    mov ax, cs
    mov ds, ax
    mov dx, 0x373f
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    pop es
    or ax, 0x490a
    das
    dec di
    and byte [di + 0x72], ah
    jb short 0x39b9
    jb short 0x396c
    insb
    outsw
    popaw
    imul bp, word [fs:bp + 0x67], 0x6620
    outsw
    outsb
    je short 0x3966
    or ah, byte [si]
    mov ax, cs
    mov ds, ax
    mov dx, 0x376b
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    pop es
    or ax, 0x4d0a
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x39ed
    and byte [di + 0x72], ah
    jb short 0x39e8
    jb short 0x399b
    insb
    outsw
    popaw
    imul bp, word [fs:bp + 0x67], 0x6620
    outsw
    outsb
    je short 0x3995
    or ah, byte [si]
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    sub sp, byte 8
    push si
    push di
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov ax, word [bp + 0x6]
    mov bx, 0x364a
    shl ax, 1
    db 0x03, 0xd8 ; add bx, ax
    mov ax, word [bx]
    mov ds, ax
    db 0x33, 0xdb ; xor bx, bx
    db 0x32, 0xe4 ; xor ah, ah
    mov al, byte [bp + 0x8]
    mov cx, word [bx + 0xa]
    mul cx
    db 0x8b, 0xca ; mov cx, dx
    db 0x8b, 0xd0 ; mov dx, ax
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0x4]
    int 0x21
    db 0x33, 0xdb ; xor bx, bx
    db 0x32, 0xe4 ; xor ah, ah
    mov al, byte [bp + 0xa]
    shl al, 1
    add bx, byte 0x10
    db 0x03, 0xd8 ; add bx, ax
    db 0x32, 0xe4 ; xor ah, ah
    mov al, byte [bx]
    db 0x33, 0xdb ; xor bx, bx
    mov cx, word [bx + 0xa]
    mul cx
    add ax, 0x110
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, word [bx + 0xa]
    mov bx, word [bp + 0x4]
    mov ah, 0x3f
    int 0x21
    db 0x33, 0xdb ; xor bx, bx
    pop es
    pop ds
    pop di
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    sub sp, byte 8
    push si
    push di
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov ax, word [bp + 0x4]
    mov bx, 0x364a
    shl ax, 1
    db 0x03, 0xd8 ; add bx, ax
    mov ax, word [bx]
    mov ds, ax
    db 0x33, 0xdb ; xor bx, bx
    mov di, word [bp + 0x8]
    db 0x33, 0xc0 ; xor ax, ax
    mov al, byte [bx]
    mov word [es:di], ax
    mov di, word [bp + 0xa]
    mov al, byte [bx + 0x1]
    mov word [es:di], ax
    db 0x32, 0xe4 ; xor ah, ah
    mov al, byte [bp + 0x6]
    shl al, 1
    add bx, byte 0x10
    db 0x03, 0xd8 ; add bx, ax
    db 0x32, 0xe4 ; xor ah, ah
    mov al, byte [bx]
    db 0x33, 0xdb ; xor bx, bx
    mov cx, word [bx + 0xa]
    mul cx
    add ax, 0x110
    mov dx, ds
    pop es
    pop ds
    pop di
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
string_loc_3a50:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dbb]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2dbf]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
string_loc_3a6a:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2db7]
    mov sp, bp
    pop bp
    ret
string_loc_3a77:
    push bp
    mov bp, sp
    cld
    mov ax, word [bp + 0x6]
    mov bx, 0x364a
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x3a91
    call far [cs:0x2db3]
    mov sp, bp
    pop bp
    ret
string_loc_3a95:
    push bp
    mov bp, sp
    cld
    sub sp, byte 4
    push si
    push es
    push ds
    mov ax, ds
    mov es, ax
    mov si, word [bp + 0x4]
    mov word [bp - 0x0002], si
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], byte 1
    xor ax, ax
    lodsb
    or al, al
    je short 0x3ac3
    push word [bp + 0x6]
    push ax
    call string_loc_3a77
    add sp, byte 4
    jmp short 0x3aa9
    pop ds
    pop es
    pop si
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    sub sp, byte 2
    push es
    push si
    mov ax, ds
    mov es, ax
    mov cx, 0xffff
    mov ax, word [bp + 0x6]
    mov bx, 0x364a
    shl ax, 1
    db 0x03, 0xd8 ; add bx, ax
    mov ax, word [cs:bx]
    db 0x0b, 0xc0 ; or ax, ax
    je short 0x3b19
    mov es, ax
    db 0x33, 0xdb ; xor bx, bx
    mov al, byte [es:bx + 0x7]
    cbw
    mov word [bp - 0x0002], ax
    db 0x33, 0xc9 ; xor cx, cx
    mov si, word [bp + 0x4]
    mov bx, 0x10
    xor ah, ah
    mov al, byte [si]
    or al, al
    je short 0x3b19
    shl ax, 1
    add bx, ax
    xor ax, ax
    mov al, byte [es:bx + 0x1]
    add cx, ax
    add cx, word [bp - 0x0002]
    inc si
loc_3b17:
    jmp short 0x3afc
    mov ax, cx
    pop si
    pop es
    mov sp, bp
    pop bp
    ret
loc_3b21:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dc7]
    mov sp, bp
    pop bp
    ret
loc_3b2e:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dc3]
    mov sp, bp
    pop bp
    ret
loc_3b3b:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dcb]
    mov sp, bp
    pop bp
    ret
math_loc_3b48:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dcf]
    mov sp, bp
    pop bp
    ret
math_loc_3b55:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dd3]
    mov sp, bp
    pop bp
    ret
math_loc_3b62:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e27]
    mov sp, bp
    pop bp
    ret
math_loc_3b6f:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2dd7]
    mov sp, bp
    pop bp
    ret
math_loc_3b7c:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e23]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e2b]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
math_loc_3b96:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2ddb]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push di
    push si
    push es
    mov ax, ds
    mov es, ax
    call math_loc_3c0d
    mov ax, word [cs:0x2edc]
    db 0x33, 0xd2 ; xor dx, dx
    mov bx, 0x763d
    div bx
    mov ax, 0x2710
    mul dx
    mov bx, 0x763d
    div bx
    and ax, 0x7fff
    db 0x8b, 0xc8 ; mov cx, ax
math_loc_3bcb:
    mov ax, word [cs:0x2ede]
    xor dx, dx
    mov bx, 0x7663
    div bx
    mov ax, 0x2710
    mul dx
    mov bx, 0x7663
    div bx
    and ax, 0x7fff
    add cx, ax
    and cx, strict word 0x7fff
    mov ax, word [cs:0x2ee0]
    xor dx, dx
    mov bx, 0x7673
    div bx
    mov ax, 0x2710
    mul dx
    mov bx, 0x7673
    div bx
math_loc_3bfe:
    and ax, 0x7fff
    add ax, cx
    and ax, 0x7fff
    pop es
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
math_loc_3c0d:
    push ax
    push bx
    push cx
    push dx
    mov ax, word [cs:0x2edc]
    cwd
    mov bx, 0xb1
    idiv bx
    mov cx, dx
    mov dx, 2
    imul dx
    mov bx, ax
    mov ax, 0xab
    imul cx
    sub ax, bx
    jns short 0x3c30
    add ax, 0x763d
    mov word [cs:0x2edc], ax
    mov ax, word [cs:0x2ede]
    cwd
    mov bx, 0xb0
    idiv bx
    mov cx, dx
    mov dx, 0x23
    imul dx
    mov bx, ax
    mov ax, 0xac
    imul cx
    sub ax, bx
    jns short 0x3c53
    add ax, 0x7663
    mov word [cs:0x2ede], ax
    mov ax, word [cs:0x2ee0]
    cwd
    mov bx, 0xb2
    idiv bx
    mov cx, dx
    mov dx, 0x3f
    imul dx
    mov bx, ax
    mov ax, 0xaa
    imul cx
    sub ax, bx
    jns short 0x3c76
    add ax, 0x7673
    mov word [cs:0x2ee0], ax
    pop dx
    pop cx
    pop bx
    pop ax
    ret

    times 24 db 0

loc_3c97:
    push bp
    mov bp, sp
    cld
    push ds
    push es
    push si
    cld
    mov ax, cs
    mov ds, ax
    mov es, ax
    call math_loc_3c0d
    lea si, word [0x3a7f]
    mov bx, word [si]
    or bx, bx
    je short 0x3d1b
    mov ax, word [bp + 0x4]
    cmp al, 0
    je short 0x3cfe
    cmp al, 2
    je short 0x3ce3
    mov al, byte [si + 0x2]
    cmp al, 8
    je short 0x3cfe
    cmp al, 9
    je short 0x3cfe
    cmp al, 0xa
    je short 0x3cfe
    cmp al, 0xb
    je short 0x3cfe
    cmp al, 0x1b
    je short 0x3cfe
    cmp al, 0xd
    je short 0x3cfe
    cmp al, 0x20
    jb short 0x3d08
    cmp al, 0x60
    jae short 0x3d08
    jmp near 0x3cfe
    mov al, byte [si + 0x2]
    cmp al, 8
    je short 0x3cfe
    cmp al, 0x1b
    je short 0x3cfe
    cmp al, 0xd
    je short 0x3cfe
    cmp al, 0x30
    jb short 0x3d08
    cmp al, 0x3a
    jae short 0x3d08
    jmp short 0x3cfe
    jmp short 0x3cac
    mov ax, 1
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    dec word [si]
    push si
    push di
    add si, byte 3
    mov di, si
    dec di
    mov cx, 0x14
    rep movsb
    pop di
    pop si
    jmp short 0x3cac
    mov ah, 1
    int 0x16
    mov ax, 0
    je short 0x3d01
    mov ax, 1
    cmp word [bp + 0x4], byte 0
    je short 0x3d01
    mov ah, 7
    int 0x21
    mov bx, word [si]
    mov byte [bx + si + 0x2], al
    inc word [si]
    cmp al, 0
    je short 0x3d4b
    cmp al, 0x61
    jb short 0x3cfc
    cmp al, 0x7b
    jae short 0x3cfc
    and word [bx + si + 0x2], strict word 0xdf
    jmp short 0x3cfc
    mov ah, 7
    int 0x21
    mov bx, word [si]
    mov byte [bx + si + 0x1], 8
    cmp al, 0x4b
    je short 0x3cfc
    mov byte [bx + si + 0x1], 9
    cmp al, 0x48
    je short 0x3cfc
    mov byte [bx + si + 0x1], 0xa
    cmp al, 0x4d
    je short 0x3cfc
    mov byte [bx + si + 0x1], 0xb
    cmp al, 0x50
    je short 0x3cfc
    mov byte [bx + si + 0x1], 0
    dec word [si]
    jmp short 0x3d1b
leaf_loc_3d79:
    push bp
    mov bp, sp
    cld
    push si
    push ds
    push es
    cld
    mov ax, cs
    mov ds, ax
    mov es, ax
    lea si, word [0x3a7f]
    mov bx, word [si]
    or bx, bx
    je short 0x3dfe
    mov ax, word [bp + 0x4]
    cmp al, 0
    je short 0x3ddd
    cmp al, 2
    je short 0x3dc2
    mov al, byte [si + 0x2]
    cmp al, 8
    je short 0x3ddd
    cmp al, 9
    je short 0x3ddd
    cmp al, 0xa
    je short 0x3ddd
    cmp al, 0xb
    je short 0x3ddd
    cmp al, 0x1b
    je short 0x3ddd
    cmp al, 0xd
    je short 0x3ddd
    cmp al, 0x20
    jb short 0x3deb
    cmp al, 0x60
    jae short 0x3deb
    jmp near 0x3ddd
    mov al, byte [si + 0x2]
    cmp al, 8
    je short 0x3ddd
    cmp al, 0x1b
    je short 0x3ddd
    cmp al, 0xd
    je short 0x3ddd
    cmp al, 0x30
    jb short 0x3deb
    cmp al, 0x3a
    jae short 0x3deb
    jmp short 0x3ddd
    jmp short 0x3d8b
    dec word [si]
    mov al, byte [si + 0x2]
    mov ah, 0
    pop es
    pop ds
    pop si
    mov sp, bp
    pop bp
    ret
    dec word [si]
    push si
    push di
    add si, byte 3
    mov di, si
    dec di
    mov cx, 0x14
    rep movsb
    pop di
    pop si
    jmp short 0x3d8b
    xor ax, ax
    push ax
    call far [cs:0x2d83]
    pop ax
    mov ah, 7
    int 0x21
    mov ah, 0
    cmp word [bp + 0x4], byte 0
    je short 0x3de4
    mov bx, word [si]
    mov byte [bx + si + 0x2], al
    inc word [si]
    cmp al, 0
    je short 0x3e2d
    cmp al, 0x61
    jb short 0x3ddb
    cmp al, 0x7b
    jae short 0x3ddb
    and word [bx + si + 0x2], strict word 0xdf
    jmp short 0x3ddb
    mov ah, 7
    int 0x21
    mov bx, word [si]
    mov byte [bx + si + 0x1], 8
    cmp al, 0x4b
    je short 0x3e5b
    mov byte [bx + si + 0x1], 9
    cmp al, 0x48
    je short 0x3e5b
    mov byte [bx + si + 0x1], 0xa
    cmp al, 0x4d
    je short 0x3e5b
    mov byte [bx + si + 0x1], 0xb
    cmp al, 0x50
    je short 0x3e5b
    mov byte [bx + si + 0x1], 0
    dec word [si]
    jmp short 0x3dfe
    jmp near 0x3d8b
bios_kbd_loc_3e5e:
    push bp
    mov bp, sp
    cld
    push di
    push si
    push es
    mov ax, ds
    mov es, ax
    mov ax, 0
    mov word [cs:0x3a7f], ax
    mov ah, 1
    int 0x16
    je short 0x3e7c
    mov ah, 0
    int 0x16
    jmp short 0x3e70
    call far [cs:0x2daf]
    pop es
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push es
    push si
    mov ax, ds
    mov es, ax
    mov si, word [bp + 0x4]
    mov bx, word [bp + 0x6]
    db 0x8b, 0xd3 ; mov dx, bx
    mov cl, 3
    shr bx, cl
    mov cx, 7
    db 0x23, 0xca ; and cx, dx
    mov al, 1
    shl al, cl
    db 0x8a, 0xe0 ; mov ah, al
    not ah
    and byte [bx + si], ah
    cmp word [bp + 0x8], byte 0
    je short 0x3eb5
    or byte [bx + si], al
    pop si
    pop es
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push es
    push si
    mov ax, ds
    mov es, ax
    mov si, word [bp + 0x4]
    mov bx, word [bp + 0x6]
    db 0x8b, 0xd3 ; mov dx, bx
    mov cl, 3
    shr bx, cl
    mov cx, 7
    db 0x23, 0xca ; and cx, dx
    mov al, 1
    shl al, cl
    test byte [bx + si], al
    je short 0x3ee3
    mov ax, 1
    jmp short 0x3ee5
    db 0x33, 0xc0 ; xor ax, ax
    pop si
    pop es
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    sub sp, byte 2
    push ds
    push si
    push es
    mov ax, ds
    mov es, ax
    mov ax, 0xffff
    mov cx, word [bp + 0x8]
    db 0x8a, 0xe9 ; mov ch, cl
    mov cl, 0x10
    db 0x2a, 0xcd ; sub cl, ch
    shr ax, cl
    mov word [bp - 0x0002], ax
    and word [bp + 0xa], ax
    mov si, word [bp + 0x4]
    mov bx, word [bp + 0x6]
    mov ax, word [bp + 0x8]
    mul bx
    db 0x8b, 0xd0 ; mov dx, ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, 3
    shr bx, cl
    mov cx, 7
    db 0x23, 0xca ; and cx, dx
    mov ax, word [bp - 0x0002]
    shl ax, cl
    shl word [bp + 0xa], cl
    mov dx, word [bp + 0xa]
    not ax
    and word [bx + si], ax
    or word [bx + si], dx
    pop es
    pop si
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push ds
    push di
    push si
    push es
    mov ax, ds
    mov es, ax
    mov ax, 0xffff
    mov cx, word [bp + 0x8]
    db 0x8a, 0xe9 ; mov ch, cl
    mov cl, 0x10
    db 0x2a, 0xcd ; sub cl, ch
    shr ax, cl
    db 0x8b, 0xf8 ; mov di, ax
    mov si, word [bp + 0x4]
    mov bx, word [bp + 0x6]
    mov ax, word [bp + 0x8]
    mul bx
    db 0x8b, 0xd0 ; mov dx, ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov cl, 3
    shr bx, cl
    mov cx, 7
    db 0x23, 0xca ; and cx, dx
    db 0x8b, 0xc7 ; mov ax, di
    mov dx, word [bx + si]
    shr dx, cl
    db 0x23, 0xc2 ; and ax, dx
    pop es
    pop si
    pop di
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push es
    push si
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shr bx, cl
    mov cx, word [bp + 0x8]
    db 0x8a, 0xe9 ; mov ch, cl
    mov cl, 0x10
    db 0x2a, 0xcd ; sub cl, ch
    mov ax, 0xffff
    shr ax, cl
    db 0x23, 0xc3 ; and ax, bx
    pop si
    pop es
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov cx, 0x400
    mov bx, word [cs:0x2d4e]
    mov ds, bx
    db 0x33, 0xd2 ; xor dx, dx
    mov bx, word [bp + 0x4]
    mov ah, 0x3f
    int 0x21
    jb short 0x3fce
    pop es
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x3dde
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    pop es
    or ax, 0x490a
    das
    dec di
    and byte [di + 0x72], ah
    jb short 0x4058
    jb short 0x400b
    insb
    outsw
    popaw
    imul bp, word [fs:bp + 0x67], 0x4d20
    imul si, word [bp + di + 0x63], 0x202e
    je short 0x405c
    bound bp, dword [si + 0x65]
    cs or ax, 0x240a
string_loc_4002:
    push bp
    mov bp, sp
    cld
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov ax, word [cs:0x2d4e]
    mov es, ax
    lodsb
    xor ah, ah
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 8
    lodsb
    cmp word [bp - 0x0004], byte 0
    je short 0x403a
    call string_loc_4046
    mov byte [di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short 0x4029
    mov word [di], 0
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
string_loc_4046:
    mov cx, word [bp - 0x0002]
    xor bx, bx
    shl al, 1
    jb short 0x406c
    test word [es:bx], 0x8000
    jne short 0x405b
    mov bx, word [es:bx]
    jmp short 0x4086
    mov bx, word [es:bx]
    neg bx
    shl bx, 1
    shl bx, 1
    loop 0x404b
    mov cx, 8
    lodsb
    jmp short 0x404b
    test word [es:bx + 0x2], 0x8000
    jne short 0x407a
    mov bx, word [es:bx + 0x2]
    jmp short 0x4086
    mov bx, word [es:bx + 0x2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short 0x4064
    dec cx
    jne short 0x408d
    mov cx, 8
    lodsb
    mov word [bp - 0x0002], cx
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push es
    push di
    mov ax, ds
    mov es, ax
    cld
    mov di, word [bp + 0x4]
    db 0x8b, 0xdf ; mov bx, di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    db 0x8b, 0xcf ; mov cx, di
    db 0x2b, 0xcb ; sub cx, bx
    dec cx
    db 0x8b, 0xfb ; mov di, bx
    mov al, byte [bp + 0x6]
    repne scasb
    dec di
    cmp al, byte [es:di]
    jne short 0x40c1
    db 0x8b, 0xc7 ; mov ax, di
    db 0x2b, 0xc3 ; sub ax, bx
    jmp near 0x40c4
    mov ax, 0xffff
    pop di
    pop es
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    sub sp, byte 6
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cld
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    db 0x8b, 0xdf ; mov bx, di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    db 0x8b, 0xcf ; mov cx, di
    db 0x2b, 0xcb ; sub cx, bx
    dec cx
    mov word [bp - 0x0002], cx
    db 0x8b, 0xfb ; mov di, bx
    mov al, byte [si]
    repne scasb
    dec di
    cmp al, byte [es:di]
    jne short 0x4129
    db 0x8b, 0xd7 ; mov dx, di
    db 0x2b, 0xd3 ; sub dx, bx
    push si
    push di
    inc si
    inc di
    mov al, byte [si]
    cmp al, 0
    je short 0x4123
    cmp byte [es:di], 0
    je short 0x4116
    cmp al, byte [es:di]
    je short 0x4103
    pop di
    pop si
    inc di
    mov cx, word [bp - 0x0002]
    db 0x2b, 0xca ; sub cx, dx
    dec cx
    je short 0x4129
    jmp short 0x40f3
    pop si
    pop di
    db 0x8b, 0xc2 ; mov ax, dx
    jmp short 0x412c
    mov ax, 0xffff
    pop di
    pop si
    pop es
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e3b]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_4141:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e37]
    mov sp, bp
    pop bp
    ret
loc_414e:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e3f]
    mov sp, bp
    pop bp
    ret
loc_415b:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e43]
    mov sp, bp
    pop bp
    ret
loc_4168:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e47]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x6]
    db 0x8a, 0xe0 ; mov ah, al
    mov al, 0xff
    push ax
    push word [bp + 0x4]
    db 0x33, 0xc0 ; xor ax, ax
    push ax
    push ax
    push ax
    push ax
    push ax
    call far [cs:0x2d7b]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_41a3:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e4b]
    mov sp, bp
    pop bp
    ret
    db 0x55, 0x8b, 0xec, 0xfc
loc_41b4:
    call far [cs:0x2e4f]
    mov sp, bp
    pop bp
    ret
    db 0x55, 0x8b, 0xec, 0xfc, 0x2e, 0xff
loc_41c3:
    push ds
    push bx
    cs mov sp, bp
    pop bp
    ret
loc_41ca:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e57]
    mov sp, bp
    pop bp
    ret
loc_41d7:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e5b]
    mov sp, bp
    pop bp
    ret
loc_41e4:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2e5f]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2d9b]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2ddf]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e13]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2d9f]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2da3]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e17]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    db 0x2e
loc_4244:
    call far [0x2def]
    mov sp, bp
    pop bp
    ret
    db 0x55, 0x8b, 0xec, 0xfc
loc_4250:
    call far [cs:0x2df3]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2da7]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2dab]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2d87]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
bios_mouse_loc_4280:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2d8b]
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_428d:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2d8f]
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_429a:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2de3]
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_42a7:
    push bp
    mov bp, sp
    cld
    call far [cs:0x2de7]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x2d66], 0
    je short 0x42d5
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov dx, word [bp + 0x6]
    mov ax, 4
    int 0x33
    pop di
    pop si
    pop es
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2deb]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2df7]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2dfb]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2dff]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e03]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e07]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e0b]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e0f]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
loc_4349:
    call far [cs:0x2e1b]
    mov sp, bp
    pop bp
    ret
    db 0x55
loc_4353:
    mov bp, sp
    cld
    call far [cs:0x2e1f]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e2f]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    call far [cs:0x2e33]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_4379:
    mov bx, sp
    mov ax, word [bx + 0x2]
    mov word [0x0cfa], ax
    call loc_4386
    jmp ax
loc_4386:
    push bp
    mov bp, sp
    add sp, byte 0xae
    push di
    push si
    push word [0x0cfa]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0xc48
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call loc_4b50
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x43c8
    mov ax, 0xa
    push ax
    call dos_file_loc_4462
    pop cx
    mov ax, 0xe
    push ax
    lea ax, word [bp - 0x0012]
    push ax
    push word [bp - 0x0002]
    call dos_file_loc_4fb6
    add sp, byte 6
    cmp ax, strict word 0xe
    je short 0x43e6
    mov ax, 0x14
    push ax
    call dos_file_loc_4462
    pop cx
    cmp word [bp - 0x0012], strict word 0xf2
    je short 0x43f5
    mov ax, 0x1e
    push ax
    call dos_file_loc_4462
    pop cx
    mov ax, word [bp - 0x000c]
    add ax, word [bp - 0x000a]
    add ax, word [bp - 0x0008]
    cmp ax, word [0x0c78]
    jbe short 0x440c
    mov ax, 0x28
    push ax
    call dos_file_loc_4462
    pop cx
    cmp word [bp - 0x0010], strict word 0x5055
    jb short 0x441a
    cmp word [bp - 0x000c], strict word 0x9098
    jae short 0x4422
    mov ax, 0x3c
    push ax
    call dos_file_loc_4462
    pop cx
    push word [bp - 0x000e]
    push word [bp - 0x0010]
    push word [bp - 0x0002]
    call dos_read_file
loc_442e:
    add sp, byte 6
    cmp ax, word [bp - 0x000e]
    jb short 0x444a
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x0002]
    call dos_file_loc_4fb6
    add sp, byte 6
    cmp ax, word [bp - 0x000a]
loc_4448:
    jae short 0x4452
    mov ax, 0x32
    push ax
dos_file_loc_444e:
    call dos_file_loc_4462
    pop cx
    push word [bp - 0x0002]
    call 0x4fec
    pop cx
    mov ax, word [bp - 0x0006]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
dos_file_loc_4462:
    push bp
    mov bp, sp
    add sp, byte 0xb0
    push word [0x0cfa]
    push word [bp + 0x4]
    mov ax, 0xc4d
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call string_loc_44d4
    add sp, byte 8
    lea ax, word [bp - 0x0050]
    push ax
    mov ax, 9
    push ax
    call dos_file_loc_4497
    add sp, byte 4
    mov ax, 0x64
    push ax
    call loc_4f73
    pop cx
    mov sp, bp
    pop bp
    ret
dos_file_loc_4497:
    push bp
    mov bp, sp
    push es
    mov ax, word [bp + 0x4]
    test ah, ah
    jne short 0x44a4
    xchg al, ah
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    int 0x21
    mov dx, es
    pop es
    and ax, 0xff
    pop bp
    ret
dos_read_file:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4]
    push ds
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov ax, cs
    mov ds, ax
    mov ah, 0x3f
    int 0x21
    pop ds
    jae short 0x44d2
    mov word [0x0c72], ax
    mov ax, 0xffff
    pop bp
    ret
string_loc_44d4:
    push bp
    mov bp, sp
    push si
    mov ax, word [bp + 0x4]
    mov word [0x0cfc], ax
    lea ax, word [bp + 0x8]
    push ax
    push word [bp + 0x6]
    mov ax, 0x42ff
    push ax
    call string_loc_4867
    add sp, byte 6
    mov si, ax
    mov bx, word [0x0cfc]
    mov byte [bx], 0
    mov ax, si
    pop si
    mov sp, bp
    pop bp
    ret
    db 0x55
string_loc_4500:
    mov bp, sp
    mov al, byte [bp + 0x4]
    mov bx, word [0x0cfc]
    inc word [0x0cfc]
    mov byte [bx], al
    cbw
    and ax, 0xff
    mov sp, bp
    pop bp
    ret
string_loc_4517:
    push bp
    mov bp, sp
    push di
    push si
    push ds
    push es
    pushf
    cld
    mov cx, word [bp + 0xc]
    les di, word [bp + 0x8]
    lds si, word [bp + 0x4]
    cmp cx, byte 4
    jne short 0x452f
    cli
    test cx, cx
    jne short 0x4538
    mov cx, 0x8000
    jmp short 0x453e
    mov dx, cx
    shr cx, 1
    je short 0x4540
    rep movsw
    test dl, 1
    je short 0x4546
    movsb
    popf
    pop es
    pop ds
    pop si
    pop di
    pop bp
    ret
    db 0x55, 0x8b, 0xec, 0x9c, 0xfc
string_loc_4552:
    push di
string_loc_4553:
    mov di, ds
string_loc_4555:
    mov es, di
    mov di, word [bp + 0x4]
    mov cx, word [bp + 0x6]
    mov al, byte [bp + 0x8]
    mov ah, al
    mov dx, cx
    shr cx, 1
    je short 0x456a
    rep stosw
    test dl, 1
    je short 0x4570
    stosb
    pop di
    popf
    pop bp
    ret
strlen:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short 0x4582
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    dec di
    mov si, word [bp + 0x6]
    mov cx, dx
    lodsb
    stosb
    test al, al
    loopne 0x4599
    je short 0x45a4
    sub al, al
    stosb
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
strlen_2:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    mov cx, 0xffff
    mov al, 0
    repne scasb
    not cx
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    shr cx, 1
    jcxz 0x45cd
    rep movsw
    jae short 0x45d0
    movsb
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
dos_alloc_mem:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    test dx, dx
    js short 0x4606
    add ax, strict word 0xf
    adc dx, byte 0
    mov cx, 4
    shr dx, 1
    rcr ax, 1
    loop 0x45ed
    test dx, dx
    jne short 0x4606
    mov bx, ax
    mov ah, 0x48
    int 0x21
    jb short 0x4606
    mov dx, ax
    mov ax, 0
    jmp short 0x460b
    mov ax, 0
    mov dx, ax
    pop bp
    ret
dos_free_mem:
    push bp
    mov bp, sp
    push es
    mov es, word [bp + 0x6]
    mov ah, 0x49
    int 0x21
    jae short 0x4620
    mov ax, 0xffff
    jmp near 0x4622
    xor ax, ax
    pop es
    pop bp
    ret
    db 0x55, 0x8b, 0xec, 0x8b, 0x46, 0x08
dos_mem_loc_462b:
    mov dx, word [bp + 0xa]
    mov cx, 4
    shr dx, 1
    rcr ax, 1
    loop 0x4631
    mov bx, ax
    mov ah, 0x4a
    mov es, word [bp + 0x6]
    int 0x21
    jb short 0x464a
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    pop bp
    ret
    xor ax, ax
    xor dx, dx
    jmp short 0x4648
    db 0x3a, 0x4b
loc_4652:
    pop bx
    push bp
    mov bp, sp
    add sp, ax
    cmp sp, bp
    ja short 0x4676
    cmp sp, word [0x0c7a]
    jb short 0x4676
    cmp sp, word [0x0c7e]
    ja short 0x466c
    mov word [0x0c7e], sp
    push di
    push si
    call bx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov sp, bp
    jmp near 0x4f87

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x8b, 0x44, 0xfe, 0x25, 0xfe

loc_468b:
    dec word [bx + di - 0x01ba]
    sub ax, si
    mov word [bp - 0x0004], ax
    cmp ax, word [bp + 0x6]
    jbe short 0x46a6
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    mov cx, si
    add cx, ax
    mov word [bp - 0x0002], cx
    push si
    call math_loc_47e8
    pop cx
    push word [bp + 0x6]
    call loc_46ea
    pop cx
    mov di, ax
    test di, di
    je short 0x46e2
    cmp di, si
    je short 0x46e2
    push word [bp - 0x0004]
    push di
    push si
    call 0x5123
    add sp, byte 6
    cmp si, word [0x0d00]
    ja short 0x46e2
    mov ax, word [0x0d00]
    cmp ax, word [bp - 0x0002]
    jae short 0x46e2
    mov ax, word [0x0cfe]
    mov cx, word [0x0d00]
    sub cx, si
    mov bx, cx
    mov word [bx + di], ax
    mov ax, di
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
loc_46ea:
    push bp
    mov bp, sp
    add sp, byte 0xfa
    push di
    push si
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    shr ax, 1
    shl ax, 1
    mov word [bp + 0x4], ax
    cmp word [0x0d00], byte 0
    jne short 0x4718
    mov word [0x0d02], 0xd02
    or word [0x0d02], 1
    mov word [0x0d00], 0xd02
    mov word [bp - 0x0006], 0
    mov si, word [0x0d00]
    mov word [bp - 0x0002], si
    cmp si, word [0x0c6c]
    jne short 0x478b
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 1
    jle short 0x478b
    mov word [bp - 0x0004], 0x400
    push word [bp - 0x0004]
    call 0x5188
    pop cx
    mov di, ax
    mov ax, di
leaf_loc_4745:
    cmp ax, strict word 0xffff
    jne short 0x4753
    mov ax, 0
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov ax, si
    add ax, strict word 2
    cmp di, ax
    je short 0x476a
    mov word [si], di
    or word [si], 1
    dec word [bp - 0x0004]
    dec word [bp - 0x0004]
    mov si, di
    mov di, si
    add di, word [bp - 0x0004]
    mov word [si], di
    mov word [di], 0xd02
    or word [di], 1
    mov word [0x0c6c], di
    mov bx, word [bp - 0x0002]
    mov ax, word [bx]
    and ax, strict word 0xfffe
    cmp ax, si
    jne short 0x478b
    mov si, bx
    test word [si], 1
    jne short 0x47db
    mov word [bp - 0x0002], si
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov di, ax
    mov bx, di
    test word [bx], 1
    jne short 0x47a9
    mov ax, word [di]
    mov word [si], ax
    jmp short 0x4794
    sub bx, si
    mov word [bp - 0x0004], bx
    cmp bx, word [bp + 0x4]
    jb short 0x47db
    cmp bx, word [bp + 0x4]
    jbe short 0x47ca
    mov ax, si
    add ax, word [bp + 0x4]
    mov word [si], ax
    mov bx, ax
    mov ax, word [bx]
    mov word [0x0cfe], ax
    mov bx, word [si]
    mov word [bx], di
    mov ax, word [si]
    mov word [0x0d00], ax
    or word [si], 1
    mov ax, si
    add ax, strict word 2
    jmp near 0x474d
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov si, ax
    jmp near 0x4724
    jmp near 0x474d
math_loc_47e8:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 0x4]
    add si, byte 0xfe
    test word [si], 1
    jne short 0x4800
    mov ax, 0xffff
    pop si
    mov sp, bp
    pop bp
    ret
    and word [si], strict word 0xfffe
    mov word [0x0d00], si
    mov ax, 0
    jmp short 0x47fb
    dec sp
    insb
    push 0x4e46
    outsw
    js short 0x486d
    jne short 0x487b
    imul si, word [bp + di + 0x63], 0x6e70
    db 0x65, 0x45 ; inc bp
    db 0x66, 0x67, 0x47 ; inc edi
    and ax, 0x470f
    push ss
    inc di
    sbb al, byte [bx + 0x1d]
    inc di
    sbb al, byte [bx + 0x24]
    inc di
    sub ax, 0x2947
    inc di
    xor al, byte [bx + 0x37]
    inc di
    aaa
    inc di
    pop bx
    dec ax
    jp short 0x4884
    lahf
    dec ax
    mov byte [0x4a48], al
    dec ax
    inc sp
    dec ax
    dec dx
    dec ax
    dec dx
    dec ax
    inc sp
    dec ax
    db 0x82, 0x46, 0x30, 0x31 ; add byte ptr [bp + 0x30], 0x31
    xor dh, byte [bp + di]
    xor al, 0x35
    ss aaa
    cmp byte [bx + di], bh
    popaw
    bound sp, dword [bp + di + 0x64]
    db 0x65, 0x66, 0x20, 0x2d ; and byte ptr gs:[di], ch
    insb
    insw
    and byte [bp + 0x69], ah
    jb short 0x48d8
    je short 0x4867
string_loc_4867:
    push bp
    mov bp, sp
    sub sp, strict word 0x154
    push di
    push si
    cld
    mov si, word [bp + 0x6]
    mov word [bp - 0x0002], 0
    mov byte [bp - 0x000b], 0
    lodsb
    cmp al, 0x25
    je short 0x4894
    test al, al
    je short 0x488b
    call string_loc_4ad0
    jmp short 0x4879
    mov ax, word [bp - 0x0002]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov byte [bp - 0x000c], 0x20
    mov byte [bp - 0x000e], 0
    mov byte [bp - 0x000d], 0
    mov word [bp - 0x0006], 0xffff
    lodsb
    cmp al, 0x2d
    jne short 0x48b0
    or byte [bp - 0x000b], 8
    jmp short 0x48a5
    cmp al, 0x2b
    jne short 0x48ba
    mov byte [bp - 0x000e], 0x2b
    jmp short 0x48a5
    cmp al, 0x20
    jne short 0x48ca
    cmp byte [bp - 0x000e], 0
    jne short 0x48a5
    mov byte [bp - 0x000e], 0x20
    jmp short 0x48a5
    cmp al, 0x23
    jne short 0x48d4
    or byte [bp - 0x000b], 0x10
    jmp short 0x48a5
    cmp al, 0x30
    jne short 0x48dd
    mov byte [bp - 0x000c], 0x30
    lodsb
    call string_loc_4b07
    test dx, dx
    jns short 0x48ea
    neg dx
    or byte [bp - 0x000b], 8
    mov word [bp - 0x0004], dx
    cmp al, 0x2e
    jne short 0x48f8
    lodsb
    call string_loc_4b07
    mov word [bp - 0x0006], dx
    mov di, cs
    mov es, di
    mov di, 0x460d
    mov cx, 0x15
    repne scasb
    sub di, strict word 0x460e
    shl di, 1
    jmp [cs:di + 0x4622]
    or byte [bp - 0x000b], 1
    lodsb
    jmp short 0x48fc
    or byte [bp - 0x000b], 2
    lodsb
    jmp short 0x48fc
    or byte [bp - 0x000b], 4
    lodsb
    jmp short 0x48fc
    mov cx, 8
    jmp short 0x493a
    or byte [bp - 0x000b], 0x20
    mov cx, 0x10
    jmp short 0x493a
    mov cx, 0xa
    jmp short 0x493a
    mov cx, 0xff0a
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov ax, word [es:di]
    db 0x83, 0xc7
math_loc_4944:
    add dh, dh
    inc si
    cmc
    add dh, byte [si + 0x8]
    mov dx, word [es:di]
math_loc_494e:
    add di, byte 2
    jmp short 0x495a
    db 0x2b, 0xd2, 0x84
io_loc_4956:
    in ax, dx
    je short 0x4973
    cwd
    test ch, ch
    je short 0x4973
    mov ch, byte [bp - 0x000e]
    mov byte [bp - 0x000d], ch
    test dx, dx
    jns short 0x4973
    mov byte [bp - 0x000d], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
    mov word [bp + 0x8], di
    cmp word [bp - 0x0006], byte 0
    jge short 0x4981
    mov word [bp - 0x0006], 1
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x0140]
    test dx, dx
    jne short 0x4993
    test ax, ax
    je short 0x49b6
    sub bx, bx
    cmp cx, dx
    ja short 0x49a7
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short 0x49a9
    div cx
    xchg bx, dx
    mov bl, byte [cs:bx + 0x464c]
    dec di
    mov byte [es:di], bl
    jmp short 0x498b
    test byte [bp - 0x000b], 0x10
    je short 0x49d1
    cmp cl, 0xa
    je short 0x49d1
    cmp cl, 0x10
    jne short 0x49cc
    mov byte [bp - 0x000d], 0x78
    jmp short 0x49d1
    dec di
    mov byte [es:di], 0x30
    lea cx, word [bp - 0x0140]
    sub cx, di
    mov ax, word [bp - 0x0006]
    sub ax, cx
    mov word [bp - 0x0006], ax
    jle short 0x49e4
    sub word [bp - 0x0004], ax
    mov word [bp - 0x0008], cx
    cmp byte [bp - 0x000d], 0
    je short 0x49f9
    cmp byte [bp - 0x000d], 0x78
    jne short 0x49f6
    dec word [bp - 0x0004]
    dec word [bp - 0x0004]
    sub word [bp - 0x0004], cx
    jle short 0x4a18
    test byte [bp - 0x000b], 8
    jne short 0x4a18
    cmp byte [bp - 0x000c], 0x30
    jne short 0x4a0d
    call 0x4aba
    mov al, byte [bp - 0x000c]
    call string_loc_4ad0
    dec word [bp - 0x0004]
    jg short 0x4a0d
    call 0x4aba
    dec word [bp - 0x0006]
    js short 0x4a27
    mov al, 0x30
    call string_loc_4ad0
    jmp short 0x4a1b
    dec word [bp - 0x0008]
    js short 0x4a35
    mov al, byte [es:di]
    inc di
    call string_loc_4ad0
    jmp short 0x4a27
    dec word [bp - 0x0004]
    js short 0x4a41
    mov al, 0x20
    call string_loc_4ad0
    jmp short 0x4a35
    jmp near 0x4879
    or byte [bp - 0x000b], 0x20
    add al, 0x20
    add word [bp + 0x8], byte 8
    mov ax, cs
    mov es, ax
    mov di, 0x465c
    sub word [bp - 0x0004], byte 0x0a
    jmp short 0x4a27
    call 0x4aed
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 0x0006]
    jbe short 0x4a71
    mov cx, word [bp - 0x0006]
    pop di
    mov word [bp - 0x0006], 0
    jmp near 0x49e4
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov al, byte [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    mov byte [bp - 0x0154], al
    mov cx, 1
    mov ax, ss
    mov es, ax
    lea di, word [bp - 0x0154]
    mov word [bp - 0x0006], 0
    jmp near 0x49e4
    jmp near 0x4879
    call 0x4aed
    mov ax, word [bp - 0x0002]
    mov word [es:di], ax
    test byte [bp - 0x000b], 2
    je short 0x4ab7
    db 0x26, 0xc7, 0x45
string_loc_4ab4:
    add al, byte [bx + si]
    add cl, ch
    mov di, 0x8afd
    inc si
    db 0xf3, 0x84, 0xc0 ; test al, al
    je short 0x4aec
    cmp al, 0x78
    jne short 0x4acc
    mov al, 0x30
    call string_loc_4ad0
    mov al, 0x78
    mov byte [bp - 0x000d], 0
string_loc_4ad0:
    inc word [bp - 0x0002]
    test byte [bp - 0x000b], 0x20
    je short 0x4ae3
    cmp al, 0x61
    jb short 0x4ae3
    cmp al, 0x7a
    ja short 0x4ae3
    sub al, 0x20
    push es
    sub ah, ah
    push ax
    call [bp + 0x4]
    pop ax
    pop es
    ret
    push ds
    pop es
    mov di, word [bp + 0x8]
    test byte [bp - 0x000b], 4
    jne short 0x4aff
    mov di, word [di]
    add word [bp + 0x8], byte 2
    ret
    les di, word [es:di]
    add word [bp + 0x8], byte 4
    ret
string_loc_4b07:
    cmp al, 0x2a
    jne short 0x4b1b
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    lodsb
    ret
    sub dx, dx
    mov ah, 0
    cmp al, 0x30
    jb short 0x4b38
    cmp al, 0x39
    ja short 0x4b38
    sub al, 0x30
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short 0x4b1f
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x6]
    mov ax, 0x301
    push ax
    push word [bp + 0x4]
    call loc_4b50
    add sp, byte 6
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_4b50:
    push bp
    mov bp, sp
loc_4b53:
    push di
    push si
    mov ax, word [bp + 0x6]
    and ax, 0xf3
    mov di, ax
    or ax, 0x3d00
    mov di, ax
    test word [bp + 0x6], 0x200
    je short 0x4b6c
    mov di, 0x3c00
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push di
    call dos_mem_loc_4cf4
    add sp, byte 6
    mov si, ax
    mov ax, si
    cmp ax, strict word 0xffff
    jne short 0x4b9f
    test word [bp + 0x6], 0x100
    je short 0x4b9d
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0x3c
    push ax
    call dos_mem_loc_4cf4
    add sp, byte 6
    mov si, ax
    jmp short 0x4bba
    test word [bp + 0x6], 0x400
    je short 0x4bba
    push si
    call 0x4fec
    pop cx
    mov word [0x0c72], 0x13
    mov ax, 0xffff
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    cmp si, byte 0
    jl short 0x4be2
    test word [bp + 0x6], 0x800
    je short 0x4bd9
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push si
    call 0x5004
    add sp, byte 8
    push si
    call 0x5168
    pop cx
    mov byte [si + 0xcdc], al
    mov ax, si
    jmp short 0x4bb4
math_loc_4be6:
    push di
    sub di, di
    test dx, dx
    jns short 0x4bf5
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
    test bx, bx
    jns short 0x4c04
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1
    call math_loc_4c40
    test di, di
    je short 0x4c12
    neg dx
    neg ax
    sbb dx, byte 0
    pop di
    ret
math_loc_4c14:
    push di
    mov di, 0
    test dx, dx
    jns short 0x4c24
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
    test bx, bx
    jns short 0x4c2f
    neg bx
    neg cx
    sbb bx, byte 0
    call math_loc_4c40
    mov ax, cx
    mov dx, bx
    jmp short 0x4c07
    call math_loc_4c40
    db 0x8b, 0xc1 ; mov ax, cx
    db 0x8b, 0xd3 ; mov dx, bx
    ret
math_loc_4c40:
    test bx, bx
math_loc_4c42:
    jne short 0x4c62
    cmp cx, dx
    ja short 0x4c5b
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    mov cx, dx
    mov dx, bx
    sub bx, bx
    ret
    div cx
    mov cx, dx
    mov dx, bx
    ret
    push di
    push si
    mov si, cx
    mov di, bx
    push dx
    push ax
    test bh, bh
    je short 0x4c7c
    mov cl, ch
    mov ch, bl
    mov bl, bh
    mov al, ah
    mov ah, dl
    mov dl, dh
    sub dh, dh
    shr dx, 1
    rcr ax, 1
    shr bl, 1
    rcr cx, 1
    test bl, bl
    jne short 0x4c7c
    div cx
    mov cx, ax
    mul si
    mov bx, dx
    push ax
    mov ax, cx
    mul di
    add bx, ax
    jae short 0x4cc0
    dec cx
    pop ax
    mov ax, cx
    mul di
    mov bx, ax
    mov ax, cx
    mul si
    add bx, dx
    mov es, cx
    mov cx, ax
    pop ax
    pop dx
    sub cx, ax
    sbb bx, dx
    not cx
    not bx
    add cx, byte 1
    adc bx, byte 0
    mov ax, es
    jmp near 0x4cd2
    mov dx, bx
    mov ax, cx
    pop bx
    pop cx
    sub cx, bx
    pop bx
    sbb bx, dx
    jae short 0x4cd2
    add cx, si
    adc bx, di
    dec ax
    sub dx, dx
    pop si
    pop di
    ret
strlen_3:
    push bp
    mov bp, sp
    cld
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    mov bx, di
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    mov ax, di
    sub ax, bx
    dec ax
    pop di
    pop bp
    ret
dos_mem_loc_4cf4:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    test ah, ah
    jne short 0x4d00
    xchg al, ah
dos_mem_loc_4d00:
    cmp ah, 0xa
    jb short 0x4d2c
    push si
    push es
    cmp ah, 0x47
    jne short 0x4d14
    mov dx, word [bp + 0x8]
    mov si, word [bp + 0x6]
    jmp short 0x4d1a
    mov cx, word [bp + 0x8]
    mov dx, word [bp + 0x6]
    int 0x21
    mov dx, es
    pop es
    jae short 0x4d29
    mov word [0x0c72], ax
    mov ax, 0xffff
    mov dx, ax
    pop si
    pop bp
    ret
    mov dx, word [bp + 0x6]
    int 0x21
    and ax, 0xff
    pop bp
    ret
    times 4 db 0
    mov bp, 0xff6
    test bp, bp
    jne short 0x4d43
dos_mem_loc_4d41:
    mov bp, ds
dos_mem_loc_4d43:
    mov word [cs:0x4b38], ds
    mov bx, word [0x0002]
    sub bx, bp
    cmp bx, strict word 0x1000
    jbe short 0x4d63
    lea bx, word [bp + 0x1000]
    mov ax, es
    sub bx, ax
    mov ah, 0x4a
    int 0x21
    mov bx, 0x1000
    mov es, bp
    mov word [es:0x0c80], ds
    mov cl, 4
    shl bx, cl
    db 0x26, 0x83, 0x3e, 0xda, 0x0c, 0x00 ; cmp word ptr es:[0xcda], 0
    je short 0x4d8d
    mov ax, word [es:0x0cd6]
    shl ax, 1
    mov bx, word [es:0x0cd4]
    shl bx, cl
    cmp bx, ax
    ja short 0x4d89
    mov bx, ax
    add bx, strict word 0x9098
    cli
    mov ss, bp
    mov sp, bx
    sti
    test bx, bx
    jne short 0x4d9a
    mov bx, 0xffff
    mov word [es:0x0c7c], bx
    db 0x26, 0x83, 0x3e, 0xda, 0x0c, 0x00 ; cmp word ptr es:[0xcda], 0
    je short 0x4ddd
    mov si, word [es:0x0cd8]
    mov ax, bx
    inc ax
    mov word [es:0x0c70], ax
    shl si, cl
    add bx, si
    jae short 0x4dbc
    mov bx, 0xffff
    mov word [es:0x0c7c], bx
    add bx, byte 0x0f
    shr bx, cl
    mov ax, es
    add bx, ax
    mov ax, ds
    sub bx, ax
    mov bp, es
    mov es, ax
    mov ah, 0x4a
    int 0x21
    jae short 0x4ddd
    mov al, 0xfe
    jmp near 0x4e80
    mov es, bp
    cld
    mov di, 0xcf6
    mov cx, 0x9098
    sub cx, di
    inc cx
    shr cx, 1
    jcxz 0x4df1
    sub ax, ax
    rep stosw
    mov es, word [0x002c]
    sub di, di
    mov cx, 0x7fff
    mov ah, byte [es:di]
    cmp ah, 0x3d
    je short 0x4e18
    test ah, ah
    je short 0x4e0a
    repne scasb
    je short 0x4dfa
    mov cl, byte [0x0080]
    sub ch, ch
    mov si, 0x81
    mov ax, 1
    jmp short 0x4e21
    sub ax, ax
    stosb
    mov si, di
    mov di, es
    mov ds, di
    push ax
    mov es, bp
    mov di, word [es:0x0c70]
    push di
    jcxz 0x4e34
    lodsb
    test al, al
    je short 0x4e34
    stosb
    loop 0x4e2c
    sub al, al
    stosb
    mov ds, bp
    inc di
    and di, strict word 0xfffe
    mov word [0x0c70], di
    mov word [0x0c78], di
    mov word [0x0c7a], 0x9098
    cmp word [0x0cda], byte 0
    jne short 0x4e57
    mov word [0x0c7a], di
    mov ax, word [0x0c7a]
    add ax, word [0x0cd6]
    mov word [0x0c7a], ax
    mov word [0x0c74], ds
    mov word [0x0c76], cs
    call dos_file_loc_4f85
    jb short 0x4e73
    call loc_4ea7
    jmp short 0x4e80
    mov ah, 9
    mov dx, 0xc82
    int 0x21
    mov al, 0xfd
    jmp short 0x4e80
dos_proc_loc_4e7e:
    pop ax
    pop ax
    mov ah, 0x4c
    int 0x21
    jmp far [cs:0x4b36]
    db 0x00, 0x00
loc_4e8b:
    add byte [bx + si], al
    pop word [cs:0x4c89]
    pop word [cs:0x4c8b]
    pop ds
    call loc_4ea0
    jmp far [cs:0x4c89]
loc_4ea0:
    push di
    push si
    retf
    mov ax, 0
    ret
loc_4ea7:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov ax, 0
    push ax
    call 0x5168
    pop cx
    mov byte [0x0cdc], al
    mov ax, 1
    push ax
    call 0x5168
    pop cx
    mov byte [0x0cdd], al
    mov ax, 2
    push ax
    call 0x5168
    pop cx
    mov byte [0x0cde], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    inc ax
    inc ax
    push ax
    call 0x5188
    pop cx
    mov word [0x0d06], ax
    mov ax, 0xc9e
    mov bx, word [0x0d06]
    mov word [bx], 0xc9e
    mov ax, word [bp + 0x6]
    mov word [0x0d04], ax
    shl ax, 1
    mov di, word [0x0d06]
    add di, ax
    cmp byte [si], 0x20
    je short 0x4f02
    cmp byte [si], 9
    jne short 0x4f05
    inc si
    jmp short 0x4ef8
    cmp byte [si], 0
    je short 0x4f53
    mov word [di], si
    inc di
    inc di
    inc word [0x0d04]
    mov ax, 2
    push ax
    call 0x5188
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x4f39
    mov ax, 0xe
    push ax
    mov ax, 0xc9f
    push ax
    mov ax, 2
    push ax
    call dos_file_loc_4fbd
    add sp, byte 6
    mov ax, 0xc8
    push ax
    call dos_proc_loc_4e7e
    pop cx
    inc si
    cmp byte [si], 0
    je short 0x4f51
    mov al, byte [si]
    cmp al, 0x20
loc_4f43:
    je short 0x4f49
    cmp al, 9
    jne short 0x4f4f
loc_4f49:
    mov byte [si], 0
    inc si
    jmp short 0x4f51
    jmp short 0x4f39
    jmp short 0x4ef8
    mov word [di], 0
    push word [0x0d06]
    push word [0x0d04]
    call loc_2dd5
    add sp, byte 4
    mov ax, 0
    push ax
    call loc_4f73
    pop cx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
loc_4f73:
    push bp
    mov bp, sp
    call [0x0c9c]
    push word [bp + 0x4]
    call dos_proc_loc_4e7e
    pop cx
    mov sp, bp
    pop bp
    ret
dos_file_loc_4f85:
    clc
    ret
    mov ax, 0x24
    push ax
    mov ax, 0xcae
    push ax
    mov ax, 2
    push ax
    call dos_file_loc_4fbd
    add sp, byte 6
    mov ax, 0x64
    push ax
    call dos_proc_loc_4e7e
    pop cx
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3f
    mov bx, word [bp + 0x4]
    jmp short 0x4fda
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    jmp short 0x4fda
dos_file_loc_4fb6:
    push bp
    mov bp, sp
    mov ah, 0x3f
    jmp short 0x4fc2
dos_file_loc_4fbd:
    push bp
    mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0xcdc], 0
    je short 0x4fda
    pop bp
    cmp ah, 0x3f
    je short 0x4fd6
    jmp [0x0cf2]
    jmp [0x0cf0]
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    int 0x21
    jae short 0x4fea
    mov word [0x0c72], ax
    mov ax, 0xffff
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3e
    mov bx, word [bp + 0x4]
    int 0x21
    jae short 0x5000
    mov word [0x0c72], ax
    mov ax, 0xffff
    pop bp
    ret
dos_file_loc_5000:
    db 0x2b
dos_file_loc_5001:
    db 0xc0, 0x5d, 0xc3, 0x55, 0x8b
dos_file_loc_5006:
; ==========================================
; Jump table: 3 entries (offsets 0x5006 - 0x500b)
; ==========================================
    db 0xec, 0xb4, 0x42, 0x8a, 0x46, 0x0a
dos_file_loc_500c:
    db 0x8b
dos_file_loc_500d:
    db 0x56, 0x06, 0x8b
dos_file_loc_5010:
    dec si
    or byte [bp + di + 0x45e], cl
    int 0x21
    jae short 0x5021
    mov word [0x0c72], ax
    mov ax, 0xffff
    db 0x8b, 0xd0 ; mov dx, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x41
    mov dx, word [bp + 0x4]
    int 0x21
    db 0x73
dos_file_loc_502e:
    or byte [bp + di + 0xc72], ah
    mov ax, 0xffff
    pop bp
    ret
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    mov ah, 0x56
    mov dx, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    int 0x21
    pop di
loc_504e:
    db 0x73
loc_504f:
; ==========================================
; Jump table: 3 entries (offsets 0x504f - 0x5055)
; ==========================================
    db 0x08, 0xa3, 0x72, 0x0c, 0xb8, 0xff, 0xff
loc_5056:
    pop bp
    ret
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push si
    mov si, word [0x9096]
    test si, si
    jne short 0x5098
    mov ax, 0x104
    push ax
    mov ax, 0xd08
    push ax
    push word [bp + 0x4]
    call 0x4fa2
    add sp, byte 6
    db 0x8b, 0xf0 ; mov si, ax
    test si, si
    je short 0x508e
    cmp byte [si + 0xd07], 0xa
    jne short 0x508e
    dec si
    mov al, byte [0x0cf4]
    mov byte [si + 0xd07], al
    mov word [0x0e0c], 0xd08
    mov word [0x9096], si
    cmp si, word [bp + 0x8]
    jle short 0x50a0
    mov si, word [bp + 0x8]
    test si, si
    je short 0x50b2
    push si
    push word [bp + 0x6]
    push word [0x0e0c]
    call 0x5123
    add sp, byte 6
    add word [0x0e0c], si
    sub word [0x9096], si
    db 0x8b, 0xc6 ; mov ax, si
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov di, word [bp + 0x6]
    mov si, word [bp + 0x8]
    jmp short 0x50fc
    db 0x8b, 0xdf ; mov bx, di
    inc di
    cmp byte [bx], 0xa
    jne short 0x50fc
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x4fac
    add sp, byte 6
    mov ax, 1
string_loc_50eb:
    push ax
    mov ax, 0xcf5
    push ax
    push word [bp + 0x4]
    call 0x4fac
    add sp, byte 6
    mov word [bp + 0x6], di
    db 0x8b, 0xc6 ; mov ax, si
    dec si
    test ax, ax
    jne short 0x50ce
    cmp di, word [bp + 0x6]
    je short 0x511a
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x4fac
    add sp, byte 6
    mov ax, word [bp + 0x8]
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    pushf
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov ax, es
    mov dx, ds
    db 0x3b, 0xc2 ; cmp ax, dx
    jne short 0x5156
    db 0x3b, 0xfe ; cmp di, si
    je short 0x5162
    jb short 0x5156
    std
    db 0x03, 0xf9 ; add di, cx
    db 0x03, 0xf1 ; add si, cx
    dec di
    dec si
    test cl, 1
    je short 0x5152
    movsb
    dec di
    dec si
    jmp short 0x515c
    test cl, 1
    je short 0x515c
    movsb
    shr cx, 1
    je short 0x5162
    rep movsw
    cld
    pop di
    pop si
    popf
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov bx, word [bp + 0x4]
    mov ax, 0x4400
    int 0x21
    jb short 0x5184
    test dl, 0x80
    je short 0x5184
    test dl, 3
    je short 0x5184
    mov ax, 1
    pop bp
    ret
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    mov ax, word [bp + 0x4]
    mov di, word [0x0c70]
    test ax, ax
    jge short 0x519d
    db 0x2b, 0xf8 ; sub di, ax
    jb short 0x51b1
    jmp short 0x51a1
    db 0x03, 0xc7 ; add ax, di
    jb short 0x51b1
    push ax
    call 0x51bc
    pop cx
    test ax, ax
    jne short 0x51ac
    db 0x8b, 0xc7 ; mov ax, di
    pop di
    test ax, ax
    pop bp
    ret
    mov word [0x0c72], 0xfff8
    mov ax, 0xffff
    jmp short 0x51ac
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    and al, 0xfe
    cmp ax, word [0x0c78]
    jb short 0x523b
    cmp word [0x0cda], byte 0
    jne short 0x51ea
    db 0x8b, 0xdc ; mov bx, sp
    sub bx, word [0x0cd6]
    db 0x3b, 0xc3 ; cmp ax, bx
    jae short 0x523b
    mov word [0x0c70], ax
    add ax, word [0x0cd6]
    mov word [0x0c7a], ax
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    cmp ax, word [0x0c7c]
    ja short 0x51fb
    cmp ax, word [0x0c70]
    jb short 0x51fb
    mov word [0x0c70], ax
    jmp short 0x51e6
    push ax
    db 0x8b, 0xd8 ; mov bx, ax
    mov cx, 4
    shr bx, cl
    and bx, strict word 0xfff
    add bx, byte 0x41
    and bx, strict word 0xffc0
    push bx
    push es
    mov cx, ds
    db 0x03, 0xd9 ; add bx, cx
    mov es, word [0x0c80]
    sub bx, word [0x0c80]
    mov ah, 0x4a
    int 0x21
    pop es
    pop bx
    pop ax
    jb short 0x523b
    mov word [0x0c70], ax
    test bx, 0xe000
    jne short 0x523b
    mov cx, 4
    shl bx, cl
    mov word [0x0c7c], bx
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    mov word [0x0c72], 0xfff8
leaf_loc_5241:
    db 0xb8, 0xff, 0xff
leaf_loc_5244:
    db 0x85
leaf_loc_5245:
    rcr byte [di - 0x003d], 0x55
    db 0x8b, 0xec ; mov bp, sp
    db 0x8b, 0xc4 ; mov ax, sp
    sub ax, word [bp + 0x4]
    mov word [0x0cd6], ax
    pop bp
    ret
    times 171 db 0
leaf_loc_5300:

    times 32 db 0

leaf_loc_5320:
    times 14 db 0
leaf_loc_532e:

    times 19 db 0

leaf_loc_5341:
    db 0x00
leaf_loc_5342:
    db 0x00
leaf_loc_5343:
    times 6 db 0
leaf_loc_5349:
    times 4 db 0
leaf_loc_534d:
    db 0x00
leaf_loc_534e:

    times 256 db 0

leaf_loc_544e:
    times 4 db 0
leaf_loc_5452:
    times 4 db 0
leaf_loc_5456:

    times 249 db 0

leaf_loc_554f:

    times 116 db 0

leaf_loc_55c3:

    times 126 db 0

leaf_loc_5641:
    db 0x00, 0x00
leaf_loc_5643:
    times 6 db 0
leaf_loc_5649:
    times 14 db 0
leaf_loc_5657:

    times 52 db 0

leaf_loc_568b:

    times 97 db 0

leaf_loc_56ec:

    times 106 db 0

leaf_loc_5756:

    times 150 db 0

leaf_loc_57ec:

    times 89 db 0

leaf_loc_5845:

    times 187 db 0

leaf_loc_5900:

    times 321 db 0

leaf_loc_5a41:

    times 198 db 0

leaf_loc_5b07:

    times 517 db 0

leaf_loc_5d0c:

    times 180 db 0

leaf_loc_5dc0:

    times 16 db 0

leaf_loc_5dd0:

    times 21 db 0

leaf_loc_5de5:

    times 26 db 0

leaf_loc_5dff:
    times 9 db 0
leaf_loc_5e08:

    times 29 db 0

leaf_loc_5e25:

    times 102 db 0

leaf_loc_5e8b:

    times 150 db 0

leaf_loc_5f21:

    times 82 db 0

leaf_loc_5f73:

    times 137 db 0

leaf_loc_5ffc:

    times 368 db 0

leaf_loc_616c:

    times 757 db 0

leaf_loc_6461:

    times 2568 db 0

leaf_loc_6e69:

    times 197 db 0

leaf_loc_6f2e:

    times 62 db 0

leaf_loc_6f6c:

    times 210 db 0

leaf_loc_703e:

    times 101 db 0

leaf_loc_70a3:

    times 355 db 0

leaf_loc_7206:
    times 6 db 0
leaf_loc_720c:

    times 19 db 0

leaf_loc_721f:
    db 0x00, 0x00
leaf_loc_7221:

    times 55 db 0

leaf_loc_7258:
    times 13 db 0
leaf_loc_7265:
    times 10 db 0
leaf_loc_726f:
    db 0x00, 0x00, 0x00
leaf_loc_7272:
    times 4 db 0
leaf_loc_7276:

    times 45 db 0

leaf_loc_72a3:

    times 36 db 0

leaf_loc_72c7:

    times 49 db 0

leaf_loc_72f8:

    times 41 db 0

leaf_loc_7321:

    times 224 db 0

leaf_loc_7401:
    db 0x00, 0x00
leaf_loc_7403:

    times 229 db 0

leaf_loc_74e8:
    times 14 db 0
leaf_loc_74f6:
    times 8 db 0
leaf_loc_74fe:

    times 194 db 0

leaf_loc_75c0:
    db 0x00, 0x00
leaf_loc_75c2:

    times 121 db 0

leaf_loc_763b:

    times 52 db 0

leaf_loc_766f:

    times 28 db 0

leaf_loc_768b:

    times 116 db 0

leaf_loc_76ff:

    times 263 db 0

leaf_loc_7806:

    times 1048 db 0

leaf_loc_7c1e:

    times 418 db 0

leaf_loc_7dc0:

    times 72 db 0

leaf_loc_7e08:

    times 131 db 0

leaf_loc_7e8b:

    times 388 db 0

leaf_loc_800f:

    times 56 db 0

leaf_loc_8047:

    times 123 db 0

leaf_loc_80c2:

    times 297 db 0

leaf_loc_81eb:

    times 277 db 0

leaf_loc_8300:
    times 15 db 0
leaf_loc_830f:

    times 97 db 0

leaf_loc_8370:

    times 142 db 0

leaf_loc_83fe:

    times 138 db 0

leaf_loc_8488:

    times 132 db 0

leaf_loc_850c:

    times 66 db 0

leaf_loc_854e:

    times 17 db 0

leaf_loc_855f:

    times 145 db 0

leaf_loc_85f0:

    times 790 db 0

leaf_loc_8906:

    times 221 db 0

leaf_loc_89e3:

    times 95 db 0

leaf_loc_8a42:

    times 193 db 0

leaf_loc_8b03:
    db 0x00
leaf_loc_8b04:
    db 0x00, 0x00
leaf_loc_8b06:

    times 56 db 0

leaf_loc_8b3e:

    times 23 db 0

leaf_loc_8b55:
    db 0x00
leaf_loc_8b56:
    times 8 db 0
leaf_loc_8b5e:
    db 0x00
leaf_loc_8b5f:

    times 141 db 0

leaf_loc_8bec:

    times 19 db 0

leaf_loc_8bff:
    times 9 db 0
leaf_loc_8c08:

    times 184 db 0

leaf_loc_8cc0:

    times 982 db 0

leaf_loc_9096:

    times 1362 db 0

leaf_loc_95e8:

    times 1910 db 0

leaf_loc_9d5e:

    times 752 db 0

leaf_loc_a04e:

    times 698 db 0

leaf_loc_a308:
    times 4 db 0
leaf_loc_a30c:
    times 10 db 0
leaf_loc_a316:

    times 235 db 0

leaf_loc_a401:

    times 498 db 0

leaf_loc_a5f3:

    times 2981 db 0

leaf_loc_b198:

    times 703 db 0

leaf_loc_b457:

    times 149 db 0

leaf_loc_b4ec:

    times 793 db 0

leaf_loc_b805:
    times 7 db 0
leaf_loc_b80c:

    times 243 db 0

leaf_loc_b8ff:

    times 1836 db 0

leaf_loc_c02b:

    times 90 db 0

leaf_loc_c085:

    times 369 db 0

leaf_loc_c1f6:

    times 256 db 0

leaf_loc_c2f6:

    times 69 db 0

leaf_loc_c33b:

    times 34 db 0

leaf_loc_c35d:

    times 154 db 0

leaf_loc_c3f7:

    times 140 db 0

leaf_loc_c483:

    times 520 db 0

leaf_loc_c68b:

    times 256 db 0

leaf_loc_c78b:
    db 0x00, 0x00, 0x00
leaf_loc_c78e:

    times 53 db 0

leaf_loc_c7c3:

    times 37 db 0

leaf_loc_c7e8:

    times 1308 db 0

leaf_loc_cd04:
    db 0x00, 0x00
leaf_loc_cd06:

    times 62 db 0

leaf_loc_cd44:

    times 1468 db 0

leaf_loc_d300:

    times 774 db 0

leaf_loc_d606:

    times 157 db 0

leaf_loc_d6a3:

    times 488 db 0

leaf_loc_d88b:

    times 120 db 0

leaf_loc_d903:

    times 137 db 0

leaf_loc_d98c:

    times 178 db 0

leaf_loc_da3e:

    times 589 db 0

leaf_loc_dc8b:

    times 768 db 0

leaf_loc_df8b:
    db 0x00
leaf_loc_df8c:

    times 116 db 0

leaf_loc_e000:

    times 897 db 0

leaf_loc_e381:

    times 1155 db 0

leaf_loc_e804:

    times 461 db 0

leaf_loc_e9d1:

    times 315 db 0

leaf_loc_eb0c:
    times 10 db 0
leaf_loc_eb16:

    times 373 db 0

leaf_loc_ec8b:

    times 1120 db 0

leaf_loc_f0eb:

    times 24 db 0

leaf_loc_f103:

    times 1205 db 0

leaf_loc_f5b8:

    times 87 db 0

leaf_loc_f60f:

    times 118 db 0

leaf_loc_f685:

    times 391 db 0

leaf_loc_f80c:

    times 247 db 0

leaf_loc_f903:

    times 921 db 0

leaf_loc_fc9c:

    times 117 db 0

leaf_loc_fd11:

    times 421 db 0

leaf_loc_feb6:

    times 80 db 0

leaf_loc_ff06:

    times 38 db 0

leaf_loc_ff2c:

    times 42 db 0

leaf_loc_ff56:

    times 58 db 0

leaf_loc_ff90:

    times 16 db 0

leaf_loc_ffa0:
    times 6 db 0
leaf_loc_ffa6:

    times 18 db 0

leaf_loc_ffb8:
    times 8 db 0
leaf_loc_ffc0:
    times 8 db 0
leaf_loc_ffc8:
    times 6 db 0
leaf_loc_ffce:
    db 0x00, 0x00
leaf_loc_ffd0:
    db 0x00, 0x00, 0x00
leaf_loc_ffd3:
    times 9 db 0
leaf_loc_ffdc:
    db 0x00
leaf_loc_ffdd:
    db 0x00, 0x00, 0x00
leaf_loc_ffe0:
    db 0x00, 0x00
leaf_loc_ffe2:
    db 0x00
leaf_loc_ffe3:
    times 4 db 0
leaf_loc_ffe7:
    db 0x00
leaf_loc_ffe8:
    db 0x00, 0x00, 0x00
leaf_loc_ffeb:
    db 0x00
leaf_loc_ffec:
    db 0x00
leaf_loc_ffed:
    db 0x00
leaf_loc_ffee:
    db 0x00
leaf_loc_ffef:
    db 0x00
leaf_loc_fff0:
    db 0x00
leaf_loc_fff1:
    db 0x00, 0x00
leaf_loc_fff3:
    db 0x00
leaf_loc_fff4:
    db 0x00, 0x00, 0x00
leaf_loc_fff7:
    db 0x00
leaf_loc_fff8:
    db 0x00
leaf_loc_fff9:
    db 0x00, 0x00
leaf_loc_fffb:
    db 0x00, 0x00
leaf_loc_fffd:
    db 0x00, 0x00
leaf_loc_ffff:

; ==========================================
; Jump table: 292 entries (offsets 0xffff - 0x10e55)
; ==========================================
    times 355 db 0
    db 0x6c, 0x04, 0x00, 0x00, 0x15, 0x00, 0x18, 0x00, 0x84, 0x00, 0x88, 0x00, 0xf7, 0x00, 0xf8, 0x00
    db 0x32, 0x00, 0x34, 0x00, 0x4b, 0x00, 0x4c, 0x00, 0xb3, 0x00, 0xb7, 0x00, 0x35, 0x00, 0x35, 0x00
    db 0xab, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x09, 0x00, 0x5f, 0x00
    db 0x35, 0x00, 0x1c, 0x00, 0xab, 0x00, 0x00, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x11, 0x00, 0x12, 0x00
    db 0x17, 0x00, 0x18, 0x00, 0x21
    times 5 db 0
    db 0x01, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x23, 0x00, 0x24, 0x00, 0x2b, 0x00, 0x2c, 0x00, 0x2f, 0x00
    db 0x30, 0x00, 0x3a, 0x00, 0x3b, 0x00, 0x3f, 0x00, 0x40, 0x00, 0x4a, 0x00, 0x4b, 0x00, 0x4f, 0x00
    db 0x50, 0x00, 0x5d, 0x00, 0x5e, 0x00, 0x5f, 0x00, 0x60, 0x00, 0x77, 0x00, 0x78, 0x00, 0x7f, 0x00
    db 0x80, 0x00, 0x8f, 0x00, 0x90, 0x00, 0x93, 0x00, 0x94, 0x00, 0x96, 0x00, 0x97, 0x00, 0x9f, 0x00
    db 0xa0, 0x00, 0xa3, 0x00, 0xa4, 0x00, 0xa6, 0x00, 0xa7, 0x00, 0xaf, 0x00, 0xb0, 0x00, 0xb7, 0x00
    db 0xb8, 0x00, 0xbf, 0x00, 0xc0, 0x00, 0xcf, 0x00, 0xd0, 0x00, 0xd6, 0x00, 0xd7, 0x00, 0xdf, 0x00
    db 0xe0, 0x00, 0xe2, 0x00, 0xe3, 0x00, 0xe6, 0x00, 0xe7, 0x00, 0xef, 0x00, 0xf0, 0x00, 0xf5, 0x00
    db 0xf6, 0x00, 0xfe, 0x00, 0xff, 0x00, 0xff, 0x00, 0x05, 0x06, 0x08, 0x05, 0x06, 0x08, 0x05, 0x06
    db 0x08, 0x05, 0x06, 0x08, 0x05, 0x06, 0x08, 0x08, 0x0a, 0x0d, 0x11, 0x15, 0x1b, 0x16, 0x1b, 0x22
    db 0x16, 0x1b, 0x22, 0x19, 0x1e, 0x26, 0x19, 0x1e, 0x26, 0x1a, 0x20, 0x28, 0x1a, 0x20, 0x28, 0x1c
    db 0x22, 0x2b, 0x1c, 0x22, 0x2b, 0x1c, 0x22, 0x2b, 0x1a, 0x20, 0x28, 0x19, 0x1e, 0x26, 0x16, 0x1b
    db 0x22, 0x13, 0x18, 0x1f, 0x11, 0x15, 0x1b, 0x0a, 0x0d, 0x10, 0x08, 0x0a, 0x0d, 0x05, 0x06, 0x08
    db 0x21, 0x00, 0x27, 0x00, 0x26, 0x00, 0x20, 0x00, 0x26, 0x00, 0x26, 0x00, 0x20, 0x00, 0x20, 0x00
    db 0x20, 0x00, 0x20, 0x00, 0x96, 0x00, 0x9f, 0x00, 0xaa, 0x00, 0xac, 0x00, 0x80, 0x00, 0xa3, 0x00
    db 0x93, 0x00, 0xac, 0x00, 0xad, 0x00, 0xa3, 0x00, 0xc0, 0x00, 0xac, 0x00, 0x7b, 0x00, 0xb0, 0x00
    db 0x90, 0x00, 0xb9, 0x00, 0xb0, 0x00, 0xb0, 0x00, 0xc5, 0x00, 0xb9, 0x00, 0x95, 0x00, 0xb1, 0x00
    db 0xab, 0x00, 0xbf, 0x00, 0x09, 0x08, 0x0a, 0x2c, 0x2e, 0x0b
    db '!@#$%^'
    db 0xd5, 0x00, 0x8a, 0x00, 0xd9, 0x00, 0x8f, 0x00, 0xd0, 0x00, 0x9a, 0x00, 0xd4, 0x00, 0x9f, 0x00
    db 0xeb, 0x00, 0xaf, 0x00, 0xef, 0x00, 0xb4, 0x00, 0xee, 0x00, 0x8a, 0x00, 0xf2, 0x00, 0x8f, 0x00
    db 0x10, 0x01, 0x9a, 0x00, 0x14, 0x01, 0x9f, 0x00, 0x0e, 0x01, 0xaf, 0x00, 0x12, 0x01, 0xb4, 0x00
    db 0x42, 0x00, 0x88, 0x00, 0x36, 0x00, 0x9e, 0x00, 0x42, 0x00, 0xba, 0x00, 0x72, 0x00, 0x88, 0x00
    db 0x7e, 0x00, 0x9e, 0x00, 0x72, 0x00, 0xba, 0x00, 0xc9, 0x00, 0xb8, 0x00, 0xd7, 0x00, 0x00, 0x01
    db 0x28, 0x01, 0x23, 0x01, 0x14, 0x00, 0x00, 0x00, 0x11, 0x00, 0x3a, 0x00, 0x4d, 0x00, 0x3f, 0x00
    db 0x7e, 0x00, 0x95, 0x00, 0xa5, 0x00, 0x81, 0x00, 0x92, 0x00, 0xa5, 0x00, 0x01, 0x00, 0x1d, 0x00
    db 0x32, 0x00, 0x04, 0x00, 0x1e, 0x00, 0x33, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00
    db 0x05, 0x00, 0x06, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x07, 0x00, 0x08, 0x00
    db 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0x0c, 0x00, 0x0d, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00
    db 0x16, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x18, 0x00, 0x18, 0x00, 0x17, 0x00, 0x18, 0x00
    db 0x19, 0x00, 0x18, 0x00, 0x18, 0x00, 0x1a, 0x00, 0xff, 0xff, 0xff, 0xff, 0x1b, 0x00, 0x1c, 0x00
    db 0x1d, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0x33, 0x00, 0x2a, 0x00, 0x21, 0x00, 0x3c, 0x00, 0x45, 0x00, 0x40, 0x00, 0x2a, 0x00, 0x1b
    times 17 db 0
    db 0xa6, 0xff, 0x00, 0x00, 0x5a
    times 5 db 0
    db 0xc8, 0xff, 0x00, 0x00, 0x38
    times 5 db 0
    db 0xdc, 0xff, 0x00, 0x00, 0x24
    times 15 db 0
    db 0x2e, 0x00, 0x34, 0x00, 0x37, 0x00, 0x00, 0x00, 0x10, 0x00, 0x0a, 0x00, 0x06, 0x00, 0x04
    times 51 db 0
    db 0x48, 0x00, 0x2b, 0x00, 0x67, 0x00, 0x75, 0x00, 0x68, 0x00, 0x2b, 0x00, 0xd7, 0x00, 0x75, 0x00
    db 0xd8, 0x00, 0x2b, 0x00, 0xf7, 0x00, 0x75
    times 17 db 0
    db 0x48, 0x00, 0x32, 0x00, 0x7b, 0x00, 0x61, 0x00, 0x7c, 0x00, 0x32, 0x00, 0xc3, 0x00, 0x61, 0x00
    db 0xc4, 0x00, 0x32, 0x00, 0xf7, 0x00, 0x61
    times 9 db 0
    db 0x48, 0x00, 0x36, 0x00, 0x57, 0x00, 0x55, 0x00, 0x58, 0x00, 0x36, 0x00, 0x87, 0x00, 0x55, 0x00
    db 0x88, 0x00, 0x36, 0x00, 0xb7, 0x00, 0x55, 0x00, 0xb8, 0x00, 0x36, 0x00, 0xe7, 0x00, 0x55, 0x00
    db 0xe8, 0x00, 0x36, 0x00, 0xf7, 0x00, 0x55, 0x00, 0x48, 0x00, 0x38, 0x00, 0x6f, 0x00, 0x4d, 0x00
    db 0x70, 0x00, 0x38, 0x00, 0x8f, 0x00, 0x4d, 0x00, 0x90, 0x00, 0x38, 0x00, 0xaf, 0x00, 0x4d, 0x00
    db 0xb0, 0x00, 0x38, 0x00, 0xcf, 0x00, 0x4d, 0x00, 0xd0, 0x00, 0x38, 0x00, 0xf7, 0x00, 0x4d, 0x00
    db 0x00, 0x00, 0x90, 0xff, 0x00, 0x00, 0x70
    times 5 db 0
    db 0xb8, 0xff, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0xa0, 0xff, 0xd0, 0xff, 0x00, 0x00, 0x30, 0x00
    db 0x60, 0x00, 0xc0, 0xff, 0xe0, 0xff, 0x00, 0x00, 0x20, 0x00, 0x40, 0x00, 0xd0, 0xff, 0xe8, 0xff
    db 0x00, 0x00, 0x18, 0x00, 0x30, 0x00, 0x00, 0x00, 0xec, 0xff, 0xdd, 0xff, 0xd3, 0xff, 0xce, 0xff
    db 0x00, 0x00, 0x1a, 0x00, 0xa0, 0x00, 0x26, 0x01
    times 4 db 0
    db 0x4a, 0x00, 0xa0, 0x00, 0xf6
    times 5 db 0
    db 0x68, 0x00, 0xa0, 0x00, 0xd8
    times 5 db 0
    db 0x7c, 0x00, 0xa0, 0x00, 0xc4
    times 5 db 0
    db 0x84, 0x00, 0xa0, 0x00, 0xbc, 0x00, 0x00, 0x00, 0x81, 0x00, 0x69, 0x00, 0x5a, 0x00, 0x51, 0x00
    db 0x56, 0x00, 0x43, 0x00, 0x33, 0x00, 0xc5, 0x00, 0x33, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x66, 0x00, 0x37, 0x00, 0xa2, 0x00, 0x37, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x7b, 0x00, 0x39, 0x00, 0x8d, 0x00, 0x39, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x87, 0x00, 0x3b, 0x00, 0x81, 0x00, 0x3b, 0x00, 0x5e, 0x00, 0x3b, 0x00, 0xaa, 0x00
    db 0x3b, 0x00, 0x8e, 0x00, 0x3c, 0x00, 0x7a, 0x00, 0x3c, 0x00, 0x6c, 0x00, 0x3c, 0x00, 0x9c, 0x00
    db 0x3c, 0x00, 0x3e, 0x00, 0x31, 0x00, 0xca, 0x00, 0x31, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x64, 0x00, 0x36, 0x00, 0xa4, 0x00, 0x36, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x79, 0x00, 0x39, 0x00, 0x8f, 0x00, 0x39, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00
    db 0x39, 0x00, 0x87, 0x00, 0x3b, 0x00, 0x81, 0x00, 0x3b, 0x00, 0x5e, 0x00, 0x3b, 0x00, 0xa9, 0x00
    db 0x3b, 0x00, 0x8f, 0x00, 0x3c, 0x00, 0x79, 0x00, 0x3c, 0x00, 0x6b, 0x00, 0x3c, 0x00, 0x9c, 0x00
    db 0x3c, 0x00, 0x4b, 0x00, 0x44, 0x00, 0xed, 0x00, 0x44, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00
    db 0x40, 0x00, 0x71, 0x00, 0x41, 0x00, 0xc7, 0x00, 0x41, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00
    db 0x40, 0x00, 0x82, 0x00, 0x40, 0x00, 0xb6, 0x00, 0x40, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00
    db 0x40, 0x00, 0x8c, 0x00, 0x3f, 0x00, 0xac, 0x00, 0x3f, 0x00, 0x63, 0x00, 0x40, 0x00, 0xd5, 0x00
    db 0x40, 0x00, 0x8c, 0x00, 0x3f, 0x00, 0xac, 0x00, 0x3f, 0x00, 0x63, 0x00, 0x40, 0x00, 0xd5, 0x00
    db 0x40, 0x00, 0x4b, 0x00, 0x39, 0x00, 0xed, 0x00, 0x39, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00
    db 0x3c, 0x00, 0x71, 0x00, 0x3b, 0x00, 0xc7, 0x00, 0x3b, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00
    db 0x3c, 0x00, 0x82, 0x00, 0x3c, 0x00, 0xb6, 0x00, 0x3c, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00
    db 0x3c, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xac, 0x00, 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xd5, 0x00
    db 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xac, 0x00, 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xd5, 0x00
    db 0x3d, 0x00, 0x4c, 0x00, 0x3b, 0x00, 0xe4, 0x00, 0x3b, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00
    db 0x3d, 0x00, 0x71, 0x00, 0x3c, 0x00, 0xbf, 0x00, 0x3c, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00
    db 0x3d, 0x00, 0x82, 0x00, 0x3d, 0x00, 0xae, 0x00, 0x3d, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00
    db 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xa4, 0x00, 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xcd, 0x00
    db 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xa4, 0x00, 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xcd, 0x00
    db 0x3d, 0x00, 0x64, 0x00, 0x3e, 0x00, 0x28, 0x00, 0x18, 0x00, 0x0f, 0x00, 0x51, 0x00, 0x64, 0x00
    db 0x64, 0x00, 0x33, 0x00, 0x3d, 0x00, 0x3d, 0x00, 0x24, 0x00, 0x29, 0x00, 0x29, 0x00, 0x01, 0x00
    db 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00
    db 0x02, 0x00, 0x19, 0x00, 0x1e, 0x00, 0x1e, 0x00, 0x0f, 0x00, 0x14, 0x00, 0x14, 0x00, 0x05, 0x00
    db 0x0a, 0x00, 0x0a, 0x00, 0x64, 0x00, 0x51, 0x00, 0x51, 0x00, 0x3d, 0x00, 0x33, 0x00, 0x33, 0x00
    db 0x29, 0x00, 0x24, 0x00, 0x24, 0x00, 0x1e, 0x00, 0x19, 0x00, 0x19, 0x00, 0x0f, 0x00, 0x14, 0x00
    db 0x14, 0x00, 0x05, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00
    db 0x01, 0x00, 0x02, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x58, 0x00, 0x2c, 0x00, 0x16, 0x00
    db 0x0b, 0x00, 0x0b, 0x00, 0x16, 0x00, 0x2c, 0x00, 0x58, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01
    times 7 db 0
    db 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x02, 0x03, 0x02, 0x08, 0x00, 0x02, 0x03, 0x02
    db 0x02, 0x01, 0x00, 0x02, 0x04, 0x03, 0x02, 0x02, 0x00, 0x03, 0x06, 0x03, 0x02, 0x08, 0x00, 0x03
    db 0x08, 0x01, 0x00, 0x08, 0x00, 0x03, 0x06, 0x03, 0x02, 0x02, 0x00, 0x04, 0x08, 0x03, 0x02, 0x01
    db 0x00, 0x05, 0x08, 0x03, 0x02, 0x04, 0x00, 0x05, 0x09, 0x03, 0x02, 0x08, 0x00, 0x06, 0x0c, 0x03
    db 0x02, 0x08, 0x00, 0x07, 0x10, 0x01, 0x00, 0x08, 0x01, 0x01, 0x02, 0x03, 0x02, 0x08, 0x01, 0x01
    db 0x02, 0x01, 0x01, 0x07, 0x01, 0x01, 0x03, 0x03, 0x02, 0x0a, 0x01, 0x02, 0x04, 0x03, 0x02, 0x0a
    db 0x01, 0x02, 0x04, 0x03, 0x02, 0x06, 0x01, 0x03, 0x05, 0x01, 0x00, 0x06, 0x01, 0x03, 0x06, 0x01
    db 0x01, 0x07, 0x01, 0x03, 0x08, 0x01, 0x00, 0x08, 0x01, 0x03, 0x08, 0x01, 0x00, 0x04, 0x01, 0x04
    db 0x08, 0x03, 0x02, 0x08, 0x01, 0x04, 0x05, 0x03, 0x02, 0x06, 0x01, 0x04, 0x07, 0x01, 0x01, 0x04
    db 0x01, 0x05, 0x06, 0x03, 0x02, 0x08, 0x01, 0x05, 0x08, 0x03, 0x02, 0x01, 0x01, 0x05, 0x0c, 0x01
    db 0x01, 0x05, 0x02, 0x01, 0x02, 0x03, 0x02, 0x01, 0x02, 0x02, 0x05, 0x01, 0x00, 0x08, 0x02, 0x02
    db 0x03, 0x03, 0x02, 0x0a, 0x02, 0x03, 0x04, 0x03, 0x02, 0x09, 0x02, 0x03, 0x08, 0x01, 0x03, 0x09
    db 0x02, 0x03, 0x04, 0x03, 0x02, 0x06, 0x02, 0x04, 0x07, 0x03, 0x02, 0x01, 0x02, 0x04, 0x08, 0x01
    db 0x01, 0x05, 0x02, 0x04, 0x08, 0x03, 0x02, 0x04, 0x02, 0x05, 0x0a, 0x01, 0x00, 0x05, 0x02, 0x05
    db 0x08, 0x03, 0x02, 0x01, 0x02, 0x05, 0x0c, 0x01, 0x00, 0x08, 0x02, 0x06, 0x08, 0x03, 0x02, 0x01
    db 0x02, 0x06, 0x0a, 0x03, 0x02, 0x09, 0x02, 0x06, 0x0c, 0x01, 0x00, 0x09, 0x02, 0x07, 0x10, 0x01
    db 0x00, 0x01, 0x02, 0x07, 0x14, 0x03, 0x02, 0x01, 0x03, 0x01, 0x02, 0x02, 0x02, 0x01, 0x03, 0x01
    db 0x02, 0x02, 0x02, 0x01, 0x03, 0x01, 0x02, 0x01, 0x01, 0x08, 0x03, 0x01, 0x03, 0x01, 0x00, 0x08
    db 0x03, 0x02, 0x06, 0x01, 0x00, 0x0a, 0x03, 0x03, 0x06, 0x03, 0x02, 0x06, 0x03, 0x03, 0x06, 0x01
    db 0x00, 0x04, 0x03, 0x03, 0x07, 0x03, 0x02, 0x09, 0x03, 0x03, 0x06, 0x03, 0x02, 0x09, 0x03, 0x04
    db 0x08, 0x03, 0x02, 0x01, 0x03, 0x04, 0x08, 0x03, 0x02, 0x0a, 0x03, 0x04, 0x09, 0x03, 0x02, 0x09
    db 0x03, 0x05, 0x0a, 0x01, 0x00, 0x01, 0x03, 0x06, 0x12, 0x01, 0x01, 0x05, 0x04, 0x01, 0x03, 0x01
    db 0x02, 0x02, 0x04, 0x01, 0x03, 0x03, 0x02, 0x0b, 0x04, 0x01, 0x04, 0x01, 0x00, 0x06, 0x04, 0x01
    db 0x05, 0x03, 0x02, 0x07, 0x04, 0x02, 0x04, 0x01, 0x01, 0x07, 0x04, 0x02, 0x04, 0x01, 0x00, 0x06
    db 0x04, 0x02, 0x05, 0x01, 0x00, 0x0a, 0x04, 0x02, 0x08, 0x01, 0x00, 0x06, 0x04, 0x02, 0x06, 0x03
    db 0x02, 0x03, 0x04, 0x02, 0x05, 0x01, 0x00, 0x0a, 0x04, 0x03, 0x06, 0x03, 0x02, 0x06, 0x04, 0x03
    db 0x08, 0x01, 0x02, 0x02, 0x04, 0x03, 0x0a, 0x01, 0x01, 0x06, 0x04, 0x04, 0x08, 0x03, 0x02, 0x02
    db 0x04, 0x04, 0x0a, 0x01, 0x00, 0x02, 0x04, 0x04, 0x0a, 0x01, 0x00, 0x0a, 0x04, 0x04, 0x07, 0x01
    db 0x00, 0x0a, 0x04, 0x05, 0x0a, 0x03, 0x02, 0x06, 0x04, 0x06, 0x08, 0x01, 0x00, 0x06, 0x04, 0x07
    db 0x12, 0x01, 0x00, 0x02, 0x04, 0x07, 0x10, 0x01, 0x00, 0x06, 0x05, 0x01, 0x04, 0x01, 0x01, 0x07
    db 0x05, 0x01, 0x03, 0x03, 0x02, 0x04, 0x05, 0x02, 0x04, 0x03, 0x02, 0x08, 0x05, 0x02, 0x07, 0x01
    db 0x02, 0x04, 0x05, 0x02, 0x04, 0x01, 0x00, 0x04, 0x05, 0x03, 0x07, 0x01, 0x00, 0x0a, 0x05, 0x04
    db 0x08, 0x01, 0x00, 0x08, 0x05, 0x04, 0x0a, 0x01, 0x00, 0x0c, 0x05, 0x05, 0x07, 0x01, 0x02, 0x08
    db 0x05, 0x05, 0x0a, 0x01, 0x01, 0x04, 0x05, 0x05, 0x0c, 0x01, 0x00, 0x04, 0x05, 0x06, 0x0c, 0x01
    db 0x02, 0x06, 0x05, 0x06, 0x08, 0x01, 0x02, 0x0c, 0x05, 0x06, 0x0f, 0x01, 0x02, 0x08, 0x05, 0x06
    db 0x0c, 0x01, 0x00, 0x0c, 0x05, 0x07, 0x12, 0x01, 0x00, 0x04, 0x05, 0x07, 0x14, 0x01, 0x01, 0x0e
    db 0x05, 0x07, 0x14, 0x01, 0x00, 0x04, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x05
    times 5 db 0
    db 0x05
    times 5 db 0
    db 0x05
    times 5 db 0
    db 0x05
    times 5 db 0
    db 0x05
    times 5 db 0
    db 0xf0, 0xff, 0xfb, 0xff, 0x08, 0x01, 0xf0, 0xff, 0xfb, 0xff, 0x09, 0x01, 0xf1, 0xff, 0xfb, 0xff
    db 0x0a, 0x01, 0xf1, 0xff, 0xfb, 0xff, 0x0b, 0x01, 0xf1, 0xff, 0xfd, 0xff, 0x0c, 0x01, 0xf1, 0xff
    db 0xfd, 0xff, 0x0d, 0x01, 0xf4, 0xff, 0xfb, 0xff, 0x0e, 0x01, 0xf4, 0xff, 0xfb, 0xff, 0x0f, 0x01
    db 0xee, 0xff, 0xf8, 0xff, 0x25, 0x01, 0xee, 0xff, 0xf8, 0xff, 0x26, 0x01, 0xed, 0xff, 0xf7, 0xff
    db 0x27, 0x01, 0xed, 0xff, 0xf7, 0xff, 0x28, 0x01, 0xe2, 0xff, 0xfb, 0xff, 0x29, 0x01, 0xf0, 0xff
    db 0xfb, 0xff, 0x2a, 0x01, 0xe7, 0xff, 0xf7, 0xff, 0x33, 0x00, 0xef, 0xff, 0xfd, 0xff, 0x24, 0x00
    db 0xfb, 0xff, 0xfb, 0xff, 0x20, 0x02, 0xf8, 0xff, 0xf8, 0xff, 0x10, 0x02, 0xf9, 0xff, 0xf7, 0xff
    db 0x14, 0x02, 0xf9, 0xff, 0xf7, 0xff, 0x18, 0x02, 0xf1, 0xff, 0xf1, 0xff, 0x1c, 0x02, 0xec, 0xff
    db 0xec, 0xff, 0x34, 0x02, 0xee, 0xff, 0xf1, 0xff, 0x2b, 0x02, 0xef, 0xff, 0xf3, 0xff, 0x2f, 0x02
    db 0xeb, 0xff, 0xf1, 0xff, 0x38, 0x02
    times 6 db 0
    db 0xff, 0xff, 0x00, 0x00, 0x06, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0xff, 0xff, 0xff, 0xff, 0x03, 0x00
    db 0xff, 0xff, 0xff, 0xff, 0x09, 0x00, 0x08, 0x00, 0x02, 0x00, 0x04, 0x00, 0x02, 0x00, 0x05, 0x00
    db 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x03, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00
    db 0x02, 0x00, 0x01
    times 11 db 0
    db 0x08, 0x00, 0x04, 0x00, 0x0e, 0x00, 0x06, 0x00, 0x0c, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00
    db 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00
    db 0x05, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x0b
    times 13 db 0
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x07, 0x00, 0x03, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x01, 0x00, 0x0a, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x06, 0x00, 0x08, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x00, 0x00, 0x0f, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x04, 0x00, 0x02, 0x00, 0x0a, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x0c, 0x00, 0x02, 0x00, 0x07, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x0d, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x0d, 0x00, 0x03, 0x00, 0x09, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x01, 0x00, 0x0b, 0x00, 0x0f, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x04, 0x00, 0x02, 0x00, 0x09, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x06, 0x00, 0x0e, 0x00, 0x07, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x0c, 0x00, 0x00, 0x00, 0x0f, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x06, 0x00, 0x08, 0x00, 0x0b, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x0d, 0x00, 0x0f, 0x00, 0x05, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x03, 0x00, 0x0f, 0x00, 0x09, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x01, 0x00, 0x0f, 0x00, 0x05, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0x04, 0x00, 0x02, 0x00, 0x07, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00
    db 0xc9, 0x01, 0xca, 0x01, 0xcb, 0x01, 0x08, 0x01, 0x0a, 0x01, 0x08, 0x01, 0x09, 0x01, 0x0a, 0x01
    db 0x09, 0x01, 0x01, 0x01, 0x02, 0x01, 0x01, 0x01, 0x03, 0x01, 0x02, 0x01, 0x03, 0x01, 0xe8, 0x01
    db 0xe8, 0x01, 0xe9, 0x01, 0xe8, 0x01, 0xe9, 0x01, 0xea, 0x01, 0xe9, 0x01, 0xe9, 0x01, 0xeb, 0x01
    db 0xe8, 0x01, 0xea, 0x01, 0xeb, 0x01, 0xf3, 0x01, 0xf7, 0x01, 0x2c, 0x02, 0xf6, 0x01, 0xf4, 0x01
    db 0x2d, 0x02, 0x2c, 0x02, 0x2d, 0x02, 0x2e, 0x02, 0x4c, 0x01, 0xf5, 0x01, 0x2f, 0x02, 0x2e, 0x02
    db 0x2f, 0x02, 0x30, 0x02
    times 6 db 0
    db 'INSERT SAVEGAME DISK', 0
    db 'INSERT DISK (^)', 0
    db 'INTO DRIVE ^', 0
    db 'CONTINUE', 0
    db 'DISK.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'MON00.PIC', 0
    db 'SOUND00.SND', 0
    db 'SCORE00', 0
    db 0x2e, 0x43, 0x53, 0x46, 0x00, 0x2e, 0x50, 0x42, 0x4c, 0x00, 0x2e, 0x50, 0x42, 0x41, 0x00
    db 'VINIT', 0
    db 'VBASE', 0
    db 'VPCVW', 0
    db 'VPCLV', 0
    db 'VPCMK', 0
    db 'VMAZE', 0
    db 'VMEXT', 0
    db 'VMELE', 0
    db 'VPOPS', 0
    db 'VMEXE', 0
    db 'VDOPT', 0
    db 'VTREA', 0
    db 'VMNPC', 0
    db 0x2e, 0x6f, 0x76, 0x72, 0x00
    db 'Error %d loading overlay: %s$', 0
    db 0x00, 0x02, 0x0d, 0x02, 0x0d, 0x98, 0xb1
    times 12 db 0
    db 0xff, 0xff, 0x00, 0x00
    db '8087/80287 is required!'
    db 0x0d, 0x0a, 0x24, 0xa3, 0x4c, 0x00
    db 'Too many args.', 0
    db 'STACK OVERFLOW, INCREASE STACK SIZE'
    db 0x0a, 0x00, 0x00, 0x00, 0x01, 0x00, 0x08, 0x00, 0x01
    times 22 db 0
    db 0x5c, 0x4e, 0xc1, 0x4e, 0x0a, 0x0d

