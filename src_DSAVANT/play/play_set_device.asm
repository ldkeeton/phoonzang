; auto-generated
play_set_device:
    mov ah, 0                        ; 0x0322
    int 0x13 ; BIOS disk: reset disk system
    cmp byte [bp + 0x15], 4          ; 0x0326
    jne short @..play_set_device.l1  ; 0x032a
    mov byte [bp + 0x15], 1          ; 0x032c
@..play_set_device.l1:
    mov ax, 0x64                     ; 0x0330
    mov word [cs:cseg_0a81 - IMAGE_BASE], ax ; 0x0333
    mov al, byte [bp + 0x15]         ; 0x0337
    mov byte [cs:play_device - IMAGE_BASE], al ; 0x033a
    mov byte [cs:cseg_0a90 - IMAGE_BASE], 0 ; 0x033e
    pushf                            ; 0x0344
    pop ax                           ; 0x0345
    test ah, 0x80                    ; 0x0346
    je short @..play_set_device.l2   ; 0x0349
    inc byte [cs:cseg_0a90 - IMAGE_BASE] ; 0x034b
@..play_set_device.l2:
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x0350
    shl bl, 1                        ; 0x0355
    xor bh, bh                       ; 0x0357
    jmp [cs:bx + 0x45e]              ; 0x0359
    xchg dx, ax                      ; 0x035e
    push es                          ; 0x035f
    fadd qword [si]                  ; 0x0360
    push 0x6804                      ; 0x0362
    add al, 0xca                     ; 0x0365
    add al, 0x8b                     ; 0x0367
    inc si                           ; 0x0369
    adc byte [data_89a3], ch         ; 0x036a
    or ax, word [bx + si + 0x2e]     ; 0x036e
    mov word [data_0b8b], ax         ; 0x0371
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short @..loc_035e.l1          ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
@..loc_035e.l1:
    mov word [cs:cseg_0a8d - IMAGE_BASE], ax ; 0x0381
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0385
    mov al, 7                        ; 0x038a
    out dx, al                       ; 0x038c
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x038d
    in al, dx                        ; 0x0392
    or al, 0xc0                      ; 0x0393
    out dx, al                       ; 0x0395
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0396
    mov al, 0xa                      ; 0x039b
    out dx, al                       ; 0x039d
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x039e
    in al, dx                        ; 0x03a3
    or al, 0x10                      ; 0x03a4
    out dx, al                       ; 0x03a6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03a7
    mov al, 0xf                      ; 0x03ac
    out dx, al                       ; 0x03ae
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03af
    mov al, 0x70                     ; 0x03b4
    out dx, al                       ; 0x03b6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03b7
    mov al, 0xe                      ; 0x03bc
    out dx, al                       ; 0x03be
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03bf
    mov al, 0x80                     ; 0x03c4
    out dx, al                       ; 0x03c6
    jmp near jumptable_035e_case_0   ; 0x03c7
jumptable_035e_case_4:
    jmp near jumptable_035e_case_0   ; 0x03ca
    add byte [bx + si], al           ; 0x03cd
    add byte [bx + si], al           ; 0x03cf
    add byte [bx + si], al           ; 0x03d1
    add byte [bx + si], al           ; 0x03d3
    add byte [bx + si], al           ; 0x03d5
    add byte [bx + si], al           ; 0x03d7
    add byte [bx + si], al           ; 0x03d9
    add al, ch                       ; 0x03db
    or ax, 0xe903                    ; 0x03dd
    mov al, 1                        ; 0x03e0
