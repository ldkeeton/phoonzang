aztec_cret:
    pop bx                           ; 0x4652
    push bp                          ; 0x4653
    mov bp, sp                       ; 0x4654
    add sp, ax                       ; 0x4656
    cmp sp, bp                       ; 0x4658
    ja short @..aztec_cret.l2        ; 0x465a
    cmp sp, word [data_0c7a]         ; 0x465c
    jb short @..aztec_cret.l2        ; 0x4660
    cmp sp, word [data_0c7e]         ; 0x4662
    ja short @..aztec_cret.l1        ; 0x4666
    mov word [data_0c7e], sp         ; 0x4668
@..aztec_cret.l1:
    push di                          ; 0x466c
    push si                          ; 0x466d
    call bx                          ; 0x466e
    pop si                           ; 0x4670
    pop di                           ; 0x4671
    mov sp, bp                       ; 0x4672
    pop bp                           ; 0x4674
    ret                              ; 0x4675
@..aztec_cret.l2:
    mov sp, bp                       ; 0x4676
    jmp near @..aztec_cret.l3        ; 0x4678
