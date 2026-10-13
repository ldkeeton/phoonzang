; auto-generated
api_idx_000a:
    mov ax, 0xfff6                   ; 0x04ca
    call aztec_csav                  ; 0x04cd
    mov ax, 0                        ; 0x04d0
    push ax                          ; 0x04d3
    push ax                          ; 0x04d4
    push word [bss_9434]             ; 0x04d5
    push word [bss_9432]             ; 0x04d9
    call ds_loc_3b89                 ; 0x04dd
    add sp, byte 8                   ; 0x04e0
    cmp word [bss_9436], byte 0      ; 0x04e3
    jle short @..api_idx_000a.l1     ; 0x04e8
    mov byte [bp - 0x000a], 1        ; 0x04ea
    mov byte [bp - 0x0009], 0        ; 0x04ee
    mov ax, 0                        ; 0x04f2
    push ax                          ; 0x04f5
    push ax                          ; 0x04f6
    lea ax, word [bp - 0x000a]       ; 0x04f7
    push ax                          ; 0x04fa
    mov ax, 0                        ; 0x04fb
    push ax                          ; 0x04fe
    mov ax, 0xc7                     ; 0x04ff
    push ax                          ; 0x0502
    mov ax, 0x41                     ; 0x0503
    sub ax, word [bss_9436]          ; 0x0506
    push ax                          ; 0x050a
    mov ax, 0x13f                    ; 0x050b
    push ax                          ; 0x050e
    mov ax, 0                        ; 0x050f
    push ax                          ; 0x0512
    mov ax, 0x2d                     ; 0x0513
    push ax                          ; 0x0516
    mov ax, 0x5a                     ; 0x0517
    push ax                          ; 0x051a
    mov ax, 0xf                      ; 0x051b
    push ax                          ; 0x051e
    call ds_loc_4218                 ; 0x051f
    add sp, byte 0x16                ; 0x0522
@..api_idx_000a.l1:
    mov ax, 5                        ; 0x0525
    cmp word [bss_9438], byte 0      ; 0x0528
    jne short @..api_idx_000a.l2     ; 0x052d
    mov ax, word [bp + 0x4]          ; 0x052f
    inc ax                           ; 0x0532
    inc ax                           ; 0x0533
@..api_idx_000a.l2:
    mov byte [bp - 0x000a], al       ; 0x0534
    mov byte [bp - 0x0009], 0        ; 0x0537
    mov ax, 0                        ; 0x053b
    push ax                          ; 0x053e
    push ax                          ; 0x053f
    lea ax, word [bp - 0x000a]       ; 0x0540
    push ax                          ; 0x0543
    mov ax, 0                        ; 0x0544
    push ax                          ; 0x0547
    mov ax, 0xc7                     ; 0x0548
    push ax                          ; 0x054b
    mov ax, 0                        ; 0x054c
    push ax                          ; 0x054f
    mov ax, 0x13f                    ; 0x0550
    push ax                          ; 0x0553
    mov ax, 0                        ; 0x0554
    push ax                          ; 0x0557
    mov ax, 0x14                     ; 0x0558
    sub ax, word [bss_9436]          ; 0x055b
    add ax, strict word 0x19         ; 0x055f
    push ax                          ; 0x0562
    mov ax, 0x5a                     ; 0x0563
    push ax                          ; 0x0566
    mov ax, 0xf                      ; 0x0567
    push ax                          ; 0x056a
    call ds_loc_4218                 ; 0x056b
    add sp, byte 0x16                ; 0x056e
    ret                              ; 0x0571
