/* Score numbers for the game's story and intro scenes. */
#include "structs/arearect.h"
#include "structs/realmpos.h"

int level_up_score_number = 33;
int camp_score_number = 39;
int file_param_word = 38;
int story_score_file_number = 32;
int loaded_score_number = 38;
int intro_score_number_source[5] = {
	38, 32, 32, 32, 32,
};
/* left, top, right, bottom of each indexed screen area. */
struct area_rectangle screen_area_rectangles[6] = {
	{150, 159, 170, 172}, {128, 163, 147, 172}, {173, 163, 192, 172},
	{123, 176, 144, 185}, {176, 176, 197, 185}, {149, 177, 171, 191},
};
char movement_area_keys[6] = {
	9, 8, 10, 44, 46, 11,
};
char member_swap_keys[6] = {
	'!', '@', '#', '$', '%', '^',
};

/* X and Y of the two point columns of each realm row. */
struct realm_point_text_row realm_point_text_positions[6] = {
	{{{213, 138}, {217, 143}}}, {{{208, 154}, {212, 159}}},
	{{{235, 175}, {239, 180}}}, {{{238, 138}, {242, 143}}},
	{{{272, 154}, {276, 159}}}, {{{270, 175}, {274, 180}}},
};

/* X and Y of each realm's spell point total. */
struct screen_point realm_spell_point_positions[6] = {
	{66, 136}, {54, 158}, {66, 186},
	{114, 136}, {126, 158}, {114, 186},
};
