; auto-generated
; Record layouts the code addresses (lib/record_layout.py).
; Each field is an offset the code reads or writes; names come
; from the sidecar's "records" block, else f_<offset>.
%ifndef STRUCTS_INC
%define STRUCTS_INC

; records at DS 0x0120
struc screen_area_rectangles_rec
    .f_0000: resb 2
    .f_0002: resb 2
    .f_0004: resb 2
    .f_0006: resb 2
endstruc

; records at DS 0x015c
struc realm_point_text_positions_rec
    .f_0000: resb 2
    .f_0002: resb 6
endstruc

; records at DS 0x03dc
struc view_geometry_rec
    .f_0000: resb 10
    .f_000a: resb 2
    .f_000c: resb 4
endstruc

; records at DS 0x0620
struc spell_table_rec
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 1
    .f_0003: resb 1
    .f_0004: resb 1
    .f_0005: resb 1
endstruc

; records pointed at by DS 0x0e12
struc maze_tables_rec
    .f_0000: resb 480
    .f_01e0: resb 480
    .f_03c0: resb 2
endstruc

; records at DS 0x0e38
struc list_entry_text_rec
    .f_0000: resb 10
    .f_000a: resb 1
    .f_000b: resb 1
    .f_000c: resb 3
    .f_000f: resb 5
endstruc

; records at DS 0x5576
struc sound_slot_info_rec
    .alias_num: resb 2
    .pad_0002: resb 2
    .size: resb 4
    .rate: resb 2
    .volume: resb 1
    .play_flags: resb 1
endstruc

; records at DS 0x5b7c
struc saved_screen_file_rec
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 1
    .f_0003: resb 17
endstruc

; records at DS 0x5bf4
struc pc_rec
    .name: resb 8
    .age_days: resb 4
    .experience: resb 4
    .marks: resb 4
    .gold: resb 4
    .hp: resb 4
    .stamina: resb 4
    .carried_weight: resb 2
    .carry_capacity: resb 2
    .level: resb 2
    .deaths: resb 2
    .realm_points: resb 24
    .item_slots: resb 240
    .hand_attack: resb 36
    .equipped: resb 8
    .spells_to_learn: resb 4
    .f_0160: resb 6
    .status: resb 10
    .stat: resb 8
    .skills: resb 34
    .base_resist: resb 14
    .resist: resb 14
    .armor_class: resb 8
    .pad_01be: resb 120
    .kind: resb 1
    .race: resb 1
    .gender: resb 1
    .profession: resb 1
    .rank: resb 1
    .state: resb 1
    .hp_regen: resb 1
    .hp_drain: resb 1
    .poison_strength: resb 1
    .stamina_drain: resb 1
    .f_0240: resb 1
    .f_0241: resb 2
    .adjusted_stat4: resb 1
    .adjusted_stat5: resb 1
    .stat5_plus_power: resb 1
    .level_scaled_percent: resb 1
    .pre_drain_level: resb 1
endstruc

; records at DS 0x6a1a
struc slot_rec
    .first: resb 4
    .count: resb 4
    .action: resb 10
    .action_rand: resb 10
    .pad_001c: resb 10
    .target: resb 10
    .target_rand: resb 8
    .glyph_x: resb 72
    .pad_0080: resb 1
    .glyph_y: resb 36
    .range: resb 160
    .pad_0145: resb 1
    .cell_ofs: resb 6
    .pad_014c: resb 15
    .forced: resb 1
    .last_glyph: resb 2
endstruc

; records at DS 0x8322
struc action_slot
    .action: resb 1
    .target: resb 1
    .roll: resb 1
endstruc

; records pointed at by DS 0x8468
struc overlay_list_rec
    .f_0000: resb 2
    .f_0002: resb 2
    .f_0004: resb 2
    .f_0006: resb 14
    .f_0014: resb 1
    .f_0015: resb 1
    .f_0016: resb 1
    .f_0017: resb 19
    .f_002a: resb 375
    .f_01a1: resb 1
endstruc

; records pointed at by DS 0x8482
struc member_rec
    .unit_level: resb 2
    .unit_hp: resb 2
    .unit_hp_max: resb 2
    .unit_stamina: resb 2
    .unit_stamina_max: resb 2
    .unit_primary_action: resb 2
    .unit_secondary_action: resb 2
    .unit_status: resb 10
    .unit_action_speed: resb 4
    .unit_primary_attack: resb 1
    .unit_secondary_attack: resb 1
    .unit_action_kind: resb 1
    .unit_target_group: resb 1
    .unit_target_unit: resb 1
    .unit_attack_cycle: resb 1
    .unit_state: resb 1
    .unit_poison_strength: resb 1
    .unit_countdown: resb 1
    .unit_countdown_roll: resb 1
    .unit_reflex_mod: resb 1
    .unit_aim_mod: resb 1
    .unit_strike_mod: resb 1
    .unit_speed_mod: resb 1
    .unit_cell: resb 1
    .unit_phase: resb 353
    .charge: resb 6
    .delay: resb 6
    .f_0198: resb 1
    .f_0199: resb 1
    .f_019a: resb 1
    .f_019b: resb 1
    .f_019c: resb 1
    .f_019d: resb 1
    .kind: resb 1
    .slot: resb 1
    .unidentified: resb 1
    .unit_count: resb 1
    .active_unit_count: resb 1
endstruc

; records pointed at by DS 0x8484
struc battle_groups_1_rec
    .pad_0000: resb 417
    .f_01a1: resb 1
endstruc

; records pointed at by DS 0x848e
struc ally_battle_group_rec
    .pad_0000: resb 2
    .f_0002: resb 415
    .f_01a1: resb 1
endstruc

; records pointed at by DS 0x8490
struc member_ext
    .f_0000: resb 64
    .experience: resb 4
    .pad_0044: resb 13
    .attack0_target_count: resb 1
    .pad_0052: resb 1
    .attack0_action_mask: resb 1
    .pad_0054: resb 38
    .f_007a: resb 3
    .f_007d: resb 3
    .f_0080: resb 6
    .attack_mode: resb 3
    .pad_0089: resb 3
    .f_008c: resb 1
    .f_008d: resb 1
    .f_008e: resb 1
    .f_008f: resb 1
    .special_spell_ids: resb 10
    .f_009a: resb 2
    .f_009c: resb 1
    .f_009d: resb 8
    .f_00a5: resb 5
    .companion_id: resb 2
    .companion_chance: resb 2
    .special_spell_chance: resb 2
    .special_action_chance: resb 1
    .advance_score_bonus: resb 1
    .flee_chance: resb 1
    .pad_00b3: resb 17
    .f_00c4: resb 1
    .f_00c5: resb 1
    .f_00c6: resb 6
    .f_00cc: resb 10
    .creature_class: resb 1
    .kind: resb 1
    .sound_id: resb 1
    .speed_bonus: resb 1
    .max_hits: resb 1
    .attack_count: resb 1
    .gender: resb 1
    .hp_regen: resb 1
    .special_action_code: resb 2
    .bitmap_bit: resb 2
    .flags: resb 2
    .f_00e4: resb 1
    .class_id: resb 3
endstruc

; records pointed at by DS 0x8492
struc battle_group_ext_1_rec
    .pad_0000: resb 216
    .f_00d8: resb 1
endstruc

; records at DS 0x84a6
struc quest_map
    .holder: resb 1
    .status: resb 1
    .site_location: resb 1
    .gate_key: resb 1
    .next_destination: resb 2
endstruc

; records at DS 0x84e8
struc slot_record
    .faction: resb 1
    .home_location: resb 1
    .activity: resb 1
    .destination: resb 1
    .location: resb 1
    .map_piece: resb 1
    .target: resb 1
    .path_step: resb 1
    .path: resb 14
    .event_ring_next: resb 2
    .health: resb 1
    .max_health: resb 1
    .held_maps: resb 2
    .known_maps: resb 2
    .visited_locations: resb 4
    .map_history: resb 4
endstruc

; records at DS 0x882c
struc slot_event
    .subject: resb 1
    .kind: resb 1
    .detail: resb 1
endstruc

; records at DS 0x8976
struc location_record
    .owner_faction: resb 1
    .rumored_map: resb 1
    .reveals_location: resb 1
    .game_state: resb 1
endstruc

; records at DS 0x8a6e
struc path_edge
    .end_a: resb 1
    .end_b: resb 1
    .gate_key: resb 1
    .length: resb 1
endstruc
%endif
