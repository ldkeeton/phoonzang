; auto-generated
api_idx_0002_TJNR:
    mov ax, 0xfffe                   ; 0x8f94
    call aztec_csav                  ; 0x8f97
    mov word [bp - 2], 0             ; 0x8f9a
.back1:
    mov ax, word [bp - 2]            ; 0x8f9f
    shl ax, 1                        ; 0x8fa2
    shl ax, 1                        ; 0x8fa4
    mov bx, ax                       ; 0x8fa6
    cmp byte [bx + bss_8a6e + rec_8a6e.f_0002], 0xff ; 0x8fa8
    je short .forward1               ; 0x8fad
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0002] ; 0x8faf
    cbw                              ; 0x8fb3
    shl ax, 1                        ; 0x8fb4
    mov bx, ax                       ; 0x8fb6
    cmp word [bx + bss_9bd2], byte 0 ; 0x8fb8
    je short .forward5               ; 0x8fbd
.forward1:
    mov ax, word [bp - 2]            ; 0x8fbf
    shl ax, 1                        ; 0x8fc2
    shl ax, 1                        ; 0x8fc4
    mov bx, ax                       ; 0x8fc6
    mov al, byte [bx + bss_8a6e]     ; 0x8fc8
    sub ah, ah                       ; 0x8fcc
    cmp ax, word [bp + 4]            ; 0x8fce
    jne short .forward2              ; 0x8fd1
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0001] ; 0x8fd3
    sub ah, ah                       ; 0x8fd7
    cmp ax, word [bp + 6]            ; 0x8fd9
    je short .forward3               ; 0x8fdc
.forward2:
    mov al, byte [bx + bss_8a6e + rec_8a6e.f_0001] ; 0x8fde
    sub ah, ah                       ; 0x8fe2
    cmp ax, word [bp + 4]            ; 0x8fe4
    jne short .forward5              ; 0x8fe7
    mov al, byte [bx + bss_8a6e]     ; 0x8fe9
    sub ah, ah                       ; 0x8fed
    cmp ax, word [bp + 6]            ; 0x8fef
    jne short .forward5              ; 0x8ff2
.forward3:
    mov ax, word [bp - 2]            ; 0x8ff4
    mov cx, word [bss_9be6]          ; 0x8ff7
    shl cx, 1                        ; 0x8ffb
    mov bx, cx                       ; 0x8ffd
    mov word [bx + bss_9be8], ax     ; 0x8fff
    inc word [bss_9be6]              ; 0x9003
    mov ax, word [bss_9be6]          ; 0x9007
    cmp ax, strict word 0xc          ; 0x900a
    jl short .forward4               ; 0x900d
    mov ax, 0                        ; 0x900f
    ret                              ; 0x9012
.forward4:
    mov ax, 1                        ; 0x9013
    ret                              ; 0x9016
.forward5:
    inc word [bp - 2]                ; 0x9017
    mov ax, word [bp - 2]            ; 0x901a
    cmp ax, strict word 0x20         ; 0x901d
    jge short .forward6              ; 0x9020
    jmp near .back1                  ; 0x9022
.forward6:
    mov ax, 0                        ; 0x9025
    ret                              ; 0x9028
