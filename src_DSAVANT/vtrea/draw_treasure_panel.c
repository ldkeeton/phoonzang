/* Draw and animate a spell panel in the treasure scene. */
#include "structs/spell.h"

extern struct spell_table_view spell_table[];
extern long far *tick_counter_ptr;
extern int animation_index, show_area_bottom;
extern long call_cache_area();
extern int draw_animation_frame();
extern int call_show_area(), call_restore_screen();
extern int call_draw_text(), play_sound_effect();

/* Render the selected panel mode and spell animation. */
draw_treasure_panel(panel_mode, spell_index)
int panel_mode, spell_index;
{
	int frame_position, frame_number, last_position, cache_offset;
	int progress_step, animate, panel_row, reverse_motion;
	int glyph_x[2][12];
	int glyph_y[12];
	int x_percent[12];
	int glyph_step[53];
	int clear_words[7];
	int spell_word0, spell_word2;
	int x_offset, y_offset, panel_gap, panel_gap2;
	int glyph_slot, spell_glyph;
	int progress_divisor, frame_total, cycle_length, progress_percent;
	int progress_start, reverse_flag;
	int reverse_gap[2], interp_gap;
	int glyph_gap[2];
	char glyph[2];
	long saved_ticks;
	long cache_pointer;

	glyph_slot = 7;
	switch ((unsigned char)spell_table->spell[102
		+ spell_index].targeting.bytes.aux) {
	case 0:
		reverse_motion = 1;
		progress_divisor = 1;
		break;
	case 1:
		reverse_motion = 1;
		progress_divisor = 1;
		break;
	case 2:
		reverse_motion = 0;
		progress_divisor = 4;
		break;
	}
	frame_total = 6;
	cycle_length = 12 / progress_divisor;
	spell_glyph = spell_table->spell[102 + spell_index].targeting.bytes.targeted;
	animate = 1;
	last_position = frame_total - 1;
	cache_offset = 0;
	progress_step = -1;
	switch ((unsigned char)spell_table->spell[102
		+ spell_index].targeting.bytes.aux) {
	case 1:
		spell_index++;
		spell_glyph++;
		break;
	case 2:
		spell_glyph += 3;
		break;
	}
	if (panel_mode == -1 || panel_mode % 2 == 0) {
		panel_row = 0;
		reverse_flag = reverse_motion ? 1 : 0;
	} else {
		panel_row = 1;
		reverse_flag = reverse_motion ? 0 : 1;
	}
	spell_word0 = spell_table->spell[102 + spell_index].realm_level.word;
	spell_word2 = spell_table->spell[102 + spell_index].cost_effect.word;
	clear_words[0] = 0;
	clear_words[1] = 0;
	clear_words[2] = 0;
	clear_words[3] = 0;
	clear_words[4] = 0;
	clear_words[5] = 0;
	clear_words[6] = 0;
	glyph_step[0]=3; glyph_step[1]=3; glyph_step[2]=3; glyph_step[3]=3;
	glyph_step[4]=3; glyph_step[5]=3; glyph_step[6]=2; glyph_step[7]=2;
	glyph_step[8]=2; glyph_step[9]=2; glyph_step[10]=1; glyph_step[11]=1;
	glyph_step[12]=3; glyph_step[13]=2; glyph_step[14]=2; glyph_step[15]=2;
	glyph_step[16]=3; glyph_step[17]=2; glyph_step[18]=2; glyph_step[19]=2;
	glyph_step[20]=4; glyph_step[21]=3; glyph_step[22]=3; glyph_step[23]=3;
	glyph_step[24]=1; glyph_step[25]=1; glyph_step[26]=1; glyph_step[27]=1;
	glyph_step[28]=3; glyph_step[29]=3; glyph_step[30]=3; glyph_step[31]=3;
	glyph_step[32]=3; glyph_step[33]=5; glyph_step[34]=3; glyph_step[35]=5;
	glyph_step[36]=4; glyph_step[37]=3; glyph_step[38]=3; glyph_step[39]=4;
	glyph_step[40]=4; glyph_step[41]=3; glyph_step[42]=2; glyph_step[43]=6;
	glyph_step[44]=5; glyph_step[45]=4; glyph_step[46]=3; glyph_step[47]=2;
	glyph_step[48]=6; glyph_step[49]=5; glyph_step[50]=3; glyph_step[51]=3;
	glyph_x[0][0]=87; glyph_x[1][0]=232;
	glyph_x[0][1]=98; glyph_x[1][1]=221;
	glyph_x[0][2]=108; glyph_x[1][2]=211;
	glyph_x[0][3]=117; glyph_x[1][3]=202;
	glyph_x[0][4]=125; glyph_x[1][4]=194;
	glyph_x[0][5]=132; glyph_x[1][5]=187;
	glyph_x[0][6]=138; glyph_x[1][6]=181;
	glyph_x[0][7]=143; glyph_x[1][7]=176;
	glyph_x[0][8]=147; glyph_x[1][8]=172;
	glyph_x[0][9]=150; glyph_x[1][9]=169;
	glyph_x[0][10]=152; glyph_x[1][10]=167;
	glyph_x[0][11]=153; glyph_x[1][11]=166;
	glyph_y[0]=73; glyph_y[1]=71; glyph_y[2]=70; glyph_y[3]=69;
	glyph_y[4]=68; glyph_y[5]=67; glyph_y[6]=66; glyph_y[7]=66;
	glyph_y[8]=66; glyph_y[9]=65; glyph_y[10]=65; glyph_y[11]=65;
	x_percent[0]=100; x_percent[1]=94; x_percent[2]=88; x_percent[3]=82;
	x_percent[4]=76; x_percent[5]=70; x_percent[6]=64; x_percent[7]=58;
	x_percent[8]=52; x_percent[9]=46; x_percent[10]=40; x_percent[11]=34;
	progress_start = animate ?
		(spell_table->spell[102 + spell_index].targeting.bytes.aux == 2 ? 3 : 5)
			: 0;
	progress_percent = progress_start;
	cache_pointer = call_cache_area(72, 33, 247, 143, 2, 0);
	animation_index = draw_animation_frame(0);
	call_show_area(72, 33, 248, show_area_bottom);
	play_sound_effect(5);
	frame_number = 0;
	frame_position = last_position;
	for (; frame_number < frame_total; frame_number++) {
		saved_ticks = *tick_counter_ptr;
		x_offset = x_percent[frame_position] * spell_word0 / 100;
		if (reverse_flag)
			x_offset = 0 - x_offset - (glyph_step[spell_glyph - 8] << 3);
		y_offset = spell_word2 * x_percent[6] / 100;
		glyph[0] = spell_glyph;
		glyph[1] = 0;
		call_restore_screen(cache_pointer, 0, 0);
		if (animation_index >= 0) {
			if (frame_number % 3 == 0) animation_index++;
			animation_index = draw_animation_frame(animation_index);
		}
		panel_gap = glyph_x[panel_row][frame_position] + x_offset;
		panel_gap2 = glyph_y[frame_position] + y_offset;
		call_draw_text(glyph_slot, panel_gap, panel_gap2 + 32, 72, 248, 33, 143,
			reverse_flag, glyph, 0,
		100 - x_percent[progress_percent]);
		call_show_area(72, 33, 248, show_area_bottom);
		progress_percent += progress_step;
		if ((frame_number + 1) % cycle_length == 0) {
			spell_glyph += progress_step;
			progress_percent = progress_start;
		}
		while (*tick_counter_ptr == saved_ticks) ;
		frame_position += progress_step;
	}
	call_restore_screen(cache_pointer, 1, 0);
}
