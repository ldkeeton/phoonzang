; auto-generated
api_idx_0004_SRMT:
    mov ax, 0xfffc                   ; 0x9e79
    call aztec_csav                  ; 0x9e7c
    mov word [bp - 2], 0             ; 0x9e7f
.back1:
    push word [bp - 2]               ; 0x9e84
    mov ax, 0x26                     ; 0x9e87
    imul word [bp + 6]               ; 0x9e8a
    add ax, slot_records + slot_record.selected_bits ; 0x9e8d
    push ax                          ; 0x9e90
    call test_bit                    ; 0x9e91
    add sp, byte 4                   ; 0x9e94
    test ax, ax                      ; 0x9e97
    je short .forward1               ; 0x9e99
    mov ax, 1                        ; 0x9e9b
    push ax                          ; 0x9e9e
    push word [bp - 2]               ; 0x9e9f
    mov ax, 0x26                     ; 0x9ea2
    imul word [bp + 4]               ; 0x9ea5
    add ax, slot_records + slot_record.selected_bits ; 0x9ea8
    push ax                          ; 0x9eab
    call set_bitmap_bit              ; 0x9eac
    add sp, byte 6                   ; 0x9eaf
.forward1:
    push word [bp - 2]               ; 0x9eb2
    mov ax, 0x26                     ; 0x9eb5
    imul word [bp + 6]               ; 0x9eb8
    add ax, slot_records + slot_record.assigned_bits ; 0x9ebb
    push ax                          ; 0x9ebe
    call test_bit                    ; 0x9ebf
    add sp, byte 4                   ; 0x9ec2
    test ax, ax                      ; 0x9ec5
    je short .forward2               ; 0x9ec7
    push word [bp + 6]               ; 0x9ec9
    mov ax, 3                        ; 0x9ecc
    push ax                          ; 0x9ecf
    push word [bp - 2]               ; 0x9ed0
    push word [bp + 4]               ; 0x9ed3
    call api_idx_0002_NVPU           ; 0x9ed6
    add sp, byte 8                   ; 0x9ed9
    push word [bp - 2]               ; 0x9edc
    push word [bp + 6]               ; 0x9edf
    push word [bp + 4]               ; 0x9ee2
    call assign_slot_bit             ; 0x9ee5
    add sp, byte 6                   ; 0x9ee8
.forward2:
    inc word [bp - 2]                ; 0x9eeb
    mov ax, word [bp - 2]            ; 0x9eee
    cmp ax, strict word 0xb          ; 0x9ef1
    jl short .back1                  ; 0x9ef4
    ret                              ; 0x9ef6
