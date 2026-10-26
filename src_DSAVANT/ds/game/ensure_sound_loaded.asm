; auto-generated
ensure_sound_loaded: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x29f1
    call aztec_csav                  ; 0x29f4
    mov ax, word [loaded_sound_id]   ; 0x29f7
    cmp ax, word [bp + 4]            ; 0x29fa
    je short .return1                ; 0x29fd
    mov ax, 1                        ; 0x29ff
    push ax                          ; 0x2a02
    call gfx_wait_sound              ; 0x2a03
    pop cx                           ; 0x2a06
    cmp word [loaded_sound_id], byte -1 ; 0x2a07
    je short .forward1               ; 0x2a0c
    mov ax, 0x10                     ; 0x2a0e
    push ax                          ; 0x2a11
    call wait_and_free_sound         ; 0x2a12
    pop cx                           ; 0x2a15
.forward1:
    mov ax, word [bp + 4]            ; 0x2a16
    mov word [loaded_sound_id], ax   ; 0x2a19
    mov ax, 0                        ; 0x2a1c
    push ax                          ; 0x2a1f
    mov ax, 0x10                     ; 0x2a20
    push ax                          ; 0x2a23
    push word [bp + 4]               ; 0x2a24
    call load_sound_file             ; 0x2a27
    add sp, byte 6                   ; 0x2a2a
.return1:
    ret                              ; 0x2a2d
