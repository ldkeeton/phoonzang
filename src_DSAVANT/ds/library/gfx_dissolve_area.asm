; auto-generated
gfx_dissolve_area:
    push bp                          ; 0x424c
    mov bp, sp                       ; 0x424d
    cld                              ; 0x424f
    call far [cs:gfx_drv_dissolve_area - IMAGE_BASE] ; 0x4250
    mov sp, bp                       ; 0x4255
    pop bp                           ; 0x4257
    ret                              ; 0x4258
