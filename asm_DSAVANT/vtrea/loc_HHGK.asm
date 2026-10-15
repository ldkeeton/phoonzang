; auto-generated
loc_HHGK:
    mov ax, 0                        ; 0x8c8d
    call aztec_csav                  ; 0x8c90
    les bx, word [dseg_0002]         ; 0x8c93
    mov ax, word [es:bx]             ; 0x8c97
    mov dx, word [es:bx + 0x2]       ; 0x8c9a
    mov word [bss_9090], dx          ; 0x8c9e
    mov word [bss_908e], ax          ; 0x8ca2
    mov ax, word [bss_908e]          ; 0x8ca5
    mov dx, word [bss_9090]          ; 0x8ca8
    sub ax, word [bss_908a]          ; 0x8cac
    sbb dx, word [bss_908c]          ; 0x8cb0
    mov word [bss_9094], dx          ; 0x8cb4
    mov word [bss_9092], ax          ; 0x8cb8
    mov ax, word [bss_9124]          ; 0x8cbb
    cwd                              ; 0x8cbe
    mov cx, ax                       ; 0x8cbf
    mov bx, dx                       ; 0x8cc1
    mov ax, word [bss_9092]          ; 0x8cc3
    mov dx, word [bss_9094]          ; 0x8cc6
    cmp bx, dx                       ; 0x8cca
    jg short @..loc_HHGK.l1          ; 0x8ccc
    jne short @..loc_HHGK.l2         ; 0x8cce
    cmp cx, ax                       ; 0x8cd0
    jbe short @..loc_HHGK.l2         ; 0x8cd2
@..loc_HHGK.l1:
    jmp short @..loc_HHGK.l3         ; 0x8cd4
@..loc_HHGK.l2:
    mov ax, word [bss_908e]          ; 0x8cd6
    mov dx, word [bss_9090]          ; 0x8cd9
    mov word [bss_908c], dx          ; 0x8cdd
    mov word [bss_908a], ax          ; 0x8ce1
    call api_idx_000a_MTKM           ; 0x8ce4
    push word [bp + 0x4]             ; 0x8ce7
    call api_idx_000c_RQNG           ; 0x8cea
    pop cx                           ; 0x8ced
    push word [bp + 0x6]             ; 0x8cee
    call api_idx_0002_PGOV           ; 0x8cf1
    pop cx                           ; 0x8cf4
    mov ax, 1                        ; 0x8cf5
    push ax                          ; 0x8cf8
    mov ax, 0x73                     ; 0x8cf9
    push ax                          ; 0x8cfc
    mov ax, 0x32                     ; 0x8cfd
    push ax                          ; 0x8d00
    call draw_party_slot_letters     ; 0x8d01
    add sp, byte 6                   ; 0x8d04
    mov ax, 0xc5                     ; 0x8d07
    push ax                          ; 0x8d0a
    mov ax, 0x93                     ; 0x8d0b
    push ax                          ; 0x8d0e
    mov ax, 0x73                     ; 0x8d0f
    push ax                          ; 0x8d12
    mov ax, 0x32                     ; 0x8d13
    push ax                          ; 0x8d16
    call thunk_4                     ; 0x8d17
    add sp, byte 8                   ; 0x8d1a
@..loc_HHGK.l3:
    ret                              ; 0x8d1d
