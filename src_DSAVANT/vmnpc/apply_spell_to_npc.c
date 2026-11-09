/* Applies a CHARM or MINDREAD spell cast by a party member on the NPC. */
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern struct pc_rec party_records[];
extern int npc_charm_bonus;
extern char npc_effect_message_buffer[80];
extern char npc_choice_message_buffer[80];
extern int clamp_between(), random_below(), show_npc_message();
extern int display_npc_text_message();
extern int select_npc_event_message(), choose_random_npc_phrase();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int load_message_string(), str_subst_char(), display_npc_message();
extern int wait_ticks_abortable();

/* Resolves CHARM (spell 60) and MINDREAD (spell 68). */
apply_spell_to_npc(member_index, spell_index, spell_power)
int member_index;
int spell_index;
int spell_power;
{
	int npc_effect_parameters[4];

	switch (spell_index) {
	case 60:
		spell_power = clamp_between(spell_power +
			(party_records[member_index].level - npc_record.level) / 2,
			1, spell_power);
		if ((npc_record.effect_flags & 4) != 0
			|| random_below(spell_power + 1) == 0)
			show_npc_message(MSG_IS_UNAFFECTED, 1, 0, 65);
		else {
			show_npc_message(MSG_IS_CHARMED, 1, 0, 65);
			npc_charm_bonus += add_random_steps(*store_word_and_pair(
				spell_power * 2, 6, spell_power * 2));
		}
		break;
	case 68:
		if ((npc_record.effect_flags & 8) != 0
			|| npc_record.phrase_msg_id == 0 ||
			random_below(party_records[member_index].level + 3 * spell_power)
				+ spell_power
				< npc_record.level) {
			load_message_string(MSG_NOTHING_1545, npc_effect_message_buffer);
			display_npc_text_message(npc_effect_message_buffer, 1, 0, 65);
			wait_ticks_abortable(72, 0);
			return;
		}
		if (random_below(2) != 0 &&
			select_npc_event_message(-1, 1, 1) == 0)
			return;
		choose_random_npc_phrase(npc_choice_message_buffer, 1);
		load_message_string(MSG_1546, npc_effect_message_buffer);
		str_subst_char(npc_effect_message_buffer, npc_choice_message_buffer, 94);
		display_npc_message(npc_effect_message_buffer, 1);
	}
}
