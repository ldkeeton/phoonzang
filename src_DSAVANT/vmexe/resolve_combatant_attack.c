/* One weapon attack by the acting combatant: announce it, work out to-hit,
   defense and damage dice, apply the defender's parry/block/counter stance,
   then resolve each swing (hit location, deflection, damage, death). */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/encstyle.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct encumbrance_style *select_encumbrance_style();
extern struct random_step_spec *store_word_and_pair();
extern int use_item_refresh_stamina_drain(), test_bit(),
	choose_weighted_index();
extern int acting_group, acting_unit, combat_message_layout;
extern int combat_effect_sound, spell_backfired, startup_option;
extern int party_status_timer, party_status_offset;
extern int spell_49_turns, spell_49_strength, npc_id_decoy, dest_alt_arg;
extern struct member_ext *battle_group_ext_1;
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];

resolve_combatant_attack(attacker, attack_index, attack_mode)
struct combatant *attacker;
int attack_index, attack_mode;
{
	int bit;
	struct item_record item;
	int eq_slot;
	int d_grp;
	int d_unit;
	struct member_attack *atk;
	int stat_gap;
	int to_hit;
	int evade;
	int defense;
	int loc_mod;
	int loc_def;
	int hit_roll;
	int swing;
	int swings;
	int hits;
	int unused_n;		/* never used; keeps damage at bp-0x6a */
	int damage;
	int location;
	struct random_step_spec dice;
	int weapon;
	int offhand;
	int fx_row;
	int cell_row;
	int cell_col;
	int skill;
	int dmg_bonus;
	int str_bonus;
	struct encumbrance_style encumbrance;
	int hand_pen;
	int enc_tier;
	int spell;
	int spell_id;
	int power;
	int rolls;
	int left;
	int fx_shown;
	int paralysis_left;
	int paralyze;
	int no_ammo;
	int highlight;
	int end_sound;
	int color;
	int fx_attack;
	color = 67;
	fx_attack = 0;
	end_sound = 0;
	paralyze = 0;
	d_grp = attacker->target_group;
	d_unit = attacker->target_unit;
	fx_row = -1;
	spell = -1;
	fx_shown = 0;
	no_ammo = 0;
	combat_message_layout = 4;
	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	combat_action_message_buffer[0] = 0;
	combat_action_suffix_buffer[0] = 0;
	highlight = 1;
	if (acting_group == 0) {
		load_message_string(MSG_SWINGS + attack_mode,
			combat_action_message_buffer);
		highlight = 0;
		eq_slot = party_records[acting_unit].equipped[attack_index];
		if (attack_mode == 8) {
			if (!(party_records[acting_unit].item_slots[0][eq_slot].flags & 32))
				eq_slot = party_records[acting_unit].equipped[1];
		}
		if (attacker->phase != 0 && attack_mode != 4 && attack_mode != 8)
			load_message_string(MSG_BACKSTAB + random_below(2),
				combat_action_message_buffer);
		if (eq_slot != 255) {
			data_record_io(1, &item,
				party_records[acting_unit].item_slots[0][eq_slot].item_id, 0);
			if (party_records[acting_unit].item_slots[0][eq_slot].flags & 128)
				aztec_strcpy(combat_action_suffix_buffer, item.name);
			else
				load_message_string(MSG_DAGGER_6000 + item.glyph,
					combat_action_suffix_buffer);
			replace_slashes_with_spaces(combat_action_suffix_buffer);
			if (attack_mode == 4 || attack_mode == 8) {
				if (attack_mode == 4 && item.spell_code != 0) {
					spell = item.spell_code;
					load_message_string(MSG_THROWS_3384,
						combat_action_message_buffer);
				}
				switch (party_records[acting_unit].item_slots[0][eq_slot].glyph) {
				case 0: fx_row = 0; break;
				case 18: fx_row = 20; break;
				case 21: fx_row = 17; break;
				case 22: fx_row = 2; break;
				case 83: fx_row = 4; break;
				case 23: fx_row = 16; break;
				case 100: case 102: fx_row = 18; break;
				case 101: case 103: case 32: fx_row = 19; break;
				case 34: fx_row = 22; break;
				case 112: fx_row = 6; break;
				case 104:
				case 110:
					if (party_records[acting_unit].item_slots[0][eq_slot].level > 0) {
						fx_row = 15;
						combat_effect_sound = 12;
					} else
						no_ammo = 1;
					load_message_string(MSG_FIRES,
						combat_action_message_buffer);
					break;
				case 114:
					if (party_records[acting_unit].item_slots[0][eq_slot].level > 0) {
						fx_row = 8;
						combat_effect_sound = 5;
					} else
						no_ammo = 1;
					load_message_string(MSG_FIRES,
						combat_action_message_buffer);
					break;
				}
			}
		}
	} else {
		if (battle_group_ext[acting_group]->attack_mode[attack_index] <= 3) {
			load_message_string(MSG_SWINGS + attack_mode,
				combat_action_message_buffer);
			if (attacker->phase != 0 && attack_mode != 4 && attack_mode != 8)
				load_message_string(MSG_BACKSTAB + random_below(2),
					combat_action_message_buffer);
			if (attack_mode == 4 || attack_mode == 8) {
				dice = battle_group_ext[acting_group]->attack[attack_index].damage;
				switch (battle_group_ext[acting_group]->attack_effect[attack_index]) {
				case 1:
					fx_row = 21;
					break;
				case 49:
					spell = 1812;
					fx_row = 10;
					combat_effect_sound = 11;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case 50:
					spell = 1286;
					fx_row = 8;
					combat_effect_sound = 11;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case 7:
					fx_row = 8;
					combat_effect_sound = 5;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					highlight = 0;
					break;
				case 9:
					fx_row = 2;
					highlight = 0;
					break;
				case 53:
					highlight = 2;
				case 54:
					if (highlight == 1)
						highlight = 3;
				case 13:
					fx_row = 15;
					combat_effect_sound = 12;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case 16: fx_row = 0; break;
				case 23: fx_row = 12; break;
				case 30: fx_row = 16; break;
				case 31: fx_row = 6; break;
				case 36: fx_row = 17; break;
				case 37:
					fx_row = 4;
					highlight = 0;
					break;
				case 52:
					spell = 1603;
					fx_row = 22;
					combat_effect_sound = 10;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case 56:
					spell = 1794;
					fx_row = 12;
					combat_effect_sound = 12;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case 60:
					color = 164;
					spell = 1601;
					fx_row = 14;
					ensure_sound_loaded(57);
					end_sound = 44;
					combat_effect_sound = 16;
					load_message_string(MSG_CASTS_3388, combat_action_message_buffer);
					fx_attack = 1;
				case 0: case 2: case 3: case 4: case 5: case 6:
				case 8: case 10: case 11: case 12: case 14: case 15:
				case 17: case 18: case 19: case 20: case 21: case 22:
				case 24: case 25: case 26: case 27: case 28: case 29:
				case 32: case 33: case 34: case 35: case 38: case 39:
				case 40: case 41: case 42: case 43: case 44: case 45:
				case 46: case 47: case 48: case 51: case 55: case 57:
				case 58: case 59:
					;
				}
			}
			if (battle_group_ext[acting_group]->attack_effect[attack_index] > 0)
				load_message_string(3799 +
					battle_group_ext[acting_group]->attack_effect[attack_index],
					combat_action_suffix_buffer);
		} else {
			load_message_string(3371 +
				battle_group_ext[acting_group]->attack_mode[attack_index],
				combat_action_message_buffer);
		}
	}
	if (highlight > 0) {
		if (battle_groups[acting_group]->unit[acting_unit].cell != -1) {
			cell_row = battle_groups[acting_group]->unit[acting_unit].cell / 10;
			cell_col = battle_groups[acting_group]->unit[acting_unit].cell % 10;
			fill_action_slot_table(acting_group, cell_row, cell_col, highlight);
			wait_for_combat_input(5);
		}
	}
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == 0 ? 1 : 67, color, color);
	if (spell == -1 && no_ammo == 0) {
		copy_combatant_name(combat_action_name_buffer, d_grp,
			d_unit);
		draw_centered_menu_text_row(combat_action_name_buffer,
			d_grp == 0 ? 1 : 67, 2);
	}
	if (fx_row != -1) {
		spell_backfired = 0;
		animate_spell_at_target(d_grp, d_unit, fx_row,
			(spell % 256 == 65 || spell == -1) ? 0 : 1,
			combat_effect_sound);
		fx_shown = -1;
	}

	/* stat_gap: half the defender's combat_stats[1..3] lead over the attacker;
	   then the weapon skill the attack trains. */
	stat_gap = (battle_group_ext[d_grp]->combat_stats[3] +
		battle_group_ext[d_grp]->combat_stats[2] +
		battle_group_ext[d_grp]->combat_stats[1] -
		(battle_group_ext[acting_group]->combat_stats[3] +
		 battle_group_ext[acting_group]->combat_stats[2] +
		 battle_group_ext[acting_group]->combat_stats[1])) / 2;
	dmg_bonus = attacker->strike_mod;
	if (acting_group == 0) {
		if (attack_mode == 4)
			skill = 5;
		else {
			if (party_records[acting_unit].equipped[attack_index] != 255) {
				switch (party_records[acting_unit].item_slots[0][
					party_records[acting_unit].equipped[attack_index]].glyph) {
				case 0: case 18: case 88: skill = 0; break;
				case 1: case 14: case 15: case 16: case 51:
				case 53: case 55: case 58: case 59: case 108:
					skill = 1; break;
				case 2: case 3: case 20: skill = 2; break;
				case 4: case 5: case 6: case 52: case 54: case 56:
					skill = 3; break;
				case 7: case 8: case 9: case 10: case 17: case 19:
				case 57: case 90:
					skill = 4; break;
				case 11: case 12: case 37: skill = 7; break;
				case 13: skill = 6; break;
				case 24: case 38: skill = 8; break;
				case 104: case 105: case 106: case 110: case 114: skill = 18; break;
				default: skill = 9; break;
				}
			} else
				skill = 9;
		}
		if (skill != 9 || party_records[acting_unit].skills[9] > 0 ||
		    party_records[acting_unit].profession == 12 ||
		    party_records[acting_unit].profession == 13) {
			if (skill != 18 || party_records[acting_unit].skills[18] > 0)
				try_raise_member_skill(acting_unit, skill, 2);
		}
			encumbrance = *select_encumbrance_style(acting_unit);
			hand_pen =
				attack_index == 0 ? encumbrance.penalty_a : encumbrance.penalty_b;
			to_hit = classify_percentage_band(0, attacker->stamina,
				attacker->stamina_max) +
				party_records[acting_unit].hand_attack[attack_index].hit_penalty +
				party_records[acting_unit].level_scaled_percent +
				attacker->aim_mod * 5 + stat_gap + hand_pen -
				party_records[acting_unit].skills[skill] / 3;
			if (skill == 18)
				to_hit = party_records[acting_unit].hand_attack[attack_index].hit_penalty +
					attacker->aim_mod * 5 + stat_gap + 85 -
					party_records[acting_unit].skills[18] / 2;
			dice = party_records[acting_unit].hand_attack[attack_index].base;
			atk = &party_records[acting_unit].hand_attack[attack_index];
			weapon = party_records[acting_unit].equipped[attack_index];
			if (attack_mode == 8) {
				dmg_bonus = 0;
				if (party_records[acting_unit].item_slots[0][weapon].flags & 32) {
					if (party_records[acting_unit].item_slots[0][weapon].level == 0) {
						wait_for_combat_input(startup_option / 2);
						display_combat_message(MSG_NOT_LOADED, 85, 2);
						wait_for_combat_input(startup_option / 2);
						return;
					}
					if (party_records[acting_unit].item_slots[0][weapon].level != 255)
						party_records[acting_unit].item_slots[0][weapon].level--;
					if (atk->slays_class == 22 &&
						battle_group_ext[d_grp]->creature_class == 22) {
						paralyze = 1;
						dice = *store_word_and_pair(4, 4, 4);
					}
				} else {
				offhand = party_records[acting_unit].equipped[1];
					if (offhand != 255 &&
						party_records[acting_unit].item_slots[0][offhand].item_type == 4) {
						dice = party_records[acting_unit].hand_attack[1].base;
						atk = &party_records[acting_unit].hand_attack[1];
						to_hit += party_records[acting_unit].hand_attack[1].hit_penalty;
						use_item_refresh_stamina_drain(acting_unit, 0, offhand);
					}
				}
			} else if (attack_mode == 4) {
				if (party_records[acting_unit].item_slots[0][weapon].item_type == 14 ||
					(party_records[acting_unit].item_slots[0][weapon].item_type < 12 &&
					 party_records[acting_unit].item_slots[0][weapon].item_type != 2))
					party_records[acting_unit].item_slots[0][weapon].level = 1;
				dmg_bonus = 0;
				use_item_refresh_stamina_drain(acting_unit, 0, weapon);
		}
		evade = classify_percentage_band(1,
			battle_groups[d_grp]->unit[d_unit].stamina,
			battle_groups[d_grp]->unit[d_unit].stamina_max) +
			battle_groups[d_grp]->unit[d_unit].reflex_mod;
		if (party_status_timer > 0)
			evade += party_status_offset;
		defense = evade + battle_group_ext[d_grp]->armor_class[0];
		loc_mod = evade + battle_group_ext[d_grp]->attack_mode_defense[attack_mode];
	} else {
		to_hit = classify_percentage_band(0, attacker->stamina,
			attacker->stamina_max) +
			battle_group_ext[acting_group]->attack[attack_index].accuracy_bonus +
			attacker->aim_mod * 5 + stat_gap;
		dice = battle_group_ext[acting_group]->attack[attack_index].damage;
		atk = &battle_group_ext[acting_group]->attack[attack_index];
		if (attack_mode == 4 || attack_mode == 8)
			dmg_bonus = 0;
		if (d_grp == 0) {
			encumbrance = *select_encumbrance_style(d_unit);
			enc_tier = encumbrance.tier;
		} else
			enc_tier = 0;
		evade = classify_percentage_band(1,
			battle_groups[d_grp]->unit[d_unit].stamina,
			battle_groups[d_grp]->unit[d_unit].stamina_max) +
			battle_groups[d_grp]->unit[d_unit].reflex_mod;
		if (d_grp == 0 && spell_49_turns > 0)
			evade -= spell_49_strength;
		defense = battle_group_ext[d_grp]->armor_class[0] + evade + enc_tier;
		loc_mod = evade + enc_tier;
		if (d_grp != 0)
			loc_mod += battle_group_ext[d_grp]->attack_mode_defense[attack_mode];
	}
	rolls = 1;
	if (attacker->phase) {
		defense = defense > 10 ? defense : 10;
		rolls = 2;
	}
	if (attacker->status[4] > 0) {
		to_hit = to_hit < 90 ? 90 : to_hit;
		defense = defense > 0 ? 0 : defense;
	}
	if (attacker->status[8] > 0 || attacker->status[1] > 0
		|| attacker->status[9] > 0)
		to_hit += 25;
	if (battle_groups[d_grp]->unit[d_unit].status[4] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[2] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[3] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].state == 2) {
		defense = 15;
		rolls = 2;
	}
	if (battle_groups[d_grp]->unit[d_unit].status[8] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[1] > 0)
		defense += 4;
	str_bonus = battle_group_ext[acting_group]->combat_stats[0] > 17 ? 2 :
		battle_group_ext[acting_group]->combat_stats[0] > 15 ? 1 : 0;
	swings = random_below(battle_group_ext[acting_group]->max_hits -
		battle_groups[d_grp]->unit[d_unit].speed_mod / 10) + 1;
	if (swings < 1)
		swings = 1;
	if (swings > 4)
		swings = 4;
	switch (attack_mode) {
	case 0:
		break;
	case 1:
		defense -= 2;
		loc_mod += 2;
		break;
	case 2:
		loc_mod--;
		dmg_bonus += str_bonus;
		break;
	case 3:
		defense -= 4;
		loc_mod -= 4;
		rolls = 2;
		break;
	case 4:
		swings = 1;
		rolls = 1;
		defense--;
		loc_mod++;
		break;
	case 5:
		defense++;
		loc_mod--;
		break;
	case 6:
		defense -= 2;
		dmg_bonus = dmg_bonus + str_bonus + 2;
		break;
	case 7:
		defense += 2;
		loc_mod -= 2;
		rolls = 1;
		break;
	case 8:
		swings = 1;
		rolls = 1;
		loc_mod += 2;
		break;
	}
	if (battle_groups[d_grp]->unit[d_unit].action_kind == 6) {
		defense = defense > 10 ? defense : 10;
		rolls = 2;
	}
	if (battle_groups[d_grp]->unit[d_unit].status[4] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].status[2] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].status[3] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].state == 0) {
		if (battle_groups[d_grp]->unit[d_unit].action_kind == 1) {
			switch (battle_groups[d_grp]->unit[d_unit].primary_action) {
			case 0:
				if (d_grp == 0) {
					defense -= party_records[d_unit].skills[8] / 10 + 1;
					try_raise_member_skill(d_unit, 8, 2);
				} else
					defense -= battle_groups[d_grp]->unit[d_unit].level / 4 + 1;
				rolls = 1;
				break;
			case 1:
				defense -= 2;
				rolls = 1;
				break;
			case 2:
				if (attack_mode != 4 && attack_mode != 8) {
					battle_groups[d_grp]->unit[d_unit].action_kind = 0;
					battle_groups[d_grp]->unit[d_unit].attack_cycle = 0;
					battle_groups[d_grp]->unit[d_unit].action_speed[0] = dest_alt_arg - 1;
					battle_groups[d_grp]->unit[d_unit].target_group = acting_group;
					battle_groups[d_grp]->unit[d_unit].target_unit = acting_unit;
					battle_groups[d_grp]->unit[d_unit].secondary_action = (unsigned)65535;
					battle_groups[d_grp]->unit[d_unit].primary_action = 255;
					if (d_grp == 0) {
						for (bit = 7; bit >= 0; bit--)
							if (test_bit(&party_records[d_unit].hand_attack[0].attack_flags,
								bit) == 1)
								battle_groups[d_grp]->unit[d_unit].primary_action = bit;
					} else {
						for (bit = 7; bit >= 0; bit--)
							if (test_bit(&battle_group_ext[d_grp]->attack[0].action_mask, bit) == 1)
								battle_groups[d_grp]->unit[d_unit].primary_action = bit;
					}
					if (battle_groups[d_grp]->unit[d_unit].primary_action == 255) {
						battle_groups[d_grp]->unit[d_unit].primary_action = 8;
						if (d_grp == 0) {
							battle_groups[d_grp]->unit[d_unit].action_kind = 1;
							battle_groups[d_grp]->unit[d_unit].attack_cycle = 0;
							battle_groups[d_grp]->unit[d_unit].action_speed[0] = 0;
							battle_groups[d_grp]->unit[d_unit].primary_action = 1;
						}
					}
					battle_groups[d_grp]->unit[d_unit].primary_attack = 0;
				}
				break;
			case 3:
				defense = 15;
				break;
			}
		} else if (d_grp == 0 && party_records[d_unit].equipped[1] != 255 &&
		    party_records[d_unit].item_slots[0][
			party_records[d_unit].equipped[1]].item_type == 11)
			try_raise_member_skill(d_unit, 8, 0);
	}
	if (acting_group != 0 && fx_shown == 0 && battle_group_ext[1]->sound_id > 0 &&
	    battle_group_ext[acting_group]->sound_id == battle_group_ext[1]->sound_id)
		play_sound_effect(16);
	wait_for_combat_input(startup_option / 2);
	if (atk->slays_class == battle_group_ext[d_grp]->creature_class)
		rolls++;
	for (swing = 0; swing < swings &&
	     battle_groups[d_grp]->unit[d_unit].state < 3; swing++) {
		hit_roll = npc_id_decoy == 0 ? random_below(100) : 0;
		if (d_grp == 0) {
			location = choose_weighted_index(
				battle_group_ext[acting_group]->party_hit_location_weights);
			loc_def = battle_group_ext[d_grp]->armor_class[location] + loc_mod;
		} else {
			location = choose_weighted_index(
				battle_group_ext[d_grp]->hit_location_weights);
			loc_def = battle_group_ext[d_grp]->armor_class[location] + loc_mod;
		}
		if (battle_groups[d_grp]->unit[d_unit].state == 2)
			loc_def = loc_def > 0 ? 0 : loc_def;
		refresh_combat_glyph_strip(3, 4);
		if (fx_shown != -1)
			play_sound_with_rate_adjustment(6, (3 - random_below(8)) * 2);
		if ((attack_mode == 4 || attack_mode == 8) && fx_attack == 0 &&
		    random_below(100) < battle_groups[d_grp]->ward[2]) {
			display_combat_message(MSG_DEFLECTED, 67, 3);
			play_sound_effect(7);
		} else if (spell != -1 || hit_roll >= 5 &&
		    (hit_roll >= 95 || to_hit - 5 * defense < hit_roll)) {
			if (spell != -1) {
				power = spell / 256;
				spell_id = spell % 256;
				spell_backfired = 1;
				apply_combat_spell_effect(attacker, spell_id, power);
			} else {
				display_combat_message(MSG_HIT, 22, 3);
				play_sound_effect(7);
				if (battle_group_ext[d_grp]->creature_class == 17 ||
				    battle_group_ext[d_grp]->creature_class == 23 && location == 6)
					load_message_string(MSG_TRUNK_3330 + location,
						combat_action_name_buffer);
				else if (battle_group_ext[d_grp]->creature_class == 26)
					load_message_string(MSG_REAR + location,
						combat_action_name_buffer);
				else
					load_message_string(MSG_BACK + location,
						combat_action_name_buffer);
				hits++;
				if (attacker->phase == 1)
					attacker->phase = -1;
				damage = 0;
				left = rolls;
				while (left > 0) {
					damage += add_random_steps(dice);
					left--;
				}
				damage += dmg_bonus;
				if (damage > 0 && (hit_roll >= 95 || to_hit - 5 * loc_def < hit_roll)) {
					format_int_decimal(damage, combat_action_message_buffer);
					load_message_string(MSG_DAMAGE_3306, combat_action_suffix_buffer);
					draw_centered_text_fragments(4, combat_action_name_buffer,
						combat_action_message_buffer, combat_action_suffix_buffer,
						67, 65, 67);
					battle_groups[d_grp]->unit[d_unit].hp -= damage;
					battle_groups[d_grp]->unit[d_unit].status[2] = 0;
					paralysis_left = battle_groups[d_grp]->unit[d_unit].status[3] -
						(random_below(3) + 2);
					if (paralysis_left < 0)
						paralysis_left = 0;
					battle_groups[d_grp]->unit[d_unit].status[3] = paralysis_left;
					if (battle_groups[d_grp]->unit[d_unit].hp <= 0) {
						wait_for_combat_input(startup_option / 2);
						set_resisted_combatant_state(d_grp, d_unit, MSG_DIES_3486,
							0, 3, 0, 3408, 0);
						if (attacker->phase == -1 && random_below(3) > 0)
							attacker->phase = 1;
					} else {
						if (d_grp == 0) {
							play_sound_effect(party_records[d_unit].gender + 2);
							sync_member_party_panel(d_unit, 1);
						}
						wait_for_combat_input(startup_option / 2);
						apply_combat_attack_effects(attacker, atk, d_grp, d_unit);
						if (paralyze != 0 && random_below(
						    battle_groups[d_grp]->unit[d_unit].level) == 0)
							apply_resisted_status_timer(d_grp, d_unit,
								MSG_PARALYZED_3475, 4, 3, 0, 2, 2, 2,
								3408, 0);
					}
				} else {
					load_message_string(MSG_NO_PENETRATION,
						combat_action_message_buffer);
					combat_action_suffix_buffer[0] = 0;
					draw_centered_text_fragments(4, combat_action_name_buffer,
						combat_action_message_buffer, combat_action_suffix_buffer,
						67, 67, 67);
				}
			}
		} else
			display_combat_message(MSG_MISSED, 67, 3);
		wait_for_combat_input(startup_option / 2);
	}
	if (attacker->phase == -1)
		attacker->phase = 0;
	if (d_grp == 0)
		sync_member_party_panel(d_unit, 0);
	if (end_sound > 0)
		ensure_sound_loaded(end_sound);
}
