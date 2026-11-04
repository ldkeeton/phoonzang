; auto-generated
long_to_str:
    push bp                          ; 0x0315
    mov bp, sp                       ; 0x0316
    add sp, byte -4                  ; 0x0318
    push di                          ; 0x031b
    push si                          ; 0x031c
    mov ax, word [bp + 4]            ; 0x031d
    mov dx, word [bp + 6]            ; 0x0320
    mov word [bp - 2], dx            ; 0x0323
    mov word [bp - 4], ax            ; 0x0326
    cmp dx, byte 0                   ; 0x0329
    jg short .forward1               ; 0x032c
    jne short .forward2              ; 0x032e
    cmp ax, strict word 0            ; 0x0330
    jb short .forward2               ; 0x0333
.forward1:
    jmp short .forward3              ; 0x0335
.forward2:
    neg dx                           ; 0x0337
    neg ax                           ; 0x0339
    sbb dx, byte 0                   ; 0x033b
    mov word [bp + 6], dx            ; 0x033e
    mov word [bp + 4], ax            ; 0x0341
.forward3:
    mov si, 0                        ; 0x0344
.back1:
    mov ax, word [bp + 4]            ; 0x0347
    mov dx, word [bp + 6]            ; 0x034a
    mov cx, 0xa                      ; 0x034d
    mov bx, 0                        ; 0x0350
    call aztec_lrm                   ; 0x0353
    add ax, strict word 0x30         ; 0x0356
    adc dx, byte 0                   ; 0x0359
    mov di, si                       ; 0x035c
    inc si                           ; 0x035e
    mov bx, word [bp + 8]            ; 0x035f
    mov byte [bx + di], al           ; 0x0362
    mov ax, word [bp + 4]            ; 0x0364
    mov dx, word [bp + 6]            ; 0x0367
    mov cx, 0xa                      ; 0x036a
    mov bx, 0                        ; 0x036d
    call aztec_ldv                   ; 0x0370
    mov word [bp + 6], dx            ; 0x0373
    mov word [bp + 4], ax            ; 0x0376
    cmp dx, byte 0                   ; 0x0379
    jg short .forward4               ; 0x037c
    jne short .forward5              ; 0x037e
    cmp ax, strict word 0            ; 0x0380
    jbe short .forward5              ; 0x0383
.forward4:
    jmp short .back1                 ; 0x0385
.forward5:
    cmp word [bp - 2], byte 0        ; 0x0387
    jg short .forward6               ; 0x038b
    jne short .forward7              ; 0x038d
    cmp word [bp - 4], byte 0        ; 0x038f
    jb short .forward7               ; 0x0393
.forward6:
    jmp short .forward8              ; 0x0395
.forward7:
    mov di, si                       ; 0x0397
    inc si                           ; 0x0399
    mov bx, word [bp + 8]            ; 0x039a
    mov byte [bx + di], 0x2d         ; 0x039d
.forward8:
    mov bx, word [bp + 8]            ; 0x03a0
    mov byte [bx + si], 0            ; 0x03a3
    push word [bp + 8]               ; 0x03a6
    call reverse_text                ; 0x03a9
    pop cx                           ; 0x03ac
    pop si                           ; 0x03ad
    pop di                           ; 0x03ae
    mov sp, bp                       ; 0x03af
    pop bp                           ; 0x03b1
    ret                              ; 0x03b2
