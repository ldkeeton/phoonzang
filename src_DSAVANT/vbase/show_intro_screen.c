/* Play the selected intro narration, then restore the main screen. */
#include "msg.h"

extern int mouse_active, story_music_enabled;
extern int story_score_number, story_score_volume;
extern int party_char_count;
extern unsigned startup_hardware_flags;
extern unsigned char startup_aux_option_b;
extern int intro_score_number_source[];
extern char main_screen_restore_filename[];
extern int blank_scene_screen(), call_mouse_off(), score_music_enabled();
extern int load_score_files(), play_score_at_volume();
extern int play_intro_scene_one(), play_intro_scene_two();
extern int play_intro_scene_three(), play_intro_scene_four();
extern int play_intro_scene_five(), play_intro_scene_six();
extern int play_intro_scene_seven(), play_intro_scene_eight();
extern int fade_out_music(), free_loaded_score(), call_mouse_init();
extern int load_screen_file(), draw_party_member_panel();
extern int call_reset_rgb(), call_show_area(), call_fade_in();

show_intro_screen(chapter)
int chapter;
{
	int member_index;

	blank_scene_screen();
	if (mouse_active == 1)
		call_mouse_off();
	mouse_active = 0;
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(5, 0);
		story_score_number = intro_score_number_source[0];
		story_score_volume = play_score_at_volume(0, story_score_number, 1);
	}

	/* Dispatch to the narration selected by the chapter number. */
	switch (chapter) {

	case 1:
	case 4:
	/* Chapter four changes the first line and closing cue. */
	if (chapter == 4)
		play_intro_scene_one(MSG_INSIDE_THE_RUINS_OF_A_31650,
							99, 1, 99, 99);
	else
		play_intro_scene_one(MSG_BEHOLD_THE_COSMIC_FOR_31500,
							0, 1, 99, 99);
	play_intro_scene_two(MSG_IN_THE_DEEP_REGIONS_O_31520, 0, 99, 99);
	play_intro_scene_three(MSG_EVEN_AS_I_SPEAK_AN_EV_31530, 0, 99, 99);
	play_intro_scene_seven(MSG_WITHIN_THE_BLACK_SHIP_31535, 0);
	play_intro_scene_six(MSG_ABOARD_THE_SHIP_OF_TH_31550, 0);
	play_intro_scene_eight(MSG_THE_T_RANG_31560, 0, 99);
	play_intro_scene_eight(MSG_THE_UMPANI_31565, 99, 0);
	play_intro_scene_one(MSG_THERE_IS_NO_MORE_TIME_31570,
							chapter == 4 ? 99 : 0, 0, 99, 99);
	play_intro_scene_two(MSG_INSIDE_A_TINY_BIRD_OF_31580, 1, 0, 99);
	play_intro_scene_four(MSG_THE_PLANET_GUARDIA_31590, 0);
	play_intro_scene_five(MSG_WE_HAVE_ARRIVED_EXCLA_31600, 0);
	break;

	case 2:
	play_intro_scene_one(MSG_PERCHED_UPON_HIS_THRO_31700,
							99, 99, 0, 0);
	play_intro_scene_eight(MSG_THEY_CALL_THEMSELVES_31715, 99, 0);
	play_intro_scene_two(MSG_SOMEWHERE_AMONG_THE_S_31720, 0, 99, 99);
	play_intro_scene_eight(MSG_THEY_ALSO_SPOKE_OF_TE_31730, 0, 99);
	play_intro_scene_three(MSG_AND_OF_A_BLACK_SHIP_A_31735, 0, 99, 99);
	play_intro_scene_seven(MSG_AND_WITHIN_THE_BLACK_31740, 0);
	play_intro_scene_six(MSG_A_YOUNG_GIRL_VI_DOMIN_31750, 0);
	play_intro_scene_one(MSG_AFTER_THE_VOICES_CEAS_31755,
							99, 99, 0, 0);
	play_intro_scene_one(MSG_CONCEALED_NEAR_THE_CH_31760,
							0, 1, 99, 99);
	play_intro_scene_one(MSG_THERE_HE_IS_WHISPERS_31770,
							99, 99, 0, 0);
	play_intro_scene_two(MSG_INSIDE_A_TINY_BIRD_OF_31780, 1, 0, 99);
	play_intro_scene_four(MSG_THE_STRANGE_WORLD_LOS_31800, 0);
	play_intro_scene_five(MSG_HERE_AT_LAST_BELA_YEL_31810, 0);
	break;

	case 3:
	play_intro_scene_one(MSG_YOU_CONFRONT_A_GIANT_31100,
							99, 99, 99, 0);
	play_intro_scene_two(MSG_AND_THEN_THERE_WERE_S_31110, 99, 0, 99);
	play_intro_scene_three(MSG_AN_EVIL_PRESENCE_APPE_31120, 0, 1, 1);
	play_intro_scene_six(MSG_YOU_EMERGE_FROM_YOUR_31130, 99);
	play_intro_scene_seven(MSG_I_AM_HE_THAT_IS_CALLE_31150, 0);
	play_intro_scene_two(MSG_WE_TRAVEL_TO_A_DISTAN_31160, 0, 99, 99);
	play_intro_scene_seven(MSG_WITH_IT_I_SHALL_AQUIR_31170, 0);
	play_intro_scene_eight(MSG_I_SHALL_COMMAND_THE_T_31190, 0, 99);
	play_intro_scene_seven(MSG_UNTIL_WE_ARRIVE_YOU_W_31200, 0);
	play_intro_scene_six(MSG_A_YOUNG_GIRL_APPROACH_31210, 0);
	play_intro_scene_two(MSG_SEVERAL_DAYS_LATER_YO_31220, 1, 0, 99);
	play_intro_scene_four(MSG_THE_PLANET_GUARDIA_31230, 0);
	play_intro_scene_five(MSG_HSSST_WE_HAVE_ARRIVED_31240, 0);
	break;
	}

	if (story_music_enabled != 0) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	/* Restore mouse support when the startup option enabled it. */
	if ((startup_hardware_flags & 4096) && startup_aux_option_b == 1) {
		if (mouse_active == 0)
			call_mouse_init();
		mouse_active = 1;
	}
	load_screen_file(main_screen_restore_filename, 0);
	member_index = 0;
	goto check_party_panels;
draw_party_panel:
	draw_party_member_panel(member_index, 0);
	member_index++;
check_party_panels:
	if (member_index < party_char_count)
		goto draw_party_panel;
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199);
	call_fade_in(0);
}
