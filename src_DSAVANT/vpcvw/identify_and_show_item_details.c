/* Try to identify an item (by spell power or skill 24), then show its
   details on the inventory panel.  Returns -1 if it stays unidentified. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "msg.h"

extern int mouse_active;
extern int equip_slot_colors[];
extern int realm_text_colors[];
extern char open_parenthesis[], plus_sign[], close_parenthesis[];
extern char positive_sign[], spell_separator[], space_separator[],
	percent_sign[];
extern long roster_screen;
extern struct pc_rec party_records[];
extern int call_get_mouse(), data_record_io(), load_message_string();
extern int display_centered_message();
extern int call_restore_screen(), call_set_text_pos(), call_set_text_color();
extern int draw_font_glyph(), draw_text_glyphs(), aztec_setmem();
extern int aztec_strcpy(), aztec_strcat(), aztec_strlen(), strpos();
extern int test_bit(), format_int_decimal(), encode_special_power_glyphs();
extern int draw_number_field(), call_show_area(), flush_keyboard();
extern int poll_fullscreen_hotspot();
extern unsigned char get_filtered_key();

int identify_and_show_item_details(member_index, selected_item, slot_name,
	spell_power)
int member_index;
struct pc_item_slot *selected_item;
char *slot_name;
int spell_power;
{
	int line_index, string_length, name_split, value, x, y;
	int unused_value;
	int show_ps, show_mf, show_ac, show_hand, show_item_type, show_weaponry;
	int show_swing_list, show_special_resistance, show_spell, show_ps_subheader;
	int description_color, show_damage, show_regen, show_special_attacks;
	int weapon_category, spell_number, spell_level;
	int text_color;
	struct item_record item;
	char display_name[40];
	unsigned char message[80];
	char number_text[80];
	char damage_text[80];
	int initial_mouse_buttons;

	initial_mouse_buttons = 0;
	if (mouse_active)
	initial_mouse_buttons = call_get_mouse(&x, &y);
	data_record_io(1, &item, selected_item->item_id, 0);
	if (spell_power != 0) {
		if (3 * spell_power >= (unsigned char)item.difficulty)
			selected_item->flags |= 128;
		else {
			load_message_string(MSG_FAILURE_465, message);
			display_centered_message(message, 1);
			return 0;
		}
	} else {
		if (party_records[member_index].skills[24] / 5 >=
			(unsigned char)item.difficulty)
			selected_item->flags |= 128;
	}
	if ((selected_item->flags & 128) == 0)
		return -1;
	aztec_strcpy(slot_name, item.name);
	call_restore_screen(roster_screen, 0, 0);
	y = 114;
	x = 26;
	call_set_text_pos(x, y);
	draw_font_glyph(item.glyph, 4);
	x += 96;
	call_set_text_pos(x, y);
	draw_font_glyph(item.glyph, 4);
	x = 80;
	call_set_text_color(1, 0);
	aztec_setmem(display_name, 40, 0);
	aztec_strcpy(display_name, item.name);
	string_length = aztec_strlen(display_name) - 1;
	name_split = strpos(display_name, 47);
	if (name_split == -1)
		name_split = aztec_strlen(display_name);
	if (name_split > 10)
		name_split = 10;
	display_name[name_split] = 0;
	display_name[name_split + 11] = 0;
	while (string_length > name_split && display_name[string_length] == ' ')
		--string_length;
	string_length -= name_split;
	call_set_text_pos(x - 6 * name_split / 2, y);
	draw_text_glyphs(display_name, 0);
	call_set_text_pos(x - 6 * string_length / 2, y + 6);
	draw_text_glyphs(display_name + name_split + 1, 0);
	y += 18;
	show_ps = 0;
	show_mf = 0;
	show_ac = 0;
	show_hand = 0;
	show_item_type = 0;
	show_weaponry = 0;
	show_swing_list = 0;
	show_special_resistance = 0;
	show_spell = 0;
	show_damage = 0;
	show_special_attacks = 0;
	show_regen = 0;
	show_ps_subheader = 1;
	description_color = equip_slot_colors[3];
	switch (item.item_type) {
	case 0:
	case 1:
	case 2:
	case 3:
		show_ps = 1;
		show_hand = 1;
		show_weaponry = 1;
		show_swing_list = 1;
		show_damage = 1;
		show_special_attacks = 1;
		show_regen = 1;
		text_color = equip_slot_colors[0];
		break;
	case 4:
		show_mf = 1;
		show_damage = 1;
		show_special_attacks = 1;
		text_color = equip_slot_colors[0];
		break;
	case 5:
		show_ac = 1;
		description_color = equip_slot_colors[2];
		show_special_resistance = 1;
		show_regen = 1;
		text_color = description_color;
		break;
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
		show_ac = 1;
		show_item_type = 1;
		show_special_resistance = 1;
		show_regen = 1;
		text_color = equip_slot_colors[3];
		break;
	case 11:
		show_ac = 1;
		show_special_resistance = 1;
		show_regen = 1;
		text_color = equip_slot_colors[3];
		break;
	case 12:
	case 16:
		show_ps_subheader = 0;
		show_ps = 1;
		show_spell = 1;
		show_swing_list = 1;
		text_color = equip_slot_colors[2];
		break;
	case 13:
		show_ps_subheader = 0;
		show_mf = 1;
		show_spell = 1;
		text_color = equip_slot_colors[2];
		break;
	case 14:
		show_special_resistance = 1;
		/* fall through */
	case 15:
		show_mf = 1;
		show_swing_list = 1;
		show_regen = 1;
		text_color = 192;
		break;
	}
	if (spell_power == 0) {
		load_message_string(MSG_WEAPON_S + item.item_type, message);
		call_set_text_color(text_color, 0);
		call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
		draw_text_glyphs(message, 0);
		y += 6;
		if (show_ps_subheader) {
			call_set_text_pos(38, y);
			load_message_string(MSG_HEDGHFLDFRM, message);
			for (line_index = 0; line_index < 11; ++line_index) {
				call_set_text_color(
					test_bit(item.race_mask, line_index) == 1 ? 169 : 173, 0);
				draw_font_glyph(message[line_index], 0);
			}
			call_set_text_pos(110, y);
			load_message_string(MSG_MF, message);
			for (line_index = 0; line_index < 2; ++line_index) {
				call_set_text_color(
					test_bit(item.gender_mask, line_index) == 1 ? 169 : 173, 0);
				draw_font_glyph(message[line_index], 0);
			}
			call_set_text_pos(38, y + 6);
			load_message_string(MSG_FMPTRABPVBLSMN, message);
			for (line_index = 0; line_index < 14; ++line_index) {
				call_set_text_color(
					test_bit(item.profession_mask, line_index) == 1 ? 169 : 173, 0);
				draw_font_glyph(message[line_index], 0);
			}
			y += 12;
		}
		else if (show_spell && item.spell_code != 0) {
			spell_number = item.spell_code % 256;
			load_message_string(MSG_SPELL_NAME_BASE + spell_number, message);
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			call_set_text_color(22, 0);
			draw_text_glyphs(message, 0);
			y += 6;
		}
		if (show_weaponry) {
			switch (item.glyph) {
			case 0: case 18: case 88: weapon_category = 0; break;
			case 1: case 14: case 15: case 16: case 51: case 53:
			case 55: case 58: case 59: case 108:
				weapon_category = 1; break;
			case 2: case 3: case 20: weapon_category = 2; break;
			case 4: case 5: case 6: case 52: case 54: case 56:
				weapon_category = 3; break;
			case 7: case 8: case 9: case 10: case 17: case 19:
			case 57: case 90: case 105: case 106:
				weapon_category = 4; break;
			case 11: case 12: case 37: weapon_category = 7; break;
			case 13: weapon_category = 6; break;
			case 24: case 38: weapon_category = 8; break;
			case 104: case 110: case 114: weapon_category = 18; break;
			case 21: case 112: weapon_category = 5; break;
			default: weapon_category = 9; break;
			}
			if (test_bit(item.race_mask, party_records[member_index].race) != 1 ||
				test_bit(item.profession_mask,
					party_records[member_index].profession) != 1 ||
				test_bit(item.gender_mask, party_records[member_index].gender) != 1) {
				load_message_string(MSG_UNUSABLE_1567, message);
				call_set_text_color(105, 0);
			} else {
				load_message_string(MSG_SKILL_450, display_name);
				load_message_string(MSG_WAND_DAGGER + weapon_category, message);
				aztec_strcat(message, display_name);
				call_set_text_color(realm_text_colors[0], 0);
			}
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			draw_text_glyphs(message, 0);
			y += 6;
		}
		y = 162;
		if (show_swing_list) {
			call_set_text_color(85, 0);
			if (item.item_type == 3) {
				load_message_string(MSG_SHOOT, message);
				call_set_text_pos(14, y);
				draw_text_glyphs(message, 0);
			} else {
				value = 0;
				for (line_index = 0; line_index < 8; ++line_index) {
					if (test_bit(&item.attack_flags, line_index) == 1) {
						call_set_text_pos(14 + (value % 3) * 48,
							y + (value / 3) * 6);
						load_message_string(MSG_SWING + line_index, message);
						draw_text_glyphs(message, 0);
						++value;
					}
				}
			}
		}
		y = 174;
		call_set_text_pos(14, y);
		if (show_ps || show_mf) {
			load_message_string(MSG_PS, message);
			call_set_text_color(show_ps ? 51 : 55, 0);
			draw_font_glyph(message[0], 0);
			call_set_text_color(55, 0);
			draw_font_glyph('/', 0);
			call_set_text_color((item.slot_flags & 8) ? 51 : 55, 0);
			draw_font_glyph(message[1], 0);
		} else if (show_ac) {
			load_message_string(MSG_AC_452, message);
			call_set_text_color(description_color, 0);
			draw_text_glyphs(message, 0);
			draw_font_glyph(' ', 0);
			format_int_decimal(0 - item.armor_class, message);
			draw_text_glyphs(message, 0);
		}
		if (show_hand) {
			load_message_string((item.slot_flags & 4) ? MSG_2HAND : MSG_1HAND,
				message);
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			call_set_text_color(22, 0);
			draw_text_glyphs(message, 0);
		} else if (show_item_type) {
			load_message_string(MSG_HEDGHFLDFRM + item.item_type, message);
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			call_set_text_color(22, 0);
			draw_text_glyphs(message, 0);
		}
		call_set_text_pos(104, y);
		call_set_text_color(9, 0);
		draw_number_field(item.weight / 10, 3, 0);
		draw_font_glyph('.', 0);
		draw_number_field(item.weight % 10, 1, 0);
		load_message_string(MSG_LB, message);
		draw_text_glyphs(message, 0);
	} else {
	if (show_damage) {
		call_set_text_color(51, 0);
		load_message_string(MSG_DAMAGE_466, message);
		format_int_decimal(item.u.damage.damage_bonus + item.u.damage.damage_dice,
			number_text);
		format_int_decimal(item.u.damage.damage_bonus +
			item.u.damage.damage_dice * item.u.damage.damage_sides, damage_text);
		aztec_strcat(message, number_text);
		load_message_string(MSG_TO_467, number_text);
		aztec_strcat(message, number_text);
		aztec_strcat(message, damage_text);
		call_set_text_pos(14, y);
		draw_text_glyphs(message, 0);
		if (item.hit_adjustment != 0) {
			aztec_strcpy(message, open_parenthesis);
			if (item.hit_adjustment >= 0)
				aztec_strcat(message, plus_sign);
			format_int_decimal(item.hit_adjustment, number_text);
			aztec_strcat(message, number_text);
			aztec_strcat(message, close_parenthesis);
			call_set_text_pos(14 + (22 - aztec_strlen(message)) * 6, y);
			draw_text_glyphs(message, 0);
		}
		y += 6;
	}
	value = item.regen_drain % 16;
	string_length = item.regen_drain / 16;
	if (show_regen && value - string_length != 0) {
		call_set_text_color(94, 0);
		load_message_string(MSG_REGEN, message);
		if (value - string_length > 0)
			aztec_strcat(message, positive_sign);
		format_int_decimal(value - string_length, number_text);
		aztec_strcat(message, number_text);
		call_set_text_pos(14, y);
		draw_text_glyphs(message, 0);
	}
	if (item.pad3d != 0) {
		call_set_text_color(85, 0);
		load_message_string(MSG_CURSED_469, message);
		call_set_text_pos(110, y);
		draw_text_glyphs(message, 0);
	}
	y += 6;
	if (item.special_power_code != 0) {
		call_set_text_color(164, 0);
		load_message_string(MSG_SPECIAL_POWER, message);
		encode_special_power_glyphs(number_text, item.special_power_code);
		aztec_strcat(message, number_text);
		call_set_text_pos(14, y);
		draw_text_glyphs(message, 0);
		y += 6;
	}
	if (item.spell_code != 0) {
		call_set_text_color(22, 0);
		spell_level = item.spell_code / 256;
		spell_number = item.spell_code % 256;
		load_message_string(MSG_SPELL_NAME_BASE + spell_number, message);
		call_set_text_pos(14, y);
		draw_text_glyphs(message, 0);
		call_set_text_color(1, 0);
		format_int_decimal(spell_level, message);
		aztec_strcat(message, spell_separator);
		if (selected_item->level == 0)
			load_message_string(MSG_MAX, number_text);
		else
			format_int_decimal(selected_item->level, number_text);
		aztec_strcat(message, number_text);
		call_set_text_pos(14 + (22 - aztec_strlen(message)) * 6, y);
		draw_text_glyphs(message, 0);
		y += 6;
	}
	y += 6;
	if (show_special_attacks) {
		call_set_text_color(1, 0);
		load_message_string(MSG_SPECIAL_ATTACKS, message);
		call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
		draw_text_glyphs(message, 0);
		y += 6;
		call_set_text_color(46, 0);
		call_set_text_pos(14, y);
		message[0] = 0;
		name_split = 0;
		for (line_index = 0; line_index < 8; ++line_index) {
			if (item.hand_values[line_index] > 0) {
				name_split = 1;
				load_message_string(MSG_SLEEP_475 + line_index, number_text);
				if (aztec_strlen(message) + aztec_strlen(number_text) > 22) {
					message[aztec_strlen(message) - 1] = 0;
					call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
					draw_text_glyphs(message, 0);
					message[0] = 0;
					y += 6;
				}
				aztec_strcat(message, number_text);
				aztec_strcat(message, space_separator);
			}
		}
		if (aztec_strlen(message) > 0) {
			message[aztec_strlen(message) - 1] = 0;
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			draw_text_glyphs(message, 0);
		}
		if (name_split == 0) {
			load_message_string(selected_item->item_id == 469 ?
				MSG_UNKNOWN_484 : MSG_NONE_483, message);
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			draw_text_glyphs(message, 0);
		}
	}
	else if (show_special_resistance) {
		call_set_text_color(1, 0);
		load_message_string(MSG_SPECIAL_RESISTANCES, message);
		call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
		draw_text_glyphs(message, 0);
		y += 6;
		call_set_text_color(169, 0);
		name_split = 0;
		for (string_length = 0; string_length < 2; ++string_length) {
			line_index = item.resist_bonus[string_length] / 16;
			value = (item.resist_bonus[string_length] % 16) * 10;
			if (line_index > 0) {
				name_split = 1;
				load_message_string(MSG_400 + line_index, message);
				call_set_text_pos(38, y);
				draw_text_glyphs(message, 0);
				format_int_decimal(value, message);
				aztec_strcat(message, percent_sign);
				call_set_text_pos(38 + (14 - aztec_strlen(message)) * 6, y);
				draw_text_glyphs(message, 0);
				y += 6;
			}
		}
		if (name_split == 0) {
			load_message_string(MSG_NONE_483, message);
			call_set_text_pos(80 - 6 * aztec_strlen(message) / 2, y);
			draw_text_glyphs(message, 0);
		}
	}
	}
	call_show_area(1, 112, 171, 182);
	if (mouse_active) {
		if (spell_power == 0) {
			while (initial_mouse_buttons != 0 && call_get_mouse(&x, &y) != 0)
				;
		} else {
			flush_keyboard();
			while (poll_fullscreen_hotspot() == 0)
				;
		}
	} else {
		do {
			value = get_filtered_key(1);
		} while (value != 13 && value != 27);
	}
	return 0;
}
