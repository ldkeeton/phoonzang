string_loc_32d3:
    call leaf_loc_331e               ; 0x32d3
    mov ax, word [bp - 0x0002]       ; 0x32d6
    mov word [es:di], ax             ; 0x32d9
    test byte [bp - 0x000b], data_0002 ; 0x32dc
    je short @..string_loc_32d3.l1   ; 0x32e0
    mov word [es:di + 0x2], 0        ; 0x32e2
@..string_loc_32d3.l1:
    jmp near loc_30aa                ; 0x32e8
loc_32eb:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short loc_331d                ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..local.l122          ; 0x32f4
    mov al, data_0030                ; 0x32f6
    call loc_3301                    ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..local.l122:
    mov byte [bp - 0x000d], 0        ; 0x32fd
loc_3301:
    inc word [bp - 0x0002]           ; 0x3301
    test byte [bp - 0x000b], 0x20    ; 0x3304
    je short @..local.l123           ; 0x3308
    cmp al, 0x61                     ; 0x330a
    jb short @..local.l123           ; 0x330c
    cmp al, 0x7a                     ; 0x330e
    ja short @..local.l123           ; 0x3310
    sub al, 0x20                     ; 0x3312
@..local.l123:
    push es                          ; 0x3314
    sub ah, ah                       ; 0x3315
    push ax                          ; 0x3317
    call [bp + 0x4]                  ; 0x3318
    pop ax                           ; 0x331b
    pop es                           ; 0x331c
loc_331d:
    ret                              ; 0x331d
