/* Apply the active region event to the party, including its message and
   sound. */

#include "structs/randstep.h"
#include "structs/maze.h"
#include "structs/pcrec.h"
#include "structs/rgnstate.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern struct pc_rec party_records[];
extern int party_char_count, party_world_x, party_world_y;
extern int message_delay, game_state, levitation_turns, loaded_sound_id;
extern int get_bits();
extern int show_scene_message_sequence();
extern int redraw_treasure_caption();
extern int mark_party_member_dead();
extern int wait_treasure_input_or_timeout();
extern int load_message_string();
extern int strlen();
extern int call_set_text_pos();
extern int call_set_text_color();
extern int draw_text_glyphs();
extern int call_show_area();
extern int ensure_sound_loaded();
extern int play_sound_effect();
extern int wait_and_free_sound();
extern int random_below();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int clamp_between();
extern int damage_party_member();
extern int try_raise_member_skill();
extern int inflict_member_state();
extern int inflict_member_status();
extern int mark_region_bits();

apply_region_event_to_party()
{
	int member, event, flags, damage_dice, damage_sides, resist_index;
	int chance_outcome, damage_blocked, skip_damage, first_alive;
	int member_limit, levitation_blocks, damage_amount, sides_left;
	int resistance, message_x, event_sound, region_completed;
	char message[80];

	flags = maze_tables->flags[party_region.region];
	event = get_bits(flags, 8, 4);
	damage_sides = get_bits(flags, 0, 4);
	damage_dice = get_bits(flags, 4, 4);
	levitation_blocks = get_bits(flags, 12, 1);
	region_completed = 0;
	damage_blocked = get_bits(flags, 15, 1);
	if (maze_tables->key[party_region.region] > 0)
		show_scene_message_sequence(maze_tables->key[party_region.region], 0);
	redraw_treasure_caption(1);
	if (event == 4) {
		for (member = 0; member < party_char_count; member++)
			mark_party_member_dead(member, 2);
		wait_treasure_input_or_timeout(message_delay * 2);
		game_state = 8;
		return;
	}
	if (levitation_blocks != 0) {
		if (levitation_turns > 0) {
			damage_blocked = 1;
		load_message_string(MSG_PROTECTED_BY_LEVITATION, message);
		message_x = 160 - strlen(message) * 6 / 2;
		call_set_text_pos(message_x, 163);
		call_set_text_color(184, 0);
		draw_text_glyphs(message, 0);
		call_show_area(message_x, 163,
			message_x + strlen(message) * 6, 169);
		ensure_sound_loaded(17);
		play_sound_effect(16);
		wait_and_free_sound(16);
		loaded_sound_id = -1;
		wait_treasure_input_or_timeout(message_delay);
		}
	}
	event_sound = maze_tables->arg[party_region.region];
	if (event_sound > 0) {
		if (event_sound < 5 || event_sound == 8 || event_sound == 9)
			play_sound_effect(event_sound);
		else {
			ensure_sound_loaded(event_sound);
			play_sound_effect(16);
			wait_and_free_sound(16);
			loaded_sound_id = -1;
		}
	}
	resist_index = maze_tables->party_mask[party_region.region];
	if (resist_index == 14) {
		resist_index = 9;
		region_completed = 1;
	}
	first_alive = 0;
	for (;;) {
		if (party_records[first_alive].state < 3)
			break;
		first_alive++;
	}
	member_limit = event == 12 ? first_alive + 1 : party_char_count;
	member_limit = party_char_count > member_limit
		? member_limit : party_char_count;
	skip_damage = event == 12 || region_completed == 1
		|| resist_index == 0 || resist_index == 3 || resist_index == 13
		? 1 : 0;
	for (member = first_alive; member < member_limit; member++) {
		if (random_below(54) >
		    (int)party_records[member].stat[4] - damage_dice
		    || skip_damage != 0) {
			resistance = resist_index == 13
				? (int)party_records[member].skills[11] - damage_dice
				: resist_index == 3
				? (int)party_records[member].skills[10] - damage_dice
				: (int)party_records[member]
					.resistance_rows.values[1][resist_index]
					- damage_dice * 3;
			chance_outcome = resist_index == 0 ? 1 :
				resist_index == 13 ? 1 :
				resist_index == 3 ? 1 :
				resistance < random_below(100) ? 1 : 0;
			damage_amount = damage_dice;
			sides_left = damage_sides;
			while (sides_left > 0) {
				if (random_below(100) >= resistance)
					break;
				sides_left--;
				if (damage_amount > 0
				    && random_below(100) < resistance)
					damage_amount--;
			}
			if (damage_blocked == 0 && chance_outcome != 0
			    && damage_amount > 0 && sides_left > 0) {
				if (resist_index == 3
				    && party_records[member].stamina[0] > 0)
					party_records[member].stamina[0] = clamp_between(
						party_records[member].stamina[0] -
						add_random_steps(*store_word_and_pair(damage_amount,
							sides_left, damage_amount)),
						1, party_records[member].stamina[0]);
				damage_party_member(member, damage_amount,
					sides_left);
				if (resist_index == 3)
					try_raise_member_skill(member, 10, 2);
				if (resist_index == 13)
					try_raise_member_skill(member, 11, 1);
			}
			if (event > 0) {
				if (event < 6)
					inflict_member_state(member,
						event + MSG_CRITICAL_5261,
						resist_index, event);
				else
					inflict_member_status(member,
						event + 5244, resist_index, event - 6,
						damage_dice, 10,
						event == 12 ? 255 : damage_dice);
			}
		}
		if (region_completed != 0
		    && party_records[member].status[2] == 0)
			try_raise_member_skill(member, 23, 2);
	}
	mark_region_bits(get_bits(
		maze_tables->flags[party_region.region], 13, 2));
	party_region.region++;
}
