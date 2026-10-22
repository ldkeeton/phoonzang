; auto-generated
cache_area_disk_error:
    mov ax, cs
    mov ds, ax
    mov dx, cache_area_disk_error.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
cache_area_disk_error.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk in CACHEAREA().', 0
    db 0x0a, 0x24

