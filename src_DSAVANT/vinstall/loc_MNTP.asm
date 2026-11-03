; auto-generated
loc_MNTP:
    push bp                          ; 0x0823
    mov bp, sp                       ; 0x0824
    add sp, strict word 0xfefe       ; 0x0826
    mov ax, word [bp + 4]            ; 0x082a
    mov word [bp - 2], ax            ; 0x082d
.back1:
    push word [bp + 8]               ; 0x0830
    push word [bp + 6]               ; 0x0833
    call bios_set_cursor             ; 0x0836
    add sp, byte 4                   ; 0x0839
    lea ax, word [bp - 0x101]        ; 0x083c
    push ax                          ; 0x0840
    push word [bp - 2]               ; 0x0841
    call int_to_str                  ; 0x0844
    add sp, byte 4                   ; 0x0847
    lea ax, word [bp - 0x101]        ; 0x084a
    push ax                          ; 0x084e
    call bios_video_loc_HMPN         ; 0x084f
    pop cx                           ; 0x0852
    mov ax, dseg_144b                ; 0x0853
    push ax                          ; 0x0856
    call bios_put_text               ; 0x0857
    pop cx                           ; 0x085a
    push word [bp + 0xa]             ; 0x085b
    lea ax, word [bp - 0x101]        ; 0x085e
    push ax                          ; 0x0862
    push word [bp + 8]               ; 0x0863
    push word [bp + 6]               ; 0x0866
    call loc_GPOQ                    ; 0x0869
    add sp, byte 8                   ; 0x086c
    lea ax, word [bp - 0x101]        ; 0x086f
    push ax                          ; 0x0873
    call loc_JJNP                    ; 0x0874
    pop cx                           ; 0x0877
    mov word [bp - 2], ax            ; 0x0878
    mov ax, word [bp - 2]            ; 0x087b
    cmp ax, word [bp + 0xe]          ; 0x087e
    jl short .back1                  ; 0x0881
    cmp ax, word [bp + 0xc]          ; 0x0883
    jg short .back1                  ; 0x0886
    mov ax, word [bp - 2]            ; 0x0888
    mov sp, bp                       ; 0x088b
    pop bp                           ; 0x088d
    ret                              ; 0x088e
