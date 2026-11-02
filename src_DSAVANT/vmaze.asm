; auto-generated
bits 16
%include "include/structs.inc"
%include "include/msg.inc"
%include "include/host_symbols.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ __zres_end - 0x000e
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw __zres_end                            ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0xac60 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00fa ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0c94 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
variant_1_maze_filename equ __zdseg_end + (__zvariant_1_maze_filename - __zdata_start)
variant_1_water_filename equ __zdseg_end + (__zvariant_1_water_filename - __zdata_start)
variant_2_tree_filename equ __zdseg_end + (__zvariant_2_tree_filename - __zdata_start)
variant_2_other_town_filename equ __zdseg_end + (__zvariant_2_other_town_filename - __zdata_start)
variant_2_tile_filename equ __zdseg_end + (__zvariant_2_tile_filename - __zdata_start)
variant_3_town_filename equ __zdseg_end + (__zvariant_3_town_filename - __zdata_start)
variant_3_other_town_filename equ __zdseg_end + (__zvariant_3_other_town_filename - __zdata_start)
variant_3_water_filename equ __zdseg_end + (__zvariant_3_water_filename - __zdata_start)
variant_3_tile_filename equ __zdseg_end + (__zvariant_3_tile_filename - __zdata_start)
variant_4_tree_filename equ __zdseg_end + (__zvariant_4_tree_filename - __zdata_start)
variant_4_other_cave_filename equ __zdseg_end + (__zvariant_4_other_cave_filename - __zdata_start)
variant_5_cave_filename equ __zdseg_end + (__zvariant_5_cave_filename - __zdata_start)
variant_5_other_cave_filename equ __zdseg_end + (__zvariant_5_other_cave_filename - __zdata_start)
variant_5_water_filename equ __zdseg_end + (__zvariant_5_water_filename - __zdata_start)
variant_6_tree_filename equ __zdseg_end + (__zvariant_6_tree_filename - __zdata_start)
variant_6_other_town_filename equ __zdseg_end + (__zvariant_6_other_town_filename - __zdata_start)
variant_6_water_filename equ __zdseg_end + (__zvariant_6_water_filename - __zdata_start)
dseg_917e equ __zdseg_end + (__zdseg_917e - __zdata_start)
dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9192 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9192 - __zdata_start)
maze_sound_slot_e equ __zdseg_end + (__zobss_9194 - __zdata_start)
maze_sound_slot_f equ __zdseg_end + (__zobss_9196 - __zdata_start)
maze_sound_pair_state equ __zdseg_end + (__zobss_9198 - __zdata_start)
maze_refresh_deadline equ __zdseg_end + (__zobss_919a - __zdata_start)
maze_refresh_deadline_high equ __zdseg_end + (__zobss_919c - __zdata_start)
save_location_flag equ __zdseg_end + (__zobss_919e - __zdata_start)
api_idx_0030_KNRH_bss7087 equ __zdseg_end + (__zobss_91a0 - __zdata_start)
boundary_wall_open equ __zdseg_end + (__zobss_91a6 - __zdata_start)
location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
party_region_level_saved equ __zdseg_end + (__zobss_91b0 - __zdata_start)
maze_message_refresh_pending equ __zdseg_end + (__zobss_91b2 - __zdata_start)
bss_91b4 equ __zdseg_end + (__zobss_91b4 - __zdata_start)
api_idx_0030_KNRH_bss7228 equ __zdseg_end + (__zobss_91b6 - __zdata_start)
api_idx_0030_KNRH_bss7284 equ __zdseg_end + (__zobss_91bc - __zdata_start)
api_idx_0030_KNRH_bss7323 equ __zdseg_end + (__zobss_91c2 - __zdata_start)
api_idx_0030_KNRH_bss7154 equ __zdseg_end + (__zobss_91c8 - __zdata_start)
loc_LPLI_2e98_bss20 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
loc_LPLI_2ec0_bss20 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
boundary_wall_variant equ __zdseg_end + (__zobss_91d4 - __zdata_start)
cell_wall_override_disabled equ __zdseg_end + (__zobss_91d6 - __zdata_start)
api_idx_0012_KQTQ_bss2257 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
api_idx_0008_PGTT_bss177 equ __zdseg_end + (__zobss_91da - __zdata_start)
api_idx_0030_KNRH_bss6993 equ __zdseg_end + (__zobss_91e4 - __zdata_start)
api_idx_0012_KQTQ_bss1037 equ __zdseg_end + (__zobss_91f1 - __zdata_start)
api_idx_0008_PGTT_bss703 equ __zdseg_end + (__zobss_91f3 - __zdata_start)
api_idx_0030_KNRH_bss714 equ __zdseg_end + (__zobss_920a - __zdata_start)
api_idx_0008_PGTT_bss777 equ __zdseg_end + (__zobss_920c - __zdata_start)
api_idx_0008_PGTT_bss798 equ __zdseg_end + (__zobss_9211 - __zdata_start)
api_idx_0012_KQTQ_bss4209 equ __zdseg_end + (__zobss_9223 - __zdata_start)
api_idx_0008_PGTT_bss1636 equ __zdseg_end + (__zobss_9225 - __zdata_start)
api_idx_0012_KQTQ_bss2803 equ __zdseg_end + (__zobss_923c - __zdata_start)
api_idx_0008_PGTT_bss1699 equ __zdseg_end + (__zobss_9240 - __zdata_start)
api_idx_0012_KQTQ_bss135 equ __zdseg_end + (__zobss_926e - __zdata_start)
api_idx_0008_PGTT_bss1762 equ __zdseg_end + (__zobss_9272 - __zdata_start)
api_idx_0012_KQTQ_bss3553 equ __zdseg_end + (__zobss_92a0 - __zdata_start)
api_idx_0008_PGTT_bss1826 equ __zdseg_end + (__zobss_92a2 - __zdata_start)
api_idx_0012_KQTQ_bss2817 equ __zdseg_end + (__zobss_92ba - __zdata_start)
api_idx_0008_PGTT_bss1906 equ __zdseg_end + (__zobss_92be - __zdata_start)
api_idx_0012_KQTQ_bss149 equ __zdseg_end + (__zobss_92ec - __zdata_start)
api_idx_0008_PGTT_bss1961 equ __zdseg_end + (__zobss_92f0 - __zdata_start)
render_queue_count equ __zdseg_end + (__zobss_931e - __zdata_start)
queued_slot_x equ __zdseg_end + (__zobss_9320 - __zdata_start)
queued_slot_y equ __zdseg_end + (__zobss_9322 - __zdata_start)
queued_slot_parameter_4 equ __zdseg_end + (__zobss_9324 - __zdata_start)
queued_slot_parameter_5 equ __zdseg_end + (__zobss_9326 - __zdata_start)
queued_slot_glyph_entry equ __zdseg_end + (__zobss_9328 - __zdata_start)
queued_slot_parameter_1 equ __zdseg_end + (__zobss_9329 - __zdata_start)
queued_slot_parameter_2 equ __zdseg_end + (__zobss_932a - __zdata_start)
queued_slot_parameter_3 equ __zdseg_end + (__zobss_932b - __zdata_start)
queued_slot_index equ __zdseg_end + (__zobss_932c - __zdata_start)
queued_slot_depth equ __zdseg_end + (__zobss_932d - __zdata_start)
queued_slot_scale equ __zdseg_end + (__zobss_932e - __zdata_start)
queued_slot_glyph_column equ __zdseg_end + (__zobss_932f - __zdata_start)
queued_slot_parameter_13 equ __zdseg_end + (__zobss_9330 - __zdata_start)
api_idx_0010_KRNM_bss1234 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
api_idx_0030_KNRH_bss789 equ __zdseg_end + (__zobss_9b1a - __zdata_start)
api_idx_0030_KNRH_bss1076 equ __zdseg_end + (__zobss_9b34 - __zdata_start)
api_idx_0030_KNRH_bss2708 equ __zdseg_end + (__zobss_9b36 - __zdata_start)
api_idx_0030_KNRH_bss2817 equ __zdseg_end + (__zobss_9b38 - __zdata_start)
api_idx_0030_KNRH_bss2824 equ __zdseg_end + (__zobss_9b3a - __zdata_start)
api_idx_0030_KNRH_bss3062 equ __zdseg_end + (__zobss_9b3c - __zdata_start)
api_idx_0030_KNRH_bss3117 equ __zdseg_end + (__zobss_9b3e - __zdata_start)
api_idx_0030_KNRH_bss3184 equ __zdseg_end + (__zobss_9b40 - __zdata_start)
api_idx_0030_KNRH_bss3239 equ __zdseg_end + (__zobss_9b42 - __zdata_start)
api_idx_0030_KNRH_bss3300 equ __zdseg_end + (__zobss_9b44 - __zdata_start)
api_idx_0030_KNRH_bss3361 equ __zdseg_end + (__zobss_9b46 - __zdata_start)
maze_message_state equ __zdseg_end + (__zobss_9b48 - __zdata_start)
object_search_active equ __zdseg_end + (__zobss_9b4a - __zdata_start)
maze_message_row equ __zdseg_end + (__zobss_9b4c - __zdata_start)
maze_message_previous_x equ __zdseg_end + (__zobss_9b4e - __zdata_start)
maze_message_glyph_buffer equ __zdseg_end + (__zobss_9b50 - __zdata_start)
region_step_flag equ __zdseg_end + (__zobss_9bd0 - __zdata_start)
open_gates equ __zdseg_end + (__zobss_9bd2 - __zdata_start)
bss_9bdc equ __zdseg_end + (__zobss_9bdc - __zdata_start)
bss_9bde equ __zdseg_end + (__zobss_9bde - __zdata_start)
found_path_length equ __zdseg_end + (__zobss_9be6 - __zdata_start)
found_path equ __zdseg_end + (__zobss_9be8 - __zdata_start)
path_search_depth equ __zdseg_end + (__zobss_9c00 - __zdata_start)
edges_in_use equ __zdseg_end + (__zobss_9c02 - __zdata_start)
slot_pair_processed equ __zdseg_end + (__zobss_9c42 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmaze/ovmain.asm"                ; 0x000e

%include "vmaze/maybe_play_maze_ambient_sound.asm" ; 0x0106

%include "vmaze/stop_and_clear_maze_sounds.asm" ; 0x0140

%include "vmaze/load_maze_sound_pair.asm"  ; 0x017f

%include "vmaze/update_maze_sound_selection.asm" ; 0x01c9

%include "vmaze/api_idx_0002_LMTG.asm"     ; 0x02da

%include "shared/ovr/load_maze_file.asm"        ; 0x02fe

%include "vmaze/load_maze_variant_resources.asm" ; 0x0344

%include "vmaze/load_maze_resources.asm"   ; 0x03ea

%include "vmaze/decode_maze_cell_records.asm" ; 0x06da

%include "vmaze/load_current_maze_level.asm" ; 0x09cb

%include "vmaze/choose_character_record.asm" ; 0x0a6e

%include "vmaze/api_idx_0002_GGTO.asm"     ; 0x0acc

%include "vmaze/configure_story_music.asm" ; 0x0b14

%include "vmaze/api_idx_0002_SMVN.asm"     ; 0x0b66

%include "vmaze/enter_level.asm"           ; 0x0cb5

%include "vmaze/api_idx_0002_GSIL.asm"     ; 0x0e5d

%include "vmaze/update_maze_refresh_timer.asm" ; 0x0ea6

%include "shared/ovr/party_redraw_interval_elapsed.asm" ; 0x0f1d

%include "shared/ovr/advance_party_redraw_frame.asm" ; 0x0f68

%include "vmaze/wait_ticks_or_key.asm"     ; 0x0f8e

%include "shared/ovr/api_idx_0008_OMTP.asm"     ; 0x0fde

%include "shared/ovr/show_message.asm"          ; 0x1094

%include "shared/ovr/loc_QTKU.asm"              ; 0x10b0

%include "vmaze/show_rock_entry_message.asm" ; 0x110e

%include "shared/ovr/get_cell_wall.asm"         ; 0x1165

%include "vmaze/api_idx_0002_RRIU.asm"     ; 0x1206

%include "vmaze/adjust_party_world_position.asm" ; 0x1240

%include "shared/ovr/save_previous_party_position.asm" ; 0x12a2

%include "vmaze/display_message_with_sound.asm" ; 0x12d3

%include "vmaze/api_idx_0004_IKPN.asm"     ; 0x1308

%include "shared/ovr/check_at_saved_location.asm" ; 0x13c0

%include "vmaze/api_idx_0004_IHHI.asm"     ; 0x13f7

%include "shared/ovr/get_cell_terrain.asm"      ; 0x1504

%include "vmaze/api_idx_000e_NSGM.asm"     ; 0x162b

%include "vmaze/api_idx_0004_USIK.asm"     ; 0x17ee

%include "vmaze/api_idx_000a_URTS.asm"     ; 0x195c

%include "vmaze/api_idx_0018_USPR.asm"     ; 0x1c94

%include "vmaze/api_idx_0010_HOIJ.asm"     ; 0x2033

%include "shared/ovr/find_floor_item_at_party.asm" ; 0x20dc

%include "shared/ovr/refresh_floor_item_icon.asm" ; 0x2133

%include "vmaze/display_maze_message.asm"  ; 0x21e3

%include "vmaze/api_idx_0022_LKUK.asm"     ; 0x2215

%include "shared/ovr/get_north_cell_wall.asm"   ; 0x2d94

%include "shared/ovr/get_west_cell_wall.asm"    ; 0x2e0c

%include "shared/ovr/loc_UMHI_2e84.asm"         ; 0x2e84

%include "shared/ovr/loc_LPLI_2e98.asm"         ; 0x2e98

%include "shared/ovr/loc_UMHI_2eac.asm"         ; 0x2eac

%include "shared/ovr/loc_LPLI_2ec0.asm"         ; 0x2ec0

%include "shared/ovr/offset_relative_map_position.asm" ; 0x2ed4

%include "shared/ovr/read_cell_kind_direction.asm" ; 0x2f55

%include "shared/ovr/api_idx_0008_PGTT.asm"     ; 0x2f8e

%include "shared/ovr/get_relative_cell_wall.asm" ; 0x33c0

%include "shared/ovr/queue_slot_glyph_render.asm" ; 0x358c

%include "shared/ovr/api_idx_0010_KRNM.asm"     ; 0x3802

%include "shared/ovr/api_idx_0012_PNUU.asm"     ; 0x3f56

%include "shared/ovr/api_idx_0012_KQTQ.asm"     ; 0x4665

%include "shared/ovr/api_idx_0016_LHKK.asm"     ; 0x4f53

%include "shared/ovr/api_idx_0024_NUGL.asm"     ; 0x50f4

%include "shared/ovr/draw_clock_marker_glyph.asm" ; 0x529a

%include "shared/ovr/api_idx_0030_KNRH.asm"     ; 0x53fd

%include "shared/ovr/redraw_maze_view.asm"      ; 0x676c

%include "shared/ovr/loc_MPHO.asm"              ; 0x678c

%include "shared/ovr/find_map_piece.asm"        ; 0x67c6

%include "shared/ovr/find_object_at.asm"        ; 0x6882

%include "vmaze/save_level_state.asm"      ; 0x68f2

%include "shared/ovr/find_maze_change.asm"      ; 0x6960

%include "shared/ovr/log_maze_change.asm"       ; 0x69d6

%include "vmaze/play_maze_sound_effect.asm" ; 0x6ac7

%include "shared/ovr/restore_area_a_draw_glyph.asm" ; 0x6b0a

%include "vmaze/wait_for_maze_input_or_refresh.asm" ; 0x6b5a

%include "vmaze/flush_glyph_buffer.asm"    ; 0x6c0a

%include "vmaze/api_idx_0090_QKJQ.asm"     ; 0x6cc9

%include "vmaze/process_scene_message_words.asm" ; 0x6eb1

%include "vmaze/show_maze_message_sequence.asm" ; 0x6f14

%include "shared/ovr/try_raise_member_skill.asm" ; 0x6fbf

%include "vmaze/pick_region_marker_party_tag.asm" ; 0x7001

%include "vmaze/show_region_message.asm"   ; 0x7034

%include "shared/ovr/mark_region_bits.asm"      ; 0x7242

%include "vmaze/move_party_to_dest.asm"    ; 0x72a6

%include "vmaze/run_region_keyed_action.asm" ; 0x73b6

%include "vmaze/store_party_region_level.asm" ; 0x7436

%include "vmaze/check_region_trigger_bit_14.asm" ; 0x744e

%include "vmaze/display_member_message.asm" ; 0x74e2

%include "vmaze/update_party_status_animation.asm" ; 0x7542

%include "vmaze/collect_region_flag_bits.asm" ; 0x75ae

%include "vmaze/handle_region_flag_event.asm" ; 0x764d

%include "vmaze/play_region_spell_sound.asm" ; 0x784f

%include "vmaze/handle_region_object_search.asm" ; 0x799e

%include "vmaze/advance_maze_region.asm"   ; 0x7a34

%include "vmaze/check_region_trigger_bit_2.asm" ; 0x7abe

%include "vmaze/api_idx_0018_KVSP.asm"     ; 0x7b53

%include "vmaze/animate_party_status_frame.asm" ; 0x7cb4

%include "vmaze/set_cell_wall.asm"         ; 0x7ce5

%include "vmaze/decode_region_map_location.asm" ; 0x7e46

%include "vmaze/wait_then_handle_region_event.asm" ; 0x804e

%include "vmaze/handle_region_flag_3_event.asm" ; 0x820b

%include "shared/ovr/update_region_flag_bitmaps.asm" ; 0x83b3

%include "vmaze/process_region_flag_actions.asm" ; 0x8448

%include "vmaze/update_region_flags.asm"   ; 0x8540

%include "vmaze/handle_region_level_event.asm" ; 0x8568

%include "vmaze/update_region_quest_map_flags.asm" ; 0x86a9

%include "vmaze/handle_region_flag_2_event.asm" ; 0x86f9

%include "vmaze/handle_region_bit_8_event.asm" ; 0x8794

%include "vmaze/process_maze_object_events.asm" ; 0x8867

%include "shared/ovr/clear_bit_pair.asm"        ; 0x89d0

%include "vmaze/claim_cell.asm"            ; 0x8a14

%include "vmaze/check_type8_object.asm"    ; 0x8b52

%include "vmaze/check_cell_objects.asm"    ; 0x8c47

%include "vmaze/api_idx_0002_NGNS.asm"     ; 0x8de9

%include "vmaze/api_idx_0002_QLLK.asm"     ; 0x8e6a

%include "vmaze/api_idx_0002_SKMG.asm"     ; 0x8f1a

%include "vmaze/append_edge_between.asm"   ; 0x8f94

%include "vmaze/search_path_from.asm"      ; 0x9029

%include "vmaze/plan_slot_path.asm"        ; 0x920f

%include "vmaze/log_slot_event.asm"        ; 0x93ab

%include "vmaze/slot_is_at_location.asm"   ; 0x9448

%include "vmaze/travel_to_destination.asm" ; 0x946a

%include "vmaze/retreat_slot_if_wounded.asm" ; 0x94a6

%include "vmaze/choose_random_destination.asm" ; 0x94ef

%include "vmaze/adjust_faction_attitude.asm" ; 0x9658

%include "vmaze/choose_slot_goal.asm"      ; 0x96ce

%include "vmaze/learn_location_rumor.asm"  ; 0x98cc

%include "shared/ovr/give_quest_map.asm"        ; 0x9920

%include "vmaze/take_quest_map_here.asm"   ; 0x99dd

%include "vmaze/trade_with_slot.asm"       ; 0x9a80

%include "vmaze/take_maps_from_slot.asm"   ; 0x9e79

%include "vmaze/fight_slot.asm"            ; 0x9ef7

%include "vmaze/mark_slot_pair_processed.asm" ; 0xa215

%include "vmaze/heal_slot_health.asm"      ; 0xa28c

%include "vmaze/linger_at_location.asm"    ; 0xa2df

%include "vmaze/meet_slots_here.asm"       ; 0xa5ba

%include "vmaze/advance_slot_along_path.asm" ; 0xa7b2

%include "vmaze/search_quest_map_site.asm" ; 0xa9a4

%include "vmaze/wait_at_location.asm"      ; 0xaa3f

%include "vmaze/dispatch_slot_action.asm"  ; 0xaad3

%include "vmaze/run_roaming_npc_turns.asm" ; 0xab9b

%include "shared/ovr/aztec_ovbgn.asm"           ; 0xac30

__zdata_start:
%include "vmaze/data/dseg_9098.asm"        ; 0xac6e

%include "vmaze/data/maze_variant_filenames.asm" ; 0xac76

%include "vmaze/data/dseg_917e.asm"        ; 0xad54

%include "shared/data/overlay_saved_registers.asm" ; 0xad5e


__zimage_end:
absolute __zimage_end
__zobss_9192:
    resb 0x0002
__zobss_9194:
    resb 0x0002
__zobss_9196:
    resb 0x0002
__zobss_9198:
    resb 0x0002
__zobss_919a:
    resb 0x0002
__zobss_919c:
    resb 0x0002
__zobss_919e:
    resb 0x0002
__zobss_91a0:
    resb 0x0006
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x0002
__zobss_91ae:
    resb 0x0002
__zobss_91b0:
    resb 0x0002
__zobss_91b2:
    resb 0x0002
__zobss_91b4:
    resb 0x0002
__zobss_91b6:
    resb 0x0006
__zobss_91bc:
    resb 0x0006
__zobss_91c2:
    resb 0x0006
__zobss_91c8:
    resb 0x0008
__zobss_91d0:
    resb 0x0002
__zobss_91d2:
    resb 0x0002
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x0002
__zobss_91d8:
    resb 0x0002
__zobss_91da:
    resb 0x000a
__zobss_91e4:
    resb 0x000d
__zobss_91f1:
    resb 0x0002
__zobss_91f3:
    resb 0x0017
__zobss_920a:
    resb 0x0002
__zobss_920c:
    resb 0x0005
__zobss_9211:
    resb 0x0012
__zobss_9223:
    resb 0x0002
__zobss_9225:
    resb 0x0017
__zobss_923c:
    resb 0x0004
__zobss_9240:
    resb 0x002e
__zobss_926e:
    resb 0x0004
__zobss_9272:
    resb 0x002e
__zobss_92a0:
    resb 0x0002
__zobss_92a2:
    resb 0x0018
__zobss_92ba:
    resb 0x0004
__zobss_92be:
    resb 0x002e
__zobss_92ec:
    resb 0x0004
__zobss_92f0:
    resb 0x002e
__zobss_931e:
    resb 0x0002
__zobss_9320:
    resb 0x0002
__zobss_9322:
    resb 0x0002
__zobss_9324:
    resb 0x0002
__zobss_9326:
    resb 0x0002
__zobss_9328:
    resb 0x0001
__zobss_9329:
    resb 0x0001
__zobss_932a:
    resb 0x0001
__zobss_932b:
    resb 0x0001
__zobss_932c:
    resb 0x0001
__zobss_932d:
    resb 0x0001
__zobss_932e:
    resb 0x0001
__zobss_932f:
    resb 0x0001
__zobss_9330:
    resb 0x07e8
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x001a
__zobss_9b34:
    resb 0x0002
__zobss_9b36:
    resb 0x0002
__zobss_9b38:
    resb 0x0002
__zobss_9b3a:
    resb 0x0002
__zobss_9b3c:
    resb 0x0002
__zobss_9b3e:
    resb 0x0002
__zobss_9b40:
    resb 0x0002
__zobss_9b42:
    resb 0x0002
__zobss_9b44:
    resb 0x0002
__zobss_9b46:
    resb 0x0002
__zobss_9b48:
    resb 0x0002
__zobss_9b4a:
    resb 0x0002
__zobss_9b4c:
    resb 0x0002
__zobss_9b4e:
    resb 0x0002
__zobss_9b50:
    resb 0x0080
__zobss_9bd0:
    resb 0x0002
__zobss_9bd2:
    resb 0x000a
__zobss_9bdc:
    resb 0x0002
__zobss_9bde:
    resb 0x0008
__zobss_9be6:
    resb 0x0002
__zobss_9be8:
    resb 0x0018
__zobss_9c00:
    resb 0x0002
__zobss_9c02:
    resb 0x0040
__zobss_9c42:
    resb 0x01e4
__zobss_end:
