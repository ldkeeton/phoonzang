/* One weapon attack by the acting combatant: announce it, work out to-hit,
   defense and damage dice, apply the defender's parry/block/counter stance,
   then resolve each swing (hit location, deflection, damage, death). */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/encstyle.h"
#include "structs/randstep.h"
#include "structs/gamedefs.h"
#include "structs/combat.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct status_pair party_effects[];

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct encumbrance_style *select_encumbrance_style();
extern struct random_step_spec *store_word_and_pair();
extern int use_item_refresh_stamina_drain(), test_bit(),
	choose_weighted_index();
extern int acting_group, acting_unit, combat_message_layout;
extern int combat_effect_sound, spell_backfired, startup_option;
extern int npc_id_decoy, dest_alt_arg;
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
	int miss_chance;	/* percent; a swing hits when it is under the
				   d100 roll after 5 * defense comes off it.
				   Rolls 95+ always hit, under 5 always miss */
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
	color = COLOR_COMBAT_TEXT;
	fx_attack = 0;
	end_sound = 0;
	paralyze = 0;
	d_grp = attacker->target_group;
	d_unit = attacker->target_unit;
	fx_row = MISSILE_NONE;
	spell = NO_SPELL;
	fx_shown = 0;
	no_ammo = 0;
	combat_message_layout = 4;
	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	combat_action_message_buffer[0] = 0;
	combat_action_suffix_buffer[0] = 0;
	highlight = 1;
	if (acting_group == PARTY_GROUP) {
		load_message_string(MSG_SWINGS + attack_mode,
			combat_action_message_buffer);
		highlight = 0;
		eq_slot = party_records[acting_unit].equipped[attack_index];
		if (attack_mode == ATTACK_SHOOT) {
			if (!(party_records[acting_unit].item_slots[0][eq_slot].flags &
			    SLOT_LOADS_AMMO))
				eq_slot = party_records[acting_unit].equipped[SECONDARY_HAND];
		}
		if (attacker->phase != PHASE_VISIBLE && attack_mode != ATTACK_THROW
			&& attack_mode != ATTACK_SHOOT)
			load_message_string(MSG_BACKSTAB + random_below(2),
				combat_action_message_buffer);
		if (eq_slot != NO_ITEM) {
			data_record_io(1, &item,
				party_records[acting_unit].item_slots[0][eq_slot].item_id, 0);
			if (party_records[acting_unit].item_slots[0][eq_slot].flags &
			    SLOT_IDENTIFIED)
				aztec_strcpy(combat_action_suffix_buffer, item.name);
			else
				load_message_string(MSG_DAGGER_6000 + item.glyph,
					combat_action_suffix_buffer);
			replace_slashes_with_spaces(combat_action_suffix_buffer);
			if (attack_mode == ATTACK_THROW || attack_mode == ATTACK_SHOOT) {
				if (attack_mode == ATTACK_THROW && item.spell_code != 0) {
					spell = item.spell_code;
					load_message_string(MSG_THROWS_3384,
						combat_action_message_buffer);
				}
				switch (party_records[acting_unit].item_slots[0][eq_slot].glyph) {
				case GLYPH_DAGGER: fx_row = MISSILE_DAGGER; break;
				case GLYPH_WAND: fx_row = MISSILE_WAND; break;
				case GLYPH_STARS: fx_row = MISSILE_STAR; break;
				case GLYPH_ARROWS: fx_row = MISSILE_ARROW; break;
				case GLYPH_QUARRELS: fx_row = MISSILE_QUARREL; break;
				case GLYPH_BULLETS: fx_row = MISSILE_STONE; break;
				case GLYPH_POTION_100: case GLYPH_POTION_102:
					fx_row = MISSILE_POTION; break;
				case GLYPH_POTION_101: case GLYPH_POTION_103: case GLYPH_POTION_32:
					fx_row = MISSILE_FLASK; break;
				case GLYPH_POWDER: fx_row = MISSILE_POWDER; break;
				case GLYPH_DARTS: fx_row = MISSILE_DART; break;
				case GLYPH_GLOVE:
				case GLYPH_WEAPON_110:
					if (party_records[acting_unit].item_slots[0][eq_slot].level > 0) {
						fx_row = MISSILE_ENERGY_BOLT;
						combat_effect_sound = SOUND_ENERGY_BOLT;
					} else
						no_ammo = 1;
					load_message_string(MSG_FIRES,
						combat_action_message_buffer);
					break;
				case GLYPH_WEAPON_114:
					if (party_records[acting_unit].item_slots[0][eq_slot].level > 0) {
						fx_row = MISSILE_GUNSHOT;
						combat_effect_sound = SOUND_GUNSHOT;
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
			if (attacker->phase != PHASE_VISIBLE && attack_mode != ATTACK_THROW
				&& attack_mode != ATTACK_SHOOT)
				load_message_string(MSG_BACKSTAB + random_below(2),
					combat_action_message_buffer);
			if (attack_mode == ATTACK_THROW || attack_mode == ATTACK_SHOOT) {
				dice = battle_group_ext[acting_group]->attack[attack_index].damage;
				switch (battle_group_ext[acting_group]->attack_effect[attack_index]) {
				case MWEAPON_THORNY_SPIKES: case MWEAPON_POISON_SPIKES:
					fx_row = MISSILE_SPIKES;
					break;
				case MWEAPON_PLASMA_CANNON:
					spell = SPELL_AT(7, SPELL_ICEBALL);
					fx_row = MISSILE_PLASMA;
					combat_effect_sound = SOUND_CANNON;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case MWEAPON_LASER_CANNON:
					spell = SPELL_AT(5, SPELL_FIRE_BOMB);
					fx_row = MISSILE_GUNSHOT;
					combat_effect_sound = SOUND_CANNON;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case MWEAPON_MUSKET: case MWEAPON_BLUNDERBUSS:
					fx_row = MISSILE_GUNSHOT;
					combat_effect_sound = SOUND_GUNSHOT;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					highlight = 0;
					break;
				case MWEAPON_WILLOW_ARROW: case MWEAPON_HUNTER_ARROW:
					fx_row = MISSILE_ARROW;
					highlight = 0;
					break;
				case MWEAPON_PHASER_PISTOL:
					highlight = 2;
				case MWEAPON_POWER_GLOVE:
					if (highlight == 1)
						highlight = 3;
				case MWEAPON_TRACER_BOLT: case MWEAPON_LASER_BOLT:
				case MWEAPON_BLASTER_BOLT: case MWEAPON_HV_BLASTER:
				case MWEAPON_PHASER_BOLT: case MWEAPON_CHROMA_GLOVE_59:
					fx_row = MISSILE_ENERGY_BOLT;
					combat_effect_sound = SOUND_ENERGY_BOLT;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case MWEAPON_BITE_DAGGER: case MWEAPON_DAGGER: case MWEAPON_SKULL_DAGGER:
					fx_row = MISSILE_DAGGER; break;
				case MWEAPON_WEBBING: fx_row = MISSILE_WEBBING; break;
				case MWEAPON_STONE: case MWEAPON_CANE_CORPUS:
					fx_row = MISSILE_STONE; break;
				case MWEAPON_POISON_DART: fx_row = MISSILE_DART; break;
				case MWEAPON_DEATH_STAR: fx_row = MISSILE_STAR; break;
				case MWEAPON_BOWEL_RAKER:
					fx_row = MISSILE_QUARREL;
					highlight = 0;
					break;
				case MWEAPON_CHROMA_GLOVE_52:
					spell = SPELL_AT(6, SPELL_HOLD_MONSTERS);
					fx_row = MISSILE_POWDER;
					combat_effect_sound = SOUND_CHROMA_GLOVE;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case MWEAPON_SPECTRAL_RAY:
					spell = SPELL_AT(7, SPELL_PSIONIC_FIRES);
					fx_row = MISSILE_WEBBING;
					combat_effect_sound = SOUND_ENERGY_BOLT;
					load_message_string(MSG_FIRES, combat_action_message_buffer);
					fx_attack = 1;
					break;
				case MWEAPON_ENCHANTMENT:
					color = COLOR_SPELL;
					spell = SPELL_AT(6, SPELL_CONFUSION);
					fx_row = MISSILE_ENCHANTMENT;
					ensure_sound_loaded(SOUND_FILE_ENCHANTMENT);
					end_sound = SOUND_FILE_RESTORE;
					combat_effect_sound = SOUND_REPLACEABLE;
					load_message_string(MSG_CASTS_3388, combat_action_message_buffer);
					fx_attack = 1;
				}
			}
			if (battle_group_ext[acting_group]->attack_effect[attack_index] > 0)
				load_message_string(MSG_MONSTER_WEAPON +
					battle_group_ext[acting_group]->attack_effect[attack_index],
					combat_action_suffix_buffer);
		} else {
			load_message_string(MSG_MONSTER_ATTACK_VERB +
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
	draw_centered_text_fragments(ROW_ACTION, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == PARTY_GROUP ? COLOR_PARTY_NAME
			: COLOR_COMBAT_TEXT, color, color);
	if (spell == NO_SPELL && no_ammo == 0) {
		copy_combatant_name(combat_action_name_buffer, d_grp,
			d_unit);
		draw_centered_menu_text_row(combat_action_name_buffer,
			d_grp == PARTY_GROUP ? COLOR_PARTY_NAME : COLOR_COMBAT_TEXT, ROW_TARGET);
	}
	if (fx_row != MISSILE_NONE) {
		spell_backfired = 0;
		animate_spell_at_target(d_grp, d_unit, fx_row,
			(spell % 256 == SPELL_CONFUSION || spell == NO_SPELL) ? 0 : 1,
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
	if (acting_group == PARTY_GROUP) {
		if (attack_mode == ATTACK_THROW)
			skill = SKILL_THROWING;
		else {
			if (party_records[acting_unit].equipped[attack_index] != NO_ITEM) {
				switch (party_records[acting_unit].item_slots[0][
					party_records[acting_unit].equipped[attack_index]].glyph) {
				case GLYPH_DAGGER: case GLYPH_WAND: case GLYPH_GLOVES_88:
					skill = SKILL_WAND_DAGGER; break;
				case GLYPH_SWORD_1: case GLYPH_SWORD_14: case GLYPH_SWORD_15:
				case GLYPH_SWORD_16: case GLYPH_SWORD_51: case GLYPH_SWORD_53:
				case GLYPH_WEAPON_55: case GLYPH_SWORD_58: case GLYPH_SWORD_59:
				case GLYPH_SWORD_108:
					skill = SKILL_SWORD; break;
				case GLYPH_AXE_2: case GLYPH_AXE_3: case GLYPH_AXE_20:
					skill = SKILL_AXE; break;
				case GLYPH_FLAIL: case GLYPH_MACE: case GLYPH_HAMMER_6:
				case GLYPH_HAMMER_52: case GLYPH_WHIP: case GLYPH_STICKS:
					skill = SKILL_MACE_FLAIL; break;
				case GLYPH_STAFF_7: case GLYPH_POLE_AXE_8: case GLYPH_SPEAR:
				case GLYPH_BO: case GLYPH_STAFF_17: case GLYPH_STAFF_19:
				case GLYPH_POLE_AXE_57: case GLYPH_LANCE: case GLYPH_POLEARM_105:
				case GLYPH_POLEARM_106:
					skill = SKILL_POLE_STAFF; break;
				case GLYPH_BOW_11: case GLYPH_CROSSBOW: case GLYPH_BOW_37:
					skill = SKILL_BOWS; break;
				case GLYPH_SLING: skill = SKILL_SLING; break;
				case GLYPH_SHIELD_24: case GLYPH_SHIELD_38:
					skill = SKILL_SHIELD; break;
				case GLYPH_GLOVE: case GLYPH_WEAPON_110: case GLYPH_WEAPON_114:
					skill = SKILL_FIREARMS; break;
				default: skill = SKILL_HANDS_FEET; break;
				}
			} else
				skill = SKILL_HANDS_FEET;
		}
		if (skill != SKILL_HANDS_FEET
			|| party_records[acting_unit].skills[SKILL_HANDS_FEET] > 0 ||
		    party_records[acting_unit].profession == PROF_MONK ||
		    party_records[acting_unit].profession == PROF_NINJA) {
			if (skill != SKILL_FIREARMS
				|| party_records[acting_unit].skills[SKILL_FIREARMS] > 0)
				try_raise_member_skill(acting_unit, skill, 2);
		}
			encumbrance = *select_encumbrance_style(acting_unit);
			hand_pen =
				attack_index == 0 ? encumbrance.penalty_a : encumbrance.penalty_b;
			miss_chance = classify_percentage_band(0, attacker->stamina,
				attacker->stamina_max) +
				party_records[acting_unit].hand_attack[attack_index].hit_penalty +
				party_records[acting_unit].level_scaled_percent +
				attacker->aim_mod * 5 + stat_gap + hand_pen -
				party_records[acting_unit].skills[skill] / 3;
			if (skill == SKILL_FIREARMS)
				miss_chance =
					party_records[acting_unit].hand_attack[attack_index].hit_penalty +
					attacker->aim_mod * 5 + stat_gap + 85 -
					party_records[acting_unit].skills[SKILL_FIREARMS] / 2;
			dice = party_records[acting_unit].hand_attack[attack_index].base;
			atk = &party_records[acting_unit].hand_attack[attack_index];
			weapon = party_records[acting_unit].equipped[attack_index];
			if (attack_mode == ATTACK_SHOOT) {
				dmg_bonus = 0;
				if (party_records[acting_unit].item_slots[0][weapon].flags &
				    SLOT_LOADS_AMMO) {
					if (party_records[acting_unit].item_slots[0][weapon].level == 0) {
						wait_for_combat_input(startup_option / 2);
						display_combat_message(MSG_NOT_LOADED, COLOR_ALERT, ROW_TARGET);
						wait_for_combat_input(startup_option / 2);
						return;
					}
					if (party_records[acting_unit].item_slots[0][weapon].level
						!= UNLIMITED_SHOTS)
						party_records[acting_unit].item_slots[0][weapon].level--;
					if (atk->slays_class == CLASS_STUN_SLAIN &&
						battle_group_ext[d_grp]->creature_class == CLASS_STUN_SLAIN) {
						paralyze = 1;
						dice = *store_word_and_pair(4, 4, 4);
					}
				} else {
				offhand = party_records[acting_unit].equipped[SECONDARY_HAND];
					if (offhand != NO_ITEM &&
						party_records[acting_unit].item_slots[0][offhand].item_type
							== ITEM_MISSILE) {
						dice = party_records[acting_unit].hand_attack[SECONDARY_HAND].base;
						atk = &party_records[acting_unit].hand_attack[SECONDARY_HAND];
						miss_chance +=
							party_records[acting_unit].hand_attack[SECONDARY_HAND].hit_penalty;
						use_item_refresh_stamina_drain(acting_unit, 0, offhand);
					}
				}
			} else if (attack_mode == ATTACK_THROW) {
				/* Only thrown weapons keep their count. */
				if (party_records[acting_unit].item_slots[0][weapon].item_type
					== ITEM_SPECIAL_14 ||
				    (party_records[acting_unit].item_slots[0][weapon].item_type
					< ITEM_MAGICAL_12 &&
				     party_records[acting_unit].item_slots[0][weapon].item_type
					!= ITEM_WEAPON_T))
					party_records[acting_unit].item_slots[0][weapon].level = 1;
				dmg_bonus = 0;
				use_item_refresh_stamina_drain(acting_unit, 0, weapon);
		}
		evade = classify_percentage_band(1,
			battle_groups[d_grp]->unit[d_unit].stamina,
			battle_groups[d_grp]->unit[d_unit].stamina_max) +
			battle_groups[d_grp]->unit[d_unit].reflex_mod;
		if (party_effects[PARTY_EFFECT_EVADE].timer > 0)
			evade +=
				party_effects[PARTY_EFFECT_EVADE].strength;
		defense = evade + battle_group_ext[d_grp]->armor_class[0];
		loc_mod = evade + battle_group_ext[d_grp]->attack_mode_defense[attack_mode];
	} else {
		miss_chance = classify_percentage_band(0, attacker->stamina,
			attacker->stamina_max) +
			battle_group_ext[acting_group]->attack[attack_index].accuracy_bonus +
			attacker->aim_mod * 5 + stat_gap;
		dice = battle_group_ext[acting_group]->attack[attack_index].damage;
		atk = &battle_group_ext[acting_group]->attack[attack_index];
		if (attack_mode == ATTACK_THROW || attack_mode == ATTACK_SHOOT)
			dmg_bonus = 0;
		if (d_grp == PARTY_GROUP) {
			encumbrance = *select_encumbrance_style(d_unit);
			enc_tier = encumbrance.tier;
		} else
			enc_tier = 0;
		evade = classify_percentage_band(1,
			battle_groups[d_grp]->unit[d_unit].stamina,
			battle_groups[d_grp]->unit[d_unit].stamina_max) +
			battle_groups[d_grp]->unit[d_unit].reflex_mod;
		if (d_grp == PARTY_GROUP
			&& party_effects[PARTY_EFFECT_SPELL_49].timer > 0)
			evade -=
				party_effects[PARTY_EFFECT_SPELL_49].strength;
		defense = battle_group_ext[d_grp]->armor_class[0] + evade + enc_tier;
		loc_mod = evade + enc_tier;
		if (d_grp != PARTY_GROUP)
			loc_mod += battle_group_ext[d_grp]->attack_mode_defense[attack_mode];
	}
	rolls = 1;
	if (attacker->phase) {
		defense = defense > 10 ? defense : 10;
		rolls = 2;
	}
	if (attacker->status[STATUS_BLINDED] > 0) {
		miss_chance = miss_chance < 90 ? 90 : miss_chance;
		defense = defense > 0 ? 0 : defense;
	}
	if (attacker->status[STATUS_NAUSEOUS] > 0
		|| attacker->status[STATUS_FRIGHTENED] > 0
		|| attacker->status[STATUS_IRRITATED] > 0)
		miss_chance += 25;
	if (battle_groups[d_grp]->unit[d_unit].status[STATUS_BLINDED] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[STATUS_ASLEEP] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[STATUS_PARALYZED] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].state == STATE_STONED) {
		defense = 15;
		rolls = 2;
	}
	if (battle_groups[d_grp]->unit[d_unit].status[STATUS_NAUSEOUS] > 0 ||
	    battle_groups[d_grp]->unit[d_unit].status[STATUS_FRIGHTENED] > 0)
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
	case ATTACK_SWING:
		break;
	case ATTACK_THRUST:
		defense -= 2;
		loc_mod += 2;
		break;
	case ATTACK_BASH:
		loc_mod--;
		dmg_bonus += str_bonus;
		break;
	case ATTACK_MELEE:
		defense -= 4;
		loc_mod -= 4;
		rolls = 2;
		break;
	case ATTACK_THROW:
		swings = 1;
		rolls = 1;
		defense--;
		loc_mod++;
		break;
	case ATTACK_PUNCH:
		defense++;
		loc_mod--;
		break;
	case ATTACK_KICK:
		defense -= 2;
		dmg_bonus = dmg_bonus + str_bonus + 2;
		break;
	case ATTACK_LASH:
		defense += 2;
		loc_mod -= 2;
		rolls = 1;
		break;
	case ATTACK_SHOOT:
		swings = 1;
		rolls = 1;
		loc_mod += 2;
		break;
	}
	if (battle_groups[d_grp]->unit[d_unit].action_kind == ACTION_RUN) {
		defense = defense > 10 ? defense : 10;
		rolls = 2;
	}
	if (battle_groups[d_grp]->unit[d_unit].status[STATUS_BLINDED] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].status[STATUS_ASLEEP] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].status[STATUS_PARALYZED] == 0 &&
	    battle_groups[d_grp]->unit[d_unit].state == STATE_OK) {
		if (battle_groups[d_grp]->unit[d_unit].action_kind == ACTION_PARRY) {
			switch (battle_groups[d_grp]->unit[d_unit].primary_action) {
			case PARRY_BLOCK:
				if (d_grp == PARTY_GROUP) {
					defense -= party_records[d_unit].skills[SKILL_SHIELD] / 10 + 1;
					try_raise_member_skill(d_unit, SKILL_SHIELD, 2);
				} else
					defense -= battle_groups[d_grp]->unit[d_unit].level / 4 + 1;
				rolls = 1;
				break;
			case PARRY_DODGE:
				defense -= 2;
				rolls = 1;
				break;
			case PARRY_GUARD:
				if (attack_mode != ATTACK_THROW && attack_mode != ATTACK_SHOOT) {
					battle_groups[d_grp]->unit[d_unit].action_kind = ACTION_FIGHT;
					battle_groups[d_grp]->unit[d_unit].attack_cycle = 0;
					battle_groups[d_grp]->unit[d_unit].action_speed[0] = dest_alt_arg - 1;
					battle_groups[d_grp]->unit[d_unit].target_group = acting_group;
					battle_groups[d_grp]->unit[d_unit].target_unit = acting_unit;
					battle_groups[d_grp]->unit[d_unit].secondary_action = (unsigned)65535;
					battle_groups[d_grp]->unit[d_unit].primary_action = 255;
					if (d_grp == PARTY_GROUP) {
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
						if (d_grp == PARTY_GROUP) {
							battle_groups[d_grp]->unit[d_unit].action_kind = ACTION_PARRY;
							battle_groups[d_grp]->unit[d_unit].attack_cycle = 0;
							battle_groups[d_grp]->unit[d_unit].action_speed[0] = 0;
							battle_groups[d_grp]->unit[d_unit].primary_action = PARRY_DODGE;
						}
					}
					battle_groups[d_grp]->unit[d_unit].primary_attack = 0;
				}
				break;
			case PARRY_REST:
				defense = 15;
				break;
			}
		} else if (d_grp == PARTY_GROUP
			&& party_records[d_unit].equipped[SECONDARY_HAND] != NO_ITEM &&
		    party_records[d_unit].item_slots[0][
			party_records[d_unit].equipped[SECONDARY_HAND]].item_type == ITEM_SHIELD)
			try_raise_member_skill(d_unit, SKILL_SHIELD, 0);
	}
	if (acting_group != PARTY_GROUP && fx_shown == 0
		&& battle_group_ext[1]->sound_id > 0 &&
	    battle_group_ext[acting_group]->sound_id == battle_group_ext[1]->sound_id)
		play_sound_effect(SOUND_REPLACEABLE);
	wait_for_combat_input(startup_option / 2);
	if (atk->slays_class == battle_group_ext[d_grp]->creature_class)
		rolls++;
	for (swing = 0; swing < swings &&
	     battle_groups[d_grp]->unit[d_unit].state < STATE_DEAD; swing++) {
		hit_roll = npc_id_decoy == 0 ? random_below(100) : 0;
		if (d_grp == PARTY_GROUP) {
			location = choose_weighted_index(
				battle_group_ext[acting_group]->party_hit_location_weights);
			loc_def = battle_group_ext[d_grp]->armor_class[location] + loc_mod;
		} else {
			location = choose_weighted_index(
				battle_group_ext[d_grp]->hit_location_weights);
			loc_def = battle_group_ext[d_grp]->armor_class[location] + loc_mod;
		}
		if (battle_groups[d_grp]->unit[d_unit].state == STATE_STONED)
			loc_def = loc_def > 0 ? 0 : loc_def;
		refresh_combat_glyph_strip(3, 4);
		if (fx_shown != -1)
			play_sound_with_rate_adjustment(SOUND_SWING, (3 - random_below(8)) * 2);
		if ((attack_mode == ATTACK_THROW || attack_mode == ATTACK_SHOOT)
			&& fx_attack == 0 &&
		    random_below(100) < battle_groups[d_grp]->ward[2]) {
			display_combat_message(MSG_DEFLECTED, COLOR_COMBAT_TEXT, ROW_RESULT);
			play_sound_effect(SOUND_HIT);
		} else if (spell != NO_SPELL || hit_roll >= 5 &&
		    (hit_roll >= 95 || miss_chance - 5 * defense < hit_roll)) {
			if (spell != NO_SPELL) {
				power = spell / 256;
				spell_id = spell % 256;
				spell_backfired = 1;
				apply_combat_spell_effect(attacker, spell_id, power);
			} else {
				display_combat_message(MSG_HIT, COLOR_HIT, ROW_RESULT);
				play_sound_effect(SOUND_HIT);
				if (battle_group_ext[d_grp]->creature_class == CLASS_PLANT ||
				    battle_group_ext[d_grp]->creature_class == CLASS_TENTACLED &&
				     location == TENTACLE_LOCATION)
					load_message_string(MSG_TRUNK_3330 + location,
						combat_action_name_buffer);
				else if (battle_group_ext[d_grp]->creature_class == CLASS_ROBOT)
					load_message_string(MSG_REAR + location,
						combat_action_name_buffer);
				else
					load_message_string(MSG_BACK + location,
						combat_action_name_buffer);
				hits++;
				if (attacker->phase == PHASE_HIDDEN)
					attacker->phase = PHASE_BACKSTAB;
				damage = 0;
				left = rolls;
				while (left > 0) {
					damage += add_random_steps(dice);
					left--;
				}
				damage += dmg_bonus;
				if (damage > 0
					&& (hit_roll >= 95 || miss_chance - 5 * loc_def < hit_roll)) {
					format_int_decimal(damage, combat_action_message_buffer);
					load_message_string(MSG_DAMAGE_3306, combat_action_suffix_buffer);
					draw_centered_text_fragments(ROW_DAMAGE, combat_action_name_buffer,
						combat_action_message_buffer, combat_action_suffix_buffer,
						COLOR_COMBAT_TEXT, COLOR_DAMAGE, COLOR_COMBAT_TEXT);
					battle_groups[d_grp]->unit[d_unit].hp -= damage;
					battle_groups[d_grp]->unit[d_unit].status[STATUS_ASLEEP] = 0;
					paralysis_left =
						battle_groups[d_grp]->unit[d_unit].status[STATUS_PARALYZED] -
						(random_below(3) + 2);
					if (paralysis_left < 0)
						paralysis_left = 0;
					battle_groups[d_grp]->unit[d_unit].status[STATUS_PARALYZED] =
						paralysis_left;
					if (battle_groups[d_grp]->unit[d_unit].hp <= 0) {
						wait_for_combat_input(startup_option / 2);
						set_resisted_combatant_state(d_grp, d_unit, MSG_DIES_3486,
							0, 3, 0, 3408, 0);
						if (attacker->phase == PHASE_BACKSTAB && random_below(3) > 0)
							attacker->phase = PHASE_HIDDEN;
					} else {
						if (d_grp == PARTY_GROUP) {
							play_sound_effect(party_records[d_unit].gender + SOUND_HURT_BASE);
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
					draw_centered_text_fragments(ROW_DAMAGE, combat_action_name_buffer,
						combat_action_message_buffer, combat_action_suffix_buffer,
						COLOR_COMBAT_TEXT, COLOR_COMBAT_TEXT, COLOR_COMBAT_TEXT);
				}
			}
		} else
			display_combat_message(MSG_MISSED, COLOR_COMBAT_TEXT, ROW_RESULT);
		wait_for_combat_input(startup_option / 2);
	}
	if (attacker->phase == PHASE_BACKSTAB)
		attacker->phase = PHASE_VISIBLE;
	if (d_grp == PARTY_GROUP)
		sync_member_party_panel(d_unit, 0);
	if (end_sound > 0)
		ensure_sound_loaded(end_sound);
}
