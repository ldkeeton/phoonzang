; auto-generated
; asm only
leaf_loc_KVRQ:
    cmp byte [cs:cseg_2a08 - IMAGE_BASE], 0 ; 0x2a4f
    je short @..leaf_loc_KVRQ.l1     ; 0x2a55
    retf                             ; 0x2a57
@..leaf_loc_KVRQ.l1:
    mov al, 0xff                     ; 0x2a58
    mov byte [cs:cseg_2a08 - IMAGE_BASE], al ; 0x2a5a
    shr cx, 1                        ; 0x2a5e
    mov word [cs:cseg_1aeb - IMAGE_BASE], cx ; 0x2a60
    mov word [cs:cseg_1aed - IMAGE_BASE], dx ; 0x2a65
