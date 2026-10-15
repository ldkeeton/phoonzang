; auto-generated
loc_MJOU:
    mov ax, 0                        ; 0x77a1
    call aztec_csav                  ; 0x77a4
    les bx, word [dseg_0002]         ; 0x77a7
    mov ax, word [es:bx]             ; 0x77ab
    mov dx, word [es:bx + 0x2]       ; 0x77ae
    mov word [bss_9090], dx          ; 0x77b2
    mov word [bss_908e], ax          ; 0x77b6
    mov ax, word [bss_908e]          ; 0x77b9
    mov dx, word [bss_9090]          ; 0x77bc
    sub ax, word [bss_908a]          ; 0x77c0
    sbb dx, word [bss_908c]          ; 0x77c4
    mov word [bss_9094], dx          ; 0x77c8
    mov word [bss_9092], ax          ; 0x77cc
    mov ax, word [bss_93d6]          ; 0x77cf
    cwd                              ; 0x77d2
    mov cx, ax                       ; 0x77d3
    mov bx, dx                       ; 0x77d5
    mov ax, word [bss_9092]          ; 0x77d7
    mov dx, word [bss_9094]          ; 0x77da
    cmp bx, dx                       ; 0x77de
    jg short @..loc_MJOU.l1          ; 0x77e0
    jne short @..loc_MJOU.l2         ; 0x77e2
    cmp cx, ax                       ; 0x77e4
    jbe short @..loc_MJOU.l2         ; 0x77e6
@..loc_MJOU.l1:
    jmp short @..loc_MJOU.l3         ; 0x77e8
@..loc_MJOU.l2:
    mov ax, word [bss_908e]          ; 0x77ea
    mov dx, word [bss_9090]          ; 0x77ed
    mov word [bss_908c], dx          ; 0x77f1
    mov word [bss_908a], ax          ; 0x77f5
    call api_idx_000a_JGJS           ; 0x77f8
    push word [bp + 0x4]             ; 0x77fb
    call api_idx_000c_PUTQ           ; 0x77fe
    pop cx                           ; 0x7801
    push word [bp + 0x6]             ; 0x7802
    call api_idx_0002_PGOV           ; 0x7805
    pop cx                           ; 0x7808
    mov ax, 1                        ; 0x7809
    push ax                          ; 0x780c
    mov ax, 0x73                     ; 0x780d
    push ax                          ; 0x7810
    mov ax, 0x32                     ; 0x7811
    push ax                          ; 0x7814
    call draw_party_slot_letters     ; 0x7815
    add sp, byte 6                   ; 0x7818
    mov ax, 0xc5                     ; 0x781b
    push ax                          ; 0x781e
    mov ax, 0x93                     ; 0x781f
    push ax                          ; 0x7822
    mov ax, 0x73                     ; 0x7823
    push ax                          ; 0x7826
    mov ax, 0x32                     ; 0x7827
    push ax                          ; 0x782a
    call thunk_4                     ; 0x782b
    add sp, byte 8                   ; 0x782e
@..loc_MJOU.l3:
    ret                              ; 0x7831
