; auto-generated
dos_read_file_2:
    push bp                          ; 0x10cf
    mov bp, sp                       ; 0x10d0
    sub sp, byte 0x14                ; 0x10d2
    push ds                          ; 0x10d5
    push es                          ; 0x10d6
    push di                          ; 0x10d7
    push si                          ; 0x10d8
    mov ax, ds                       ; 0x10d9
    mov es, ax                       ; 0x10db
    mov ax, word [bp + 0xe]          ; 0x10dd
    cmp ax, strict word 0xa          ; 0x10e0
    jb short @..dos_read_file_2.l1   ; 0x10e3
    jmp near @..dos_read_file_2.l2   ; 0x10e5
@..dos_read_file_2.l1:
    shl ax, 1                        ; 0x10e8
    mov word [bp - 0x0008], ax       ; 0x10ea
    mov bx, 0x10e7                   ; 0x10ed
    add bx, ax                       ; 0x10f0
    mov word [bp - 0x0002], bx       ; 0x10f2
    mov ax, word [cs:bx]             ; 0x10f5
    or ax, ax                        ; 0x10f8
    jne short dos_con_loc_10ff       ; 0x10fa
    jmp near loc_110f                ; 0x10fc
