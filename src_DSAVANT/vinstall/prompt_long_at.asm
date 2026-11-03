; auto-generated
prompt_long_at:
    push bp                          ; 0x088f
    mov bp, sp                       ; 0x0890
    add sp, strict word 0xfefc       ; 0x0892
    mov byte [bp - 0x103], 0         ; 0x0896
.back1:
    push word [bp + 0xa]             ; 0x089b
    push word [bp + 8]               ; 0x089e
    call bios_set_cursor             ; 0x08a1
    add sp, byte 4                   ; 0x08a4
    push word [bp + 0xc]             ; 0x08a7
    push word [bp + 6]               ; 0x08aa
    push word [bp + 4]               ; 0x08ad
    call put_long_right_aligned      ; 0x08b0
    add sp, byte 6                   ; 0x08b3
    push word [bp + 0xc]             ; 0x08b6
    lea ax, word [bp - 0x103]        ; 0x08b9
    push ax                          ; 0x08bd
    push word [bp + 0xa]             ; 0x08be
    push word [bp + 8]               ; 0x08c1
    call loc_GPOQ                    ; 0x08c4
    add sp, byte 8                   ; 0x08c7
    cmp byte [bp - 0x103], 0         ; 0x08ca
    jne short .forward1              ; 0x08cf
    mov ax, word [bp + 4]            ; 0x08d1
    mov dx, word [bp + 6]            ; 0x08d4
    mov word [bp - 2], dx            ; 0x08d7
    mov word [bp - 4], ax            ; 0x08da
    jmp short .forward2              ; 0x08dd
.forward1:
    lea ax, word [bp - 0x103]        ; 0x08df
    push ax                          ; 0x08e3
    call parse_long                  ; 0x08e4
    pop cx                           ; 0x08e7
    mov word [bp - 2], dx            ; 0x08e8
    mov word [bp - 4], ax            ; 0x08eb
.forward2:
    mov ax, word [bp - 4]            ; 0x08ee
    mov dx, word [bp - 2]            ; 0x08f1
    cmp dx, word [bp + 0x10]         ; 0x08f4
    jg short .forward3               ; 0x08f7
    jne short .forward4              ; 0x08f9
    cmp ax, word [bp + 0xe]          ; 0x08fb
    jbe short .forward4              ; 0x08fe
.forward3:
    jmp short .back1                 ; 0x0900
.forward4:
    push word [bp + 0xa]             ; 0x0902
    push word [bp + 8]               ; 0x0905
    call bios_set_cursor             ; 0x0908
    add sp, byte 4                   ; 0x090b
    push word [bp + 0xc]             ; 0x090e
    push word [bp - 2]               ; 0x0911
    push word [bp - 4]               ; 0x0914
    call put_long_right_aligned      ; 0x0917
    add sp, byte 6                   ; 0x091a
    mov ax, word [bp - 4]            ; 0x091d
    mov dx, word [bp - 2]            ; 0x0920
    mov sp, bp                       ; 0x0923
    pop bp                           ; 0x0925
    ret                              ; 0x0926
