/* Use a party member's item in combat: announce it, then cast the item's
   spell (with skill-based fizzle/backfire). */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern int acting_group, acting_unit, npc_id, e1_event_flag;
extern int spell_backfired, spell_cast_failed, startup_option;
extern unsigned char difficulty_option;
extern char combat_action_suffix_buffer[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int data_record_io(), strcpy(), copy_combatant_name();
extern int load_message_string(), replace_slashes_with_spaces();
extern int use_item_refresh_stamina_drain(), try_raise_member_skill();
extern int random_below(), subtract_combatant_stamina();
extern int draw_centered_text_fragments(), wait_for_combat_input();
extern int display_combat_message(), apply_combat_spell_effect();

resolve_combat_item_action(actor)
struct combatant *actor;
{
	int unused_value;
	int spell_power;
	int spell_id;
	int item_page;
	int item_slot;
	int target_group;
	int target_unit;
	int chance_value;
	int skill_index;
	struct item_record item;

	target_group = actor->target_group;
	target_unit = actor->target_unit;
	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	spell_power = 0;
	spell_id = 0;
	skill_index = -1;
	if (acting_group == 0) {
		item_page = (int)actor->primary_action / 256;
		item_slot = (int)actor->primary_action % 256;
		data_record_io(1, &item,
			party_records[acting_unit].item_slots[item_page][item_slot].item_id, 0);
		if (party_records[acting_unit].item_slots[item_page][item_slot].flags & 128)
			strcpy(combat_action_suffix_buffer, item.name);
		else
			load_message_string(MSG_DAGGER_6000 + item.glyph,
				combat_action_suffix_buffer);
		replace_slashes_with_spaces(combat_action_suffix_buffer);
		if (item.spell_code != 0) {
			spell_power = item.spell_code / 256;
			spell_id = item.spell_code % 256;
			switch (item.item_type) {
			case 12:
				load_message_string(MSG_USES, combat_action_message_buffer);
				break;
			case 13:
				load_message_string(MSG_INCANTS, combat_action_message_buffer);
				skill_index = 27;
				break;
			case 16:
				load_message_string(MSG_TOSSES, combat_action_message_buffer);
				break;
			default:
				if (spell_id == 97 || spell_id == 98)
					load_message_string(MSG_CONSUMES, combat_action_message_buffer);
				else if (spell_power == 0) {
					if (party_records[acting_unit].skills[13] > 0) {
						spell_power = party_records[acting_unit].skills[13] / 15 + 2 -
							spell_table->spell[spell_id].realm_level.bytes.level;
						try_raise_member_skill(acting_unit, 13, 1);
						if (spell_power < 0)
							spell_power = 0;
						if (spell_power > 6)
							spell_power = 6;
						while (spell_power > 0 && random_below(100) < 10 * spell_power)
							spell_power--;
					}
					if (spell_power == 0)
						load_message_string(MSG_ABUSES, combat_action_message_buffer);
					else {
						load_message_string(MSG_PLAYS, combat_action_message_buffer);
						subtract_combatant_stamina(actor,
							random_below(spell_power) + spell_power + 1);
					}
				} else {
					if (party_records[acting_unit].item_slots[item_page][item_slot].item_id
						== 468)
						load_message_string(MSG_TOSSES, combat_action_message_buffer);
					else {
						load_message_string(MSG_INVOKES_3312, combat_action_message_buffer);
						skill_index = 24;
					}
				}
			}
			use_item_refresh_stamina_drain(acting_unit, item_page, item_slot);
		} else if (item.item_type == 2 || item.item_type == 4)
			load_message_string(MSG_FUMBLES_3317, combat_action_message_buffer);
		else
			load_message_string(MSG_FUMBLES_3316, combat_action_message_buffer);

		if (npc_id == 225 && item.kind == 88) {
			e1_event_flag = 1;
			load_message_string(MSG_INVOKES_3312, combat_action_message_buffer);
			spell_id = 100;
			spell_power = 6;
			party_records[acting_unit].item_slots[item_page][item_slot].level = 1;
			use_item_refresh_stamina_drain(acting_unit, item_page, item_slot);
		}
		if (party_records[acting_unit].item_slots[item_page][item_slot].item_id
			== 536) {
			if (battle_groups[target_group]->kind == 233) {
				chance_value = battle_group_ext[target_group]->resistance[11] - 15;
				if (chance_value < 0)
					chance_value = 0;
				battle_group_ext[target_group]->resistance[11] = chance_value;
			}
			skill_index = 27;
			load_message_string(MSG_INCANTS, combat_action_message_buffer);
		}
		draw_centered_text_fragments(0, combat_action_name_buffer,
			combat_action_message_buffer, combat_action_suffix_buffer,
			1, 67, 67);
	} else {
	}

	if (spell_power != 0) {
		spell_backfired = 0;
		spell_cast_failed = 0;
		chance_value = random_below(
			spell_table->spell[spell_id].realm_level.bytes.level * 10 +
				spell_power * 5) - 10;
		if (acting_group == 0) {
			if (skill_index != -1) {
				try_raise_member_skill(acting_unit, skill_index, 3);
				if (party_records[acting_unit].skills[skill_index] < chance_value) {
					if (difficulty_option != 1 && random_below(36) >
						party_records[acting_unit].stat[7] + 18)
						spell_backfired = 1;
					else
						spell_cast_failed = 1;
				}
			}
		} else if (battle_groups[acting_group]->unit[acting_unit].level * 5 - 2 <
			chance_value) {
			if (difficulty_option != 2 && random_below(7) == 0)
				spell_backfired = 1;
			else
				spell_cast_failed = 1;
		}
		if (spell_backfired == 1 &&
			!(spell_table->spell[spell_id].cost_effect.bytes.f3 & 2)) {
			spell_backfired = 0;
			spell_cast_failed = 1;
		}
		if (spell_cast_failed == 1 &&
			!(spell_table->spell[spell_id].cost_effect.bytes.f3 & 1))
			spell_cast_failed = 0;
		if (spell_cast_failed == 1) {
			wait_for_combat_input(4);
			display_combat_message(MSG_FIZZLE_3201, 65, 2);
			wait_for_combat_input(startup_option);
		} else {
			if (spell_backfired == 1) {
				wait_for_combat_input(4);
				display_combat_message(MSG_BACKFIRE, 22, 2);
				wait_for_combat_input(startup_option);
				actor->target_group = acting_group;
				actor->target_unit = acting_unit;
			}
			apply_combat_spell_effect(actor, spell_id, spell_power);
		}
	} else
		wait_for_combat_input(startup_option);
}
