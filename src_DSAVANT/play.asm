; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


thunk_loc_TMGR       equ loc_LPSH
loc_LPSH.mouse_init1 equ loc_MMRI
%include "shared/library/loc_LPSH.asm"         ; 0x0000

loc_JTQK_0007.mouse_off1 equ leaf_loc_UMNS
%include "shared/library/loc_JTQK_0007.asm"          ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ leaf_loc_GJRP
%include "shared/library/loc_JTQK_000b.asm"          ; 0x000b

loc_JTQK_000f.leaf_loc1 equ loc_TJIS
%include "shared/library/loc_JTQK_000f.asm"          ; 0x000f

loc_JTQK_0013.bios_mouse_loc1 equ io_loc_QVTL
%include "shared/library/loc_JTQK_0013.asm"          ; 0x0013

loc_JTQK_0017.load_picture1 equ play_select_device
%include "shared/library/loc_JTQK_0017.asm"          ; 0x0017

loc_JTQK_001b.draw_text1 equ leaf_loc_IQNG
%include "shared/library/loc_JTQK_001b.asm"          ; 0x001b

loc_JTQK_001f.load_screen1 equ leaf_loc_IUKK
%include "shared/library/loc_JTQK_001f.asm"          ; 0x001f

%include "play/loc_MMRI.asm"               ; 0x0023

%include "play/mpu401_reset_with_retries.asm" ; 0x00b6

%include "play/opl_init.asm"               ; 0x00c4

%include "play/leaf_loc_UMNS.asm"          ; 0x00fe

%include "play/string_loc_SIQR.asm"        ; 0x0102

%include "play/leaf_loc_GJRP.asm"          ; 0x0154

%include "play/leaf_loc_IQNG.asm"          ; 0x016e

%include "play/leaf_loc_IUKK.asm"          ; 0x0183

%include "play/loc_TJIS.asm"               ; 0x01b0

%include "play/opl_keys_off.asm"           ; 0x01e6

%include "play/io_loc_MNPU.asm"            ; 0x0203

%include "play/mpu_all_notes_off.asm"      ; 0x0222

%include "play/io_loc_QVTL.asm"            ; 0x023f

%include "play/play_select_device.asm"     ; 0x0294

%include "play/clamp_device.asm"           ; 0x02b3

cseg_0b10 equ __zinsn_0b0f + 0x1
cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/io_loc_PISO.asm"            ; 0x02ba

%include "play/play_set_device.asm"        ; 0x0322

cseg_0848     equ __zinsn_0846 + 0x2
cseg_08bf     equ __zinsn_08be + 0x1
cseg_08c4     equ __zinsn_08c3 + 0x1
cseg_08d4     equ __zinsn_08cf + 0x5
cseg_097c     equ __zinsn_097a + 0x2
cseg_09a4     equ __zinsn_09a3 + 0x1
cseg_09a9     equ __zinsn_09a8 + 0x1
cseg_09bb     equ __zinsn_09b6 + 0x5
cseg_0a54     equ __zinsn_0a52 + 0x2
; cseg_0b10     equ __zinsn_0b0f + 0x1
; cseg_0b12     equ __zinsn_0b0f + 0x3
cseg_18e8     equ __zinsn_18e7 + 0x1
sample_offset equ __zinsn_18f1 + 0x1
cseg_1904     equ __zinsn_18ff + 0x5
%include "play/play_install_handler.asm"   ; 0x03e2

%include "play/leaf_loc_STGJ.asm"          ; 0x0610

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/loc_0614.asm"               ; 0x0614

%include "play/opl_silent_note_pulse.asm"  ; 0x06ec

%include "play/leaf_loc_JKKL.asm"          ; 0x077b

%include "play/opl_write.asm"              ; 0x07f6

%include "play/opl_delay_long.asm"         ; 0x0821

%include "play/opl_delay_short.asm"        ; 0x0831

%include "play/io_loc_UVLK_0841.asm"       ; 0x0841

loc_121d equ __zinsn_121c + 0x1
io_loc_LPSH              equ dissolve_area
dissolve_area.show_area1 equ loc_121d
%include "shared/library/dissolve_area.asm"            ; 0x086b

%include "play/data/cseg_086e.asm"         ; 0x086e

%include "play/io_loc_PVQO.asm"            ; 0x0870

; cseg_08c4 equ __zinsn_08c3 + 0x1
%include "play/io_loc_TGPU.asm"            ; 0x08af

%include "play/loc_095d.asm"               ; 0x095d

%include "play/loc_0969.asm"               ; 0x0969

%include "play/io_loc_UVLK_0975.asm"       ; 0x0975

; cseg_09a9 equ __zinsn_09a8 + 0x1
%include "play/io_loc_PNPV.asm"            ; 0x099f

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/sound_stop_and_restore_timer.asm" ; 0x09d4

%include "play/string_loc_OJPI.asm"        ; 0x0a2a

%include "play/speaker_sample_interrupt.asm" ; 0x0a41

%include "play/io_loc_MPGK.asm"            ; 0x0a6d

%include "play/data/music_device.asm"      ; 0x0a7c

%include "play/data/play_device.asm"       ; 0x0a7d

%include "play/data/stream_running.asm"    ; 0x0a7e

%include "play/data/restart_delay.asm"     ; 0x0a7f

%include "play/data/tick_divider.asm"      ; 0x0a81

%include "play/data/chain_period.asm"      ; 0x0a83

%include "play/data/chain_countdown.asm"   ; 0x0a85

%include "play/data/cseg_0a89.asm"         ; 0x0a89

%include "play/data/saved_pic_mask.asm"    ; 0x0a8f

%include "play/data/cseg_0a90.asm"         ; 0x0a90

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

%include "play/data/music_data_segment.asm" ; 0x0aac

%include "play/data/music_data_offset.asm" ; 0x0aae

%include "play/data/event_class_flag.asm"  ; 0x0ad7

%include "play/data/note_started.asm"      ; 0x0ad8

%include "play/music_stop.asm"             ; 0x0ad9

%include "play/music_player_tick.asm"      ; 0x0af6

; cseg_0b10 equ __zinsn_0b0f + 0x1
; cseg_0b12 equ __zinsn_0b0f + 0x3
%include "play/restore_timer_handler.asm"  ; 0x0c97

%include "play/music_loop_event.asm"       ; 0x0cca

%include "play/data/cseg_0cdf.asm"         ; 0x0cdf

%include "play/data/opl_voice_count.asm"   ; 0x0d3a

%include "play/data/cseg_0d3b.asm"         ; 0x0d3b

%include "play/string_loc_SLGG.asm"        ; 0x0d50

%include "play/store_nibble_event.asm"     ; 0x0e01

%include "play/skip_byte_event.asm"        ; 0x0e11

%include "play/store_word_event.asm"       ; 0x0e15

%include "play/skip_word_event.asm"        ; 0x0e1d

%include "play/note_event_high.asm"        ; 0x0e24

%include "play/leaf_loc_JSPM.asm"          ; 0x0f55

%include "play/note_event_low.asm"         ; 0x1081

%include "play/loc_IMHI.asm"               ; 0x1167

%include "play/loc_PLIR.asm"               ; 0x1184

%include "play/loc_ONLU.asm"               ; 0x1185

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

%include "play/string_loc_OSJN.asm"        ; 0x12af

%include "play/data/cseg_12df.asm"         ; 0x12df

%include "play/leaf_loc_VSLO.asm"          ; 0x12f1

%include "play/loc_QKNN.asm"               ; 0x1302

%include "play/string_loc_NOSM.asm"        ; 0x137a

%include "play/data/cseg_1429.asm"         ; 0x1429

%include "play/loc_NVPH.asm"               ; 0x1775

%include "play/loc_GOTP_17f0.asm"          ; 0x17f0

%include "play/io_loc_VHII.asm"            ; 0x18cb

; sample_offset equ __zinsn_18f1 + 0x1
%include "play/pit_sample_interrupt.asm"   ; 0x18e4

%include "play/data/cseg_1939.asm"         ; 0x1939

%include "play/data/sample_count_table.asm" ; 0x193a

%include "play/data/cseg_19ba.asm"         ; 0x19ba

