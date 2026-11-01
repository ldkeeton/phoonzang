; auto-generated
org 0
bits 16
%include "include/nasm_macros.inc"
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


ln_com_jump                                ; 0x0000

%include "play/driver_dispatch.asm"        ; 0x0003

%include "play/music_start.asm"            ; 0x0023

%include "play/mpu401_reset_with_retries.asm" ; 0x00b6

%include "play/opl_init.asm"               ; 0x00c4

%include "play/configure_music_device.asm" ; 0x00fe

%include "play/data/device_file_extensions.asm" ; 0x0142

%include "play/music_set_data.asm"         ; 0x0154

%include "play/music_is_playing.asm"       ; 0x016e

%include "play/wait_for_music.asm"         ; 0x0183

%include "play/stop_music_playback.asm"    ; 0x01b0

%include "play/opl_keys_off.asm"           ; 0x01e6

%include "play/mpu_all_notes_off.asm"      ; 0x0222

%include "play/music_set_tempo_volume.asm" ; 0x023f

sample_step_imm_e        equ add_sample_step_e + 0x2
sample_data_segment_b    equ load_sample_segment_b + 0x1
sample_stream_offset     equ load_sample_stream + 0x1
sample_step_imm_b        equ add_sample_step_b + 0x5
sample_step_imm_f        equ add_sample_step_f + 0x2
sample_data_segment_c    equ load_sample_segment_c + 0x1
sample_stream_offset_alt equ load_sample_stream_alt + 0x1
sample_step_imm_c        equ add_sample_step_c + 0x5
sample_step_imm_d        equ add_sample_step_d + 0x2
saved_int08_offset       equ chain_saved_int08 + 0x1
saved_int08_segment      equ chain_saved_int08 + 0x3
sample_data_segment_a    equ load_sample_segment_a + 0x1
sample_offset            equ load_sample + 0x1
sample_step_imm_a        equ add_sample_step_a + 0x5
%include "play/play_select_device.asm"     ; 0x0294

%include "play/build_opl_sample_curve.asm" ; 0x065a

%include "play/opl_silent_note_pulse.asm"  ; 0x06ec

%include "play/build_sample_output_table.asm" ; 0x077b

%include "play/opl_write.asm"              ; 0x07f6

%include "play/opl_delay_long.asm"         ; 0x0821

%include "play/opl_delay_short.asm"        ; 0x0831

%include "play/sample_fraction_interrupt.asm" ; 0x0841

%include "play/data/sample_handler_gap.asm" ; 0x086b

%include "play/data/sample_position.asm"   ; 0x086e

%include "play/data/sample_limit.asm"      ; 0x086f

; sample_stream_offset     equ load_sample_stream + 0x1
; sample_stream_offset_alt equ load_sample_stream_alt + 0x1
%include "play/unused_sample_tick_entry.asm" ; 0x0870

; saved_int08_offset  equ chain_saved_int08 + 0x1
; saved_int08_segment equ chain_saved_int08 + 0x3
%include "play/sound_stop_and_restore_timer.asm" ; 0x09d4

%include "play/set_int08_vector.asm"       ; 0x0a2a

%include "play/speaker_sample_interrupt.asm" ; 0x0a41

%include "play/mark_sample_idle.asm"       ; 0x0a6d

%include "play/data/play_state.asm"        ; 0x0a7c

; saved_int08_offset  equ chain_saved_int08 + 0x1
; saved_int08_segment equ chain_saved_int08 + 0x3
%include "play/music_tick_exit.asm"        ; 0x0ad9

%include "play/device_load_patch.asm"      ; 0x1167

%include "play/device_nop.asm"             ; 0x1184

%include "play/device_note_on.asm"         ; 0x1185

%include "play/device_note_off.asm"        ; 0x11a2

%include "play/data/play_events.asm"       ; 0x11bf

%include "play/mpu_set_volume.asm"         ; 0x11da

%include "play/mpu_send_byte.asm"          ; 0x11fb

mpu401_read_ready_flag equ mpu401_write_ready_flag + 0x1
%include "play/mpu401_reset_and_sync.asm"  ; 0x1217

%include "play/device_note_off_noop.asm"   ; 0x12af

%include "play/data/opl_operator_map.asm"  ; 0x12df

%include "play/opl_channel_operators.asm"  ; 0x12f1

%include "play/opl_apply_volume.asm"       ; 0x1302

%include "play/opl_write_operator_level.asm" ; 0x1344

%include "play/opl_load_patch.asm"         ; 0x137a

%include "play/data/opl_tables.asm"        ; 0x1429

%include "play/opl_note_on.asm"            ; 0x1775

%include "play/opl_note_off.asm"           ; 0x18cb

; sample_offset equ load_sample + 0x1
%include "play/pit_sample_interrupt.asm"   ; 0x18e4

%include "play/data/cseg_1939.asm"         ; 0x1939

%include "play/data/sample_output_table.asm" ; 0x193a

%include "play/data/sample_output_table_upper.asm" ; 0x19ba

%include "play/data/opl_velocity_scale_table.asm" ; 0x1a3a

