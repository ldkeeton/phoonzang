; auto-generated
; asm only
bios_mouse_loc_18c1:
    push ds                          ; 0x18c1
    push es                          ; 0x18c2
    push si                          ; 0x18c3
    push di                          ; 0x18c4
    cmp byte [cs:cseg_0226 - IMAGE_BASE], 1 ; 0x18c5
    je short @..bios_mouse_loc_18c1.l1 ; 0x18cb
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x18cd
    je short @..bios_mouse_loc_18c1.l2 ; 0x18d3
@..bios_mouse_loc_18c1.l1:
    jmp near @..bios_mouse_loc_18c1.l4 ; 0x18d5
@..bios_mouse_loc_18c1.l2:
    mov ax, 3                        ; 0x18d8
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x18dd
    cmp word [cs:cseg_1bd9 - IMAGE_BASE], cx ; 0x18df
    jne short @..bios_mouse_loc_18c1.l3 ; 0x18e4
    cmp word [cs:cseg_1bdb - IMAGE_BASE], dx ; 0x18e6
    je short @..bios_mouse_loc_18c1.l4 ; 0x18eb
@..bios_mouse_loc_18c1.l3:
    shl cx, 1                        ; 0x18ed
    mov ax, cs                       ; 0x18ef
    push ax                          ; 0x18f1
    call leaf_loc_2a4f               ; 0x18f2
@..bios_mouse_loc_18c1.l4:
    mov byte [cs:cseg_0227 - IMAGE_BASE], 0 ; 0x18f5
    pop di                           ; 0x18fb
    pop si                           ; 0x18fc
    pop es                           ; 0x18fd
    pop ds                           ; 0x18fe
    ret                              ; 0x18ff
