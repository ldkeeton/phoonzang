; auto-generated
cache_area_maze_mem_full:
    mov ax, cs
    mov ds, ax
    mov dx, cache_area_maze_mem_full.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
cache_area_maze_mem_full.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24

