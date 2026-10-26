; auto-generated
load_file_data:
    mov ax, 0xfff4                   ; 0x0146
    call aztec_csav                  ; 0x0149
    mov ax, 0                        ; 0x014c
    push ax                          ; 0x014f
    push ax                          ; 0x0150
    push word [bp + 4]               ; 0x0151
    call data_file_path              ; 0x0154
    add sp, byte 4                   ; 0x0157
    push ax                          ; 0x015a
    call aztec_open                  ; 0x015b
    add sp, byte 4                   ; 0x015e
    mov word [bp - 2], ax            ; 0x0161
    cmp ax, strict word 0xffff       ; 0x0164
    jne short .forward1              ; 0x0167
    mov ax, 6                        ; 0x0169
    push ax                          ; 0x016c
    call release_and_exit            ; 0x016d
    pop cx                           ; 0x0170
.forward1:
    mov ax, 2                        ; 0x0171
    push ax                          ; 0x0174
    mov ax, 0                        ; 0x0175
    mov dx, 0                        ; 0x0178
    push dx                          ; 0x017b
    push ax                          ; 0x017c
    push word [bp - 2]               ; 0x017d
    call aztec_lseek                 ; 0x0180
    add sp, byte 8                   ; 0x0183
    mov word [bp - 4], dx            ; 0x0186
    mov word [bp - 6], ax            ; 0x0189
    push word [bp - 4]               ; 0x018c
    push word [bp - 6]               ; 0x018f
    call app_malloc                  ; 0x0192
    add sp, byte 4                   ; 0x0195
    mov word [bp - 8], dx            ; 0x0198
    mov word [bp - 0xa], ax          ; 0x019b
    push word [bp - 6]               ; 0x019e
    call aztec_malloc                ; 0x01a1
    pop cx                           ; 0x01a4
    mov word [bp - 0xc], ax          ; 0x01a5
    cmp word [bp - 8], byte 0        ; 0x01a8
    jne short .forward2              ; 0x01ac
    cmp word [bp - 0xa], byte 0      ; 0x01ae
.forward2:
    je short .forward3               ; 0x01b2
    cmp word [bp - 0xc], byte 0      ; 0x01b4
    jne short .forward4              ; 0x01b8
.forward3:
    mov ax, 6                        ; 0x01ba
    push ax                          ; 0x01bd
    call release_and_exit            ; 0x01be
    pop cx                           ; 0x01c1
.forward4:
    mov ax, 0                        ; 0x01c2
    push ax                          ; 0x01c5
    mov ax, 0                        ; 0x01c6
    mov dx, 0                        ; 0x01c9
    push dx                          ; 0x01cc
    push ax                          ; 0x01cd
    push word [bp - 2]               ; 0x01ce
    call aztec_lseek                 ; 0x01d1
    add sp, byte 8                   ; 0x01d4
    push word [bp - 6]               ; 0x01d7
    push word [bp - 0xc]             ; 0x01da
    push word [bp - 2]               ; 0x01dd
    call aztec_read                  ; 0x01e0
    add sp, byte 6                   ; 0x01e3
    push word [bp - 2]               ; 0x01e6
    call aztec_close                 ; 0x01e9
    pop cx                           ; 0x01ec
    push word [bp - 6]               ; 0x01ed
    push word [bp - 8]               ; 0x01f0
    push word [bp - 0xa]             ; 0x01f3
    mov ax, word [bp - 0xc]          ; 0x01f6
    mov dx, ds                       ; 0x01f9
    push dx                          ; 0x01fb
    push ax                          ; 0x01fc
    call app_memmove                 ; 0x01fd
    add sp, byte 0xa                 ; 0x0200
    push word [bp - 0xc]             ; 0x0203
    call aztec_free                  ; 0x0206
    pop cx                           ; 0x0209
    mov ax, word [bp - 0xa]          ; 0x020a
    mov dx, word [bp - 8]            ; 0x020d
    ret                              ; 0x0210
