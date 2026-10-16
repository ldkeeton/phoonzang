; auto-generated
; asm only
loc_QVUN:
    push bp                          ; 0x04b5
    mov bp, sp                       ; 0x04b6
    sub sp, byte 0x10                ; 0x04b8
    push ds                          ; 0x04bb
    push es                          ; 0x04bc
    push di                          ; 0x04bd
    push si                          ; 0x04be
    mov ax, ds                       ; 0x04bf
    mov es, ax                       ; 0x04c1
    call leaf_loc_LMQV               ; 0x04c3
    call graphics_loc_LQRJ           ; 0x04c6
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x04c9
    mov ds, ax                       ; 0x04cd
    mov ax, 0xa000                   ; 0x04cf
    mov es, ax                       ; 0x04d2
    mov ax, word [bp + 0xe]          ; 0x04d4
    mov bx, 0x140                    ; 0x04d7
    mul bx                           ; 0x04da
    add ax, word [bp + 0xc]          ; 0x04dc
    mov word [bp - 0x0002], ax       ; 0x04df
    mov ax, word [bp + 0x10]         ; 0x04e2
    sub ax, word [bp + 0xc]          ; 0x04e5
    inc ax                           ; 0x04e8
    mov word [bp - 0x0004], ax       ; 0x04e9
    mov ax, word [bp + 0x12]         ; 0x04ec
    sub ax, word [bp + 0xe]          ; 0x04ef
    inc ax                           ; 0x04f2
    mov dx, ax                       ; 0x04f3
@..loc_QVUN.l1:
    mov di, word [bp - 0x0002]       ; 0x04f5
    add word [bp - 0x0002], strict word 0x140 ; 0x04f8
    mov si, di                       ; 0x04fd
    mov cx, word [bp - 0x0004]       ; 0x04ff
    rep movsb                        ; 0x0502
    dec dx                           ; 0x0504
    jne short @..loc_QVUN.l1         ; 0x0505
    call leaf_loc_PRNU               ; 0x0507
    call bios_mouse_loc_USQU         ; 0x050a
    pop si                           ; 0x050d
    pop di                           ; 0x050e
    pop es                           ; 0x050f
    pop ds                           ; 0x0510
    mov sp, bp                       ; 0x0511
    pop bp                           ; 0x0513
    ret                              ; 0x0514
