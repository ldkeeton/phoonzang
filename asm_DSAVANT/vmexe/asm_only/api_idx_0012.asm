; auto-generated
; asm only
api_idx_0012:
    mov ax, 0xffee                   ; 0x00db
    call aztec_csav                  ; 0x00de
    mov word [bp - 0x000e], 0        ; 0x00e1
    mov word [bp - 0x000c], 0        ; 0x00e6
    mov word [bp - 0x000a], 0        ; 0x00eb
    mov ax, 0x248                    ; 0x00f0
    imul word [bp + 0x4]             ; 0x00f3
    mov bx, ax                       ; 0x00f6
    mov al, byte [bx + 0x5e37]       ; 0x00f8
    sub ah, ah                       ; 0x00fc
    mov word [bp - 0x0008], ax       ; 0x00fe
    mov al, byte [bx + 0x5e38]       ; 0x0101
    sub ah, ah                       ; 0x0105
    mov word [bp - 0x0006], ax       ; 0x0107
    mov word [bp - 0x0004], 0        ; 0x010a
    mov word [bp - 0x0002], 9        ; 0x010f
    mov ax, word [bx + 0x5c14]       ; 0x0114
    mov bx, 0x64                     ; 0x0118
    imul bx                          ; 0x011b
    push ax                          ; 0x011d
    push dx                          ; 0x011e
    mov ax, 0x248                    ; 0x011f
    imul word [bp + 0x4]             ; 0x0122
    mov bx, ax                       ; 0x0125
    mov ax, word [bx + 0x5c16]       ; 0x0127
    cwd                              ; 0x012b
    mov cx, ax                       ; 0x012c
    mov bx, dx                       ; 0x012e
    pop dx                           ; 0x0130
    pop ax                           ; 0x0131
    call aztec_ldv                   ; 0x0132
    mov word [bp - 0x0010], dx       ; 0x0135
    mov word [bp - 0x0012], ax       ; 0x0138
    cmp dx, byte 0                   ; 0x013b
    jg short @..api_idx_0012.l1      ; 0x013e
    jne short @..api_idx_0012.l2     ; 0x0140
    cmp ax, strict word 0x32         ; 0x0142
    jbe short @..api_idx_0012.l2     ; 0x0145
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x0147
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x0149
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x014c
    jg short @..api_idx_0012.l4      ; 0x014f
    jne short @..api_idx_0012.l5     ; 0x0151
    cmp ax, strict word 0x42         ; 0x0153
    jbe short @..api_idx_0012.l5     ; 0x0156
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x0158
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x015a
    mov word [bp - 0x000a], 0xa      ; 0x015f
    cmp word [bp - 0x0008], byte 3   ; 0x0164
    jle short @..api_idx_0012.l6     ; 0x0168
    mov word [bp - 0x0008], 3        ; 0x016a
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x016f
    jle short @..api_idx_0012.l7     ; 0x0173
    mov word [bp - 0x0006], 3        ; 0x0175
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x017a
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x017d
    jg short @..api_idx_0012.l9      ; 0x0180
    jne short @..api_idx_0012.l10    ; 0x0182
    cmp ax, strict word 0x4b         ; 0x0184
    jbe short @..api_idx_0012.l10    ; 0x0187
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x0189
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x018b
    mov word [bp - 0x000c], 0xa      ; 0x0190
    mov word [bp - 0x000a], 0x14     ; 0x0195
    cmp word [bp - 0x0008], byte 2   ; 0x019a
    jle short @..api_idx_0012.l11    ; 0x019e
    mov word [bp - 0x0008], 2        ; 0x01a0
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x01a5
    jle short @..api_idx_0012.l12    ; 0x01a9
    mov word [bp - 0x0006], 2        ; 0x01ab
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x01b0
    imul word [bp + 0x4]             ; 0x01b3
    mov bx, ax                       ; 0x01b6
    mov ax, word [bx + 0x5c12]       ; 0x01b8
    mov cx, 0x64                     ; 0x01bc
    cwd                              ; 0x01bf
    idiv cx                          ; 0x01c0
    mov word [bp - 0x0004], ax       ; 0x01c2
    mov word [bp - 0x0002], 0x83     ; 0x01c5
    jmp short @..api_idx_0012.l17    ; 0x01ca
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x01cc
    jg short @..api_idx_0012.l14     ; 0x01d0
    jne short @..api_idx_0012.l15    ; 0x01d2
    cmp word [bp - 0x0012], byte 0x5a ; 0x01d4
    jbe short @..api_idx_0012.l15    ; 0x01d8
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x01da
@..api_idx_0012.l15:
    mov word [bp - 0x000e], 2        ; 0x01dc
    mov word [bp - 0x000c], 0x14     ; 0x01e1
    mov word [bp - 0x000a], 0x28     ; 0x01e6
    mov word [bp - 0x0008], 1        ; 0x01eb
    mov word [bp - 0x0006], 1        ; 0x01f0
    mov ax, 0x248                    ; 0x01f5
    imul word [bp + 0x4]             ; 0x01f8
    mov bx, ax                       ; 0x01fb
    mov ax, word [bx + 0x5c12]       ; 0x01fd
    mov cx, 0x32                     ; 0x0201
    cwd                              ; 0x0204
    idiv cx                          ; 0x0205
    mov word [bp - 0x0004], ax       ; 0x0207
    mov word [bp - 0x0002], 0x54     ; 0x020a
    jmp short @..api_idx_0012.l17    ; 0x020f
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x0211
    mov word [bp - 0x000c], 0x28     ; 0x0216
    mov word [bp - 0x000a], 0x50     ; 0x021b
    mov word [bp - 0x0008], 1        ; 0x0220
    mov word [bp - 0x0006], 1        ; 0x0225
    mov ax, 0x248                    ; 0x022a
    imul word [bp + 0x4]             ; 0x022d
    mov bx, ax                       ; 0x0230
    mov ax, word [bx + 0x5c12]       ; 0x0232
    mov cx, 0x19                     ; 0x0236
    cwd                              ; 0x0239
    idiv cx                          ; 0x023a
    mov word [bp - 0x0004], ax       ; 0x023c
    mov word [bp - 0x0002], 0x16     ; 0x023f
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x0244
    mov di, bss_90bc                 ; 0x0247
    mov cx, ds                       ; 0x024a
    mov es, cx                       ; 0x024c
    mov cx, 7                        ; 0x024e
    rep movsw                        ; 0x0251
    mov ax, 0x90bc                   ; 0x0253
    ret                              ; 0x0256
