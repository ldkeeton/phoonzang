/* Allocate a character's ability bonus points through the statistics
   screen. */
/* Allocate the remaining bonus points to a character's ability stats. */
#include "msg.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int remaining_stat_points;
extern int hotspot_hit;
extern int hotspot_rects[];
extern int aztec_setmem();
extern long draw_dialog_button_prompt();
extern int flush_keyboard();
extern int display_character_statistics();
extern int call_set_text_color(), call_set_text_pos();
extern int draw_font_glyph(), set_hotspot(), call_show_area();
extern int poll_hotspots(), play_sound_effect();
extern int flash_button(), call_restore_area();

/* Let the player assign or reclaim bonus points for this character. */
/* Let the player adjust each ability bonus and accept the allocation. */
allocate_ability_bonus_points(member_index)
int member_index;
{
	int i;
	int selected_hotspot;
	int selected_stat;
	int unused_word_08;
	int stat_bonus[8];
	int frame_padding[40];
	long saved_area;

	aztec_setmem(stat_bonus, 16, 0);
	selected_stat = 0;
	saved_area = draw_dialog_button_prompt(MSG_ABILITY_BONUS_POINTS,
		88, 151, 24, 1, 8);
	flush_keyboard();

	do {
		display_character_statistics(member_index, 0);
		call_set_text_color(1, 0);
		call_set_text_pos(133, 35 + 6 * selected_stat);
		draw_font_glyph(5, 0);
		call_set_text_pos(151, 35 + 6 * selected_stat);
		draw_font_glyph(6, 0);

		for (i = 0; i < 7; i++) {
			if (i == selected_stat) {
				set_hotspot(i, 133, 35 + 6 * selected_stat,
					138, 40 + 6 * selected_stat, 45, 0);
				set_hotspot(7, 151, 35 + 6 * selected_stat,
					156, 40 + 6 * selected_stat, 43, 61);
			} else {
				set_hotspot(i, 115, 35 + 6 * i,
					156, 40 + 6 * i,
					((selected_stat + 1) % 7 == i ? (char)32 : (char)0), 0);
			}
		}
		set_hotspot(9, -1, 0, 0, 0, 0, 0);
		call_show_area(102, 35, 168, 96);
		do {
			selected_hotspot = poll_hotspots(hotspot_rects) - 1;
		} while (hotspot_hit == 0);

		if (selected_hotspot < 7 && selected_hotspot != selected_stat) {
			selected_stat = selected_hotspot;
		} else if (selected_hotspot == selected_stat) {
			if (stat_bonus[selected_stat] > 0) {
				party_records[member_index].stat[selected_stat]--;
				stat_bonus[selected_stat]--;
				remaining_stat_points++;
			} else {
				play_sound_effect(0);
			}
		} else if (selected_hotspot == 7) {
			if (party_records[member_index].stat[selected_stat] < 18 &&
				remaining_stat_points > 0) {
				party_records[member_index].stat[selected_stat]++;
				stat_bonus[selected_stat]++;
				remaining_stat_points--;
			} else {
				play_sound_effect(0);
			}
		}
	} while (selected_hotspot != 8 || remaining_stat_points != 0);

	remaining_stat_points = -1;
	flash_button(88, 151, 24, 1, 1);
	flash_button(88, 151, 24, 1, 0);
	call_restore_area(saved_area, 1);
	call_show_area(0, 0, 319, 199);
}
