; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


%include "play/leaf_loc_HNGM.asm"          ; 0x0000

loc_JTQK_0007.mouse_off1 equ configure_music_device
%include "shared/drv/loc_JTQK_0007.asm"          ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ music_set_data
%include "shared/drv/loc_JTQK_000b.asm"          ; 0x000b

loc_JTQK_000f.leaf_loc1 equ stop_music_playback
%include "shared/drv/loc_JTQK_000f.asm"          ; 0x000f

loc_JTQK_0013.update_mouse_pointer1 equ music_set_tempo_volume
%include "shared/drv/loc_JTQK_0013.asm"          ; 0x0013

loc_JTQK_0017.load_picture1 equ play_select_device
%include "shared/drv/loc_JTQK_0017.asm"          ; 0x0017

loc_JTQK_001b.draw_text1 equ music_is_playing
%include "shared/drv/loc_JTQK_001b.asm"          ; 0x001b

loc_JTQK_001f.load_screen1 equ wait_for_music
%include "shared/drv/loc_JTQK_001f.asm"          ; 0x001f

%include "play/music_start.asm"            ; 0x0023

%include "play/mpu401_reset_with_retries.asm" ; 0x00b6

%include "play/opl_init.asm"               ; 0x00c4

%include "play/configure_music_device.asm" ; 0x00fe

%include "play/music_set_data.asm"         ; 0x0154

%include "play/music_is_playing.asm"       ; 0x016e

%include "play/wait_for_music.asm"         ; 0x0183

%include "play/stop_music_playback.asm"    ; 0x01b0

%include "play/opl_keys_off.asm"           ; 0x01e6

%include "play/mpu_all_notes_off.asm"      ; 0x0222

%include "play/music_set_tempo_volume.asm" ; 0x023f

sample_counter_seed_e    equ __zinsn_0846 + 0x2
sample_data_segment_b    equ __zinsn_08be + 0x1
sample_stream_offset     equ __zinsn_08c3 + 0x1
sample_counter_seed_b    equ __zinsn_08cf + 0x5
sample_counter_seed_f    equ __zinsn_097a + 0x2
sample_data_segment_c    equ __zinsn_09a3 + 0x1
sample_stream_offset_alt equ __zinsn_09a8 + 0x1
sample_counter_seed_c    equ __zinsn_09b6 + 0x5
sample_counter_seed_d    equ __zinsn_0a52 + 0x2
saved_int08_offset       equ __zinsn_0b0f + 0x1
saved_int08_segment      equ __zinsn_0b0f + 0x3
sample_data_segment_a    equ __zinsn_18e7 + 0x1
sample_offset            equ __zinsn_18f1 + 0x1
sample_counter_seed_a    equ __zinsn_18ff + 0x5
%include "play/play_select_device.asm"     ; 0x0294

%include "play/play_build_velocity_curves.asm" ; 0x065a

%include "play/opl_silent_note_pulse.asm"  ; 0x06ec

%include "play/build_sample_count_table.asm" ; 0x077b

%include "play/opl_write.asm"              ; 0x07f6

%include "play/opl_delay_long.asm"         ; 0x0821

%include "play/opl_delay_short.asm"        ; 0x0831

%include "play/sample_fraction_interrupt.asm" ; 0x0841

loc_121d equ __zinsn_121c + 0x1
loc_LPSH                 equ dissolve_area
dissolve_area.show_area1 equ loc_121d
%include "shared/drv/dissolve_area.asm"               ; 0x086b

%include "play/data/sample_position.asm"   ; 0x086e

%include "play/data/sample_limit.asm"      ; 0x086f

; sample_stream_offset     equ __zinsn_08c3 + 0x1
; sample_stream_offset_alt equ __zinsn_09a8 + 0x1
%include "play/io_loc_sample_interrupt.asm" ; 0x0870

; saved_int08_offset  equ __zinsn_0b0f + 0x1
; saved_int08_segment equ __zinsn_0b0f + 0x3
%include "play/sound_stop_and_restore_timer.asm" ; 0x09d4

%include "play/set_int08_vector.asm"       ; 0x0a2a

%include "play/speaker_sample_interrupt.asm" ; 0x0a41

%include "play/mark_timer_handler_installed.asm" ; 0x0a6d

%include "play/data/music_device.asm"      ; 0x0a7c

%include "play/data/play_device.asm"       ; 0x0a7d

%include "play/data/stream_running.asm"    ; 0x0a7e

%include "play/data/restart_delay.asm"     ; 0x0a7f

%include "play/data/tick_divider.asm"      ; 0x0a81

%include "play/data/chain_period.asm"      ; 0x0a83

%include "play/data/chain_countdown.asm"   ; 0x0a85

%include "play/data/cseg_0a89.asm"         ; 0x0a89

%include "play/data/sample_output_port.asm" ; 0x0a8d

%include "play/data/saved_pic_mask.asm"    ; 0x0a8f

%include "play/data/play_sample_mode_flag.asm" ; 0x0a90

%include "play/data/cseg_0a92.asm"         ; 0x0a92

%include "play/data/timer_handler_installed.asm" ; 0x0a94

%include "play/data/sample_step_fraction.asm" ; 0x0a95

%include "play/data/cseg_0a96.asm"         ; 0x0a96

%include "play/data/music_enabled.asm"     ; 0x0a9a

%include "play/data/loop_at_end.asm"       ; 0x0a9d

%include "play/data/stream_start_offset.asm" ; 0x0a9e

%include "play/data/cseg_0aa0.asm"         ; 0x0aa0

%include "play/data/stream_segment.asm"    ; 0x0aa2

%include "play/data/stream_offset.asm"     ; 0x0aa4

%include "play/data/music_tempo.asm"       ; 0x0aa6

%include "play/data/playback_volume.asm"   ; 0x0aa8

%include "play/data/last_playback_volume.asm" ; 0x0aa9

%include "play/data/music_patch_segment.asm" ; 0x0aac

%include "play/data/music_patch_offset.asm" ; 0x0aae

%include "play/data/event_class_flag.asm"  ; 0x0ad7

%include "play/data/note_started.asm"      ; 0x0ad8

; saved_int08_offset  equ __zinsn_0b0f + 0x1
; saved_int08_segment equ __zinsn_0b0f + 0x3
%include "play/music_tick_exit.asm"        ; 0x0ad9

%include "play/device_load_patch.asm"      ; 0x1167

%include "play/device_nop.asm"             ; 0x1184

%include "play/device_note_on.asm"         ; 0x1185

%include "play/device_note_off.asm"        ; 0x11a2

%include "play/data/event_byte_counts.asm" ; 0x11bf

%include "play/data/channel_last_byte.asm" ; 0x11c6

%include "play/data/byte_remap_table.asm"  ; 0x11d6

%include "play/data/current_event.asm"     ; 0x11d7

%include "play/data/event_channel.asm"     ; 0x11d8

%include "play/data/event_command.asm"     ; 0x11d9

%include "play/mpu_set_volume.asm"         ; 0x11da

%include "play/mpu_send_byte.asm"          ; 0x11fb

mpu401_read_ready_flag equ mpu401_write_ready_flag + 0x1
%include "play/mpu401_reset_and_sync.asm"  ; 0x1217

%include "play/loc_OSJN.asm"               ; 0x12af

%include "play/data/opl_operator_map.asm"  ; 0x12df

%include "play/opl_channel_operators.asm"  ; 0x12f1

%include "play/opl_apply_volume.asm"       ; 0x1302

%include "play/opl_write_note_pair.asm"    ; 0x1344

%include "play/opl_load_patch.asm"         ; 0x137a

%include "play/data/opl_register_shadow.asm" ; 0x1429

%include "play/data/opl_register_shadow_b1_bc.asm" ; 0x14da

%include "play/data/opl_rhythm_register_shadow.asm" ; 0x14e6

%include "play/data/opl_register_shadow_c0_ff.asm" ; 0x14e9

%include "play/data/opl_fnum_table.asm"    ; 0x1529

%include "play/data/opl_semitone_octave.asm" ; 0x16a9

%include "play/data/opl_semitone_step.asm" ; 0x1709

%include "play/data/opl_key_on_bit.asm"    ; 0x1774

%include "play/opl_note_on.asm"            ; 0x1775

%include "play/opl_note_off.asm"           ; 0x18cb

; sample_offset equ __zinsn_18f1 + 0x1
%include "play/pit_sample_interrupt.asm"   ; 0x18e4

%include "play/data/cseg_1939.asm"         ; 0x1939

%include "play/data/sample_count_table.asm" ; 0x193a

%include "play/data/opl_velocity_curve_prefix.asm" ; 0x19ba

%include "play/data/opl_velocity_scale_table.asm" ; 0x1a3a

