api_idx_0050:
    mov ax, 0xffb0                   ; 0x081a
    call ds_dispatch_f40b            ; 0x081d
    lea ax, word [bp - 0x0050]       ; 0x0820
    push ax                          ; 0x0823
    push word [bp + 0x4]             ; 0x0824
    call ds_dispatch_b53b            ; 0x0827
    add sp, byte 4                   ; 0x082a
    lea ax, word [bp - 0x0050]       ; 0x082d
    push ax                          ; 0x0830
    call api_idx_0008                ; 0x0831
    pop cx                           ; 0x0834
    ret                              ; 0x0835
loc_0836:
    mov ax, 0                        ; 0x0836
    call ds_dispatch_f40b            ; 0x0839
    mov ax, word [bp + 0x4]          ; 0x083c
    mov word [dseg_8f46], ax         ; 0x083f
    mov ax, word [bp + 0x6]          ; 0x0842
    mov word [dseg_8f44], ax         ; 0x0845
    push ax                          ; 0x0848
    push word [dseg_8f46]            ; 0x0849
    mov ax, 0x8f3e                   ; 0x084d
    push ax                          ; 0x0850
    mov ax, 0x8f40                   ; 0x0851
    push ax                          ; 0x0854
    mov ax, 0x8f42                   ; 0x0855
    push ax                          ; 0x0858
    call api_idx_0004                ; 0x0859
    add sp, byte 0x0a                ; 0x085c
    ret                              ; 0x085f
loc_0860:
    mov ax, 0                        ; 0x0860
    call ds_dispatch_f40b            ; 0x0863
    mov word [dseg_918a], 0          ; 0x0866
    mov ax, word [dseg_830c]         ; 0x086c
    cmp ax, word [dseg_8f28]         ; 0x086f
    jne short @..local.l20           ; 0x0873
    mov ax, word [dseg_8f3e]         ; 0x0875
    cmp ax, word [dseg_8f2a]         ; 0x0878
    jne short @..local.l20           ; 0x087c
    mov ax, word [dseg_8f42]         ; 0x087e
    cmp ax, word [dseg_8f2e]         ; 0x0881
    jne short @..local.l20           ; 0x0885
    mov ax, word [dseg_8f40]         ; 0x0887
    cmp ax, word [dseg_8f2c]         ; 0x088a
    jne short @..local.l20           ; 0x088e
    mov word [dseg_918a], 1          ; 0x0890
@..local.l20:
    ret                              ; 0x0896
