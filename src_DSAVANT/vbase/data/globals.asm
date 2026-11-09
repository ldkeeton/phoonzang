; auto-generated
__zobss_91c6:  ; game_data_drive
    resb 0x0014
__zobss_91da:  ; selected_game_drive
    resb 0x0014
__zobss_91ee:  ; game_load_path
    resb 0x0001
__zobss_91ef:  ; game_load_path_next
    resb 0x0001
__zobss_91f0:  ; game_load_path_third
    resb 0x0030
__zobss_9220:  ; bane_header_buffer
    resb 0x019e
__zobss_93be:  ; bane_import_buffer
    resb 0x0002
__zobss_93c0:  ; bane_party_header
    resb 0x0040
__zobss_9400:  ; bane_party_member_count
    resb 0x0002
__zobss_9402:  ; bane_character
    resb 0x0008
__zobss_940a:  ; bane_character_value_a
    resb 0x0002
__zobss_940c:  ; bane_character_value_b
    resb 0x0010
__zobss_941c:  ; bane_experience_value
    resb 0x000a
__zobss_9426:  ; bane_level
    resb 0x0002
__zobss_9428:  ; bane_character_value_c
    resb 0x0004
__zobss_942c:  ; bane_realm_values
    resb 0x0016
__zobss_9442:  ; bane_items_a
    resb 0x0006
__zobss_9448:  ; bane_item_levels_a
    resb 0x0001
__zobss_9449:  ; bane_item_flags_a
    resb 0x0049
__zobss_9492:  ; bane_items_b
    resb 0x0006
__zobss_9498:  ; bane_item_levels_b
    resb 0x0001
__zobss_9499:  ; bane_item_flags_b
    resb 0x0095
__zobss_952e:  ; bane_character_stats
    resb 0x0008
__zobss_9536:  ; bane_character_stat_caps
    resb 0x001e
__zobss_9554:  ; bane_resistances
    resb 0x0036
__zobss_958a:  ; bane_spell_bits
    resb 0x000c
__zobss_9596:  ; bane_story_values_a
    resb 0x0004
__zobss_959a:  ; bane_story_values_b
    resb 0x0005
__zobss_959f:  ; bane_character_race
    resb 0x0001
__zobss_95a0:  ; bane_character_gender
    resb 0x0001
__zobss_95a1:  ; bane_character_profession
    resb 0x0001
__zobss_95a2:  ; bane_character_value_d
    resb 0x000c
__zobss_95ae:  ; bane_item_count_a
    resb 0x0001
__zobss_95af:  ; bane_item_count_b
    resb 0x0001
__zobss_95b0:  ; bane_power_adjustment
    resb 0x0002
__zobss_95b2:  ; intro_screen_number
    resb 0x0002
__zobss_95b4:  ; preserved_load_header
    resb 0x02d0
__zobss_9884:  ; preserved_header_paths
    resb 0x0050
__zobss_98d4:  ; preserved_header_store_one
    resb 0x0001
__zobss_98d5:  ; preserved_header_store_disk
    resb 0x0001
__zobss_98d6:  ; preserved_header_store_drive
    resb 0x0014
__zobss_98ea:  ; preserved_header_palette_base
    resb 0x0001
__zobss_98eb:  ; preserved_header_palette_scale
    resb 0x0003
__zobss_98ee:  ; preserved_header_options
    resb 0x0004
__zobss_98f2:  ; preserved_header_sound_port
    resb 0x0002
__zobss_98f4:  ; preserved_header_sound_extra
    resb 0x0002
__zobss_98f6:  ; preserved_header_sound_device
    resb 0x0001
__zobss_98f7:  ; preserved_header_video
    resb 0x0001
__zobss_98f8:  ; preserved_header_startup
    resb 0x0001
__zobss_98f9:  ; preserved_header_install
    resb 0x0001
__zobss_98fa:  ; preserved_header_option_a
    resb 0x0001
__zobss_98fb:  ; preserved_header_option_b
    resb 0x0001
__zobss_98fc:  ; preserved_header_hardware
    resb 0x0001
__zobss_98fd:  ; preserved_header_option_c
    resb 0x0001
__zobss_98fe:  ; preserved_header_dissolve
    resb 0x0002
__zobss_9900:  ; game_block_a
    resb 0x0080
__zobss_9980:  ; game_block_b
    resb 0x0080
__zobss_9a00:  ; loaded_game_state
    resb 0x0002
__zobss_9a02:  ; loaded_state_world_x
    resb 0x0002
__zobss_9a04:  ; loaded_state_world_y
    resb 0x0002
__zobss_9a06:  ; loaded_state_cell_x
    resb 0x0002
__zobss_9a08:  ; loaded_state_cell_y
    resb 0x0002
__zobss_9a0a:  ; loaded_state_map_piece
    resb 0x0002
__zobss_9a0c:  ; loaded_state_facing
    resb 0x0002
__zobss_9a0e:  ; loaded_state_previous_level
    resb 0x0002
__zobss_9a10:  ; loaded_state_previous_world_x
    resb 0x0002
__zobss_9a12:  ; loaded_state_previous_world_y
    resb 0x0002
__zobss_9a14:  ; loaded_state_previous_cell_x
    resb 0x0002
__zobss_9a16:  ; loaded_state_previous_cell_y
    resb 0x0002
__zobss_9a18:  ; loaded_state_previous_map_piece
    resb 0x0002
__zobss_9a1a:  ; loaded_state_previous_facing
    resb 0x0002
__zobss_9a1c:  ; loaded_state_saved_x
    resb 0x0002
__zobss_9a1e:  ; loaded_state_saved_y
    resb 0x0002
__zobss_9a20:  ; loaded_state_saved_piece
    resb 0x0002
__zobss_9a22:  ; loaded_state_saved_level
    resb 0x0002
__zobss_9a24:  ; loaded_state_saved_extra
    resb 0x0002
__zobss_9a26:  ; loaded_state_time
    resb 0x0002
__zobss_9a28:  ; loaded_state_time_hi
    resb 0x0002
__zobss_9a2a:  ; loaded_state_time_a
    resb 0x0002
__zobss_9a2c:  ; loaded_state_time_a_hi
    resb 0x0002
__zobss_9a2e:  ; loaded_state_time_b
    resb 0x0002
__zobss_9a30:  ; loaded_state_time_b_hi
    resb 0x0002
__zobss_9a32:  ; loaded_state_status
    resb 0x0002
__zobss_9a34:  ; loaded_state_status_offset
    resb 0x0016
__zobss_9a4a:  ; loaded_state_member_count
    resb 0x0002
__zobss_9a4c:  ; loaded_party_member
    resb 0x0248
__zobss_9c94:  ; base_palette_rgb
    resb 0x0300
__zobss_9f94:  ; adjusted_palette_rgb
    resb 0x0001
__zobss_9f95:  ; adjusted_palette_green
    resb 0x0001
__zobss_9f96:  ; adjusted_palette_blue
    resb 0x02fe
__zobss_a294:  ; quantized_rgb_lookup
    resb 0x0200
__zobss_a494:  ; copy_protection_result
    resb 0x0010
__zobss_a4a4:  ; scene_index
    resb 0x0002
__zobss_a4a6:  ; scene_message_row
    resb 0x0002
__zobss_a4a8:  ; scene_message_previous_x
    resb 0x0002
__zobss_a4aa:  ; scene_message_line_buffer
    resb 0x0100
__zobss_a5aa:  ; scene_tick
    resb 0x0002
__zobss_a5ac:  ; scene_running
    resb 0x0002
__zobss_a5ae:  ; scene_frame_delay_ticks
    resb 0x0002
__zobss_a5b0:  ; scene_frame
    resb 0x0002
__zobss_a5b2:  ; scene_backdrop_ref
    resb 0x0002
__zobss_a5b4:  ; scene_backdrop_ref_hi
    resb 0x0002
__zobss_a5b6:  ; scene_cue_a
    resb 0x0002
__zobss_a5b8:  ; scene_cue_b
    resb 0x0002
__zobss_a5ba:  ; scene_cue_c
    resb 0x0002
__zobss_a5bc:  ; scene_cue_d
    resb 0x0002
__zobss_a5be:  ; scene_cue_e
    resb 0x0008
__zobss_a5c6:  ; scene_digit_cycle
    resb 0x0008
__zobss_a5ce:  ; scene_step_a
    resb 0x0002
__zobss_a5d0:  ; scroll_x
    resb 0x0002
__zobss_a5d2:  ; scroll_x_1
    resb 0x0002
__zobss_a5d4:  ; scroll_x_2
    resb 0x0002
__zobss_a5d6:  ; scroll_x_3
    resb 0x0002
__zobss_a5d8:  ; scroll_x_4
    resb 0x0002
__zobss_a5da:  ; sprite_pos
    resb 0x0002
__zobss_a5dc:  ; sprite_pos_1
    resb 0x0004
__zobss_a5e0:  ; scene_sprite_three_x
    resb 0x0002
__zobss_a5e2:  ; actor_x
    resb 0x0002
__zobss_a5e4:  ; trail_x
    resb 0x0006
__zobss_a5ea:  ; scene_sprite_y
    resb 0x0006
__zobss_a5f0:  ; scene_sprite_three_y
    resb 0x0002
__zobss_a5f2:  ; actor_y
    resb 0x0008
__zobss_a5fa:  ; scene_step_b
    resb 0x0002
__zobss_a5fc:  ; scene_step_c
    resb 0x0002
__zobss_a5fe:  ; scene_step_d
    resb 0x0002
__zobss_a600:  ; scene_clip_arg
    resb 0x0002
