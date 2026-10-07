api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x91b2
    call ds_dispatch_f40b            ; 0x91b5
    mov word [bp - 0x0002], 0        ; 0x91b8
@..api_idx_0002_11.l1:
    mov ax, 0                        ; 0x91bd
    push ax                          ; 0x91c0
    push word [bp - 0x0002]          ; 0x91c1
    push word [bp + 0x4]             ; 0x91c4
    call loc_902e                    ; 0x91c7
    add sp, byte 6                   ; 0x91ca
    inc word [bp - 0x0002]           ; 0x91cd
    mov ax, word [bp - 0x0002]       ; 0x91d0
    cmp ax, strict word 0xd          ; 0x91d3
    jle short @..api_idx_0002_11.l1  ; 0x91d6
    ret                              ; 0x91d8
