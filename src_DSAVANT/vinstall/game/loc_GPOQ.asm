; auto-generated
loc_GPOQ:
    push bp                          ; 0x05b6
    mov bp, sp                       ; 0x05b7
    add sp, byte -10                 ; 0x05b9
    push si                          ; 0x05bc
    mov byte [bp - 2], 0             ; 0x05bd
    mov byte [bp - 1], 0             ; 0x05c1
    push word [bp + 8]               ; 0x05c5
    call aztec_strlen                ; 0x05c8
    pop cx                           ; 0x05cb
    mov word [bp - 6], ax            ; 0x05cc
    add word [bp + 6], ax            ; 0x05cf
    push word [bp + 6]               ; 0x05d2
    push word [bp + 4]               ; 0x05d5
    call bios_set_cursor             ; 0x05d8
    add sp, byte 4                   ; 0x05db
    mov ax, 1                        ; 0x05de
    push ax                          ; 0x05e1
    call loc_GUOQ                    ; 0x05e2
    pop cx                           ; 0x05e5
.back1:
    call dos_con_in_noecho           ; 0x05e6
    push ax                          ; 0x05e9
    call loc_MPRS                    ; 0x05ea
    pop cx                           ; 0x05ed
    mov word [bp - 4], ax            ; 0x05ee
    cmp ax, strict word 0xd          ; 0x05f1
    jne short .forward1              ; 0x05f4
    jmp near .forward8               ; 0x05f6
.forward1:
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    call loc_GUOQ                    ; 0x05fd
    pop cx                           ; 0x0600
    cmp word [bp - 4], byte 8        ; 0x0601
    je short .forward2               ; 0x0605
    cmp word [bp - 4], byte 8        ; 0x0607
    jne short .forward5              ; 0x060b
.forward2:
    cmp word [bp - 6], byte 0        ; 0x060d
    jle short .forward3              ; 0x0611
    dec word [bp - 6]                ; 0x0613
    mov bx, word [bp + 8]            ; 0x0616
    mov si, word [bp - 6]            ; 0x0619
    mov byte [bx + si], 0            ; 0x061c
    dec word [bp + 6]                ; 0x061f
    push word [bp + 6]               ; 0x0622
    push word [bp + 4]               ; 0x0625
    call bios_set_cursor             ; 0x0628
    add sp, byte 4                   ; 0x062b
    mov byte [bp - 2], 0x20          ; 0x062e
    lea ax, word [bp - 2]            ; 0x0632
    push ax                          ; 0x0635
    call bios_put_text               ; 0x0636
    pop cx                           ; 0x0639
    push word [bp + 6]               ; 0x063a
    push word [bp + 4]               ; 0x063d
    call bios_set_cursor             ; 0x0640
    add sp, byte 4                   ; 0x0643
    jmp short .forward4              ; 0x0646
.forward3:
    call loc_NJKV                    ; 0x0648
.forward4:
    jmp short .forward7              ; 0x064b
.forward5:
    mov ax, word [bp - 6]            ; 0x064d
    cmp ax, word [bp + 0xa]          ; 0x0650
    jl short .forward6               ; 0x0653
    call loc_NJKV                    ; 0x0655
    jmp short .forward7              ; 0x0658
.forward6:
    cmp word [bp - 4], byte 0x20     ; 0x065a
    jl short .forward7               ; 0x065e
    cmp word [bp - 4], byte 0x7f     ; 0x0660
    jg short .forward7               ; 0x0664
    mov al, byte [bp - 4]            ; 0x0666
    mov bx, word [bp + 8]            ; 0x0669
    mov si, word [bp - 6]            ; 0x066c
    mov byte [bx + si], al           ; 0x066f
    inc word [bp - 6]                ; 0x0671
    mov bx, word [bp + 8]            ; 0x0674
    mov si, word [bp - 6]            ; 0x0677
    mov byte [bx + si], 0            ; 0x067a
    mov al, byte [bp - 4]            ; 0x067d
    mov byte [bp - 2], al            ; 0x0680
    lea ax, word [bp - 2]            ; 0x0683
    push ax                          ; 0x0686
    call bios_put_text               ; 0x0687
    pop cx                           ; 0x068a
    inc word [bp + 6]                ; 0x068b
.forward7:
    mov ax, 1                        ; 0x068e
    push ax                          ; 0x0691
    call loc_GUOQ                    ; 0x0692
    pop cx                           ; 0x0695
    jmp near .back1                  ; 0x0696
.forward8:
    mov ax, 0                        ; 0x0699
    push ax                          ; 0x069c
    call loc_GUOQ                    ; 0x069d
    pop cx                           ; 0x06a0
    pop si                           ; 0x06a1
    mov sp, bp                       ; 0x06a2
    pop bp                           ; 0x06a4
    ret                              ; 0x06a5
loc_MPRS:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte -2                  ; 0x06a9
    cmp word [bp + 4], byte 0        ; 0x06ac
    jne short .forward2              ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 2], ax            ; 0x06b5
    jmp short .forward1              ; 0x06b8
.back1:
    mov ax, 8                        ; 0x06ba
.back2:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
.back3:
    mov ax, 9                        ; 0x06c1
    jmp short .back2                 ; 0x06c4
.back4:
    mov ax, 0xa                      ; 0x06c6
    jmp short .back2                 ; 0x06c9
.back5:
    mov ax, 0xb                      ; 0x06cb
    jmp short .back2                 ; 0x06ce
.forward1:
    cmp ax, strict word 0x48         ; 0x06d0
    je short .back3                  ; 0x06d3
    cmp ax, strict word 0x4b         ; 0x06d5
    je short .back1                  ; 0x06d8
    cmp ax, strict word 0x4d         ; 0x06da
    je short .back4                  ; 0x06dd
    cmp ax, strict word 0x50         ; 0x06df
    je short .back5                  ; 0x06e2
    jmp short .forward3              ; 0x06e4
.forward2:
    push word [bp + 4]               ; 0x06e6
    call aztec_toupper               ; 0x06e9
    pop cx                           ; 0x06ec
    jmp short .back2                 ; 0x06ed
.forward3:
    jmp short .back2                 ; 0x06ef
