; auto-generated
ds_app_io_TSGV: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x0af6
    call aztec_csav                  ; 0x0af9
    cmp word [bp + 0x6], byte 0      ; 0x0afc
    jne short @..ds_app_io_TSGV.l1   ; 0x0b00
    cmp word [bp + 0x4], byte 0      ; 0x0b02
@..ds_app_io_TSGV.l1:
    je short @..ds_app_io_TSGV.l2    ; 0x0b06
    les bx, word [bp + 0x4]          ; 0x0b08
    mov al, byte [es:bx]             ; 0x0b0b
    sub ah, ah                       ; 0x0b0e
    mov word [bp - 0x0002], ax       ; 0x0b10
    mov al, byte [es:bx + 0x1]       ; 0x0b13
    sub ah, ah                       ; 0x0b17
    mov word [bp - 0x0004], ax       ; 0x0b19
    mov ax, 0xffff                   ; 0x0b1c
    push ax                          ; 0x0b1f
    push ax                          ; 0x0b20
    push word [bp - 0x0004]          ; 0x0b21
    push word [bp - 0x0002]          ; 0x0b24
    mov ax, bx                       ; 0x0b27
    mov dx, es                       ; 0x0b29
    add ax, strict word 2            ; 0x0b2b
    push dx                          ; 0x0b2e
    push ax                          ; 0x0b2f
    call thunk_39                    ; 0x0b30
    add sp, byte 0x0c                ; 0x0b33
    jmp short @..ds_app_io_TSGV.l3   ; 0x0b36
@..ds_app_io_TSGV.l2:
    mov ax, 0xffff                   ; 0x0b38
    push ax                          ; 0x0b3b
    push ax                          ; 0x0b3c
    mov ax, 0                        ; 0x0b3d
    push ax                          ; 0x0b40
    push ax                          ; 0x0b41
    mov ax, 0                        ; 0x0b42
    mov dx, 0                        ; 0x0b45
    push dx                          ; 0x0b48
    push ax                          ; 0x0b49
    call thunk_39                    ; 0x0b4a
    add sp, byte 0x0c                ; 0x0b4d
@..ds_app_io_TSGV.l3:
    call bios_kbd_check              ; 0x0b50
    ret                              ; 0x0b53
