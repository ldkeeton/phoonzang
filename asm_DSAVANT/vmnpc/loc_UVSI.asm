; auto-generated
loc_UVSI:
    mov ax, 0                        ; 0x0ef1
    call aztec_csav                  ; 0x0ef4
    les bx, word [dseg_0002]         ; 0x0ef7
    mov ax, word [es:bx]             ; 0x0efb
    mov dx, word [es:bx + 0x2]       ; 0x0efe
    mov word [bss_9090], dx          ; 0x0f02
    mov word [bss_908e], ax          ; 0x0f06
    mov ax, word [bss_908e]          ; 0x0f09
    mov dx, word [bss_9090]          ; 0x0f0c
    sub ax, word [bss_908a]          ; 0x0f10
    sbb dx, word [bss_908c]          ; 0x0f14
    mov word [bss_9094], dx          ; 0x0f18
    mov word [bss_9092], ax          ; 0x0f1c
    mov ax, word [bss_93d6]          ; 0x0f1f
    cwd                              ; 0x0f22
    mov cx, ax                       ; 0x0f23
    mov bx, dx                       ; 0x0f25
    mov ax, word [bss_9092]          ; 0x0f27
    mov dx, word [bss_9094]          ; 0x0f2a
    cmp bx, dx                       ; 0x0f2e
    jg short @..loc_UVSI.l1          ; 0x0f30
    jne short @..loc_UVSI.l2         ; 0x0f32
    cmp cx, ax                       ; 0x0f34
    jbe short @..loc_UVSI.l2         ; 0x0f36
@..loc_UVSI.l1:
    jmp short @..loc_UVSI.l3         ; 0x0f38
@..loc_UVSI.l2:
    mov ax, word [bss_908e]          ; 0x0f3a
    mov dx, word [bss_9090]          ; 0x0f3d
    mov word [bss_908c], dx          ; 0x0f41
    mov word [bss_908a], ax          ; 0x0f45
    mov ax, 1                        ; 0x0f48
    ret                              ; 0x0f4b
@..loc_UVSI.l3:
    mov ax, 0                        ; 0x0f4c
    ret                              ; 0x0f4f
