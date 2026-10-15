; auto-generated
loc_NINI:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short loc_NUGN                ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..loc_NINI.l1         ; 0x32f4
    mov al, 0x30                     ; 0x32f6
    call loc_HSQV                    ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..loc_NINI.l1:
    mov byte [bp - 0x000d], 0        ; 0x32fd
loc_HSQV:
    inc word [bp - 0x0002]           ; 0x3301
    test byte [bp - 0x000b], 0x20    ; 0x3304
    je short @..loc_HSQV.l1          ; 0x3308
    cmp al, 0x61                     ; 0x330a
    jb short @..loc_HSQV.l1          ; 0x330c
    cmp al, 0x7a                     ; 0x330e
    ja short @..loc_HSQV.l1          ; 0x3310
    sub al, 0x20                     ; 0x3312
@..loc_HSQV.l1:
    push es                          ; 0x3314
    sub ah, ah                       ; 0x3315
    push ax                          ; 0x3317
    call [bp + 0x4]                  ; 0x3318
    pop ax                           ; 0x331b
    pop es                           ; 0x331c
loc_NUGN:
    ret                              ; 0x331d
