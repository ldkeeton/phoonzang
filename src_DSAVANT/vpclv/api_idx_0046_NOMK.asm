; auto-generated
api_idx_0046_NOMK:
    mov ax, 0xffba                   ; 0x4fca
    call aztec_csav                  ; 0x4fcd
    mov ax, 0                        ; 0x4fd0
    push ax                          ; 0x4fd3
    mov ax, 0x248                    ; 0x4fd4
    imul word [bp + 4]               ; 0x4fd7
    mov bx, ax                       ; 0x4fda
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x4fdc
    sub ah, ah                       ; 0x4fe0
    push ax                          ; 0x4fe2
    lea ax, word [bp - 0x44]         ; 0x4fe3
    push ax                          ; 0x4fe6
    mov ax, 0                        ; 0x4fe7
    push ax                          ; 0x4fea
    call data_record_io              ; 0x4feb
    add sp, byte 8                   ; 0x4fee
    mov word [roster_drawn], 0       ; 0x4ff1
.back1:
    mov ax, 0x248                    ; 0x4ff7
    imul word [bp + 4]               ; 0x4ffa
    mov bx, ax                       ; 0x4ffd
    cmp word [bx + party_records + pc_rec.power_cap], byte 0x10 ; 0x4fff
    jge short .forward1              ; 0x5004
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x5006
    shl ax, 1                        ; 0x500a
    shl ax, 1                        ; 0x500c
    mov bx, ax                       ; 0x500e
    add bx, bp                       ; 0x5010
    mov ax, word [bx - 0x48]         ; 0x5012
    mov dx, word [bx - 0x46]         ; 0x5015
    mov word [bp - 2], dx            ; 0x5018
    mov word [bp - 4], ax            ; 0x501b
    jmp short .forward2              ; 0x501e
.forward1:
    mov ax, 0x248                    ; 0x5020
    imul word [bp + 4]               ; 0x5023
    mov bx, ax                       ; 0x5026
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x5028
    add ax, strict word 0xfff0       ; 0x502c
    mov word [bp - 0x46], ax         ; 0x502f
    mov ax, word [bp - 8]            ; 0x5032
    mov dx, word [bp - 6]            ; 0x5035
    sub ax, word [bp - 0xc]          ; 0x5038
    sbb dx, word [bp - 0xa]          ; 0x503b
    push ax                          ; 0x503e
    push dx                          ; 0x503f
    mov ax, word [bp - 0x46]         ; 0x5040
    cwd                              ; 0x5043
    mov cx, ax                       ; 0x5044
    mov bx, dx                       ; 0x5046
    pop dx                           ; 0x5048
    pop ax                           ; 0x5049
    push ax                          ; 0x504a
    push dx                          ; 0x504b
    mul bx                           ; 0x504c
    mov bx, ax                       ; 0x504e
    pop ax                           ; 0x5050
    mul cx                           ; 0x5051
    add bx, ax                       ; 0x5053
    pop ax                           ; 0x5055
    mul cx                           ; 0x5056
    add dx, bx                       ; 0x5058
    add ax, word [bp - 8]            ; 0x505a
    adc dx, word [bp - 6]            ; 0x505d
    mov word [bp - 2], dx            ; 0x5060
    mov word [bp - 4], ax            ; 0x5063
.forward2:
    mov ax, 0x248                    ; 0x5066
    imul word [bp + 4]               ; 0x5069
    mov bx, ax                       ; 0x506c
    mov ax, word [bx + party_records + pc_rec.experience] ; 0x506e
    mov dx, word [bx + party_records + pc_rec.experience + 0x2] ; 0x5072
    cmp dx, word [bp - 2]            ; 0x5076
    jl short .forward3               ; 0x5079
    jne short .forward4              ; 0x507b
    cmp ax, word [bp - 4]            ; 0x507d
    jae short .forward4              ; 0x5080
.forward3:
    jmp short .forward7              ; 0x5082
.forward4:
    cmp word [bp + 6], byte 0        ; 0x5084
    je short .forward5               ; 0x5088
    push word [bp + 4]               ; 0x508a
    call api_idx_00a4_PTJS           ; 0x508d
    pop cx                           ; 0x5090
    jmp short .forward6              ; 0x5091
.forward5:
    mov ax, 1                        ; 0x5093
    ret                              ; 0x5096
.forward6:
    jmp short .forward8              ; 0x5097
.forward7:
    mov ax, 0                        ; 0x5099
    ret                              ; 0x509c
.forward8:
    jmp near .back1                  ; 0x509d
    db 0xc3
