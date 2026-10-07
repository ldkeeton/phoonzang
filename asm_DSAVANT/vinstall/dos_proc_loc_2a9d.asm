dos_proc_loc_2a9d:
    mov ah, 0x4d                     ; 0x2a9d
    int 0x21 ; DOS get return code
    jae short @..dos_proc_loc_2a9d.l1 ; 0x2aa1
    neg ax                           ; 0x2aa3
@..dos_proc_loc_2a9d.l1:
    ret                              ; 0x2aa5
