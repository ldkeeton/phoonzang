; auto-generated
    db 0x3a, 0x4b
aztec_csav:
    pop bx                           ; 0x4652
    push bp                          ; 0x4653
    mov bp, sp                       ; 0x4654
    add sp, ax                       ; 0x4656
    cmp sp, bp                       ; 0x4658
    ja short @..aztec_csav.stackfault ; 0x465a
    cmp sp, word [_sbot]             ; 0x465c
    jb short @..aztec_csav.stackfault ; 0x4660
    cmp sp, word [_lowwater]         ; 0x4662
    ja short @..aztec_csav.nodeeper  ; 0x4666
    mov word [_lowwater], sp         ; 0x4668
@..aztec_csav.nodeeper:
    push di                          ; 0x466c
    push si                          ; 0x466d
    call bx                          ; 0x466e
aztec_cret:
    pop si                           ; 0x4670
    pop di                           ; 0x4671
    mov sp, bp                       ; 0x4672
    pop bp                           ; 0x4674
    ret                              ; 0x4675
@..aztec_csav.stackfault:
    mov sp, bp                       ; 0x4676
    jmp near aztec_impl_stkover      ; 0x4678
