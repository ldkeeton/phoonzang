; auto-generated
; asm only
loc_439a:
    push bp                          ; 0x439a
    mov bp, sp                       ; 0x439b
    sub sp, byte 0x0a                ; 0x439d
    push ds                          ; 0x43a0
    push es                          ; 0x43a1
    push si                          ; 0x43a2
    push di                          ; 0x43a3
    mov ax, ds                       ; 0x43a4
    mov es, ax                       ; 0x43a6
    mov ax, word [bp + 0xc]          ; 0x43a8
    cmp ax, strict word 0x14         ; 0x43ab
    jb short @..loc_439a.l1          ; 0x43ae
    jmp near @..loc_439a.l3          ; 0x43b0
@..loc_439a.l1:
    shl ax, 1                        ; 0x43b3
    shl ax, 1                        ; 0x43b5
    mov bx, data_4202                ; 0x43b7
    add bx, ax                       ; 0x43ba
    mov ax, word [cs:bx]             ; 0x43bc
    or ax, ax                        ; 0x43bf
    jne short @..loc_439a.l2         ; 0x43c1
    jmp near @..loc_439a.l3          ; 0x43c3
@..loc_439a.l2:
    mov word [cs:bx], 0              ; 0x43c6
    mov cx, word [cs:cseg_0caa - IMAGE_BASE] ; 0x43cb
    dec cx                           ; 0x43d0
    mov word [cs:cseg_0caa - IMAGE_BASE], cx ; 0x43d1
    call loc_43e1                    ; 0x43d6
@..loc_439a.l3:
    pop di                           ; 0x43d9
    pop si                           ; 0x43da
    pop es                           ; 0x43db
    pop ds                           ; 0x43dc
    mov sp, bp                       ; 0x43dd
    pop bp                           ; 0x43df
    ret                              ; 0x43e0
loc_43e1:
    call leaf_loc_43f7               ; 0x43e1
    call leaf_loc_440c               ; 0x43e4
    call leaf_loc_4436               ; 0x43e7
    call leaf_loc_4421               ; 0x43ea
    call leaf_loc_444b               ; 0x43ed
    call dos_con_loc_4461            ; 0x43f0
    call leaf_loc_44a3               ; 0x43f3
    ret                              ; 0x43f6
