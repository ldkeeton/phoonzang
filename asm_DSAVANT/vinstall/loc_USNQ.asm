; auto-generated
loc_USNQ:
    mov word [bp - 0x022c], 1        ; 0x23b4
    jmp short @..loc_JGSH.l63        ; 0x23ba
jumptable_23bc:
    dw loc_KOIR - IMAGE_BASE                   ; 0x23bc
    dw loc_TMPN_239c - IMAGE_BASE              ; 0x23be
    dw loc_JMQK - IMAGE_BASE                   ; 0x23c0
    dw loc_TMPN_23ac - IMAGE_BASE              ; 0x23c2
    dw loc_USNQ - IMAGE_BASE                   ; 0x23c4
@..loc_JGSH.l62:
    cmp ax, strict word 5            ; 0x23c6
    jae short @..loc_JGSH.l63        ; 0x23c9
    xchg bx, ax                      ; 0x23cb
    shl bx, 1                        ; 0x23cc
    jmp [cs:bx + jumptable_23bc - IMAGE_BASE] ; 0x23ce
@..loc_JGSH.l63:
    cmp word [bp - 0x0010], byte 4   ; 0x23d3
    je short @..loc_JGSH.l64         ; 0x23d7
    mov ax, 0x2271                   ; 0x23d9
    push ax                          ; 0x23dc
    mov ax, 0xffff                   ; 0x23dd
    push ax                          ; 0x23e0
    lea ax, word [bp - 0x00f4]       ; 0x23e1
    push ax                          ; 0x23e5
    lea ax, word [bp - 0x003e]       ; 0x23e6
    push ax                          ; 0x23e9
    call loc_ONOP                    ; 0x23ea
    add sp, byte 8                   ; 0x23ed
@..loc_JGSH.l64:
    push word [bp - 0x01c8]          ; 0x23f0
    push word [bp - 0x01bc]          ; 0x23f4
    push word [bp - 0x01ba]          ; 0x23f8
    lea ax, word [bp - 0x01b8]       ; 0x23fc
    push ax                          ; 0x2400
    push word [bp - 0x01a2]          ; 0x2401
    push word [bp - 0x01a0]          ; 0x2405
    push word [bp - 0x019a]          ; 0x2409
    push word [bp - 0x0198]          ; 0x240d
    push word [bp - 0x0196]          ; 0x2411
    push word [bp - 0x022c]          ; 0x2415
    lea ax, word [bp - 0x0054]       ; 0x2419
    push ax                          ; 0x241c
    lea ax, word [bp - 0x00f4]       ; 0x241d
    push ax                          ; 0x2421
    lea ax, word [bp - 0x003e]       ; 0x2422
    push ax                          ; 0x2425
    call aztec_impl_scan             ; 0x2426
    add sp, byte 0x1a                ; 0x2429
    test ax, ax                      ; 0x242c
    je short @..loc_JGSH.l65         ; 0x242e
    mov ax, 0x227e                   ; 0x2430
    push ax                          ; 0x2433
    call loc_NNGU                    ; 0x2434
    pop cx                           ; 0x2437
    jmp short @..loc_JGSH.l66        ; 0x2438
@..loc_JGSH.l65:
    mov ax, 0x22af                   ; 0x243a
    push ax                          ; 0x243d
    call loc_NNGU                    ; 0x243e
    pop cx                           ; 0x2441
    mov ax, 0x22e3                   ; 0x2442
    push ax                          ; 0x2445
    call loc_NNGU                    ; 0x2446
    pop cx                           ; 0x2449
@..loc_JGSH.l66:
    mov ax, 3                        ; 0x244a
    push ax                          ; 0x244d
    call loc_NPPN                    ; 0x244e
    pop cx                           ; 0x2451
    mov ax, 0                        ; 0x2452
    push ax                          ; 0x2455
    call aztec_exit                  ; 0x2456
    pop cx                           ; 0x2459
    mov sp, bp                       ; 0x245a
    pop bp                           ; 0x245c
    ret                              ; 0x245d
loc_UMUK:
    push bp                          ; 0x245e
    mov bp, sp                       ; 0x245f
    sub sp, byte 4                   ; 0x2461
    push ds                          ; 0x2464
    push es                          ; 0x2465
    push si                          ; 0x2466
    push di                          ; 0x2467
    call bios_video_loc_GGHN         ; 0x2468
    call bios_mouse_loc_JHVQ         ; 0x246b
    mov ax, word [bp - 0x0002]       ; 0x246e
    pop di                           ; 0x2471
    pop si                           ; 0x2472
    pop es                           ; 0x2473
    pop ds                           ; 0x2474
    mov sp, bp                       ; 0x2475
    pop bp                           ; 0x2477
    ret                              ; 0x2478
