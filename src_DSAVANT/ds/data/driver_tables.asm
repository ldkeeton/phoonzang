; auto-generated
driver_block_start:
    times 4 db 0
driver_block_table:
    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01
font_header_seg:
    db 0x00, 0x00, 0x40, 0x00
misc_table_seg:
    db 0x00, 0x00, 0x30, 0x05
cseg_2f52:
    db 0x00, 0x00, 0xd0, 0x01
cseg_2f56:
    db 0x00, 0x00
driver_block_table_end:
    times 4 db 0
    dw vga_palette - IMAGE_BASE                ; 0x2f5c
    dw far_delay_ms - IMAGE_BASE               ; 0x2f5e
ems_allocated_paragraphs:
    db 0x00, 0x00
ems_handle:
    db 0x00, 0x00
ems_page_frame_segment:
    db 0x00, 0x00
mouse_button_count:
    db 0x00
drv_slot_music_start:
    dw play_entry(0), 0                        ; 0x2f67
drv_slot_configure_music_device:
    dw play_entry(1), 0                        ; 0x2f6b
drv_slot_music_set_data:
    dw play_entry(2), 0                        ; 0x2f6f
drv_slot_stop_music_playback:
    dw play_entry(3), 0                        ; 0x2f73
drv_slot_music_set_tempo_volume:
    dw play_entry(4), 0                        ; 0x2f77
drv_slot_play_select_device:
    dw play_entry(5), 0                        ; 0x2f7b
drv_slot_music_is_playing:
    dw play_entry(6), 0                        ; 0x2f7f
drv_slot_wait_for_music:
    dw play_entry(7), 0                        ; 0x2f83
