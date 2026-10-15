; auto-generated
loc_SKPQ:
    mov ax, 0                        ; 0x10b0
    call aztec_csav                  ; 0x10b3
    les bx, word [dseg_0002]         ; 0x10b6
    mov ax, word [es:bx]             ; 0x10ba
    mov dx, word [es:bx + 0x2]       ; 0x10bd
    mov word [bss_9090], dx          ; 0x10c1
    mov word [bss_908e], ax          ; 0x10c5
    mov ax, word [bss_908e]          ; 0x10c8
    mov dx, word [bss_9090]          ; 0x10cb
    sub ax, word [bss_908a]          ; 0x10cf
    sbb dx, word [bss_908c]          ; 0x10d3
    mov word [bss_9094], dx          ; 0x10d7
    mov word [bss_9092], ax          ; 0x10db
    mov ax, word [bss_948c]          ; 0x10de
    cwd                              ; 0x10e1
    mov cx, ax                       ; 0x10e2
    mov bx, dx                       ; 0x10e4
    mov ax, word [bss_9092]          ; 0x10e6
    mov dx, word [bss_9094]          ; 0x10e9
    cmp bx, dx                       ; 0x10ed
    jg short @..loc_SKPQ.l1          ; 0x10ef
    jne short @..loc_SKPQ.l2         ; 0x10f1
    cmp cx, ax                       ; 0x10f3
    jbe short @..loc_SKPQ.l2         ; 0x10f5
@..loc_SKPQ.l1:
    jmp short @..loc_SKPQ.l3         ; 0x10f7
@..loc_SKPQ.l2:
    mov ax, word [bss_908e]          ; 0x10f9
    mov dx, word [bss_9090]          ; 0x10fc
    mov word [bss_908c], dx          ; 0x1100
    mov word [bss_908a], ax          ; 0x1104
    call api_idx_000a_QMKR           ; 0x1107
    push word [bp + 0x4]             ; 0x110a
    call api_idx_000c_NNIM           ; 0x110d
    pop cx                           ; 0x1110
    push word [bp + 0x6]             ; 0x1111
    call api_idx_0002_PGOV           ; 0x1114
    pop cx                           ; 0x1117
    mov ax, 1                        ; 0x1118
    push ax                          ; 0x111b
    mov ax, 0x73                     ; 0x111c
    push ax                          ; 0x111f
    mov ax, 0x32                     ; 0x1120
    push ax                          ; 0x1123
    call draw_party_slot_letters     ; 0x1124
    add sp, byte 6                   ; 0x1127
    mov ax, 0xc5                     ; 0x112a
    push ax                          ; 0x112d
    mov ax, 0x93                     ; 0x112e
    push ax                          ; 0x1131
    mov ax, 0x73                     ; 0x1132
    push ax                          ; 0x1135
    mov ax, 0x32                     ; 0x1136
    push ax                          ; 0x1139
    call thunk_4                     ; 0x113a
    add sp, byte 8                   ; 0x113d
@..loc_SKPQ.l3:
    ret                              ; 0x1140
