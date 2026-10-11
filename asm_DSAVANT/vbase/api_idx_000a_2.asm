api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x737d
    call ds_dispatch_f40b            ; 0x7380
    mov al, byte [bp + 0x6]          ; 0x7383
    mov byte [bp - 0x000a], al       ; 0x7386
    mov byte [bp - 0x0009], 0        ; 0x7389
    push word [bp + 0xc]             ; 0x738d
    mov ax, 0                        ; 0x7390
    push ax                          ; 0x7393
    lea ax, word [bp - 0x000a]       ; 0x7394
    push ax                          ; 0x7397
    mov ax, 0                        ; 0x7398
    push ax                          ; 0x739b
    mov ax, 0x91                     ; 0x739c
    push ax                          ; 0x739f
    mov ax, 0                        ; 0x73a0
    push ax                          ; 0x73a3
    mov ax, 0x140                    ; 0x73a4
    push ax                          ; 0x73a7
    mov ax, 0                        ; 0x73a8
    push ax                          ; 0x73ab
    push word [bp + 0xa]             ; 0x73ac
    push word [bp + 0x8]             ; 0x73af
    push word [bp + 0x4]             ; 0x73b2
    call ds_dispatch_efd1            ; 0x73b5
    add sp, byte 0x16                ; 0x73b8
    ret                              ; 0x73bb
loc_73bc:
    mov ax, 0                        ; 0x73bc
    call ds_dispatch_f40b            ; 0x73bf
    les bx, word [dseg_0002]         ; 0x73c2
    mov ax, word [es:bx]             ; 0x73c6
    mov dx, word [es:bx + 0x2]       ; 0x73c9
    sub ax, word [bss_908a]          ; 0x73cd
    sbb dx, word [bss_908c]          ; 0x73d1
    push ax                          ; 0x73d5
    push dx                          ; 0x73d6
    mov ax, word [bss_a5ae]          ; 0x73d7
    cwd                              ; 0x73da
    mov cx, ax                       ; 0x73db
    mov bx, dx                       ; 0x73dd
    pop dx                           ; 0x73df
    pop ax                           ; 0x73e0
    cmp dx, bx                       ; 0x73e1
    jl short @..local.l147           ; 0x73e3
    jne short @..local.l148          ; 0x73e5
    cmp ax, cx                       ; 0x73e7
    jae short @..local.l148          ; 0x73e9
@..local.l147:
    jmp short @..local.l149          ; 0x73eb
@..local.l148:
    mov ax, word [bss_a5b0]          ; 0x73ed
    inc ax                           ; 0x73f0
    mov cx, 0xc                      ; 0x73f1
    cwd                              ; 0x73f4
    idiv cx                          ; 0x73f5
    mov word [bss_a5b0], dx          ; 0x73f7
    les bx, word [dseg_0002]         ; 0x73fb
    mov ax, word [es:bx]             ; 0x73ff
    mov dx, word [es:bx + 0x2]       ; 0x7402
    mov word [bss_908c], dx          ; 0x7406
    mov word [bss_908a], ax          ; 0x740a
    mov ax, 1                        ; 0x740d
    ret                              ; 0x7410
@..local.l149:
    mov ax, 0                        ; 0x7411
    ret                              ; 0x7414
