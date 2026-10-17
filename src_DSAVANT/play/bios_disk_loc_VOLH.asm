; auto-generated
bios_disk_loc_VOLH:
    push bp                          ; 0x0294
    mov bp, sp                       ; 0x0295
    push di                          ; 0x0297
    push si                          ; 0x0298
    push es                          ; 0x0299
    push ds                          ; 0x029a
    push dx                          ; 0x029b
    push bx                          ; 0x029c
    cmp byte [bp + 0x14], 0xff       ; 0x029d
    jne short @..bios_disk_loc_VOLH.l1 ; 0x02a1
    jmp near loc_0322                ; 0x02a3
@..bios_disk_loc_VOLH.l1:
    mov al, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x02a6
    call leaf_loc_NLLU               ; 0x02aa
    mov byte [bp + 0x15], al         ; 0x02ad
    jmp near loc_03e2                ; 0x02b0
