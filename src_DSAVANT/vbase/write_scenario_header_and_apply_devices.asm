; auto-generated
write_scenario_header_and_apply_devices:
    mov ax, 0xfffe                   ; 0x3fac
    call aztec_csav                  ; 0x3faf
    mov ax, 2                        ; 0x3fb2
    push ax                          ; 0x3fb5
    mov ax, 0                        ; 0x3fb6
    push ax                          ; 0x3fb9
    mov ax, scenario_header_filename ; 0x3fba
    push ax                          ; 0x3fbd
    call data_file_path              ; 0x3fbe
    add sp, byte 4                   ; 0x3fc1
    push ax                          ; 0x3fc4
    call aztec_open                  ; 0x3fc5
    add sp, byte 4                   ; 0x3fc8
    mov word [scenario_header_fd], ax ; 0x3fcb
    cmp ax, strict word 0xffff       ; 0x3fce
    jne short .forward1              ; 0x3fd1
    mov ax, 0x14                     ; 0x3fd3
    push ax                          ; 0x3fd6
    call release_and_exit            ; 0x3fd7
    pop cx                           ; 0x3fda
.forward1:
    mov ax, 0                        ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, 0                        ; 0x3fdf
    mov dx, 0                        ; 0x3fe2
    push dx                          ; 0x3fe5
    push ax                          ; 0x3fe6
    push word [scenario_header_fd]   ; 0x3fe7
    call aztec_lseek                 ; 0x3feb
    add sp, byte 8                   ; 0x3fee
    mov ax, 0x34c                    ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, scenario_header_data     ; 0x3ff5
    push ax                          ; 0x3ff8
    push word [scenario_header_fd]   ; 0x3ff9
    call aztec_write                 ; 0x3ffd
    add sp, byte 6                   ; 0x4000
    mov word [bp - 2], ax            ; 0x4003
    cmp ax, strict word 0xffff       ; 0x4006
    jne short .forward2              ; 0x4009
    mov ax, 0x14                     ; 0x400b
    push ax                          ; 0x400e
    call release_and_exit            ; 0x400f
    pop cx                           ; 0x4012
.forward2:
    push word [scenario_header_fd]   ; 0x4013
    call aztec_close                 ; 0x4017
    pop cx                           ; 0x401a
    mov al, byte [startup_option_byte] ; 0x401b
    sub ah, ah                       ; 0x401e
    mov word [startup_option], ax    ; 0x4020
    mov ax, 1                        ; 0x4023
    push ax                          ; 0x4026
    call call_wait_sound             ; 0x4027
    pop cx                           ; 0x402a
    test word [startup_hardware_flags], 0x1000 ; 0x402b
    je short .forward4               ; 0x4031
    cmp byte [startup_aux_option_b], 1 ; 0x4033
    jne short .forward4              ; 0x4038
    cmp word [mouse_active], byte 0  ; 0x403a
    jne short .forward3              ; 0x403f
    call call_mouse_init             ; 0x4041
.forward3:
    mov word [mouse_active], 1       ; 0x4044
    jmp short .forward6              ; 0x404a
.forward4:
    cmp word [mouse_active], byte 1  ; 0x404c
    jne short .forward5              ; 0x4051
    call call_mouse_off              ; 0x4053
.forward5:
    mov word [mouse_active], 0       ; 0x4056
.forward6:
    call flush_keyboard              ; 0x405c
    ret                              ; 0x405f
