; auto-generated
cache_screen_slot_in_use:
    mov ax, cs
    mov ds, ax
    mov dx, cache_screen_slot_in_use.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
cache_screen_slot_in_use.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24

