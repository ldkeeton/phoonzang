/* Queue one picture slot's glyph position and rendering parameters. */
#include "structs/slotrec.h"

struct byte_slot_value {
	unsigned char value;
	char pad[16];
};

struct word_slot_value {
	int value;
	char pad[15];
};

extern struct slot_rec slot_recs[];
extern int render_queue_count;
extern struct byte_slot_value queued_slot_index[];
extern struct byte_slot_value queued_slot_scale[];
extern struct word_slot_value queued_slot_x[];
extern struct word_slot_value queued_slot_y[];
extern struct byte_slot_value queued_slot_glyph_entry[];
extern struct byte_slot_value queued_slot_parameter_1[];
extern struct byte_slot_value queued_slot_parameter_2[];
extern struct byte_slot_value queued_slot_parameter_3[];
extern struct word_slot_value queued_slot_parameter_4[];
extern struct word_slot_value queued_slot_parameter_5[];
extern struct byte_slot_value queued_slot_depth[];
extern struct byte_slot_value queued_slot_glyph_column[];
extern struct byte_slot_value queued_slot_parameter_13[];
extern int view_column_x[][5];
extern int view_depth_y[];
extern void play_sound_effect();

/* The slot number selects a 17-byte render row; coordinates may be scaled. */
queue_slot_glyph_render(slot_index, x, y, glyph_entry,
		parameter_1, parameter_2, parameter_3, parameter_4,
		parameter_5, depth, scale, glyph_column,
		parameter_13, position_mode)
int slot_index, x, y, glyph_entry;
int parameter_1, parameter_2, parameter_3, parameter_4;
int parameter_5, depth, scale, glyph_column;
int parameter_13, position_mode;
{
	int glyph_x;
	int glyph_y;

	/* Preserve the incoming glyph and scale bytes in the current row. */
	queued_slot_index[render_queue_count].value =
		slot_index;
	queued_slot_scale[render_queue_count].value = scale;

	if (slot_index < 250) {
		glyph_x = slot_recs[slot_index].glyph_x[glyph_entry][glyph_column];
		glyph_y = slot_recs[slot_index].glyph_y[glyph_entry];
		if (scale > 0 && position_mode > 0) {
			/* Store the remaining percentage before applying one of three modes. */
			queued_slot_scale[render_queue_count].value =
				(100 - scale) % 100;
			if (position_mode == 1) {
				queued_slot_x[render_queue_count].value =
					x - ((view_column_x[0][0] - glyph_x) * scale - 50) / 100;
				if (glyph_column != 0) {
					queued_slot_x[render_queue_count].value -=
						(160 - slot_recs[slot_index].glyph_x[glyph_entry][glyph_column]) * 2
						* queued_slot_scale[render_queue_count].value
						/ 100;
				}
				queued_slot_y[render_queue_count].value =
					y - ((view_depth_y[0] - glyph_y) * scale - 50) / 100;
			} else if (position_mode == 2) {
				queued_slot_x[render_queue_count].value =
					queued_slot_scale[render_queue_count].value
					* (160 - glyph_x) / 100 + glyph_x + x;
				if (glyph_column != 0) {
					queued_slot_x[render_queue_count].value -=
						(160 - slot_recs[slot_index].glyph_x[glyph_entry][glyph_column]) * 2
						* queued_slot_scale[render_queue_count].value
						/ 100;
				}
				queued_slot_y[render_queue_count].value =
					queued_slot_scale[render_queue_count].value
					* (66 - glyph_y) / 100 + glyph_y + y;
			} else if (position_mode == 3) {
				queued_slot_x[render_queue_count].value = x;
				queued_slot_y[render_queue_count].value = y;
			}
		} else {
			/* With scaling inactive, add the stored glyph offsets directly. */
			queued_slot_x[render_queue_count].value =
				glyph_x + x;
			queued_slot_y[render_queue_count].value =
				glyph_y + y;
		}
	} else {
		/* Out-of-range slot indexes keep the supplied coordinates unchanged. */
		queued_slot_x[render_queue_count].value = x;
		queued_slot_y[render_queue_count].value = y;
	}

	/* Copy the remaining arguments into the current render row. */
	queued_slot_glyph_entry[render_queue_count].value =
		glyph_entry;
	queued_slot_parameter_1[render_queue_count].value =
		parameter_1;
	queued_slot_parameter_2[render_queue_count].value =
		parameter_2;
	queued_slot_parameter_3[render_queue_count].value =
		parameter_3;
	queued_slot_parameter_4[render_queue_count].value =
		parameter_4;
	queued_slot_parameter_5[render_queue_count].value =
		parameter_5;
	queued_slot_depth[render_queue_count].value = depth;
	queued_slot_glyph_column[render_queue_count].value = glyph_column;
	queued_slot_parameter_13[render_queue_count].value =
		parameter_13;
	++render_queue_count;
	if (render_queue_count >= 120) {
		/* A full render queue repeatedly requests sound effect zero. */
		for (;;) {
			play_sound_effect(0);
		}
	}
}
