; auto-generated
loc_MTKO:
    mov ax, 0                        ; 0x3f87
    call aztec_csav                  ; 0x3f8a
    les bx, word [dseg_0002]         ; 0x3f8d
    mov ax, word [es:bx]             ; 0x3f91
    mov dx, word [es:bx + 0x2]       ; 0x3f94
    mov word [bss_9090], dx          ; 0x3f98
    mov word [bss_908e], ax          ; 0x3f9c
    mov ax, word [bss_908e]          ; 0x3f9f
    mov dx, word [bss_9090]          ; 0x3fa2
    sub ax, word [bss_908a]          ; 0x3fa6
    sbb dx, word [bss_908c]          ; 0x3faa
    mov word [bss_9094], dx          ; 0x3fae
    mov word [bss_9092], ax          ; 0x3fb2
    mov ax, word [bss_976c]          ; 0x3fb5
    cwd                              ; 0x3fb8
    mov cx, ax                       ; 0x3fb9
    mov bx, dx                       ; 0x3fbb
    mov ax, word [bss_9092]          ; 0x3fbd
    mov dx, word [bss_9094]          ; 0x3fc0
    cmp bx, dx                       ; 0x3fc4
    jg short @..loc_MTKO.l1          ; 0x3fc6
    jne short @..loc_MTKO.l2         ; 0x3fc8
    cmp cx, ax                       ; 0x3fca
    jbe short @..loc_MTKO.l2         ; 0x3fcc
@..loc_MTKO.l1:
    jmp short @..loc_MTKO.l3         ; 0x3fce
@..loc_MTKO.l2:
    mov ax, word [bss_908e]          ; 0x3fd0
    mov dx, word [bss_9090]          ; 0x3fd3
    mov word [bss_908c], dx          ; 0x3fd7
    mov word [bss_908a], ax          ; 0x3fdb
    mov ax, word [bss_95ae]          ; 0x3fde
    inc ax                           ; 0x3fe1
    mov cx, 3                        ; 0x3fe2
    cwd                              ; 0x3fe5
    idiv cx                          ; 0x3fe6
    mov word [bss_95ae], dx          ; 0x3fe8
    push dx                          ; 0x3fec
    call api_idx_000a_SRST           ; 0x3fed
    pop cx                           ; 0x3ff0
    mov ax, 0x41                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x65                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x19                     ; 0x3ff9
    push ax                          ; 0x3ffc
    mov ax, 0x5a                     ; 0x3ffd
    push ax                          ; 0x4000
    call thunk_4                     ; 0x4001
    add sp, byte 8                   ; 0x4004
    mov ax, 0xffff                   ; 0x4007
    push ax                          ; 0x400a
    call api_idx_0002_PGOV           ; 0x400b
    pop cx                           ; 0x400e
    push word [bp + 0x4]             ; 0x400f
    call api_idx_0004_GIIO           ; 0x4012
    pop cx                           ; 0x4015
    mov ax, 0xbf                     ; 0x4016
    push ax                          ; 0x4019
    mov ax, 0x13f                    ; 0x401a
    push ax                          ; 0x401d
    mov ax, 0x7e                     ; 0x401e
    push ax                          ; 0x4021
    mov ax, 0xb8                     ; 0x4022
    push ax                          ; 0x4025
    call thunk_4                     ; 0x4026
    add sp, byte 8                   ; 0x4029
@..loc_MTKO.l3:
    ret                              ; 0x402c
