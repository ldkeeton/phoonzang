; auto-generated
loc_NTTP:
    mov ax, 0                        ; 0x0ec8
    call aztec_csav                  ; 0x0ecb
    les bx, word [dseg_0002]         ; 0x0ece
    mov ax, word [es:bx]             ; 0x0ed2
    mov dx, word [es:bx + 0x2]       ; 0x0ed5
    mov word [bss_9090], dx          ; 0x0ed9
    mov word [bss_908e], ax          ; 0x0edd
    mov ax, word [bss_908e]          ; 0x0ee0
    mov dx, word [bss_9090]          ; 0x0ee3
    sub ax, word [bss_908a]          ; 0x0ee7
    sbb dx, word [bss_908c]          ; 0x0eeb
    mov word [bss_9094], dx          ; 0x0eef
    mov word [bss_9092], ax          ; 0x0ef3
    mov ax, word [bss_90d6]          ; 0x0ef6
    cwd                              ; 0x0ef9
    mov cx, ax                       ; 0x0efa
    mov bx, dx                       ; 0x0efc
    mov ax, word [bss_9092]          ; 0x0efe
    mov dx, word [bss_9094]          ; 0x0f01
    cmp bx, dx                       ; 0x0f05
    jg short @..loc_NTTP.l1          ; 0x0f07
    jne short @..loc_NTTP.l2         ; 0x0f09
    cmp cx, ax                       ; 0x0f0b
    jbe short @..loc_NTTP.l2         ; 0x0f0d
@..loc_NTTP.l1:
    jmp short @..loc_NTTP.l3         ; 0x0f0f
@..loc_NTTP.l2:
    mov ax, word [bss_908e]          ; 0x0f11
    mov dx, word [bss_9090]          ; 0x0f14
    mov word [bss_908c], dx          ; 0x0f18
    mov word [bss_908a], ax          ; 0x0f1c
    mov ax, 1                        ; 0x0f1f
    ret                              ; 0x0f22
@..loc_NTTP.l3:
    mov ax, 0                        ; 0x0f23
    ret                              ; 0x0f26
