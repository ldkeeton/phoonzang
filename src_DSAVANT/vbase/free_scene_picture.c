/* Release the picture held in the supplied scene picture slot. */
void free_scene_picture(picture_slot)
int picture_slot;
{
	extern void call_free_picture();

	call_free_picture(picture_slot);
}
