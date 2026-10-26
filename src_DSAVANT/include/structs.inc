; auto-generated
; Record layouts the code addresses (lib/record_layout.py).
; Each field is an offset the code reads or writes; names come
; from the sidecar's data_names "record", else f_<offset>.
%ifndef STRUCTS_INC
%define STRUCTS_INC

; records at DS 0x03dc
struc rec_03dc
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
struc known_spell_names_rec
    .f_0000: resb 10
    .f_000a: resb 1
    .f_000b: resb 1
    .f_000c: resb 3
    .f_000f: resb 5
endstruc

; records at DS 0x5576
struc sound_slot_info_rec
    .pad_0000: resb 6
    .f_0006: resb 2
    .f_0008: resb 2
    .f_000a: resb 1
    .f_000b: resb 1
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
    .f_0008: resb 2
    .f_000a: resb 2
    .f_000c: resb 2
    .f_000e: resb 2
    .f_0010: resb 2
    .f_0012: resb 2
    .f_0014: resb 2
    .f_0016: resb 2
    .pair_a: resb 4
    .pair_b: resb 4
    .power_total: resb 2
    .f_0022: resb 2
    .power_cap: resb 2
    .f_0026: resb 2
    .realm_points: resb 24
    .cell: resb 240
    .slot_info: resb 36
    .order: resb 8
    .f_015c: resb 1
    .f_015d: resb 1
    .f_015e: resb 1
    .f_015f: resb 1
    .f_0160: resb 6
    .status: resb 10
    .stat: resb 8
    .flag: resb 34
    .prev: resb 14
    .cur: resb 14
    .count: resb 8
    .pad_01be: resb 120
    .kind: resb 1
    .glyph_set: resb 1
    .gender: resb 1
    .profession: resb 1
    .f_023a: resb 1
    .state: resb 1
    .attack: resb 1
    .defense: resb 1
    .f_023e: resb 1
    .f_023f: resb 1
    .f_0240: resb 1
    .f_0241: resb 2
    .adjusted_stat4: resb 1
    .adjusted_stat5: resb 1
    .stat5_plus_power: resb 1
    .f_0246: resb 1
    .power_floor: resb 1
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
    .forced: resb 3
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
    .f_0000: resb 2
    .item_charges: resb 2
    .item_charge_cap: resb 2
    .item_timer: resb 2
    .item_timer_max: resb 2
    .f_000a: resb 2
    .f_000c: resb 2
    .item_counter: resb 10
    .f_0018: resb 3
    .f_001b: resb 1
    .f_001c: resb 2
    .f_001e: resb 1
    .f_001f: resb 1
    .f_0020: resb 1
    .f_0021: resb 1
    .item_state: resb 1
    .item_resist: resb 1
    .item_countdown: resb 1
    .f_0025: resb 1
    .f_0026: resb 1
    .f_0027: resb 1
    .f_0028: resb 1
    .item_level: resb 1
    .item_cell: resb 1
    .item_phase: resb 353
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
    .name_row: resb 1
    .item_count: resb 1
    .f_01a2: resb 1
endstruc

; records pointed at by DS 0x8484
struc party_char_hi_rec
    .pad_0000: resb 417
    .f_01a1: resb 1
endstruc

; records pointed at by DS 0x848e
struc rec_848e
    .pad_0000: resb 2
    .f_0002: resb 415
    .f_01a1: resb 1
endstruc

; records pointed at by DS 0x8490
struc member_ext
    .f_0000: resb 64
    .reward: resb 4
    .pad_0044: resb 13
    .f_0051: resb 41
    .f_007a: resb 3
    .f_007d: resb 3
    .f_0080: resb 6
    .f_0086: resb 6
    .f_008c: resb 1
    .f_008d: resb 1
    .f_008e: resb 1
    .f_008f: resb 1
    .f_0090: resb 10
    .f_009a: resb 2
    .f_009c: resb 1
    .f_009d: resb 8
    .f_00a5: resb 7
    .f_00ac: resb 2
    .f_00ae: resb 2
    .f_00b0: resb 1
    .f_00b1: resb 1
    .f_00b2: resb 18
    .f_00c4: resb 1
    .f_00c5: resb 1
    .f_00c6: resb 6
    .f_00cc: resb 10
    .f_00d6: resb 1
    .kind: resb 1
    .f_00d8: resb 1
    .f_00d9: resb 1
    .f_00da: resb 1
    .f_00db: resb 1
    .f_00dc: resb 1
    .attack: resb 1
    .f_00de: resb 2
    .bitmap_bit: resb 2
    .flags: resb 2
    .f_00e4: resb 1
    .class_id: resb 3
endstruc

; records pointed at by DS 0x8492
struc party_member_ext_1_rec
    .pad_0000: resb 216
    .f_00d8: resb 1
endstruc

; records at DS 0x84a6
struc rec_84a6
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 1
    .f_0003: resb 1
    .f_0004: resb 2
endstruc

; records at DS 0x84e8
struc slot_record
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 1
    .f_0003: resb 1
    .kind: resb 1
    .map_piece: resb 1
    .f_0006: resb 1
    .f_0007: resb 1
    .f_0008: resb 14
    .f_0016: resb 2
    .flag: resb 1
    .f_0019: resb 13
endstruc

; records at DS 0x882c
struc rec_882c
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 13
endstruc

; records at DS 0x8976
struc rec_8976
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 2
endstruc

; records at DS 0x8a6e
struc rec_8a6e
    .f_0000: resb 1
    .f_0001: resb 1
    .f_0002: resb 1
    .f_0003: resb 1
endstruc

; records at DS 0x91a8
struc location_changed_rec
    .pad_0000: resb 4
    .f_0004: resb 32
    .f_0024: resb 92
endstruc
%endif
