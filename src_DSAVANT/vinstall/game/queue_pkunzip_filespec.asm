; auto-generated
queue_pkunzip_filespec:
    push bp                          ; 0x102d
    mov bp, sp                       ; 0x102e
    mov ax, pkunzip_filespec_list    ; 0x1030
    push ax                          ; 0x1033
    call aztec_strlen                ; 0x1034
    pop cx                           ; 0x1037
    cmp ax, strict word 0x50         ; 0x1038
    jg short .forward1               ; 0x103b
    mov ax, pkunzip_filespec_list    ; 0x103d
    push ax                          ; 0x1040
    call aztec_strlen                ; 0x1041
    pop cx                           ; 0x1044
    cmp ax, strict word 0            ; 0x1045
    jle short .forward2              ; 0x1048
    push word [bp + 0xa]             ; 0x104a
    call aztec_strlen                ; 0x104d
    pop cx                           ; 0x1050
    test ax, ax                      ; 0x1051
    jne short .forward2              ; 0x1053
.forward1:
    mov ax, pkunzip_filespec_list    ; 0x1055
    push ax                          ; 0x1058
    push word [bp + 8]               ; 0x1059
    push word [bp + 6]               ; 0x105c
    push word [bp + 4]               ; 0x105f
    call run_pkunzip_archive         ; 0x1062
    add sp, byte 8                   ; 0x1065
    mov ax, empty_filespec_list      ; 0x1068
    push ax                          ; 0x106b
    mov ax, pkunzip_filespec_list    ; 0x106c
    push ax                          ; 0x106f
    call aztec_strcpy                ; 0x1070
    add sp, byte 4                   ; 0x1073
    jmp short .forward3              ; 0x1076
.forward2:
    mov ax, pkunzip_filespec_list    ; 0x1078
    push ax                          ; 0x107b
    call aztec_strlen                ; 0x107c
    pop cx                           ; 0x107f
    cmp ax, strict word 0            ; 0x1080
    jle short .forward3              ; 0x1083
    mov ax, filespec_separator       ; 0x1085
    push ax                          ; 0x1088
    mov ax, pkunzip_filespec_list    ; 0x1089
    push ax                          ; 0x108c
    call aztec_strcat                ; 0x108d
    add sp, byte 4                   ; 0x1090
.forward3:
    push word [bp + 0xa]             ; 0x1093
    mov ax, pkunzip_filespec_list    ; 0x1096
    push ax                          ; 0x1099
    call aztec_strcat                ; 0x109a
    add sp, byte 4                   ; 0x109d
    mov sp, bp                       ; 0x10a0
    pop bp                           ; 0x10a2
    ret                              ; 0x10a3
