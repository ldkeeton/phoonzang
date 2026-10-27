; auto-generated
aztec_csav:
    pop bx                           ; 0x4652
    push bp                          ; 0x4653
    mov bp, sp                       ; 0x4654
    add sp, ax                       ; 0x4656
    cmp sp, bp                       ; 0x4658
    ja short ds_loc_4676             ; 0x465a
    cmp sp, word [_sbot]             ; 0x465c
    jb short ds_loc_4676             ; 0x4660
    cmp sp, word [_lowwater]         ; 0x4662
    ja short .forward1               ; 0x4666
    mov word [_lowwater], sp         ; 0x4668
.forward1:
    push di                          ; 0x466c
    push si                          ; 0x466d
    call bx                          ; 0x466e
