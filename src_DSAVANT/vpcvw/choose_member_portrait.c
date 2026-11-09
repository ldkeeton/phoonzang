/* Let the player choose a portrait for a party member. */
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/filehdr.h"
extern struct disk_header disk_header;

extern unsigned char install_mode;
extern char data_path_prefixes[][20];
extern int member_screen_cache_low, member_screen_cache_high;
extern int member_icon[];
extern struct pc_rec party_records[];
extern int hotspot_rects[], hotspot_hit;

extern int copy_through_char();
extern int prompt_disk_swap();
extern int call_restore_screen();
extern long call_save_area();
extern int call_restore_area();
extern int draw_member_summary_panel();
extern int set_hotspot();
extern long draw_dialog_button_prompt();
extern int flush_keyboard();
extern int load_member_icon();
extern int draw_doubled_member_portrait();
extern int call_show_area();
extern int poll_hotspots();
extern int flash_button();

/* Cycle the member portrait and restore the surrounding screens. */
choose_member_portrait(member_index)
int member_index;
{
	int button;
	long button_area;
	long member_area;
	int prompted;
	int header;
	char path[20];

	prompted = 0;
	header = disk_header.number;
	header = install_mode == 5 && header > 0 ? header + 2 : header;
	copy_through_char(path, data_path_prefixes[0], ':');
	if (header != 0) {
		prompted = 1;
		prompt_disk_swap(path, 0, 1, 1);
	}

	call_restore_screen(member_screen_cache_low,
		member_screen_cache_high, 0, 0);
	member_area = call_save_area(14, 18, 66, 74);
	draw_member_summary_panel(member_index);
	set_hotspot(0, 12, 17, 38, 74, 11, 8);
	set_hotspot(1, 39, 17, 67, 74, 9, 10);
	button_area = draw_dialog_button_prompt(MSG_SELECT_PORTRAIT,
		88, 151, 24, 1, 2);
	flush_keyboard();

	for (;;) {
		call_restore_area(member_area, 0);
		load_member_icon(party_records[member_index].portrait,
			member_icon[member_index]);
		draw_doubled_member_portrait(member_index, 14, 18);
		call_show_area(14, 18, 66, 74);
		do {
			button = poll_hotspots(hotspot_rects) - 1;
		} while (!hotspot_hit);
		switch (button) {
		case 0:
			party_records[member_index].portrait =
				(party_records[member_index].portrait + 32) % 33;
			break;
		case 1:
			party_records[member_index].portrait =
				(party_records[member_index].portrait + 1) % 33;
			break;
		}
		if (button == 2)
			break;
	}

	flash_button(88, 151, 24, 1, 1);
	flash_button(88, 151, 24, 1, 0);
	call_restore_area(button_area, 1);
	call_restore_area(member_area, 1);
	draw_doubled_member_portrait(member_index, 14, 18);
	call_show_area(0, 0, 319, 199);
	if (prompted == 1)
		prompt_disk_swap(path, header, 1, 1);
}
