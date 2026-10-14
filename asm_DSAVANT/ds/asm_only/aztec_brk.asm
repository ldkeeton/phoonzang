; auto-generated
; asm only
aztec_brk:
    push bp ; brk(addr):	set current top address to addr / returns 0 if ok, -1 if error ; 0x51bc
    mov bp, sp                       ; 0x51bd
    mov ax, word [bp + 0x4]          ; 0x51bf
    inc ax                           ; 0x51c2
    and al, 0xfe                     ; 0x51c3
    cmp ax, word [dseg_0c78]         ; 0x51c5
    jb short @..aztec_brk.brk_ov     ; 0x51c9
    cmp word [dseg_0cda], byte 0     ; 0x51cb
    jne short @..aztec_brk.abovestk  ; 0x51d0
    mov bx, sp                       ; 0x51d2
    sub bx, word [dseg_0cd6]         ; 0x51d4
    cmp ax, bx                       ; 0x51d8
    jae short @..aztec_brk.brk_ov    ; 0x51da
    mov word [dseg_0c70], ax ; new value is good so save it away ; 0x51dc
    add ax, word [dseg_0cd6]         ; 0x51df
    mov word [dseg_0c7a], ax ; save as new value for safety check ; 0x51e3
@..aztec_brk.brk_ok2:
    sub ax, ax                       ; 0x51e6
    pop bp                           ; 0x51e8
    ret                              ; 0x51e9
@..aztec_brk.abovestk:
    cmp ax, word [dseg_0c7c] ; heap is above stack ; 0x51ea
    ja short @..aztec_brk.getstore   ; 0x51ee
    cmp ax, word [dseg_0c70]         ; 0x51f0
    jb short @..aztec_brk.getstore   ; 0x51f4
    mov word [dseg_0c70], ax ; new value is good so save it away ; 0x51f6
    jmp short @..aztec_brk.brk_ok2   ; 0x51f9
@..aztec_brk.getstore:
    push ax ; going to do a SETBLOCK call ; 0x51fb
    mov bx, ax                       ; 0x51fc
    mov cx, 4                        ; 0x51fe
    shr bx, cl                       ; 0x5201
    and bx, strict word 0xfff        ; 0x5203
    add bx, byte 0x41 ; bump to nearest 1k increment ; 0x5207
    and bx, strict word 0xffc0 ; and round ; 0x520a
    push bx                          ; 0x520e
    push es                          ; 0x520f
    mov cx, ds                       ; 0x5210
    add bx, cx ; get actual paragraph address ; 0x5212
    mov es, word [dseg_0c80]         ; 0x5214
    sub bx, word [dseg_0c80]         ; 0x5218
    mov ah, 0x4a                     ; 0x521c
    int 0x21 ; DOS resize memory block
    pop es                           ; 0x5220
    pop bx                           ; 0x5221
    pop ax                           ; 0x5222
    jb short @..aztec_brk.brk_ov ; couldn't do it, so punt ; 0x5223
    mov word [dseg_0c70], ax         ; 0x5225
    test bx, 0xe000                  ; 0x5228
    jne short @..aztec_brk.brk_ov    ; 0x522c
    mov cx, 4                        ; 0x522e
    shl bx, cl                       ; 0x5231
    mov word [dseg_0c7c], bx         ; 0x5233
    sub ax, ax                       ; 0x5237
    pop bp                           ; 0x5239
    ret                              ; 0x523a
@..aztec_brk.brk_ov:
    mov word [dseg_0c72], 0xfff8 ; invalid request ; 0x523b
    mov ax, 0xffff                   ; 0x5241
    test ax, ax                      ; 0x5244
    pop bp                           ; 0x5246
    ret                              ; 0x5247
