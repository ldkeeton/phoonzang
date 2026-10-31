/* Frees a picture slot and marks its slot metadata unused. */

extern unsigned char picture_slot_number[], picture_slot_used[];
extern call_free_picture();

free_picture_slot(slot)
int slot;
{
	call_free_picture(slot);
	picture_slot_number[slot] = 255;	/* 0xff marks an empty slot. */
	picture_slot_used[slot] = 0;
}
