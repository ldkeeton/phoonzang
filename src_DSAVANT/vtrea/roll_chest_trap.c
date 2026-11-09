/* Pick the chest's trap from its possible-trap bits, build the inspect list
 * (the real trap plus decoys whose glyph codes fit in eight glyphs), and roll
 * each member's clues about which glyphs the real trap uses. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/spell.h"
#include "msg.h"

extern int chest_trap_type, party_char_count;
extern char chest_trap_name[];
extern struct spell_table_view spell_table;
extern struct pc_rec party_records[];
extern unsigned char trap_row_codes[], member_trap_clues[];
extern int trap_row_listed[], trap_glyph_pressed[];
extern int trap_glyph_ids[], trap_row_index;
extern int trap_row_types[];
extern char trap_code_template[], unknown_trap_clue_template[];
extern int random_below(), test_bit(), load_message_string();
extern int aztec_setmem(), aztec_strcpy(), clamp_between();

roll_chest_trap(chest)
struct chest_record *chest;
{
	int i, j, k, row_count, pass, first_trap;	/* k also: profession bonus */
	int glyph_used[16];
	int glyph_count;
	int new_glyphs[24];
	int clue_chance;

	chest_trap_type = 0;
	i = random_below(100) + 1;
	j = 0;
	while (i > 0 && j < 100) {
		chest_trap_type++;
		if (chest_trap_type >= 18) {
			chest_trap_type = 0;
			j++;
		}
		if (test_bit(chest->trap_bits, chest_trap_type))
			i--;
	}

	load_message_string(MSG_NO_TRAP + chest_trap_type,
		chest_trap_name);
	aztec_setmem(trap_row_listed, 48, 0);
	trap_row_listed[chest_trap_type] = 1;
	aztec_setmem(trap_glyph_pressed, 16, 0);
	glyph_count = 0;
	aztec_setmem(glyph_used, 32, 0);
	for (i = 0; i < 8; i++) {
		if (spell_table.trap_glyphs[chest_trap_type][i]
			!= 255) {
			glyph_used[spell_table.trap_glyphs[chest_trap_type]
				[i]] = 1;
			glyph_count++;
		}
	}

	for (pass = 0; pass < 3; pass++) {
		first_trap = pass == 0 ?
			spell_table.trap_first_candidate[chest_trap_type] : 1;
		for (i = first_trap; i < 18; i++) {
			if (!trap_row_listed[i]) {
				if (pass == 2 || test_bit(chest->trap_bits, i)) {
					new_glyphs[i] = 0;
					for (k = 0; k < 8; k++) {
						if (spell_table.trap_glyphs[i][k] != 255 &&
							!glyph_used[spell_table.trap_glyphs[i]
								[k]])
							new_glyphs[i]++;
					}
					if (new_glyphs[i] + glyph_count <= 8) {
						trap_row_listed[i] = 1;
						for (k = 0; k < 8; k++) {
							if (spell_table.trap_glyphs[i][k] != 255 &&
								!glyph_used[spell_table.trap_glyphs[i]
									[k]]) {
								glyph_used[spell_table.trap_glyphs[i]
									[k]] = 1;
								glyph_count++;
							}
						}
					}
				}
			}
		}
	}

	if (glyph_count < 8) {
		i = 0;
		while (glyph_count < 8) {
			if (!glyph_used[i]) {
				glyph_used[i] = 1;
				glyph_count++;
			}
			i++;
		}
	}

	j = 0;
	for (i = 0; i < 16; i++) {
		if (glyph_used[i]) {
			trap_glyph_ids[j] = i;
			j++;
		}
	}
	row_count = 0;
	trap_row_listed[0] = 0;
	trap_row_index = -1;
	for (i = 1; i < 18; i++) {
		if (trap_row_listed[i]) {
			aztec_strcpy(trap_row_codes + row_count * 10, trap_code_template);
			for (j = 0; j < 8; j++) {
				if (spell_table.trap_glyphs[i][j] != 255) {
					for (k = 0; k < 8; k++) {
						if (spell_table.trap_glyphs[i][j]
							== trap_glyph_ids[k])
							trap_row_codes[row_count * 10 + k] = j + 49;
					}
				}
			}
			trap_row_types[row_count] = i;
			if (i == chest_trap_type)
				trap_row_index = row_count;
			row_count++;
		}
	}

	for (i = 0; i < party_char_count; i++) {
		aztec_strcpy(member_trap_clues + i * 10,
			unknown_trap_clue_template);
		k = -5;
		switch (party_records[i].profession) {
		case 3:
			k = 20;
			break;
		case 4:
		case 6:
		case 13:
			k = 15;
		}
		clue_chance = clamp_between(party_records[i].skills[16] / 2 +
			party_records[i].level -
			chest->trap_power + k, 0, 90);
		for (j = 0; j < 8; j++) {
			if (random_below(100) < clue_chance) {
				if (chest_trap_type > 0 && trap_row_index != -1) {
					member_trap_clues[i * 10 + j] =
						trap_row_codes[trap_row_index * 10 + j] == '-' ? '-'
							: '*';
				} else
					member_trap_clues[i * 10 + j] = '-';
			}
		}
	}
	return row_count;
}
