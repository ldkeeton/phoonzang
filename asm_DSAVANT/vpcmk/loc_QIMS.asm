; auto-generated
loc_QIMS:
    mov ax, 0                        ; 0x2fd8
    call aztec_csav                  ; 0x2fdb
    les bx, word [dseg_0002]         ; 0x2fde
    mov ax, word [es:bx]             ; 0x2fe2
    mov dx, word [es:bx + 0x2]       ; 0x2fe5
    mov word [bss_9090], dx          ; 0x2fe9
    mov word [bss_908e], ax          ; 0x2fed
    mov ax, word [bss_908e]          ; 0x2ff0
    mov dx, word [bss_9090]          ; 0x2ff3
    sub ax, word [bss_908a]          ; 0x2ff7
    sbb dx, word [bss_908c]          ; 0x2ffb
    mov word [bss_9094], dx          ; 0x2fff
    mov word [bss_9092], ax          ; 0x3003
    mov ax, word [bss_976c]          ; 0x3006
    cwd                              ; 0x3009
    mov cx, ax                       ; 0x300a
    mov bx, dx                       ; 0x300c
    mov ax, word [bss_9092]          ; 0x300e
    mov dx, word [bss_9094]          ; 0x3011
    cmp bx, dx                       ; 0x3015
    jg short @..loc_QIMS.l1          ; 0x3017
    jne short @..loc_QIMS.l2         ; 0x3019
    cmp cx, ax                       ; 0x301b
    jbe short @..loc_QIMS.l2         ; 0x301d
@..loc_QIMS.l1:
    jmp short @..loc_QIMS.l3         ; 0x301f
@..loc_QIMS.l2:
    mov ax, word [bss_908e]          ; 0x3021
    mov dx, word [bss_9090]          ; 0x3024
    mov word [bss_908c], dx          ; 0x3028
    mov word [bss_908a], ax          ; 0x302c
    call api_idx_000a_JTUO           ; 0x302f
    push word [bp + 0x4]             ; 0x3032
    call api_idx_000c_KTPM           ; 0x3035
    pop cx                           ; 0x3038
    push word [bp + 0x6]             ; 0x3039
    call api_idx_0002_PGOV           ; 0x303c
    pop cx                           ; 0x303f
    mov ax, 1                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x73                     ; 0x3044
    push ax                          ; 0x3047
    mov ax, 0x32                     ; 0x3048
    push ax                          ; 0x304b
    call draw_party_slot_letters     ; 0x304c
    add sp, byte 6                   ; 0x304f
    mov ax, 0xc5                     ; 0x3052
    push ax                          ; 0x3055
    mov ax, 0x93                     ; 0x3056
    push ax                          ; 0x3059
    mov ax, 0x73                     ; 0x305a
    push ax                          ; 0x305d
    mov ax, 0x32                     ; 0x305e
    push ax                          ; 0x3061
    call thunk_4                     ; 0x3062
    add sp, byte 8                   ; 0x3065
@..loc_QIMS.l3:
    ret                              ; 0x3068
