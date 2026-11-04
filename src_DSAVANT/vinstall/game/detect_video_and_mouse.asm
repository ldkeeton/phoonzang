; auto-generated
detect_video_and_mouse:
    push bp                          ; 0x245e
    mov bp, sp                       ; 0x245f
    sub sp, byte 4                   ; 0x2461
    push ds                          ; 0x2464
    push es                          ; 0x2465
    push si                          ; 0x2466
    push di                          ; 0x2467
    call detect_video_adapter_type   ; 0x2468
    call detect_mouse                ; 0x246b
    mov ax, word [bp - 2]            ; 0x246e
    pop di                           ; 0x2471
    pop si                           ; 0x2472
    pop es                           ; 0x2473
    pop ds                           ; 0x2474
    mov sp, bp                       ; 0x2475
    pop bp                           ; 0x2477
    ret                              ; 0x2478
