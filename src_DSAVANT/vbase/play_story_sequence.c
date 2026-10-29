/* Display the selected story sequence, mark it for each party member,
   and save the resulting game state. */
#include "structs/pcrec.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern int mouse_active, story_music_enabled, loaded_score_number,
	story_score_number, story_score_volume;
extern int scene_index, party_char_count;
extern unsigned startup_hardware_flags;
extern unsigned char startup_aux_option_b;
extern char star_screen_filename[], main_screen_filename[];
extern int call_fade_out(), call_fill_area(), call_show_area(),
	call_mouse_off(),
	score_music_enabled(), load_score_files(), play_score_at_volume(),
		load_screen_file(),
	call_reset_rgb(), call_fade_in(), play_scene_message_sequence(),
	fade_out_music(), free_loaded_score(), call_mouse_init(), set_bitmap_bit(),
	save_game_data();

play_story_sequence(story_number)
int story_number;
{
	int member_index;

	/* Clear the full 320 by 200 screen before entering the story. */
	call_fade_out(0, 0, 0, 0);
	call_fill_area(0, 0, 319, 199, 0);
	call_show_area(0, 0, 319, 199);
	if (mouse_active == 1)
		call_mouse_off();
	mouse_active = 0;
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(4, 0);
		story_score_number = loaded_score_number;
		story_score_volume = play_score_at_volume(0, story_score_number, 1);
	}
	/* Story four starts on a blank screen instead of loading a picture. */
	if (story_number != 4)
		load_screen_file(star_screen_filename, 2);
	else {
		call_reset_rgb(0, 0, 0);
		call_show_area(0, 0, 319, 199);
		call_fade_in(0);
	}
	scene_index = 0;
	switch (story_number) {
	case 1:
		play_scene_message_sequence(MSG_THERE_IS_MUCH_TO_LEAR_28310, 1);
		break;
	case 2:
		play_scene_message_sequence(MSG_UPON_A_GREAT_METAL_VE_28610, 1);
		break;
	case 3:
		play_scene_message_sequence(MSG_WITHIN_THE_CONFINES_O_28670, 1);
		break;
	case 4:
		play_scene_message_sequence(MSG_THERE_IS_DARKNESS_ALL_28230, 1);
		break;
	case 5:
		play_scene_message_sequence(28500, 1);
		break;
	}
	call_fade_out(0, 0, 0, 0);
	call_fill_area(0, 0, 319, 199, 0);
	call_show_area(0, 0, 319, 199);
	if (story_music_enabled != 0) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	/* Restore mouse support when the startup options enabled it. */
	if ((startup_hardware_flags & 4096) && startup_aux_option_b == 1) {
		if (mouse_active == 0)
			call_mouse_init();
		mouse_active = 1;
	}
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199);
	call_fade_in(0);
	/* Bits starting at four record the story viewed by each member. */
	for (member_index = 0; member_index < party_char_count; member_index++)
		set_bitmap_bit(party_records[member_index].story_flags,
			story_number + 3, 1);
	if (save_game_data(1) == -1)
		call_show_area(54, 142, 265, 198);
	call_fill_area(0, 0, 319, 199, 0);
	call_show_area(0, 0, 319, 199);
	load_screen_file(main_screen_filename, 2);
}
