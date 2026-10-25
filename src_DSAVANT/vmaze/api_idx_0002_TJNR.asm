; auto-generated
api_idx_0002_TJNR:
    mov ax, 0xfffe                   ; 0x8f94
    call aztec_csav                  ; 0x8f97
    mov word [bp - 0x0002], 0        ; 0x8f9a
@..api_idx_0002_TJNR.l1:
    mov ax, word [bp - 0x0002]       ; 0x8f9f
    shl ax, 1                        ; 0x8fa2
    shl ax, 1                        ; 0x8fa4
    mov bx, ax                       ; 0x8fa6
    cmp byte [bx + bss_8a6e + rec_8a6e.f_0002], 0xff ; 0x8fa8
    je short @..api_idx_0002_TJNR.l2 ; 0x8fad
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0002] ; 0x8faf
    cbw                              ; 0x8fb3
    shl ax, 1                        ; 0x8fb4
    mov bx, ax                       ; 0x8fb6
    cmp word [bx + bss_9bd2], byte 0 ; 0x8fb8
    je short @..api_idx_0002_TJNR.l6 ; 0x8fbd
@..api_idx_0002_TJNR.l2:
    mov ax, word [bp - 0x0002]       ; 0x8fbf
    shl ax, 1                        ; 0x8fc2
    shl ax, 1                        ; 0x8fc4
    mov bx, ax                       ; 0x8fc6
    mov al, byte [bx + bss_8a6e]     ; 0x8fc8
    sub ah, ah                       ; 0x8fcc
    cmp ax, word [bp + 0x4]          ; 0x8fce
    jne short @..api_idx_0002_TJNR.l3 ; 0x8fd1
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0001] ; 0x8fd3
    sub ah, ah                       ; 0x8fd7
    cmp ax, word [bp + 0x6]          ; 0x8fd9
    je short @..api_idx_0002_TJNR.l4 ; 0x8fdc
@..api_idx_0002_TJNR.l3:
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0001] ; 0x8fde
    sub ah, ah                       ; 0x8fe2
    cmp ax, word [bp + 0x4]          ; 0x8fe4
    jne short @..api_idx_0002_TJNR.l6 ; 0x8fe7
    mov al, byte [bx + bss_8a6e]     ; 0x8fe9
    sub ah, ah                       ; 0x8fed
    cmp ax, word [bp + 0x6]          ; 0x8fef
    jne short @..api_idx_0002_TJNR.l6 ; 0x8ff2
@..api_idx_0002_TJNR.l4:
    mov ax, word [bp - 0x0002]       ; 0x8ff4
    mov cx, word [bss_9be6]          ; 0x8ff7
    shl cx, 1                        ; 0x8ffb
    mov bx, cx                       ; 0x8ffd
    mov word [bx + bss_9be8], ax     ; 0x8fff
    inc word [bss_9be6]              ; 0x9003
    mov ax, word [bss_9be6]          ; 0x9007
    cmp ax, strict word 0xc          ; 0x900a
    jl short @..api_idx_0002_TJNR.l5 ; 0x900d
    mov ax, 0                        ; 0x900f
    ret                              ; 0x9012
@..api_idx_0002_TJNR.l5:
    mov ax, 1                        ; 0x9013
    ret                              ; 0x9016
@..api_idx_0002_TJNR.l6:
    inc word [bp - 0x0002]           ; 0x9017
    mov ax, word [bp - 0x0002]       ; 0x901a
    cmp ax, strict word 0x20         ; 0x901d
    jge short @..api_idx_0002_TJNR.l7 ; 0x9020
    jmp near @..api_idx_0002_TJNR.l1 ; 0x9022
@..api_idx_0002_TJNR.l7:
    mov ax, 0                        ; 0x9025
    ret                              ; 0x9028
