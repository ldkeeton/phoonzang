/* Fly a spell animation from the caster toward target_lane; with show_impact
   start the impact burst in the lane's cell (or, for a monster caster, queue
   the impact sound). */
#include "structs/member.h"
#include "structs/spell.h"
extern struct member_rec *battle_groups[];
extern struct spell_table_view spell_table;
extern long far *tick_counter_ptr;
extern int combat_effect_sound, pending_effect_sound;
extern int cell_effect_frame[3][3], effect_frame_phase;
extern int run_combat_screen_animation(), play_sound_effect();
extern long call_get_free_space(), call_cache_area();
extern int call_restore_screen(), call_draw_text(), call_show_area();
extern int call_wait_sound(), wait_for_combat_input();
int animate_target_spell_effect(caster_group, caster_unit, animation_id,
	target_lane, target_group, target_unit, show_impact)
int caster_group, caster_unit, animation_id, target_lane, target_group;
int target_unit, show_impact;
{
	int cycle, frame, frame_offset, frame_limit, step;
	int side, animation_state, direction_index, spell_type;
	int x_position[2][12];
	int effect_data[86];
	int render_state[18];
	unsigned char text_parameter[2];
	long saved_ticks, screen_cache;
	int completed_frame;
	if (caster_group == 0
		&& battle_groups[caster_group]->unit[caster_unit].target_group == 0)
		return;
	run_combat_screen_animation();
	render_state[13] = 7;
	switch (spell_table.animation[animation_id].motion) {
	case 0:
		spell_type = 1;
		render_state[11] = 1;
		break;
	case 1:
		spell_type = 1;
		render_state[11] = 1;
		break;
	case 2:
		spell_type = 0;
		render_state[11] = 4;
		break;
	}
	render_state[10] = target_lane > 0 ? 12 : 6;
	render_state[9] = 12 / render_state[11];
	render_state[12] =
		spell_table.animation[animation_id].glyph;
	if (caster_group == 0 || caster_group == 6) {
		side = 0; frame_offset = 0; frame_limit = render_state[10];
		step = 1; animation_state = 0;
		if (caster_unit % 2 == 0) { direction_index = 0; render_state[6] = 0; }
		else { direction_index = 1; render_state[6] = 1; }
	} else {
		side = 1; frame_offset = render_state[10] - 1;
		frame_limit = 0; step = -1;
		animation_state = -1;
		switch (spell_table.animation[animation_id].motion) {
		case 1:
			animation_id++;
			render_state[12]++;
			break;
		case 2:
			render_state[12] += 3;
			break;
		}
		if (target_unit == -1 || target_unit % 2 == 0) {
			direction_index = 0;
			render_state[6] = spell_type != 0 ? 1 : 0;
		} else {
			direction_index = 1;
			render_state[6] = spell_type != 0 ? 0 : 1;
		}
	}
	play_sound_effect(combat_effect_sound);
	effect_data[1] = spell_table.animation[animation_id].x;
	effect_data[0] = spell_table.animation[animation_id].y;
	effect_data[2] = 0; effect_data[3] = 0; effect_data[4] = 0;
	effect_data[5] =
		0; effect_data[6] = 0; effect_data[7] = 0; effect_data[8] = 0;
	effect_data[9] = 3;
	effect_data[10] = 3;
	effect_data[11] = 3;
	effect_data[12] = 3;
	effect_data[13] = 3;
	effect_data[14] = 3;
	effect_data[15] = 2;
	effect_data[16] = 2;
	effect_data[17] = 2;
	effect_data[18] = 2;
	effect_data[19] = 1;
	effect_data[20] = 1;
	effect_data[21] = 3;
	effect_data[22] = 2;
	effect_data[23] = 2;
	effect_data[24] = 2;
	effect_data[25] = 3;
	effect_data[26] = 2;
	effect_data[27] = 2;
	effect_data[28] = 2;
	effect_data[29] = 4;
	effect_data[30] = 3;
	effect_data[31] = 3;
	effect_data[32] = 3;
	effect_data[33] = 1;
	effect_data[34] = 1;
	effect_data[35] = 1;
	effect_data[36] = 1;
	effect_data[37] = 3;
	effect_data[38] = 3;
	effect_data[39] = 3;
	effect_data[40] = 3;
	effect_data[41] = 3;
	effect_data[42] = 5;
	effect_data[43] = 3;
	effect_data[44] = 5;
	effect_data[45] = 4;
	effect_data[46] = 3;
	effect_data[47] = 3;
	effect_data[48] = 4;
	effect_data[49] = 4;
	effect_data[50] = 3;
	effect_data[51] = 2;
	effect_data[52] = 6;
	effect_data[53] = 5;
	effect_data[54] = 4;
	effect_data[55] = 3;
	effect_data[56] = 2;
	effect_data[57] = 6;
	effect_data[58] = 5;
	effect_data[59] = 3;
	effect_data[60] = 3;
	x_position[0][0] = 87;
	x_position[1][0] = 232;
	x_position[0][1] = 98;
	x_position[1][1] = 221;
	x_position[0][2] = 108;
	x_position[1][2] = 211;
	x_position[0][3] = 117;
	x_position[1][3] = 202;
	x_position[0][4] = 125;
	x_position[1][4] = 194;
	x_position[0][5] = 132;
	x_position[1][5] = 187;
	x_position[0][6] = 138;
	x_position[1][6] = 181;
	x_position[0][7] = 143;
	x_position[1][7] = 176;
	x_position[0][8] = 147;
	x_position[1][8] = 172;
	x_position[0][9] = 150;
	x_position[1][9] = 169;
	x_position[0][10] = 152;
	x_position[1][10] = 167;
	x_position[0][11] = 153;
	x_position[1][11] = 166;
	effect_data[74] = 73;
	effect_data[75] = 71;
	effect_data[76] = 70;
	effect_data[77] = 69;
	effect_data[78] = 68;
	effect_data[79] = 67;
	effect_data[80] = 66;
	effect_data[81] = 66;
	effect_data[82] = 66;
	effect_data[83] = 65;
	effect_data[84] = 65;
	effect_data[85] = 65;
	effect_data[62] = 100;
	effect_data[63] = 94;
	effect_data[64] = 88;
	effect_data[65] = 82;
	effect_data[66] = 76;
	effect_data[67] = 70;
	effect_data[68] = 64;
	effect_data[69] = 58;
	effect_data[70] = 52;
	effect_data[71] = 46;
	effect_data[72] = 40;
	effect_data[73] = 34;
	render_state[8] = render_state[7] = side == 0 ? 0 :
		(spell_table.animation[animation_id].motion == 2 ? 3 :
		(target_lane > 0 ? 11 : 5));
	if (call_get_free_space(2, 0) > 20000L) {
		screen_cache = call_cache_area(72, 33, 247, 143, 2, 0);
		for (frame = 0, cycle = frame_offset; frame < render_state[10];
			frame++, cycle += step) {
			saved_ticks = *tick_counter_ptr;
			render_state[5] = effect_data[62 + cycle] * 45 / 100;
			render_state[17] = effect_data[62 + cycle] * effect_data[1] / 100;
			if (render_state[6]) render_state[17] =
				0 - render_state[17] - 8 * effect_data[1 + render_state[12]];
			render_state[16] = effect_data[0] * effect_data[68] / 100;
			text_parameter[0] = render_state[12]; text_parameter[1] = 0;
			call_restore_screen(screen_cache, 0, 0);
			render_state[15] = x_position[direction_index][cycle] + render_state[17];
			render_state[14] = effect_data[74 + cycle] + render_state[16];
			call_draw_text(render_state[13], render_state[15], render_state[14], 72,
				248, 33,
				142, render_state[6], text_parameter, 0,
					100 - effect_data[62 + render_state[8]]);
			call_show_area(72, 33, 248, 144);
			render_state[8] += step;
			if ((frame + 1) % render_state[9] == 0) {
				render_state[12] += step;
				render_state[8] = render_state[7];
			}
			while (*tick_counter_ptr == saved_ticks) ;
		}
		call_restore_screen(screen_cache, 1, 0);
	}
	call_wait_sound(1);
	if (show_impact != 0) {
		if (animation_state == -1) {
			pending_effect_sound = 2;
			call_show_area(72, 32, 247, 143);
		} else {
			cell_effect_frame[target_lane][0] = animation_state;
			effect_frame_phase = 0;
			wait_for_combat_input(4);
		}
	} else call_show_area(72, 32, 247, 143);
}
