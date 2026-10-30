; auto-generated
release_resources:
    mov ax, 0xfffe                   ; 0x0242
    call aztec_csav                  ; 0x0245
    mov word [bp - 2], 0             ; 0x0248
    mov ax, word [bp + 4]            ; 0x024d
    jmp near .forward18              ; 0x0250
jumptable_0363_case_0:
    cmp word [runtime_near_buffer_1k], byte 0 ; 0x0253
    je short release_resources.forward1 ; 0x0258
    push word [runtime_near_buffer_1k] ; 0x025a
    call aztec_free                  ; 0x025e
    pop cx                           ; 0x0261
release_resources.forward1:
    cmp word [runtime_buffer_3k], byte 0 ; 0x0262
    je short release_resources.forward2 ; 0x0267
    push word [runtime_buffer_3k]    ; 0x0269
    call aztec_free                  ; 0x026d
    pop cx                           ; 0x0270
release_resources.forward2:
    cmp word [maze_tables], byte 0   ; 0x0271
    je short release_resources.forward3 ; 0x0276
    push word [maze_tables]          ; 0x0278
    call aztec_free                  ; 0x027c
    pop cx                           ; 0x027f
release_resources.forward3:
    cmp word [maze_data], byte 0     ; 0x0280
    je short release_resources.forward4 ; 0x0285
    push word [maze_data]            ; 0x0287
    call aztec_free                  ; 0x028b
    pop cx                           ; 0x028e
release_resources.forward4:
    cmp word [runtime_buffer_4k_b_seg], byte 0 ; 0x028f
    jne short release_resources.forward5 ; 0x0294
    cmp word [runtime_buffer_4k_b], byte 0 ; 0x0296
release_resources.forward5:
    je short release_resources.forward6 ; 0x029b
    push word [runtime_buffer_4k_b_seg] ; 0x029d
    push word [runtime_buffer_4k_b]  ; 0x02a1
    call app_free                    ; 0x02a5
    add sp, byte 4                   ; 0x02a8
release_resources.forward6:
    cmp word [runtime_buffer_4k_a_seg], byte 0 ; 0x02ab
    jne short release_resources.forward7 ; 0x02b0
    cmp word [runtime_buffer_4k_a], byte 0 ; 0x02b2
release_resources.forward7:
    je short release_resources.forward8 ; 0x02b7
    push word [runtime_buffer_4k_a_seg] ; 0x02b9
    push word [runtime_buffer_4k_a]  ; 0x02bd
    call app_free                    ; 0x02c1
    add sp, byte 4                   ; 0x02c4
release_resources.forward8:
    cmp word [runtime_buffer_1k_seg], byte 0 ; 0x02c7
    jne short release_resources.forward9 ; 0x02cc
    cmp word [runtime_buffer_1k], byte 0 ; 0x02ce
release_resources.forward9:
    je short jumptable_0363_case_11  ; 0x02d3
    push word [runtime_buffer_1k_seg] ; 0x02d5
    push word [runtime_buffer_1k]    ; 0x02d9
    call app_free                    ; 0x02dd
    add sp, byte 4                   ; 0x02e0
jumptable_0363_case_11:
    push word [data_file_fd]         ; 0x02e3
    call aztec_close                 ; 0x02e7
    pop cx                           ; 0x02ea
jumptable_0363_case_10:
    push word [msg_dbs_fd]           ; 0x02eb
    call aztec_close                 ; 0x02ef
    pop cx                           ; 0x02f2
jumptable_0363_case_7:
    cmp word [pointer_image_two_seg], byte 0 ; 0x02f3
    jne short release_resources.forward11 ; 0x02f8
    cmp word [pointer_image_two], byte 0 ; 0x02fa
release_resources.forward11:
    je short release_resources.forward12 ; 0x02ff
    push word [pointer_image_two_seg] ; 0x0301
    push word [pointer_image_two]    ; 0x0305
    call app_free                    ; 0x0309
    add sp, byte 4                   ; 0x030c
release_resources.forward12:
    cmp word [mouse_pointer_shape_seg], byte 0 ; 0x030f
    jne short release_resources.forward13 ; 0x0314
    cmp word [mouse_pointer_shape], byte 0 ; 0x0316
release_resources.forward13:
    je short release_resources.forward14 ; 0x031b
    push word [mouse_pointer_shape_seg] ; 0x031d
    push word [mouse_pointer_shape]  ; 0x0321
    call app_free                    ; 0x0325
    add sp, byte 4                   ; 0x0328
release_resources.forward14:
    cmp word [pointer_image_zero_seg], byte 0 ; 0x032b
    jne short release_resources.forward15 ; 0x0330
    cmp word [pointer_image_zero], byte 0 ; 0x0332
release_resources.forward15:
    je short jumptable_0363_case_4   ; 0x0337
    push word [pointer_image_zero_seg] ; 0x0339
    push word [pointer_image_zero]   ; 0x033d
    call app_free                    ; 0x0341
    add sp, byte 4                   ; 0x0344
jumptable_0363_case_4:
    mov word [bp - 2], 1             ; 0x0347
    mov ax, 1                        ; 0x034c
    push ax                          ; 0x034f
    call call_wait_sound             ; 0x0350
    pop cx                           ; 0x0353
    call call_stop_sound             ; 0x0354
    cmp word [mouse_active], byte 0  ; 0x0357
    je short jumptable_0363_case_1   ; 0x035c
    call call_mouse_off              ; 0x035e
jumptable_0363_case_1:
    jmp short release_resources.forward19 ; 0x0361
jumptable_0363:
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0363
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0365
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0367
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0369
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036b
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036d
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036f
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0371
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0373
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0375
    dw jumptable_0363_case_10 - IMAGE_BASE     ; 0x0377
    dw jumptable_0363_case_11 - IMAGE_BASE     ; 0x0379
    dw jumptable_0363_case_11 - IMAGE_BASE     ; 0x037b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x037d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x037f
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0381
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0383
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0385
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0387
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0389
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038f
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0391
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0393
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0395
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0397
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0399
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039f
release_resources.forward18:
    cmp ax, strict word 0x1f         ; 0x03a1
    jae short release_resources.forward19 ; 0x03a4
    xchg bx, ax                      ; 0x03a6
    shl bx, 1                        ; 0x03a7
    jmp [cs:bx + jumptable_0363 - IMAGE_BASE] ; 0x03a9
release_resources.forward19:
    cmp word [bp - 2], byte 1        ; 0x03ae
    jne short release_resources.return1 ; 0x03b2
    call restore_video_and_release_mem ; 0x03b4
release_resources.return1:
    ret                              ; 0x03b7
