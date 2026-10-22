; auto-generated
load_maze:
    push bp                          ; 0x0bae
    mov bp, sp                       ; 0x0baf
    sub sp, byte 0x14                ; 0x0bb1
    push ds                          ; 0x0bb4
    push es                          ; 0x0bb5
    push di                          ; 0x0bb6
    push si                          ; 0x0bb7
    mov ax, ds                       ; 0x0bb8
    mov es, ax                       ; 0x0bba
    mov ax, word [bp + 0xe]          ; 0x0bbc
    cmp ax, strict word 0xa          ; 0x0bbf
    jb short @..load_maze.l1         ; 0x0bc2
    jmp near dos_con_loc_GKGP        ; 0x0bc4
@..load_maze.l1:
    shl ax, 1                        ; 0x0bc7
    mov word [bp - 0x0008], ax       ; 0x0bc9
    mov bx, data_0bc6                ; 0x0bcc
    add bx, ax                       ; 0x0bcf
    mov word [bp - 0x0002], bx       ; 0x0bd1
    mov ax, word [cs:bx]             ; 0x0bd4
    or ax, ax                        ; 0x0bd7
    jne short dos_con_loc_PHON       ; 0x0bd9
    jmp near loc_TKLO                ; 0x0bdb
