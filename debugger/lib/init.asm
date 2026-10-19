; init.asm — transient initialization (freed after TSR)

msg_ok: db "GDBSRV loaded", 0x0D, 0x0A, "$" ; installation-success message
msg_al: db "GDBSRV already installed", 0x0D, 0x0A, "$" ; duplicate-install message

init:
    ; check already installed
    mov ax, 0x3503                        ; DOS get-vector service for INT 3
    int 0x21                              ; ES:BX = current INT 3 handler
    cmp bx, int3                           ; is INT 3 already pointing at this TSR?
    jne .go                                ; no -> save vectors and install ourselves
    mov ah, 9                              ; DOS print-$-terminated-string service
    mov dx, msg_al                         ; DS:DX = already-installed message
    int 0x21                              ; inform user and avoid duplicate TSR install
    ret                                    ; return without becoming resident again
.go:
    ; save original interrupt vectors
    mov ax, 0x3503                        ; DOS get-vector service for INT 3
    int 0x21                              ; ES:BX = current breakpoint handler
    mov [ov3], bx                         ; save original INT 3 offset
    mov [ov3+2], es                       ; save original INT 3 segment
    mov ax, 0x3501                        ; DOS get-vector service for INT 1
    int 0x21                              ; ES:BX = current single-step handler
    mov [ov1], bx                         ; save original INT 1 offset
    mov [ov1+2], es                       ; save original INT 1 segment
    mov ax, 0x352F                        ; DOS get-vector service for INT 2Fh
    int 0x21                              ; ES:BX = current multiplex handler
    mov [ov2f], bx                        ; save original INT 2Fh offset
    mov [ov2f+2], es                      ; save original INT 2Fh segment
    mov ax, 0x350C                        ; DOS get-vector service for IRQ4/INT 0Ch
    int 0x21                              ; ES:BX = current serial interrupt handler
    mov [ov4], bx                         ; save original IRQ4 handler offset
    mov [ov4+2], es                       ; save original IRQ4 handler segment
    mov ax, 0x3500                        ; DOS get-vector service for INT 0
    int 0x21                              ; ES:BX = current divide-error handler
    mov [ov0], bx                         ; save original INT 0 offset
    mov [ov0+2], es                       ; save original INT 0 segment
    mov ax, 0x3506                        ; DOS get-vector service for INT 6
    int 0x21                              ; ES:BX = current invalid-opcode handler
    mov [ov6], bx                         ; save original INT 6 offset
    mov [ov6+2], es                       ; save original INT 6 segment
    ; install our vectors
    push ds                               ; preserve caller's data segment
    mov ax, cs                            ; AX = TSR's resident code/data segment
    mov ds, ax                            ; DOS set-vector calls take handler segment in DS
    mov dx, int3                          ; DX = our INT 3 handler offset
    mov ax, 0x2503                        ; DOS set-vector service for INT 3
    int 0x21                              ; route software breakpoints to GDBSRV
    mov dx, int1                          ; DX = our INT 1 single-step handler offset
    mov ax, 0x2501                        ; DOS set-vector service for INT 1
    int 0x21                              ; route trap-flag exceptions to GDBSRV
    mov dx, int2f                         ; DX = our INT 2Fh multiplex handler offset
    mov ax, 0x252F                        ; DOS set-vector service for INT 2Fh
    int 0x21                              ; expose launcher coordination entry points
    mov dx, int4                          ; DX = our COM1 receive IRQ4 handler offset
    mov ax, 0x250C                        ; DOS set-vector service for interrupt 0Ch
    int 0x21                              ; route serial receive interrupts to GDBSRV
    mov dx, int0                          ; DX = our divide-error handler offset
    mov ax, 0x2500                        ; DOS set-vector service for INT 0
    int 0x21                              ; stop in GDB on divide errors
    mov dx, int6                          ; DX = our invalid-opcode handler offset
    mov ax, 0x2506                        ; DOS set-vector service for INT 6
    int 0x21                              ; stop in GDB on invalid opcodes
    pop ds                                ; restore caller's data segment

    ; Unmask COM1's IRQ4, preserving the prior PIC mask for detach.
    in al, 0x21                           ; read master PIC interrupt mask
    mov [cs:pic_mask], al                 ; save mask so detach can restore it exactly
    and al, 0xEF                           ; clear bit 4 to unmask IRQ4
    out 0x21, al                          ; allow UART interrupts to reach CPU

    call ser_init                         ; configure COM1 UART and drain stale bytes

    mov ah, 9                             ; DOS print-$-terminated-string service
    mov dx, msg_ok                        ; DS:DX = installation-success message
    int 0x21                              ; tell user GDBSRV is resident

    call ser_irq_enable                   ; accept incoming RSP bytes via IRQ4

    ; TSR: keep from PSP to resident_end in paragraphs
    mov dx, resident_end                  ; DX = byte offset immediately after resident code/data
    add dx, 15                             ; round up before converting bytes to paragraphs
    shr dx, 4                              ; DX = paragraph count to keep resident
    mov ax, 0x3100                         ; DOS terminate-and-stay-resident service
    int 0x21                              ; remain installed; discard transient init code
